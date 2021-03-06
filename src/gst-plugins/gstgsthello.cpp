#include "gstgsthello.h"

#include <gst/gst.h>
#include <gst/video/video.h>
#include <gst/video/gstvideofilter.h>
#include <glib/gstdio.h>
#include <opencv2/opencv.hpp>
#include <cv.h>
#include <memory>

GST_DEBUG_CATEGORY_STATIC (gst_gsthello_debug_category);
#define GST_CAT_DEFAULT gst_gsthello_debug_category
#define PLUGIN_NAME ""

#define GST_GSTHELLO_GET_PRIVATE(obj) (    \
    G_TYPE_INSTANCE_GET_PRIVATE (               \
        (obj),                                  \
        GST_TYPE_GSTHELLO,                 \
        GstgsthelloPrivate                  \
                                )               \
                                           )

/* pad templates */

#define VIDEO_SRC_CAPS \
  GST_VIDEO_CAPS_MAKE("{ BGRA }")

#define VIDEO_SINK_CAPS \
  GST_VIDEO_CAPS_MAKE("{ BGRA }")

/* class initialization */

G_DEFINE_TYPE_WITH_CODE (Gstgsthello, gst_gsthello,
                         GST_TYPE_VIDEO_FILTER,
                         GST_DEBUG_CATEGORY_INIT (gst_gsthello_debug_category,
                             PLUGIN_NAME, 0,
                             "debug category for gsthello element") );


static GstFlowReturn
gst_gsthello_transform_frame_ip (GstVideoFilter *filter,
                                      GstVideoFrame *frame)
{
  return GST_FLOW_OK;
}

static void
gst_gsthello_finalize (GObject *object)
{
}

static void
gst_gsthello_init (Gstgsthello *
                        gsthello)
{
}

static void
gst_gsthello_class_init (GstgsthelloClass *klass)
{
  GObjectClass *gobject_class = G_OBJECT_CLASS (klass);
  GstVideoFilterClass *video_filter_class = GST_VIDEO_FILTER_CLASS (klass);

  GST_DEBUG_CATEGORY_INIT (GST_CAT_DEFAULT, PLUGIN_NAME, 0, PLUGIN_NAME);

  gst_element_class_add_pad_template (GST_ELEMENT_CLASS (klass),
                                      gst_pad_template_new ("src", GST_PAD_SRC,
                                          GST_PAD_ALWAYS,
                                          gst_caps_from_string (VIDEO_SRC_CAPS) ) );
  gst_element_class_add_pad_template (GST_ELEMENT_CLASS (klass),
                                      gst_pad_template_new ("sink", GST_PAD_SINK,
                                          GST_PAD_ALWAYS,
                                          gst_caps_from_string (VIDEO_SINK_CAPS) ) );

  gst_element_class_set_static_metadata (GST_ELEMENT_CLASS (klass),
                                      "element definition", "Video/Filter",
                                      "Filter doc",
                                      "Developer");

  gobject_class->finalize = gst_gsthello_finalize;

  video_filter_class->transform_frame_ip =
    GST_DEBUG_FUNCPTR (gst_gsthello_transform_frame_ip);
}

gboolean
gst_gsthello_plugin_init (GstPlugin *plugin)
{
  return gst_element_register (plugin, PLUGIN_NAME, GST_RANK_NONE,
                               GST_TYPE_GSTHELLO);
}
