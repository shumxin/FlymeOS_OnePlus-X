.class final Lcom/meizu/media/camera/CameraActivity$RotationLockHandle;
.super Lcom/oneplus/base/Handle;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RotationLockHandle"
.end annotation


# instance fields
.field public final rotation:Lcom/oneplus/base/Rotation;

.field final synthetic this$0:Lcom/meizu/media/camera/CameraActivity;


# direct methods
.method public constructor <init>(Lcom/meizu/media/camera/CameraActivity;Lcom/oneplus/base/Rotation;)V
    .locals 1
    .param p2, "rotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    .line 589
    iput-object p1, p0, Lcom/meizu/media/camera/CameraActivity$RotationLockHandle;->this$0:Lcom/meizu/media/camera/CameraActivity;

    .line 590
    const-string v0, "RotationLock"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 591
    iput-object p2, p0, Lcom/meizu/media/camera/CameraActivity$RotationLockHandle;->rotation:Lcom/oneplus/base/Rotation;

    .line 592
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 597
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity$RotationLockHandle;->this$0:Lcom/meizu/media/camera/CameraActivity;

    # invokes: Lcom/meizu/media/camera/CameraActivity;->unlockRotation(Lcom/meizu/media/camera/CameraActivity$RotationLockHandle;)V
    invoke-static {v0, p0}, Lcom/meizu/media/camera/CameraActivity;->access$400(Lcom/meizu/media/camera/CameraActivity;Lcom/meizu/media/camera/CameraActivity$RotationLockHandle;)V

    .line 598
    return-void
.end method
