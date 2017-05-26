# - Try to find KMSGSTHELLO library

#=============================================================================
# Copyright 2014 Kurento
#
#=============================================================================

set(PACKAGE_VERSION "0.0.1~1.g0d7226c")
set(KMSGSTHELLO_VERSION ${PACKAGE_VERSION})

message (STATUS "Looking for KMSGSTHELLO: 0.0.1~1.g0d7226c")

include (GenericFind)

generic_find (
  REQUIRED
  LIBNAME KMSCORE
  VERSION ^6.0.0
)

generic_find (
  REQUIRED
  LIBNAME KMSELEMENTS
  VERSION ^6.0.0
)

generic_find (
  REQUIRED
  LIBNAME KMSFILTERS
  VERSION ^6.0.0
)

set (REQUIRED_VARS
  KMSGSTHELLO_VERSION
  KMSGSTHELLO_INCLUDE_DIRS
  KMSGSTHELLO_LIBRARY
  KMSGSTHELLO_LIBRARIES
)

set (KMSGSTHELLO_BINARY_DIR_PREFIX "build" CACHE PATH "Path prefix used to look for binary files")
set (KMSGSTHELLO_SOURCE_DIR_PREFIX "" CACHE PATH "Path prefix used to look for source files")

set(KMSGSTHELLO_INCLUDE_DIRS
  ${KMSCORE_INCLUDE_DIRS}
  ${KMSELEMENTS_INCLUDE_DIRS}
  ${KMSFILTERS_INCLUDE_DIRS}
)

if (NOT "gsthello.hpp gsthelloInternal.hpp" STREQUAL " ")
  if (TARGET kmsgsthellointerface)
    set (KMSGSTHELLO_INTERFACE_INCLUDE_DIR "${KMSGSTHELLO_BINARY_DIR_PREFIX}/src/server/interface/generated-cpp")
  else ()
    find_path(KMSGSTHELLO_INTERFACE_INCLUDE_DIR
      NAMES
        gsthello.hpp
        gsthelloInternal.hpp
      PATH_SUFFIXES
        ${KMSGSTHELLO_BINARY_DIR_PREFIX}/src/server/interface/generated-cpp
        kurento/modules/gsthello
    )
  endif ()

  list (APPEND KMSGSTHELLO_INCLUDE_DIRS ${KMSGSTHELLO_INTERFACE_INCLUDE_DIR})
  list (APPEND REQUIRED_VARS KMSGSTHELLO_INTERFACE_INCLUDE_DIR)
endif ()

if (NOT "gsthelloImplFactory.hpp" STREQUAL "")
  if (TARGET kmsgsthelloimpl)
    set (KMSGSTHELLO_IMPLEMENTATION_INTERNAL_INCLUDE_DIR "${KMSGSTHELLO_BINARY_DIR_PREFIX}/src/server/implementation/generated-cpp")
  else ()
    find_path(KMSGSTHELLO_IMPLEMENTATION_INTERNAL_INCLUDE_DIR
      NAMES
        gsthelloImplFactory.hpp
      PATH_SUFFIXES
        ${KMSGSTHELLO_BINARY_DIR_PREFIX}/src/server/implementation/generated-cpp
        kurento/modules/gsthello
    )
  endif ()

  list (APPEND KMSGSTHELLO_INCLUDE_DIRS ${KMSGSTHELLO_IMPLEMENTATION_INTERNAL_INCLUDE_DIR})
  list (APPEND REQUIRED_VARS KMSGSTHELLO_IMPLEMENTATION_INTERNAL_INCLUDE_DIR)
endif ()

if (NOT "gsthelloImpl.hpp" STREQUAL "")
  if (TARGET kmsgsthelloimpl)
    set (KMSGSTHELLO_IMPLEMENTATION_GENERATED_INCLUDE_DIR "${KMSGSTHELLO_SOURCE_DIR_PREFIX}/src/server/implementation/objects")
  else ()
    find_path(KMSGSTHELLO_IMPLEMENTATION_GENERATED_INCLUDE_DIR
      NAMES
        gsthelloImpl.hpp
      PATH_SUFFIXES
        src/server/implementation/objects
        kurento/modules/gsthello
    )
  endif ()

  list (APPEND KMSGSTHELLO_INCLUDE_DIRS ${KMSGSTHELLO_IMPLEMENTATION_GENERATED_INCLUDE_DIR})
  list (APPEND REQUIRED_VARS KMSGSTHELLO_IMPLEMENTATION_GENERATED_INCLUDE_DIR)
endif()

if (NOT "" STREQUAL "")
  if (TARGET kmsgsthelloimpl)
    set (KMSGSTHELLO_IMPLEMENTATION_EXTRA_INCLUDE_DIR "${KMSGSTHELLO_SOURCE_DIR_PREFIX}/")
  else ()
    find_path(KMSGSTHELLO_IMPLEMENTATION_EXTRA_INCLUDE_DIR
      NAMES
        
      PATH_SUFFIXES
        
        kurento/modules/gsthello
    )
  endif ()

  list (APPEND KMSGSTHELLO_INCLUDE_DIRS ${KMSGSTHELLO_IMPLEMENTATION_EXTRA_INCLUDE_DIR})
  list (APPEND REQUIRED_VARS KMSGSTHELLO_IMPLEMENTATION_EXTRA_INCLUDE_DIR)
endif ()

if (NOT "" STREQUAL "")
  if (TARGET kmsgsthellointerface)
    set (KMSGSTHELLO_INTERFACE_EXTRA_INCLUDE_DIR "${KMSGSTHELLO_SOURCE_DIR_PREFIX}/")
  else ()
    find_path(KMSGSTHELLO_INTERFACE_EXTRA_INCLUDE_DIR
      NAMES
        
      PATH_SUFFIXES
        
        kurento/modules/gsthello
    )
  endif()

  list (APPEND KMSGSTHELLO_INCLUDE_DIRS ${KMSGSTHELLO_INTERFACE_EXTRA_INCLUDE_DIR})
  list (APPEND REQUIRED_VARS KMSGSTHELLO_INTERFACE_EXTRA_INCLUDE_DIR)
endif ()

if (TARGET kmsgsthelloimpl)
  set (KMSGSTHELLO_LIBRARY kmsgsthelloimpl)
else ()
  find_library (KMSGSTHELLO_LIBRARY
    NAMES
      kmsgsthelloimpl
    PATH_SUFFIXES
      ${KMSGSTHELLO_BINARY_DIR_PREFIX}/src/server
  )
endif()

set (REQUIRED_LIBS "")
foreach (LIB ${REQUIRED_LIBS})
  string(FIND ${LIB} " " POS)

  if (${POS} GREATER 0)
    string(REPLACE " " ";" REQUIRED_LIB_LIST ${LIB})
    include (CMakeParseArguments)
    cmake_parse_arguments("PARAM" "" "LIBNAME" "" ${REQUIRED_LIB_LIST})

    if (DEFINED PARAM_LIBNAME)
      generic_find (${REQUIRED_LIB_LIST} REQUIRED)
      set (LIB_NAME ${PARAM_LIBNAME})
    else()
      string (SUBSTRING ${LIB} 0 ${POS} LIB_NAME)
      string (SUBSTRING ${LIB} ${POS} -1 LIB_VERSION)
      string (STRIP ${LIB_NAME} LIB_NAME)
      string (STRIP ${LIB_VERSION} LIB_VERSION)
      generic_find (LIBNAME ${LIB_NAME} REQUIRED VERSION "${LIB_VERSION}")
    endif()
  else ()
    string (STRIP ${LIB} LIB_NAME)
    generic_find (LIBNAME ${LIB_NAME} REQUIRED)
  endif ()
  list (APPEND REQUIRED_LIBRARIES ${${LIB_NAME}_LIBRARIES})
  list (APPEND KMSGSTHELLO_INCLUDE_DIRS ${${LIB_NAME}_INCLUDE_DIRS})

endforeach()

set(KMSGSTHELLO_INCLUDE_DIRS
  ${KMSGSTHELLO_INCLUDE_DIRS}
  CACHE INTERNAL "Include directories for KMSGSTHELLO library" FORCE
)

set (KMSGSTHELLO_LIBRARIES
  ${KMSGSTHELLO_LIBRARY}
  ${KMSCORE_LIBRARIES}
  ${KMSELEMENTS_LIBRARIES}
  ${KMSFILTERS_LIBRARIES}
  ${REQUIRED_LIBRARIES}
  CACHE INTERNAL "Libraries for KMSGSTHELLO" FORCE
)

include (FindPackageHandleStandardArgs)

find_package_handle_standard_args(KMSGSTHELLO
  FOUND_VAR
    KMSGSTHELLO_FOUND
  REQUIRED_VARS
    ${REQUIRED_VARS}
  VERSION_VAR
    KMSGSTHELLO_VERSION
)

mark_as_advanced(
  KMSGSTHELLO_FOUND
  KMSGSTHELLO_VERSION
  KMSGSTHELLO_INTERFACE_INCLUDE_DIR
  KMSGSTHELLO_IMPLEMENTATION_INTERNAL_INCLUDE_DIR
  KMSGSTHELLO_IMPLEMENTATION_GENERATED_INCLUDE_DIR
  KMSGSTHELLO_IMPLEMENTATION_EXTRA_INCLUDE_DIR
  KMSGSTHELLO_INTERFACE_EXTRA_INCLUDE_DIR
  KMSGSTHELLO_INCLUDE_DIRS
  KMSGSTHELLO_LIBRARY
  KMSGSTHELLO_LIBRARIES
)
