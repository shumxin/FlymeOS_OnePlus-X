.class Lcom/meizu/media/camera/CameraThread$27;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/CameraThread;->openCamera(Lcom/meizu/media/camera/Camera;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/CameraThread;

.field final synthetic val$camera:Lcom/meizu/media/camera/Camera;

.field final synthetic val$flags:I


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/Camera;I)V
    .locals 0

    .prologue
    .line 2397
    iput-object p1, p0, Lcom/meizu/media/camera/CameraThread$27;->this$0:Lcom/meizu/media/camera/CameraThread;

    iput-object p2, p0, Lcom/meizu/media/camera/CameraThread$27;->val$camera:Lcom/meizu/media/camera/Camera;

    iput p3, p0, Lcom/meizu/media/camera/CameraThread$27;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2401
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread$27;->this$0:Lcom/meizu/media/camera/CameraThread;

    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread$27;->val$camera:Lcom/meizu/media/camera/Camera;

    iget v2, p0, Lcom/meizu/media/camera/CameraThread$27;->val$flags:I

    # invokes: Lcom/meizu/media/camera/CameraThread;->openCameraInternal(Lcom/meizu/media/camera/Camera;I)Z
    invoke-static {v0, v1, v2}, Lcom/meizu/media/camera/CameraThread;->access$3000(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/Camera;I)Z

    .line 2402
    return-void
.end method
