.class Lcom/meizu/media/camera/ui/ThumbnailBarImpl$9;
.super Ljava/lang/Object;
.source "ThumbnailBarImpl.java"

# interfaces
.implements Lcom/oneplus/base/component/ComponentSearchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/ui/ThumbnailBarImpl;->onInitialize()V
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
.field final synthetic this$0:Lcom/meizu/media/camera/ui/ThumbnailBarImpl;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/ui/ThumbnailBarImpl;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/meizu/media/camera/ui/ThumbnailBarImpl$9;->this$0:Lcom/meizu/media/camera/ui/ThumbnailBarImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComponentFound(Lcom/oneplus/base/component/Component;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 250
    check-cast p1, Lcom/meizu/media/camera/ui/CaptureButtons;

    .end local p1    # "x0":Lcom/oneplus/base/component/Component;
    invoke-virtual {p0, p1}, Lcom/meizu/media/camera/ui/ThumbnailBarImpl$9;->onComponentFound(Lcom/meizu/media/camera/ui/CaptureButtons;)V

    return-void
.end method

.method public onComponentFound(Lcom/meizu/media/camera/ui/CaptureButtons;)V
    .locals 2
    .param p1, "component"    # Lcom/meizu/media/camera/ui/CaptureButtons;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/meizu/media/camera/ui/ThumbnailBarImpl$9;->this$0:Lcom/meizu/media/camera/ui/ThumbnailBarImpl;

    # setter for: Lcom/meizu/media/camera/ui/ThumbnailBarImpl;->m_CaptureButtons:Lcom/meizu/media/camera/ui/CaptureButtons;
    invoke-static {v0, p1}, Lcom/meizu/media/camera/ui/ThumbnailBarImpl;->access$902(Lcom/meizu/media/camera/ui/ThumbnailBarImpl;Lcom/meizu/media/camera/ui/CaptureButtons;)Lcom/meizu/media/camera/ui/CaptureButtons;

    .line 255
    sget-object v0, Lcom/meizu/media/camera/ui/CaptureButtons;->EVENT_BUTTON_PRESSED:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/meizu/media/camera/ui/ThumbnailBarImpl$9$1;

    invoke-direct {v1, p0}, Lcom/meizu/media/camera/ui/ThumbnailBarImpl$9$1;-><init>(Lcom/meizu/media/camera/ui/ThumbnailBarImpl$9;)V

    invoke-interface {p1, v0, v1}, Lcom/meizu/media/camera/ui/CaptureButtons;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 263
    sget-object v0, Lcom/meizu/media/camera/ui/CaptureButtons;->EVENT_BUTTON_RELEASED:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/meizu/media/camera/ui/ThumbnailBarImpl$9$2;

    invoke-direct {v1, p0}, Lcom/meizu/media/camera/ui/ThumbnailBarImpl$9$2;-><init>(Lcom/meizu/media/camera/ui/ThumbnailBarImpl$9;)V

    invoke-interface {p1, v0, v1}, Lcom/meizu/media/camera/ui/CaptureButtons;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 271
    return-void
.end method
