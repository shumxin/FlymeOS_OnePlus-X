.class Lcom/meizu/media/camera/CameraThread$13;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/CameraThread;->addComponentBuilders([Lcom/oneplus/base/component/ComponentBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/CameraThread;

.field final synthetic val$builders:[Lcom/oneplus/base/component/ComponentBuilder;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/CameraThread;[Lcom/oneplus/base/component/ComponentBuilder;)V
    .locals 0

    .prologue
    .line 669
    iput-object p1, p0, Lcom/meizu/media/camera/CameraThread$13;->this$0:Lcom/meizu/media/camera/CameraThread;

    iput-object p2, p0, Lcom/meizu/media/camera/CameraThread$13;->val$builders:[Lcom/oneplus/base/component/ComponentBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 673
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread$13;->this$0:Lcom/meizu/media/camera/CameraThread;

    # getter for: Lcom/meizu/media/camera/CameraThread;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;
    invoke-static {v0}, Lcom/meizu/media/camera/CameraThread;->access$1500(Lcom/meizu/media/camera/CameraThread;)Lcom/oneplus/base/component/ComponentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/media/camera/CameraThread$13;->val$builders:[Lcom/oneplus/base/component/ComponentBuilder;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/meizu/media/camera/CameraThread$13;->this$0:Lcom/meizu/media/camera/CameraThread;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/component/ComponentManager;->addComponentBuilders([Lcom/oneplus/base/component/ComponentBuilder;[Ljava/lang/Object;)V

    .line 674
    return-void
.end method
