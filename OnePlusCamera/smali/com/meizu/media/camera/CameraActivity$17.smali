.class Lcom/meizu/media/camera/CameraActivity$17;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/CameraActivity;->onCameraThreadStarted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/CameraActivity;

.field final synthetic val$eventKeys:Ljava/util/List;

.field final synthetic val$initialMediaType:Lcom/meizu/media/camera/media/MediaType;

.field final synthetic val$propKeys:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/CameraActivity;Lcom/meizu/media/camera/media/MediaType;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 2780
    iput-object p1, p0, Lcom/meizu/media/camera/CameraActivity$17;->this$0:Lcom/meizu/media/camera/CameraActivity;

    iput-object p2, p0, Lcom/meizu/media/camera/CameraActivity$17;->val$initialMediaType:Lcom/meizu/media/camera/media/MediaType;

    iput-object p3, p0, Lcom/meizu/media/camera/CameraActivity$17;->val$eventKeys:Ljava/util/List;

    iput-object p4, p0, Lcom/meizu/media/camera/CameraActivity$17;->val$propKeys:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2784
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity$17;->this$0:Lcom/meizu/media/camera/CameraActivity;

    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity$17;->val$initialMediaType:Lcom/meizu/media/camera/media/MediaType;

    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity$17;->val$eventKeys:Ljava/util/List;

    iget-object v3, p0, Lcom/meizu/media/camera/CameraActivity$17;->val$propKeys:Ljava/util/List;

    # invokes: Lcom/meizu/media/camera/CameraActivity;->bindToCameraThread(Lcom/meizu/media/camera/media/MediaType;Ljava/util/List;Ljava/util/List;)V
    invoke-static {v0, v1, v2, v3}, Lcom/meizu/media/camera/CameraActivity;->access$2000(Lcom/meizu/media/camera/CameraActivity;Lcom/meizu/media/camera/media/MediaType;Ljava/util/List;Ljava/util/List;)V

    .line 2785
    return-void
.end method
