.class Lcom/meizu/media/camera/panorama/PanoramaUI$6;
.super Ljava/lang/Object;
.source "PanoramaUI.java"

# interfaces
.implements Lcom/oneplus/base/component/ComponentSearchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/panorama/PanoramaUI;->onInitialize()V
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
        "Lcom/meizu/media/camera/ui/CameraGallery;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/panorama/PanoramaUI;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/panorama/PanoramaUI;)V
    .locals 0

    .prologue
    .line 741
    iput-object p1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI$6;->this$0:Lcom/meizu/media/camera/panorama/PanoramaUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComponentFound(Lcom/oneplus/base/component/Component;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 741
    check-cast p1, Lcom/meizu/media/camera/ui/CameraGallery;

    .end local p1    # "x0":Lcom/oneplus/base/component/Component;
    invoke-virtual {p0, p1}, Lcom/meizu/media/camera/panorama/PanoramaUI$6;->onComponentFound(Lcom/meizu/media/camera/ui/CameraGallery;)V

    return-void
.end method

.method public onComponentFound(Lcom/meizu/media/camera/ui/CameraGallery;)V
    .locals 2
    .param p1, "component"    # Lcom/meizu/media/camera/ui/CameraGallery;

    .prologue
    .line 745
    sget-object v0, Lcom/meizu/media/camera/ui/CameraGallery;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v1, Lcom/meizu/media/camera/panorama/PanoramaUI$6$1;

    invoke-direct {v1, p0}, Lcom/meizu/media/camera/panorama/PanoramaUI$6$1;-><init>(Lcom/meizu/media/camera/panorama/PanoramaUI$6;)V

    invoke-interface {p1, v0, v1}, Lcom/meizu/media/camera/ui/CameraGallery;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 763
    return-void
.end method
