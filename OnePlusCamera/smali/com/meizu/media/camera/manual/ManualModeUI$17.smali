.class Lcom/meizu/media/camera/manual/ManualModeUI$17;
.super Ljava/lang/Object;
.source "ManualModeUI.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/manual/ManualModeUI;->onInitialize()V
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
        "Lcom/meizu/media/camera/IntentEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/manual/ManualModeUI;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/manual/ManualModeUI;)V
    .locals 0

    .prologue
    .line 722
    iput-object p1, p0, Lcom/meizu/media/camera/manual/ManualModeUI$17;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

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
    .line 722
    check-cast p3, Lcom/meizu/media/camera/IntentEventArgs;

    .end local p3    # "x2":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/meizu/media/camera/manual/ManualModeUI$17;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/meizu/media/camera/IntentEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/meizu/media/camera/IntentEventArgs;)V
    .locals 4
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p3, "e"    # Lcom/meizu/media/camera/IntentEventArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/meizu/media/camera/IntentEventArgs;",
            ">;",
            "Lcom/meizu/media/camera/IntentEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/meizu/media/camera/IntentEventArgs;>;"
    const/4 v3, 0x1

    .line 726
    iget-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeUI$17;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

    # invokes: Lcom/meizu/media/camera/manual/ManualModeUI;->isEntered()Z
    invoke-static {v1}, Lcom/meizu/media/camera/manual/ManualModeUI;->access$3500(Lcom/meizu/media/camera/manual/ManualModeUI;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 728
    iget-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeUI$17;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

    # invokes: Lcom/meizu/media/camera/manual/ManualModeUI;->getCamera()Lcom/meizu/media/camera/Camera;
    invoke-static {v1}, Lcom/meizu/media/camera/manual/ManualModeUI;->access$3600(Lcom/meizu/media/camera/manual/ManualModeUI;)Lcom/meizu/media/camera/Camera;

    move-result-object v0

    .line 729
    .local v0, "camera":Lcom/meizu/media/camera/Camera;
    if-eqz v0, :cond_1

    .line 731
    sget-object v1, Lcom/meizu/media/camera/Camera;->PROP_IS_RAW_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/meizu/media/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 732
    invoke-virtual {p3}, Lcom/meizu/media/camera/IntentEventArgs;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "IsRawCaptureVisible"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 734
    :cond_0
    sget-object v1, Lcom/meizu/media/camera/Camera;->PROP_IS_SMILE_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/meizu/media/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 735
    invoke-virtual {p3}, Lcom/meizu/media/camera/IntentEventArgs;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "IsSmileCaptureVisible"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 738
    .end local v0    # "camera":Lcom/meizu/media/camera/Camera;
    :cond_1
    return-void
.end method
