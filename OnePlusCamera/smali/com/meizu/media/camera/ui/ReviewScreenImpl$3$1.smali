.class Lcom/meizu/media/camera/ui/ReviewScreenImpl$3$1;
.super Ljava/lang/Object;
.source "ReviewScreenImpl.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/ui/ReviewScreenImpl$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/EventHandler",
        "<",
        "Lcom/meizu/media/camera/CaptureEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/media/camera/ui/ReviewScreenImpl$3;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/ui/ReviewScreenImpl$3;)V
    .locals 0

    .prologue
    .line 417
    iput-object p1, p0, Lcom/meizu/media/camera/ui/ReviewScreenImpl$3$1;->this$1:Lcom/meizu/media/camera/ui/ReviewScreenImpl$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/base/EventSource;
    .param p2, "x1"    # Lcom/oneplus/base/EventKey;
    .param p3, "x2"    # Lcom/oneplus/base/EventArgs;

    .prologue
    .line 417
    check-cast p3, Lcom/meizu/media/camera/CaptureEventArgs;

    .end local p3    # "x2":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/meizu/media/camera/ui/ReviewScreenImpl$3$1;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/meizu/media/camera/CaptureEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/meizu/media/camera/CaptureEventArgs;)V
    .locals 2
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p3, "e"    # Lcom/meizu/media/camera/CaptureEventArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/meizu/media/camera/CaptureEventArgs;",
            ">;",
            "Lcom/meizu/media/camera/CaptureEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 421
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/meizu/media/camera/CaptureEventArgs;>;"
    iget-object v0, p0, Lcom/meizu/media/camera/ui/ReviewScreenImpl$3$1;->this$1:Lcom/meizu/media/camera/ui/ReviewScreenImpl$3;

    iget-object v0, v0, Lcom/meizu/media/camera/ui/ReviewScreenImpl$3;->val$cameraActivity:Lcom/meizu/media/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/meizu/media/camera/CameraActivity;->isServiceMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/meizu/media/camera/ui/ReviewScreenImpl$3$1;->this$1:Lcom/meizu/media/camera/ui/ReviewScreenImpl$3;

    iget-object v0, v0, Lcom/meizu/media/camera/ui/ReviewScreenImpl$3;->this$0:Lcom/meizu/media/camera/ui/ReviewScreenImpl;

    invoke-virtual {p3}, Lcom/meizu/media/camera/CaptureEventArgs;->getCaptureHandle()Lcom/meizu/media/camera/CaptureHandle;

    move-result-object v1

    # setter for: Lcom/meizu/media/camera/ui/ReviewScreenImpl;->m_CaptureHandle:Lcom/meizu/media/camera/CaptureHandle;
    invoke-static {v0, v1}, Lcom/meizu/media/camera/ui/ReviewScreenImpl;->access$402(Lcom/meizu/media/camera/ui/ReviewScreenImpl;Lcom/meizu/media/camera/CaptureHandle;)Lcom/meizu/media/camera/CaptureHandle;

    .line 423
    :cond_0
    return-void
.end method
