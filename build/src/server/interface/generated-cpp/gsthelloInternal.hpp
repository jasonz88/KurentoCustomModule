/* Autogenerated with kurento-module-creator */

#ifndef __GSTHELLO_INTERNAL_HPP__
#define __GSTHELLO_INTERNAL_HPP__

#include "gsthello.hpp"

namespace kurento
{
class JsonSerializer;
}

namespace kurento
{
class MediaPipeline;
} /* kurento */

namespace kurento
{
namespace module
{
namespace gsthello
{

class gsthelloConstructor
{
public:
  gsthelloConstructor () {}
  ~gsthelloConstructor () {}

  void Serialize (JsonSerializer &serializer);

  std::shared_ptr<MediaPipeline> getMediaPipeline ();

  void setMediaPipeline (std::shared_ptr<MediaPipeline> mediaPipeline) {
    this->mediaPipeline = mediaPipeline;
  }

private:
  std::shared_ptr<MediaPipeline> mediaPipeline;
};

} /* gsthello */
} /* module */
} /* kurento */

#endif /*  __GSTHELLO_INTERNAL_HPP__ */