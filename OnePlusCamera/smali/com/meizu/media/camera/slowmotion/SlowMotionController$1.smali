.class Lcom/meizu/media/camera/slowmotion/SlowMotionController$1;
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
        "Lcom/meizu/media/camera/VideoCaptureState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/slowmotion/SlowMotionController;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/slowmotion/SlowMotionController;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/meizu/media/camera/slowmotion/SlowMotionController$1;->this$0:Lcom/meizu/media/camera/slowmotion/SlowMotionController;

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
            "Lcom/meizu/media/camera/VideoCaptureState;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/meizu/media/camera/VideoCaptureState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/meizu/media/camera/VideoCaptureState;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/meizu/media/camera/VideoCaptureState;>;"
    sget-object v1, Lcom/meizu/media/camera/slowmotion/SlowMotionController$3;->$SwitchMap$com$oneplus$camera$VideoCaptureState:[I

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getOldValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/VideoCaptureState;

    invoke-virtual {v0}, Lcom/meizu/media/camera/VideoCaptureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 143
    :pswitch_0
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/VideoCaptureState;->CAPTURING:Lcom/meizu/media/camera/VideoCaptureState;

    if-eq v0, v1, :cond_0

    .line 146
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/media/camera/slowmotion/SlowMotionController$1;->this$0:Lcom/meizu/media/camera/slowmotion/SlowMotionController;

    # invokes: Lcom/meizu/media/camera/slowmotion/SlowMotionController;->onVideoCaptureStopped()V
    invoke-static {v0}, Lcom/meizu/media/camera/slowmotion/SlowMotionController;->access$000(Lcom/meizu/media/camera/slowmotion/SlowMotionController;)V

    goto :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
