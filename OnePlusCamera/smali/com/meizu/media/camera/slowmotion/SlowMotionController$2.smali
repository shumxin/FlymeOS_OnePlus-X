.class Lcom/meizu/media/camera/slowmotion/SlowMotionController$2;
.super Ljava/lang/Object;
.source "SlowMotionController.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/slowmotion/SlowMotionController;->onInitialize()V
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
        "Lcom/meizu/media/camera/Camera;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/slowmotion/SlowMotionController;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/slowmotion/SlowMotionController;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/meizu/media/camera/slowmotion/SlowMotionController$2;->this$0:Lcom/meizu/media/camera/slowmotion/SlowMotionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 6
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/meizu/media/camera/Camera;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/meizu/media/camera/Camera;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/meizu/media/camera/Camera;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/meizu/media/camera/Camera;>;"
    const/16 v5, 0x78

    .line 158
    iget-object v2, p0, Lcom/meizu/media/camera/slowmotion/SlowMotionController$2;->this$0:Lcom/meizu/media/camera/slowmotion/SlowMotionController;

    # invokes: Lcom/meizu/media/camera/slowmotion/SlowMotionController;->isEntered()Z
    invoke-static {v2}, Lcom/meizu/media/camera/slowmotion/SlowMotionController;->access$100(Lcom/meizu/media/camera/slowmotion/SlowMotionController;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 161
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getOldValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/Camera;

    .line 162
    .local v1, "oldCamera":Lcom/meizu/media/camera/Camera;
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/Camera;

    .line 163
    .local v0, "newCamera":Lcom/meizu/media/camera/Camera;
    if-eqz v1, :cond_0

    .line 164
    sget-object v2, Lcom/meizu/media/camera/Camera;->PROP_PREVIEW_FPS_RANGE:Lcom/oneplus/base/PropertyKey;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/meizu/media/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 165
    :cond_0
    if-eqz v0, :cond_1

    .line 166
    sget-object v2, Lcom/meizu/media/camera/Camera;->PROP_PREVIEW_FPS_RANGE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Landroid/util/Range;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {v0, v2, v3}, Lcom/meizu/media/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 168
    .end local v0    # "newCamera":Lcom/meizu/media/camera/Camera;
    .end local v1    # "oldCamera":Lcom/meizu/media/camera/Camera;
    :cond_1
    return-void
.end method
