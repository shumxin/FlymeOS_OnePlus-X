.class Lcom/oneplus/camera/CameraImpl$1;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "CameraImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/CameraImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/CameraImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraImpl;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/oneplus/camera/CameraImpl$1;->this$0:Lcom/oneplus/camera/CameraImpl;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl$1;->this$0:Lcom/oneplus/camera/CameraImpl;

    # invokes: Lcom/oneplus/camera/CameraImpl;->onCaptureSessionClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    invoke-static {v0, p1}, Lcom/oneplus/camera/CameraImpl;->access$200(Lcom/oneplus/camera/CameraImpl;Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 101
    return-void
.end method

.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl$1;->this$0:Lcom/oneplus/camera/CameraImpl;

    # invokes: Lcom/oneplus/camera/CameraImpl;->onCaptureSessionConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    invoke-static {v0, p1}, Lcom/oneplus/camera/CameraImpl;->access$100(Lcom/oneplus/camera/CameraImpl;Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 96
    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl$1;->this$0:Lcom/oneplus/camera/CameraImpl;

    # invokes: Lcom/oneplus/camera/CameraImpl;->onCaptureSessionConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    invoke-static {v0, p1}, Lcom/oneplus/camera/CameraImpl;->access$000(Lcom/oneplus/camera/CameraImpl;Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 90
    return-void
.end method
