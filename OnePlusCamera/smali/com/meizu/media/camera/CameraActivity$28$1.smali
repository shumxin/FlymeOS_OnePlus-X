.class Lcom/meizu/media/camera/CameraActivity$28$1;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/CameraActivity$28;->run()V
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
        "Lcom/meizu/media/camera/OperationState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/media/camera/CameraActivity$28;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/CameraActivity$28;)V
    .locals 0

    .prologue
    .line 4892
    iput-object p1, p0, Lcom/meizu/media/camera/CameraActivity$28$1;->this$1:Lcom/meizu/media/camera/CameraActivity$28;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 7
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/meizu/media/camera/OperationState;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/meizu/media/camera/OperationState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4896
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/meizu/media/camera/OperationState;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/meizu/media/camera/OperationState;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/OperationState;->STARTED:Lcom/meizu/media/camera/OperationState;

    if-ne v0, v1, :cond_0

    .line 4898
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity$28$1;->this$1:Lcom/meizu/media/camera/CameraActivity$28;

    iget-object v0, v0, Lcom/meizu/media/camera/CameraActivity$28;->this$0:Lcom/meizu/media/camera/CameraActivity;

    const/16 v1, -0xb

    iget-object v2, p0, Lcom/meizu/media/camera/CameraActivity$28$1;->this$1:Lcom/meizu/media/camera/CameraActivity$28;

    iget v2, v2, Lcom/meizu/media/camera/CameraActivity$28;->val$cameraPreviewSessionID:I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/meizu/media/camera/CameraActivity$28$1;->this$1:Lcom/meizu/media/camera/CameraActivity$28;

    iget-object v4, v4, Lcom/meizu/media/camera/CameraActivity$28;->val$camera:Lcom/meizu/media/camera/Camera;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 4899
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity$28$1;->this$1:Lcom/meizu/media/camera/CameraActivity$28;

    iget-object v0, v0, Lcom/meizu/media/camera/CameraActivity$28;->val$camera:Lcom/meizu/media/camera/Camera;

    sget-object v1, Lcom/meizu/media/camera/Camera;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1, p0}, Lcom/meizu/media/camera/Camera;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 4903
    :goto_0
    return-void

    .line 4902
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity$28$1;->this$1:Lcom/meizu/media/camera/CameraActivity$28;

    iget-object v0, v0, Lcom/meizu/media/camera/CameraActivity$28;->this$0:Lcom/meizu/media/camera/CameraActivity;

    # getter for: Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/meizu/media/camera/CameraActivity;->access$3600(Lcom/meizu/media/camera/CameraActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "startCameraPreview() - Preview state changed from "

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getOldValue()Ljava/lang/Object;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v4

    const-string v5, ", session ID : "

    iget-object v6, p0, Lcom/meizu/media/camera/CameraActivity$28$1;->this$1:Lcom/meizu/media/camera/CameraActivity$28;

    iget v6, v6, Lcom/meizu/media/camera/CameraActivity$28;->val$cameraPreviewSessionID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
