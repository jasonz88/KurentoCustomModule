/* Autogenerated with kurento-module-creator */

#include "gsthello.hpp"
#include <mutex>

namespace kurento
{
namespace module
{
namespace gsthello
{

static std::vector<std::string> hierarchygsthello;
std::once_flag initFlaggsthello;

static void
initHierarchy ()
{
  hierarchygsthello.push_back("kurento.Filter");
  hierarchygsthello.push_back("kurento.MediaElement");
  hierarchygsthello.push_back("kurento.MediaObject");
}

const std::vector<std::string> &
gsthello::getHierarchy () const
{
  std::call_once (initFlaggsthello,initHierarchy);
  return hierarchygsthello;
}

const std::string&
gsthello::getType () const {
  static std::string typeName = "gsthello";

  return typeName;
}

const std::string&
gsthello::getQualifiedType () const {
  static std::string qualifiedTypeName = getModule() + "." + getType();

  return qualifiedTypeName;
}

const std::string&
gsthello::getModule () const {
  static std::string moduleName =  "gsthello";

  return moduleName;
}

} /* gsthello */
} /* module */
} /* kurento */
