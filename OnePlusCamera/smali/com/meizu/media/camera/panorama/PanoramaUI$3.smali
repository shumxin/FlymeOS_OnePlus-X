.class Lcom/meizu/media/camera/panorama/PanoramaUI$3;
.super Ljava/lang/Object;
.source "PanoramaUI.java"

# interfaces
.implements Lcom/oneplus/base/component/ComponentSearchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/panorama/PanoramaUI;->onEnter(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/component/ComponentSearchCallback",
        "<",
        "Lcom/meizu/media/camera/ui/CaptureButtons;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/panorama/PanoramaUI;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/panorama/PanoramaUI;)V
    .locals 0

    .prologue
    .line 540
    iput-object p1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI$3;->this$0:Lcom/meizu/media/camera/panorama/PanoramaUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComponentFound(Lcom/oneplus/base/component/Component;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 540
    check-cast p1, Lcom/meizu/media/camera/ui/CaptureButtons;

    .end local p1    # "x0":Lcom/oneplus/base/component/Component;
    invoke-virtual {p0, p1}, Lcom/meizu/media/camera/panorama/PanoramaUI$3;->onComponentFound(Lcom/meizu/media/camera/ui/CaptureButtons;)V

    return-void
.end method

.method public onComponentFound(Lcom/meizu/media/camera/ui/CaptureButtons;)V
    .locals 2
    .param p1, "component"    # Lcom/meizu/media/camera/ui/CaptureButtons;

    .prologue
    .line 544
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI$3;->this$0:Lcom/meizu/media/camera/panorama/PanoramaUI;

    # setter for: Lcom/meizu/media/camera/panorama/PanoramaUI;->m_CaptureButtons:Lcom/meizu/media/camera/ui/CaptureButtons;
    invoke-static {v0, p1}, Lcom/meizu/media/camera/panorama/PanoramaUI;->access$402(Lcom/meizu/media/camera/panorama/PanoramaUI;Lcom/meizu/media/camera/ui/CaptureButtons;)Lcom/meizu/media/camera/ui/CaptureButtons;

    .line 545
    sget-object v0, Lcom/meizu/media/camera/ui/CaptureButtons;->EVENT_BUTTON_PRESSED:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/meizu/media/camera/panorama/PanoramaUI$3$1;

    invoke-direct {v1, p0}, Lcom/meizu/media/camera/panorama/PanoramaUI$3$1;-><init>(Lcom/meizu/media/camera/panorama/PanoramaUI$3;)V

    invoke-interface {p1, v0, v1}, Lcom/meizu/media/camera/ui/CaptureButtons;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 553
    sget-object v0, Lcom/meizu/media/camera/ui/CaptureButtons;->EVENT_BUTTON_RELEASED:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/meizu/media/camera/panorama/PanoramaUI$3$2;

    invoke-direct {v1, p0}, Lcom/meizu/media/camera/panorama/PanoramaUI$3$2;-><init>(Lcom/meizu/media/camera/panorama/PanoramaUI$3;)V

    invoke-interface {p1, v0, v1}, Lcom/meizu/media/camera/ui/CaptureButtons;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 561
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI$3;->this$0:Lcom/meizu/media/camera/panorama/PanoramaUI;

    # invokes: Lcom/meizu/media/camera/panorama/PanoramaUI;->isEntered()Z
    invoke-static {v0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->access$700(Lcom/meizu/media/camera/panorama/PanoramaUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI$3;->this$0:Lcom/meizu/media/camera/panorama/PanoramaUI;

    # invokes: Lcom/meizu/media/camera/panorama/PanoramaUI;->setupCaptureButton()V
    invoke-static {v0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->access$300(Lcom/meizu/media/camera/panorama/PanoramaUI;)V

    .line 563
    :cond_0
    return-void
.end method
