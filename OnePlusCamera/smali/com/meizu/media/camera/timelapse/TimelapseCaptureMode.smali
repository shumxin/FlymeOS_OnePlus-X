.class final Lcom/meizu/media/camera/timelapse/TimelapseCaptureMode;
.super Lcom/meizu/media/camera/capturemode/ComponentBasedCaptureMode;
.source "TimelapseCaptureMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/media/camera/timelapse/TimelapseCaptureMode$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meizu/media/camera/capturemode/ComponentBasedCaptureMode",
        "<",
        "Lcom/meizu/media/camera/timelapse/TimelapseUI;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/CameraActivity;)V
    .locals 3
    .param p1, "cameraActivity"    # Lcom/meizu/media/camera/CameraActivity;

    .prologue
    .line 14
    const-string v0, "Time-lapse"

    const-string v1, "timelapse"

    const-class v2, Lcom/meizu/media/camera/timelapse/TimelapseUI;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/meizu/media/camera/capturemode/ComponentBasedCaptureMode;-><init>(Lcom/meizu/media/camera/CameraActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 15
    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/meizu/media/camera/timelapse/TimelapseCaptureMode;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f090012

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImage(Lcom/meizu/media/camera/capturemode/CaptureMode$ImageUsage;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "usage"    # Lcom/meizu/media/camera/capturemode/CaptureMode$ImageUsage;

    .prologue
    .line 30
    sget-object v0, Lcom/meizu/media/camera/timelapse/TimelapseCaptureMode$1;->$SwitchMap$com$oneplus$camera$capturemode$CaptureMode$ImageUsage:[I

    invoke-virtual {p1}, Lcom/meizu/media/camera/capturemode/CaptureMode$ImageUsage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 35
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 33
    :pswitch_0
    invoke-virtual {p0}, Lcom/meizu/media/camera/timelapse/TimelapseCaptureMode;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f020017

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
