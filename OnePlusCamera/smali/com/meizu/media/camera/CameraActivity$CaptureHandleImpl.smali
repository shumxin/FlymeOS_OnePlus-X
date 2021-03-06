.class final Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;
.super Lcom/meizu/media/camera/CaptureHandle;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CaptureHandleImpl"
.end annotation


# instance fields
.field public volatile closeFlags:I

.field public creationTime:J

.field public final frameCount:I

.field public internalCaptureHandle:Lcom/meizu/media/camera/CaptureHandle;

.field final synthetic this$0:Lcom/meizu/media/camera/CameraActivity;


# direct methods
.method public constructor <init>(Lcom/meizu/media/camera/CameraActivity;)V
    .locals 2

    .prologue
    .line 519
    iput-object p1, p0, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;->this$0:Lcom/meizu/media/camera/CameraActivity;

    .line 520
    sget-object v0, Lcom/meizu/media/camera/media/MediaType;->VIDEO:Lcom/meizu/media/camera/media/MediaType;

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/CaptureHandle;-><init>(Lcom/meizu/media/camera/media/MediaType;)V

    .line 521
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;->frameCount:I

    .line 522
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;->creationTime:J

    .line 523
    return-void
.end method

.method public constructor <init>(Lcom/meizu/media/camera/CameraActivity;I)V
    .locals 2
    .param p2, "frameCount"    # I

    .prologue
    .line 513
    iput-object p1, p0, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;->this$0:Lcom/meizu/media/camera/CameraActivity;

    .line 514
    sget-object v0, Lcom/meizu/media/camera/media/MediaType;->PHOTO:Lcom/meizu/media/camera/media/MediaType;

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/CaptureHandle;-><init>(Lcom/meizu/media/camera/media/MediaType;)V

    .line 515
    iput p2, p0, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;->frameCount:I

    .line 516
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;->creationTime:J

    .line 517
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .prologue
    .line 527
    invoke-super {p0}, Lcom/meizu/media/camera/CaptureHandle;->closeDirectly()V

    .line 528
    return-void
.end method

.method public getInternalCaptureHandle()Lcom/meizu/media/camera/CaptureHandle;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;->internalCaptureHandle:Lcom/meizu/media/camera/CaptureHandle;

    return-object v0
.end method

.method public isBurstPhotoCapture()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 533
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;->getMediaType()Lcom/meizu/media/camera/media/MediaType;

    move-result-object v1

    sget-object v2, Lcom/meizu/media/camera/media/MediaType;->PHOTO:Lcom/meizu/media/camera/media/MediaType;

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;->frameCount:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onClose(I)V
    .locals 3
    .param p1, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 539
    iput p1, p0, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;->closeFlags:I

    .line 540
    sget-object v0, Lcom/meizu/media/camera/CameraActivity$31;->$SwitchMap$com$oneplus$camera$media$MediaType:[I

    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;->getMediaType()Lcom/meizu/media/camera/media/MediaType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/media/camera/media/MediaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 549
    :goto_0
    return-void

    .line 543
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;->this$0:Lcom/meizu/media/camera/CameraActivity;

    # invokes: Lcom/meizu/media/camera/CameraActivity;->stopPhotoCapture(Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;)V
    invoke-static {v0, p0}, Lcom/meizu/media/camera/CameraActivity;->access$100(Lcom/meizu/media/camera/CameraActivity;Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;)V

    goto :goto_0

    .line 546
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;->this$0:Lcom/meizu/media/camera/CameraActivity;

    # invokes: Lcom/meizu/media/camera/CameraActivity;->stopVideoCapture(Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;ZZ)V
    invoke-static {v0, p0, v2, v2}, Lcom/meizu/media/camera/CameraActivity;->access$200(Lcom/meizu/media/camera/CameraActivity;Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;ZZ)V

    goto :goto_0

    .line 540
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateCreationTime()V
    .locals 2

    .prologue
    .line 553
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/media/camera/CameraActivity$CaptureHandleImpl;->creationTime:J

    .line 554
    return-void
.end method
