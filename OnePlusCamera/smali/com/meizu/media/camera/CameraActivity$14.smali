.class Lcom/meizu/media/camera/CameraActivity$14;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/CameraActivity;->getViewfinder()Lcom/meizu/media/camera/ui/Viewfinder;
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/CameraActivity;)V
    .locals 0

    .prologue
    .line 1896
    iput-object p1, p0, Lcom/meizu/media/camera/CameraActivity$14;->this$0:Lcom/meizu/media/camera/CameraActivity;

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
            "Ljava/lang/Object;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1900
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Object;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Object;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    .line 1901
    .local v0, "receiver":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1902
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity$14;->this$0:Lcom/meizu/media/camera/CameraActivity;

    invoke-virtual {v1, v0}, Lcom/meizu/media/camera/CameraActivity;->onCameraPreviewReceiverReady(Ljava/lang/Object;)V

    .line 1905
    :goto_0
    return-void

    .line 1904
    :cond_0
    iget-object v1, p0, Lcom/meizu/media/camera/CameraActivity$14;->this$0:Lcom/meizu/media/camera/CameraActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/meizu/media/camera/CameraActivity;->onCameraPreviewReceiverDestroyed(Z)V

    goto :goto_0
.end method
