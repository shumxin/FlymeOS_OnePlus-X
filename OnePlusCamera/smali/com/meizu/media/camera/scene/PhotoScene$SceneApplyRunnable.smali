.class final Lcom/meizu/media/camera/scene/PhotoScene$SceneApplyRunnable;
.super Ljava/lang/Object;
.source "PhotoScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/scene/PhotoScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SceneApplyRunnable"
.end annotation


# instance fields
.field private final m_Camera:Lcom/meizu/media/camera/Camera;

.field private final m_SceneMode:I

.field final synthetic this$0:Lcom/meizu/media/camera/scene/PhotoScene;


# direct methods
.method public constructor <init>(Lcom/meizu/media/camera/scene/PhotoScene;Lcom/meizu/media/camera/Camera;I)V
    .locals 0
    .param p2, "camera"    # Lcom/meizu/media/camera/Camera;
    .param p3, "sceneMode"    # I

    .prologue
    .line 80
    iput-object p1, p0, Lcom/meizu/media/camera/scene/PhotoScene$SceneApplyRunnable;->this$0:Lcom/meizu/media/camera/scene/PhotoScene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p2, p0, Lcom/meizu/media/camera/scene/PhotoScene$SceneApplyRunnable;->m_Camera:Lcom/meizu/media/camera/Camera;

    .line 82
    iput p3, p0, Lcom/meizu/media/camera/scene/PhotoScene$SceneApplyRunnable;->m_SceneMode:I

    .line 83
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/meizu/media/camera/scene/PhotoScene$SceneApplyRunnable;->m_Camera:Lcom/meizu/media/camera/Camera;

    sget-object v2, Lcom/meizu/media/camera/Camera;->PROP_SCENE_MODE:Lcom/oneplus/base/PropertyKey;

    iget v3, p0, Lcom/meizu/media/camera/scene/PhotoScene$SceneApplyRunnable;->m_SceneMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/meizu/media/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 94
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/meizu/media/camera/scene/PhotoScene$SceneApplyRunnable;->this$0:Lcom/meizu/media/camera/scene/PhotoScene;

    # getter for: Lcom/meizu/media/camera/scene/PhotoScene;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/meizu/media/camera/scene/PhotoScene;->access$000(Lcom/meizu/media/camera/scene/PhotoScene;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to set scene mode to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/meizu/media/camera/scene/PhotoScene$SceneApplyRunnable;->m_SceneMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
