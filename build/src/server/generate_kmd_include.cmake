  execute_process (COMMAND /usr/bin/kurento-module-creator -r /home/dyz/kurento-tutorial-js/gsthello/src/server/interface ;-dr;/usr/share/kurento/modules -o /home/dyz/kurento-tutorial-js/gsthello/build/src/server/)

  file (READ /home/dyz/kurento-tutorial-js/gsthello/build/src/server/gsthello.kmd.json KMD_DATA)

  string (REGEX REPLACE "\n *" "" KMD_DATA ${KMD_DATA})
  string (REPLACE "\"" "\\\"" KMD_DATA ${KMD_DATA})
  string (REPLACE "\\n" "\\\\n" KMD_DATA ${KMD_DATA})
  set (KMD_DATA "\"${KMD_DATA}\"")

  file (WRITE /home/dyz/kurento-tutorial-js/gsthello/build/src/server/gsthello.kmd.json ${KMD_DATA})
