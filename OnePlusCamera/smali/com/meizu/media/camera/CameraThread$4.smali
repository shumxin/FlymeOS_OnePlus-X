.class Lcom/meizu/media/camera/CameraThread$4;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/CameraThread;
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
.field final synthetic this$0:Lcom/meizu/media/camera/CameraThread;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/CameraThread;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcom/meizu/media/camera/CameraThread$4;->this$0:Lcom/meizu/media/camera/CameraThread;

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
            "Lcom/meizu/media/camera/OperationState;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/meizu/media/camera/OperationState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 341
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/meizu/media/camera/OperationState;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/meizu/media/camera/OperationState;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/OperationState;->STOPPED:Lcom/meizu/media/camera/OperationState;

    if-ne v0, v1, :cond_0

    .line 342
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread$4;->this$0:Lcom/meizu/media/camera/CameraThread;

    check-cast p1, Lcom/meizu/media/camera/Camera;

    .end local p1    # "source":Lcom/oneplus/base/PropertySource;
    # invokes: Lcom/meizu/media/camera/CameraThread;->onCaptureCompleted(Lcom/meizu/media/camera/Camera;)V
    invoke-static {v0, p1}, Lcom/meizu/media/camera/CameraThread;->access$300(Lcom/meizu/media/camera/CameraThread;Lcom/meizu/media/camera/Camera;)V

    .line 343
    :cond_0
    return-void
.end method
