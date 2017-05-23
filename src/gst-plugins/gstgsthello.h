#ifndef _GST_GSTHELLO_H_
#define _GST_GSTHELLO_H_

#include <gst/video/gstvideofilter.h>

G_BEGIN_DECLS
#define GST_TYPE_GSTHELLO   (gst_gsthello_get_type())
#define GST_GSTHELLO(obj)   (G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_GSTHELLO,Gstgsthello))
#define GST_GSTHELLO_CLASS(klass)   (G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_GSTHELLO,GstgsthelloClass))
#define GST_IS_GSTHELLO(obj)   (G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_GSTHELLO))
#define GST_IS_GSTHELLO_CLASS(klass)   (G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_GSTHELLO))
typedef struct _Gstgsthello Gstgsthello;
typedef struct _GstgsthelloClass GstgsthelloClass;
typedef struct _GstgsthelloPrivate GstgsthelloPrivate;

struct _Gstgsthello
{
  GstVideoFilter base;
  GstgsthelloPrivate *priv;
};

struct _GstgsthelloClass
{
  GstVideoFilterClass base_gsthello_class;
};

GType gst_gsthello_get_type (void);

gboolean gst_gsthello_plugin_init (GstPlugin * plugin);

G_END_DECLS
#endif /* _GST_GSTHELLO_H_ */
