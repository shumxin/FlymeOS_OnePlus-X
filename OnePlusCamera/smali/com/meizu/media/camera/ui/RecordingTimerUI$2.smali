.class Lcom/meizu/media/camera/ui/RecordingTimerUI$2;
.super Ljava/lang/Object;
.source "RecordingTimerUI.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/ui/RecordingTimerUI;->onInitialize()V
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
.field final synthetic this$0:Lcom/meizu/media/camera/ui/RecordingTimerUI;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/ui/RecordingTimerUI;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/meizu/media/camera/ui/RecordingTimerUI$2;->this$0:Lcom/meizu/media/camera/ui/RecordingTimerUI;

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
    .line 87
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/meizu/media/camera/VideoCaptureState;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/meizu/media/camera/VideoCaptureState;>;"
    sget-object v1, Lcom/meizu/media/camera/ui/RecordingTimerUI$4;->$SwitchMap$com$oneplus$camera$VideoCaptureState:[I

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/VideoCaptureState;

    invoke-virtual {v0}, Lcom/meizu/media/camera/VideoCaptureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 99
    :goto_0
    return-void

    .line 90
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/media/camera/ui/RecordingTimerUI$2;->this$0:Lcom/meizu/media/camera/ui/RecordingTimerUI;

    sget-object v1, Lcom/meizu/media/camera/VideoCaptureState;->CAPTURING:Lcom/meizu/media/camera/VideoCaptureState;

    # setter for: Lcom/meizu/media/camera/ui/RecordingTimerUI;->m_VideoCaptureState:Lcom/meizu/media/camera/VideoCaptureState;
    invoke-static {v0, v1}, Lcom/meizu/media/camera/ui/RecordingTimerUI;->access$102(Lcom/meizu/media/camera/ui/RecordingTimerUI;Lcom/meizu/media/camera/VideoCaptureState;)Lcom/meizu/media/camera/VideoCaptureState;

    .line 91
    iget-object v0, p0, Lcom/meizu/media/camera/ui/RecordingTimerUI$2;->this$0:Lcom/meizu/media/camera/ui/RecordingTimerUI;

    # invokes: Lcom/meizu/media/camera/ui/RecordingTimerUI;->showRecordingTimer()V
    invoke-static {v0}, Lcom/meizu/media/camera/ui/RecordingTimerUI;->access$200(Lcom/meizu/media/camera/ui/RecordingTimerUI;)V

    goto :goto_0

    .line 94
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/media/camera/ui/RecordingTimerUI$2;->this$0:Lcom/meizu/media/camera/ui/RecordingTimerUI;

    sget-object v1, Lcom/meizu/media/camera/VideoCaptureState;->STOPPING:Lcom/meizu/media/camera/VideoCaptureState;

    # setter for: Lcom/meizu/media/camera/ui/RecordingTimerUI;->m_VideoCaptureState:Lcom/meizu/media/camera/VideoCaptureState;
    invoke-static {v0, v1}, Lcom/meizu/media/camera/ui/RecordingTimerUI;->access$102(Lcom/meizu/media/camera/ui/RecordingTimerUI;Lcom/meizu/media/camera/VideoCaptureState;)Lcom/meizu/media/camera/VideoCaptureState;

    .line 95
    iget-object v0, p0, Lcom/meizu/media/camera/ui/RecordingTimerUI$2;->this$0:Lcom/meizu/media/camera/ui/RecordingTimerUI;

    const/16 v1, 0x2710

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 96
    iget-object v0, p0, Lcom/meizu/media/camera/ui/RecordingTimerUI$2;->this$0:Lcom/meizu/media/camera/ui/RecordingTimerUI;

    # invokes: Lcom/meizu/media/camera/ui/RecordingTimerUI;->hideRecordingTimer()V
    invoke-static {v0}, Lcom/meizu/media/camera/ui/RecordingTimerUI;->access$300(Lcom/meizu/media/camera/ui/RecordingTimerUI;)V

    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
