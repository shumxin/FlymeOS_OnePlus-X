.class final Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;
.super Lcom/meizu/media/camera/CaptureHandle;
.source "CameraThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/CameraThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PhotoCaptureHandle"
.end annotation


# instance fields
.field public captureHandler:Lcom/meizu/media/camera/PhotoCaptureHandler;

.field public final flags:I

.field public final frameCount:I

.field public isFastCaptureEnabled:Z

.field final synthetic this$0:Lcom/meizu/media/camera/CameraThread;


# direct methods
.method public constructor <init>(Lcom/meizu/media/camera/CameraThread;I)V
    .locals 1
    .param p2, "frameCount"    # I

    .prologue
    .line 544
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;-><init>(Lcom/meizu/media/camera/CameraThread;II)V

    .line 545
    return-void
.end method

.method public constructor <init>(Lcom/meizu/media/camera/CameraThread;II)V
    .locals 1
    .param p2, "frameCount"    # I
    .param p3, "flags"    # I

    .prologue
    .line 548
    iput-object p1, p0, Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;->this$0:Lcom/meizu/media/camera/CameraThread;

    .line 549
    sget-object v0, Lcom/meizu/media/camera/media/MediaType;->PHOTO:Lcom/meizu/media/camera/media/MediaType;

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/CaptureHandle;-><init>(Lcom/meizu/media/camera/media/MediaType;)V

    .line 550
    iput p3, p0, Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;->flags:I

    .line 551
    iput p2, p0, Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;->frameCount:I

    .line 552
    return-void
.end method


# virtual methods
.method public complete()V
    .locals 0

    .prologue
    .line 556
    invoke-virtual {p0}, Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;->closeDirectly()V

    .line 557
    return-void
.end method

.method public isBurstPhotoCapture()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 562
    iget v1, p0, Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;->frameCount:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 568
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;->this$0:Lcom/meizu/media/camera/CameraThread;

    # invokes: Lcom/meizu/media/camera/CameraThread;->stopPhotoCapture(Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;)V
    invoke-static {v0, p0}, Lcom/meizu/media/camera/CameraThread;->access$1300(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/CameraThread$PhotoCaptureHandle;)V

    .line 569
    return-void
.end method
