.class final Lcom/meizu/media/camera/UIExposureControllerImpl$AELockHandle;
.super Lcom/oneplus/base/Handle;
.source "UIExposureControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/UIExposureControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AELockHandle"
.end annotation


# instance fields
.field public final internalHandle:Lcom/oneplus/base/Handle;

.field final synthetic this$0:Lcom/meizu/media/camera/UIExposureControllerImpl;


# direct methods
.method public constructor <init>(Lcom/meizu/media/camera/UIExposureControllerImpl;Lcom/oneplus/base/Handle;)V
    .locals 1
    .param p2, "internalHandle"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/meizu/media/camera/UIExposureControllerImpl$AELockHandle;->this$0:Lcom/meizu/media/camera/UIExposureControllerImpl;

    .line 34
    const-string v0, "AELockWrapper"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 35
    iput-object p2, p0, Lcom/meizu/media/camera/UIExposureControllerImpl$AELockHandle;->internalHandle:Lcom/oneplus/base/Handle;

    .line 36
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/meizu/media/camera/UIExposureControllerImpl$AELockHandle;->this$0:Lcom/meizu/media/camera/UIExposureControllerImpl;

    # invokes: Lcom/meizu/media/camera/UIExposureControllerImpl;->unlockAutoExposure(Lcom/meizu/media/camera/UIExposureControllerImpl$AELockHandle;)V
    invoke-static {v0, p0}, Lcom/meizu/media/camera/UIExposureControllerImpl;->access$000(Lcom/meizu/media/camera/UIExposureControllerImpl;Lcom/meizu/media/camera/UIExposureControllerImpl$AELockHandle;)V

    .line 42
    return-void
.end method
