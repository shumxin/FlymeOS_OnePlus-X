.class Lcom/meizu/media/camera/CameraDeviceManagerBuilder;
.super Lcom/meizu/media/camera/CameraThreadComponentBuilder;
.source "CameraDeviceManagerImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 131
    sget-object v0, Lcom/oneplus/base/component/ComponentCreationPriority;->LAUNCH:Lcom/oneplus/base/component/ComponentCreationPriority;

    const-class v1, Lcom/meizu/media/camera/CameraDeviceManagerImpl;

    invoke-direct {p0, v0, v1}, Lcom/meizu/media/camera/CameraThreadComponentBuilder;-><init>(Lcom/oneplus/base/component/ComponentCreationPriority;Ljava/lang/Class;)V

    .line 132
    return-void
.end method


# virtual methods
.method protected create(Lcom/meizu/media/camera/CameraThread;)Lcom/meizu/media/camera/CameraThreadComponent;
    .locals 1
    .param p1, "cameraThread"    # Lcom/meizu/media/camera/CameraThread;

    .prologue
    .line 137
    new-instance v0, Lcom/meizu/media/camera/CameraDeviceManagerImpl;

    invoke-direct {v0, p1}, Lcom/meizu/media/camera/CameraDeviceManagerImpl;-><init>(Lcom/meizu/media/camera/CameraThread;)V

    return-object v0
.end method
