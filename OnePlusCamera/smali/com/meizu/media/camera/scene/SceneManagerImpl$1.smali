.class Lcom/meizu/media/camera/scene/SceneManagerImpl$1;
.super Ljava/lang/Object;
.source "SceneManagerImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/scene/SceneManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/PropertyChangedCallback",
        "<",
        "Lcom/meizu/media/camera/Mode$State;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/scene/SceneManagerImpl;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/scene/SceneManagerImpl;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/meizu/media/camera/scene/SceneManagerImpl$1;->this$0:Lcom/meizu/media/camera/scene/SceneManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 2
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/meizu/media/camera/Mode$State;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/meizu/media/camera/Mode$State;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/meizu/media/camera/Mode$State;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/meizu/media/camera/Mode$State;>;"
    sget-object v1, Lcom/meizu/media/camera/scene/SceneManagerImpl$2;->$SwitchMap$com$oneplus$camera$Mode$State:[I

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/Mode$State;

    invoke-virtual {v0}, Lcom/meizu/media/camera/Mode$State;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 67
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getOldValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/Mode$State;->DISABLED:Lcom/meizu/media/camera/Mode$State;

    if-ne v0, v1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/meizu/media/camera/scene/SceneManagerImpl$1;->this$0:Lcom/meizu/media/camera/scene/SceneManagerImpl;

    check-cast p1, Lcom/meizu/media/camera/scene/Scene;

    .end local p1    # "source":Lcom/oneplus/base/PropertySource;
    # invokes: Lcom/meizu/media/camera/scene/SceneManagerImpl;->onSceneEnabled(Lcom/meizu/media/camera/scene/Scene;)V
    invoke-static {v0, p1}, Lcom/meizu/media/camera/scene/SceneManagerImpl;->access$300(Lcom/meizu/media/camera/scene/SceneManagerImpl;Lcom/meizu/media/camera/scene/Scene;)V

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 61
    .restart local p1    # "source":Lcom/oneplus/base/PropertySource;
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/media/camera/scene/SceneManagerImpl$1;->this$0:Lcom/meizu/media/camera/scene/SceneManagerImpl;

    check-cast p1, Lcom/meizu/media/camera/scene/Scene;

    .end local p1    # "source":Lcom/oneplus/base/PropertySource;
    # invokes: Lcom/meizu/media/camera/scene/SceneManagerImpl;->onSceneDisabled(Lcom/meizu/media/camera/scene/Scene;)V
    invoke-static {v0, p1}, Lcom/meizu/media/camera/scene/SceneManagerImpl;->access$100(Lcom/meizu/media/camera/scene/SceneManagerImpl;Lcom/meizu/media/camera/scene/Scene;)V

    goto :goto_0

    .line 64
    .restart local p1    # "source":Lcom/oneplus/base/PropertySource;
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/media/camera/scene/SceneManagerImpl$1;->this$0:Lcom/meizu/media/camera/scene/SceneManagerImpl;

    check-cast p1, Lcom/meizu/media/camera/scene/Scene;

    .end local p1    # "source":Lcom/oneplus/base/PropertySource;
    # invokes: Lcom/meizu/media/camera/scene/SceneManagerImpl;->onSceneReleased(Lcom/meizu/media/camera/scene/Scene;)V
    invoke-static {v0, p1}, Lcom/meizu/media/camera/scene/SceneManagerImpl;->access$200(Lcom/meizu/media/camera/scene/SceneManagerImpl;Lcom/meizu/media/camera/scene/Scene;)V

    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
