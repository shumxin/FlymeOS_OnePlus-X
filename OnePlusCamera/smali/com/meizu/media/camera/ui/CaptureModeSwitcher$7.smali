.class Lcom/meizu/media/camera/ui/CaptureModeSwitcher$7;
.super Ljava/lang/Object;
.source "CaptureModeSwitcher.java"

# interfaces
.implements Lcom/oneplus/base/component/ComponentSearchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/ui/CaptureModeSwitcher;->onInitialize()V
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
.field final synthetic this$0:Lcom/meizu/media/camera/ui/CaptureModeSwitcher;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/ui/CaptureModeSwitcher;)V
    .locals 0

    .prologue
    .line 683
    iput-object p1, p0, Lcom/meizu/media/camera/ui/CaptureModeSwitcher$7;->this$0:Lcom/meizu/media/camera/ui/CaptureModeSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComponentFound(Lcom/oneplus/base/component/Component;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 683
    check-cast p1, Lcom/meizu/media/camera/ui/CaptureButtons;

    .end local p1    # "x0":Lcom/oneplus/base/component/Component;
    invoke-virtual {p0, p1}, Lcom/meizu/media/camera/ui/CaptureModeSwitcher$7;->onComponentFound(Lcom/meizu/media/camera/ui/CaptureButtons;)V

    return-void
.end method

.method public onComponentFound(Lcom/meizu/media/camera/ui/CaptureButtons;)V
    .locals 2
    .param p1, "component"    # Lcom/meizu/media/camera/ui/CaptureButtons;

    .prologue
    .line 687
    iget-object v0, p0, Lcom/meizu/media/camera/ui/CaptureModeSwitcher$7;->this$0:Lcom/meizu/media/camera/ui/CaptureModeSwitcher;

    # setter for: Lcom/meizu/media/camera/ui/CaptureModeSwitcher;->m_CaptureButtons:Lcom/meizu/media/camera/ui/CaptureButtons;
    invoke-static {v0, p1}, Lcom/meizu/media/camera/ui/CaptureModeSwitcher;->access$3302(Lcom/meizu/media/camera/ui/CaptureModeSwitcher;Lcom/meizu/media/camera/ui/CaptureButtons;)Lcom/meizu/media/camera/ui/CaptureButtons;

    .line 688
    sget-object v0, Lcom/meizu/media/camera/ui/CaptureButtons;->EVENT_BUTTON_PRESSED:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/meizu/media/camera/ui/CaptureModeSwitcher$7$1;

    invoke-direct {v1, p0}, Lcom/meizu/media/camera/ui/CaptureModeSwitcher$7$1;-><init>(Lcom/meizu/media/camera/ui/CaptureModeSwitcher$7;)V

    invoke-interface {p1, v0, v1}, Lcom/meizu/media/camera/ui/CaptureButtons;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 698
    sget-object v0, Lcom/meizu/media/camera/ui/CaptureButtons;->EVENT_BUTTON_RELEASED:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/meizu/media/camera/ui/CaptureModeSwitcher$7$2;

    invoke-direct {v1, p0}, Lcom/meizu/media/camera/ui/CaptureModeSwitcher$7$2;-><init>(Lcom/meizu/media/camera/ui/CaptureModeSwitcher$7;)V

    invoke-interface {p1, v0, v1}, Lcom/meizu/media/camera/ui/CaptureButtons;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 706
    return-void
.end method
