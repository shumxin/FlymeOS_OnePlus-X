.class public Lcom/meizu/media/camera/scene/SceneEventArgs;
.super Lcom/oneplus/base/EventArgs;
.source "SceneEventArgs.java"


# instance fields
.field private final m_Scene:Lcom/meizu/media/camera/scene/Scene;


# direct methods
.method public constructor <init>(Lcom/meizu/media/camera/scene/Scene;)V
    .locals 0
    .param p1, "scene"    # Lcom/meizu/media/camera/scene/Scene;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/oneplus/base/EventArgs;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/meizu/media/camera/scene/SceneEventArgs;->m_Scene:Lcom/meizu/media/camera/scene/Scene;

    .line 21
    return-void
.end method


# virtual methods
.method public final getScene()Lcom/meizu/media/camera/scene/Scene;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/meizu/media/camera/scene/SceneEventArgs;->m_Scene:Lcom/meizu/media/camera/scene/Scene;

    return-object v0
.end method