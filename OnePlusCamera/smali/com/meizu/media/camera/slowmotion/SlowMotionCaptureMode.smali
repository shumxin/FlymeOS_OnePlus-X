.class final Lcom/meizu/media/camera/slowmotion/SlowMotionCaptureMode;
.super Lcom/meizu/media/camera/capturemode/ComponentBasedCaptureMode;
.source "SlowMotionCaptureMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/media/camera/slowmotion/SlowMotionCaptureMode$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meizu/media/camera/capturemode/ComponentBasedCaptureMode",
        "<",
        "Lcom/meizu/media/camera/slowmotion/SlowMotionUI;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/CameraActivity;)V
    .locals 3
    .param p1, "cameraActivity"    # Lcom/meizu/media/camera/CameraActivity;

    .prologue
    .line 15
    const-string v0, "Slow-motion"

    const-string v1, "slowmotion"

    const-class v2, Lcom/meizu/media/camera/slowmotion/SlowMotionUI;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/meizu/media/camera/capturemode/ComponentBasedCaptureMode;-><init>(Lcom/meizu/media/camera/CameraActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 16
    sget-object v0, Lcom/meizu/media/camera/slowmotion/SlowMotionCaptureMode;->PROP_TARGET_CAMERA_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/meizu/media/camera/Camera$LensFacing;->BACK:Lcom/meizu/media/camera/Camera$LensFacing;

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/slowmotion/SlowMotionCaptureMode;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 17
    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/meizu/media/camera/slowmotion/SlowMotionCaptureMode;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f090011

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImage(Lcom/meizu/media/camera/capturemode/CaptureMode$ImageUsage;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "usage"    # Lcom/meizu/media/camera/capturemode/CaptureMode$ImageUsage;

    .prologue
    .line 32
    sget-object v0, Lcom/meizu/media/camera/slowmotion/SlowMotionCaptureMode$1;->$SwitchMap$com$oneplus$camera$capturemode$CaptureMode$ImageUsage:[I

    invoke-virtual {p1}, Lcom/meizu/media/camera/capturemode/CaptureMode$ImageUsage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 37
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 35
    :pswitch_0
    invoke-virtual {p0}, Lcom/meizu/media/camera/slowmotion/SlowMotionCaptureMode;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f020016

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
