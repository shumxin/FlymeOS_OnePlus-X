.class Lcom/meizu/media/camera/FaceTrackerImpl$5;
.super Ljava/lang/Object;
.source "FaceTrackerImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/FaceTrackerImpl;->onInitialize()V
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
.field final synthetic this$0:Lcom/meizu/media/camera/FaceTrackerImpl;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/FaceTrackerImpl;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/meizu/media/camera/FaceTrackerImpl$5;->this$0:Lcom/meizu/media/camera/FaceTrackerImpl;

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
    .line 230
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/meizu/media/camera/OperationState;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/meizu/media/camera/OperationState;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getOldValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/OperationState;->STARTED:Lcom/meizu/media/camera/OperationState;

    if-ne v0, v1, :cond_0

    .line 231
    iget-object v0, p0, Lcom/meizu/media/camera/FaceTrackerImpl$5;->this$0:Lcom/meizu/media/camera/FaceTrackerImpl;

    const/4 v1, 0x0

    # invokes: Lcom/meizu/media/camera/FaceTrackerImpl;->onFacesChanged(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/meizu/media/camera/FaceTrackerImpl;->access$400(Lcom/meizu/media/camera/FaceTrackerImpl;Ljava/util/List;)V

    .line 232
    :cond_0
    return-void
.end method
