.class Lcom/meizu/media/camera/CameraImpl$10;
.super Ljava/lang/Object;
.source "CameraImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/CameraImpl;->onCaptureSessionConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/CameraImpl;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/CameraImpl;)V
    .locals 0

    .prologue
    .line 1796
    iput-object p1, p0, Lcom/meizu/media/camera/CameraImpl$10;->this$0:Lcom/meizu/media/camera/CameraImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1800
    iget-object v0, p0, Lcom/meizu/media/camera/CameraImpl$10;->this$0:Lcom/meizu/media/camera/CameraImpl;

    const/4 v1, 0x1

    # invokes: Lcom/meizu/media/camera/CameraImpl;->captureInternal(I)Z
    invoke-static {v0, v1}, Lcom/meizu/media/camera/CameraImpl;->access$1800(Lcom/meizu/media/camera/CameraImpl;I)Z

    .line 1801
    return-void
.end method
