.class final Lcom/meizu/media/camera/scene/SceneManagerImpl$DefaultSceneHandle;
.super Lcom/oneplus/base/Handle;
.source "SceneManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/scene/SceneManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DefaultSceneHandle"
.end annotation


# instance fields
.field public final flags:I

.field public final scene:Lcom/meizu/media/camera/scene/Scene;

.field final synthetic this$0:Lcom/meizu/media/camera/scene/SceneManagerImpl;


# direct methods
.method public constructor <init>(Lcom/meizu/media/camera/scene/SceneManagerImpl;Lcom/meizu/media/camera/scene/Scene;I)V
    .locals 1
    .param p2, "scene"    # Lcom/meizu/media/camera/scene/Scene;
    .param p3, "flags"    # I

    .prologue
    .line 38
    iput-object p1, p0, Lcom/meizu/media/camera/scene/SceneManagerImpl$DefaultSceneHandle;->this$0:Lcom/meizu/media/camera/scene/SceneManagerImpl;

    .line 39
    const-string v0, "DefaultScene"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 40
    iput-object p2, p0, Lcom/meizu/media/camera/scene/SceneManagerImpl$DefaultSceneHandle;->scene:Lcom/meizu/media/camera/scene/Scene;

    .line 41
    iput p3, p0, Lcom/meizu/media/camera/scene/SceneManagerImpl$DefaultSceneHandle;->flags:I

    .line 42
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/meizu/media/camera/scene/SceneManagerImpl$DefaultSceneHandle;->this$0:Lcom/meizu/media/camera/scene/SceneManagerImpl;

    # invokes: Lcom/meizu/media/camera/scene/SceneManagerImpl;->restoreDefaultScene(Lcom/meizu/media/camera/scene/SceneManagerImpl$DefaultSceneHandle;I)V
    invoke-static {v0, p0, p1}, Lcom/meizu/media/camera/scene/SceneManagerImpl;->access$000(Lcom/meizu/media/camera/scene/SceneManagerImpl;Lcom/meizu/media/camera/scene/SceneManagerImpl$DefaultSceneHandle;I)V

    .line 48
    return-void
.end method
