.class Lcom/meizu/media/camera/panorama/PanoramaUI$6$1;
.super Ljava/lang/Object;
.source "PanoramaUI.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/panorama/PanoramaUI$6;->onComponentFound(Lcom/meizu/media/camera/ui/CameraGallery;)V
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
        "Lcom/meizu/media/camera/ui/CameraGallery$UIState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/media/camera/panorama/PanoramaUI$6;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/panorama/PanoramaUI$6;)V
    .locals 0

    .prologue
    .line 746
    iput-object p1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI$6$1;->this$1:Lcom/meizu/media/camera/panorama/PanoramaUI$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 3
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/meizu/media/camera/ui/CameraGallery$UIState;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/meizu/media/camera/ui/CameraGallery$UIState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 751
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/meizu/media/camera/ui/CameraGallery$UIState;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/meizu/media/camera/ui/CameraGallery$UIState;>;"
    sget-object v1, Lcom/meizu/media/camera/panorama/PanoramaUI$12;->$SwitchMap$com$oneplus$camera$ui$CameraGallery$UIState:[I

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/ui/CameraGallery$UIState;

    invoke-virtual {v0}, Lcom/meizu/media/camera/ui/CameraGallery$UIState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 761
    :cond_0
    :goto_0
    return-void

    .line 754
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI$6$1;->this$1:Lcom/meizu/media/camera/panorama/PanoramaUI$6;

    iget-object v0, v0, Lcom/meizu/media/camera/panorama/PanoramaUI$6;->this$0:Lcom/meizu/media/camera/panorama/PanoramaUI;

    iget-object v1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI$6$1;->this$1:Lcom/meizu/media/camera/panorama/PanoramaUI$6;

    iget-object v1, v1, Lcom/meizu/media/camera/panorama/PanoramaUI$6;->this$0:Lcom/meizu/media/camera/panorama/PanoramaUI;

    # getter for: Lcom/meizu/media/camera/panorama/PanoramaUI;->m_RotationLockHandle:Lcom/oneplus/base/Handle;
    invoke-static {v1}, Lcom/meizu/media/camera/panorama/PanoramaUI;->access$1400(Lcom/meizu/media/camera/panorama/PanoramaUI;)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    # setter for: Lcom/meizu/media/camera/panorama/PanoramaUI;->m_RotationLockHandle:Lcom/oneplus/base/Handle;
    invoke-static {v0, v1}, Lcom/meizu/media/camera/panorama/PanoramaUI;->access$1402(Lcom/meizu/media/camera/panorama/PanoramaUI;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 757
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI$6$1;->this$1:Lcom/meizu/media/camera/panorama/PanoramaUI$6;

    iget-object v0, v0, Lcom/meizu/media/camera/panorama/PanoramaUI$6;->this$0:Lcom/meizu/media/camera/panorama/PanoramaUI;

    # invokes: Lcom/meizu/media/camera/panorama/PanoramaUI;->isEntered()Z
    invoke-static {v0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->access$1500(Lcom/meizu/media/camera/panorama/PanoramaUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI$6$1;->this$1:Lcom/meizu/media/camera/panorama/PanoramaUI$6;

    iget-object v0, v0, Lcom/meizu/media/camera/panorama/PanoramaUI$6;->this$0:Lcom/meizu/media/camera/panorama/PanoramaUI;

    # getter for: Lcom/meizu/media/camera/panorama/PanoramaUI;->m_RotationLockHandle:Lcom/oneplus/base/Handle;
    invoke-static {v0}, Lcom/meizu/media/camera/panorama/PanoramaUI;->access$1400(Lcom/meizu/media/camera/panorama/PanoramaUI;)Lcom/oneplus/base/Handle;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI$6$1;->this$1:Lcom/meizu/media/camera/panorama/PanoramaUI$6;

    iget-object v0, v0, Lcom/meizu/media/camera/panorama/PanoramaUI$6;->this$0:Lcom/meizu/media/camera/panorama/PanoramaUI;

    iget-object v1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI$6$1;->this$1:Lcom/meizu/media/camera/panorama/PanoramaUI$6;

    iget-object v1, v1, Lcom/meizu/media/camera/panorama/PanoramaUI$6;->this$0:Lcom/meizu/media/camera/panorama/PanoramaUI;

    invoke-virtual {v1}, Lcom/meizu/media/camera/panorama/PanoramaUI;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1, v2}, Lcom/meizu/media/camera/CameraActivity;->lockRotation(Lcom/oneplus/base/Rotation;)Lcom/oneplus/base/Handle;

    move-result-object v1

    # setter for: Lcom/meizu/media/camera/panorama/PanoramaUI;->m_RotationLockHandle:Lcom/oneplus/base/Handle;
    invoke-static {v0, v1}, Lcom/meizu/media/camera/panorama/PanoramaUI;->access$1402(Lcom/meizu/media/camera/panorama/PanoramaUI;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 751
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
