.class Lcom/meizu/media/camera/ui/PreviewGallery$8$1$5;
.super Ljava/lang/Object;
.source "PreviewGallery.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/ui/PreviewGallery$8$1;->run()V
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
        "Lcom/meizu/media/camera/media/MediaEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/meizu/media/camera/ui/PreviewGallery$8$1;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/ui/PreviewGallery$8$1;)V
    .locals 0

    .prologue
    .line 744
    iput-object p1, p0, Lcom/meizu/media/camera/ui/PreviewGallery$8$1$5;->this$2:Lcom/meizu/media/camera/ui/PreviewGallery$8$1;

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
    .line 744
    check-cast p3, Lcom/meizu/media/camera/media/MediaEventArgs;

    .end local p3    # "x2":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/meizu/media/camera/ui/PreviewGallery$8$1$5;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/meizu/media/camera/media/MediaEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/meizu/media/camera/media/MediaEventArgs;)V
    .locals 3
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p3, "e"    # Lcom/meizu/media/camera/media/MediaEventArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/meizu/media/camera/media/MediaEventArgs;",
            ">;",
            "Lcom/meizu/media/camera/media/MediaEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/meizu/media/camera/media/MediaEventArgs;>;"
    const/4 v2, 0x0

    .line 748
    iget-object v0, p0, Lcom/meizu/media/camera/ui/PreviewGallery$8$1$5;->this$2:Lcom/meizu/media/camera/ui/PreviewGallery$8$1;

    iget-object v0, v0, Lcom/meizu/media/camera/ui/PreviewGallery$8$1;->this$1:Lcom/meizu/media/camera/ui/PreviewGallery$8;

    iget-object v0, v0, Lcom/meizu/media/camera/ui/PreviewGallery$8;->this$0:Lcom/meizu/media/camera/ui/PreviewGallery;

    const/16 v1, 0x3eb

    invoke-static {v0, v1, v2, v2, p3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 749
    iget-object v0, p0, Lcom/meizu/media/camera/ui/PreviewGallery$8$1$5;->this$2:Lcom/meizu/media/camera/ui/PreviewGallery$8$1;

    iget-object v0, v0, Lcom/meizu/media/camera/ui/PreviewGallery$8$1;->this$1:Lcom/meizu/media/camera/ui/PreviewGallery$8;

    iget-object v0, v0, Lcom/meizu/media/camera/ui/PreviewGallery$8;->this$0:Lcom/meizu/media/camera/ui/PreviewGallery;

    # getter for: Lcom/meizu/media/camera/ui/PreviewGallery;->m_Animator:Landroid/view/ViewPropertyAnimator;
    invoke-static {v0}, Lcom/meizu/media/camera/ui/PreviewGallery;->access$800(Lcom/meizu/media/camera/ui/PreviewGallery;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/meizu/media/camera/ui/PreviewGallery$8$1$5;->this$2:Lcom/meizu/media/camera/ui/PreviewGallery$8$1;

    iget-object v0, v0, Lcom/meizu/media/camera/ui/PreviewGallery$8$1;->this$1:Lcom/meizu/media/camera/ui/PreviewGallery$8;

    iget-object v0, v0, Lcom/meizu/media/camera/ui/PreviewGallery$8;->this$0:Lcom/meizu/media/camera/ui/PreviewGallery;

    const/16 v1, 0x3ec

    invoke-static {v0, v1, v2, v2, p3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 752
    :cond_0
    return-void
.end method
