.class Lcom/meizu/media/camera/CameraActivity$6;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/CameraActivity;->bindToNormalComponents()Z
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
        "Lcom/meizu/media/camera/ui/PreviewCover$UIState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/CameraActivity;)V
    .locals 0

    .prologue
    .line 873
    iput-object p1, p0, Lcom/meizu/media/camera/CameraActivity$6;->this$0:Lcom/meizu/media/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 4
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/meizu/media/camera/ui/PreviewCover$UIState;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/meizu/media/camera/ui/PreviewCover$UIState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 878
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/meizu/media/camera/ui/PreviewCover$UIState;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/meizu/media/camera/ui/PreviewCover$UIState;>;"
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity$6;->this$0:Lcom/meizu/media/camera/CameraActivity;

    # getter for: Lcom/meizu/media/camera/CameraActivity;->m_PendingSwitchCamera:Lcom/meizu/media/camera/Camera;
    invoke-static {v0}, Lcom/meizu/media/camera/CameraActivity;->access$1200(Lcom/meizu/media/camera/CameraActivity;)Lcom/meizu/media/camera/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 880
    sget-object v1, Lcom/meizu/media/camera/CameraActivity$31;->$SwitchMap$com$oneplus$camera$ui$PreviewCover$UIState:[I

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/ui/PreviewCover$UIState;

    invoke-virtual {v0}, Lcom/meizu/media/camera/ui/PreviewCover$UIState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 889
    :cond_0
    :goto_0
    return-void

    .line 884
    :pswitch_0
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity$6;->this$0:Lcom/meizu/media/camera/CameraActivity;

    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity$6;->this$0:Lcom/meizu/media/camera/CameraActivity;

    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/Camera;

    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity$6;->this$0:Lcom/meizu/media/camera/CameraActivity;

    # getter for: Lcom/meizu/media/camera/CameraActivity;->m_PendingSwitchCamera:Lcom/meizu/media/camera/Camera;
    invoke-static {v2}, Lcom/meizu/media/camera/CameraActivity;->access$1200(Lcom/meizu/media/camera/CameraActivity;)Lcom/meizu/media/camera/Camera;

    move-result-object v2

    const/16 v3, 0xc

    # invokes: Lcom/meizu/media/camera/CameraActivity;->switchCamera(Lcom/meizu/media/camera/Camera;Lcom/meizu/media/camera/Camera;I)Z
    invoke-static {v1, v0, v2, v3}, Lcom/meizu/media/camera/CameraActivity;->access$1300(Lcom/meizu/media/camera/CameraActivity;Lcom/meizu/media/camera/Camera;Lcom/meizu/media/camera/Camera;I)Z

    .line 885
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity$6;->this$0:Lcom/meizu/media/camera/CameraActivity;

    const/4 v1, 0x0

    # setter for: Lcom/meizu/media/camera/CameraActivity;->m_PendingSwitchCamera:Lcom/meizu/media/camera/Camera;
    invoke-static {v0, v1}, Lcom/meizu/media/camera/CameraActivity;->access$1202(Lcom/meizu/media/camera/CameraActivity;Lcom/meizu/media/camera/Camera;)Lcom/meizu/media/camera/Camera;

    goto :goto_0

    .line 880
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
