.class Lcom/oneplus/camera/CameraActivity$3;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/CameraActivity;->bindToCameraThread(Lcom/oneplus/camera/media/MediaType;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 0

    .prologue
    .line 764
    iput-object p1, p0, Lcom/oneplus/camera/CameraActivity$3;->this$0:Lcom/oneplus/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 6
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .param p2, "key"    # Lcom/oneplus/base/PropertyKey;
    .param p3, "e"    # Lcom/oneplus/base/PropertyChangeEventArgs;

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 768
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p2, v1, v4

    const/4 v2, 0x1

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->clone()Lcom/oneplus/base/EventArgs;

    move-result-object v3

    aput-object v3, v1, v2

    .line 769
    .local v1, "params":[Ljava/lang/Object;
    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    if-eq p2, v2, :cond_1

    .line 770
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity$3;->this$0:Lcom/oneplus/camera/CameraActivity;

    invoke-static {v2, v5, v4, v4, v1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 777
    :cond_0
    :goto_0
    return-void

    .line 773
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/CameraActivity$3;->this$0:Lcom/oneplus/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/oneplus/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 774
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 775
    invoke-static {v0, v5, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0
.end method
