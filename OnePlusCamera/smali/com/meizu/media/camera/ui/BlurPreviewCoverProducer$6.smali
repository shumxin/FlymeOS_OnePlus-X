.class Lcom/meizu/media/camera/ui/BlurPreviewCoverProducer$6;
.super Ljava/lang/Object;
.source "BlurPreviewCoverProducer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/ui/BlurPreviewCoverProducer;->onPreviewCoverPrepared(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/ui/BlurPreviewCoverProducer;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/ui/BlurPreviewCoverProducer;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/meizu/media/camera/ui/BlurPreviewCoverProducer$6;->this$0:Lcom/meizu/media/camera/ui/BlurPreviewCoverProducer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 207
    iget-object v0, p0, Lcom/meizu/media/camera/ui/BlurPreviewCoverProducer$6;->this$0:Lcom/meizu/media/camera/ui/BlurPreviewCoverProducer;

    sget-object v1, Lcom/meizu/media/camera/ui/PreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/ui/BlurPreviewCoverProducer;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/ui/PreviewCoverProducer$State;->PREPARING:Lcom/meizu/media/camera/ui/PreviewCoverProducer$State;

    if-ne v0, v1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/meizu/media/camera/ui/BlurPreviewCoverProducer$6;->this$0:Lcom/meizu/media/camera/ui/BlurPreviewCoverProducer;

    sget-object v1, Lcom/meizu/media/camera/ui/PreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/meizu/media/camera/ui/PreviewCoverProducer$State;->READY_TO_IN_ANIMATION:Lcom/meizu/media/camera/ui/PreviewCoverProducer$State;

    # invokes: Lcom/meizu/media/camera/ui/BlurPreviewCoverProducer;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    invoke-static {v0, v1, v2}, Lcom/meizu/media/camera/ui/BlurPreviewCoverProducer;->access$500(Lcom/meizu/media/camera/ui/BlurPreviewCoverProducer;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 211
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/ui/BlurPreviewCoverProducer$6;->this$0:Lcom/meizu/media/camera/ui/BlurPreviewCoverProducer;

    # getter for: Lcom/meizu/media/camera/ui/BlurPreviewCoverProducer;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/meizu/media/camera/ui/BlurPreviewCoverProducer;->access$600(Lcom/meizu/media/camera/ui/BlurPreviewCoverProducer;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewCoverPrepared() - Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/media/camera/ui/BlurPreviewCoverProducer$6;->this$0:Lcom/meizu/media/camera/ui/BlurPreviewCoverProducer;

    sget-object v3, Lcom/meizu/media/camera/ui/PreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/meizu/media/camera/ui/BlurPreviewCoverProducer;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", keep current state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
