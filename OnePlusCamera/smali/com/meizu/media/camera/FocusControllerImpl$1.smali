.class Lcom/meizu/media/camera/FocusControllerImpl$1;
.super Ljava/lang/Object;
.source "FocusControllerImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/FocusControllerImpl;
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
        "Ljava/util/List",
        "<",
        "Lcom/meizu/media/camera/Camera$MeteringRect;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/FocusControllerImpl;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/FocusControllerImpl;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/meizu/media/camera/FocusControllerImpl$1;->this$0:Lcom/meizu/media/camera/FocusControllerImpl;

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
            "Ljava/util/List",
            "<",
            "Lcom/meizu/media/camera/Camera$MeteringRect;",
            ">;>;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/media/camera/Camera$MeteringRect;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/util/List<Lcom/meizu/media/camera/Camera$MeteringRect;>;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/util/List<Lcom/meizu/media/camera/Camera$MeteringRect;>;>;"
    iget-object v1, p0, Lcom/meizu/media/camera/FocusControllerImpl$1;->this$0:Lcom/meizu/media/camera/FocusControllerImpl;

    check-cast p1, Lcom/meizu/media/camera/Camera;

    .end local p1    # "source":Lcom/oneplus/base/PropertySource;
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    # invokes: Lcom/meizu/media/camera/FocusControllerImpl;->onAfRegionsChanged(Lcom/meizu/media/camera/Camera;Ljava/util/List;)V
    invoke-static {v1, p1, v0}, Lcom/meizu/media/camera/FocusControllerImpl;->access$000(Lcom/meizu/media/camera/FocusControllerImpl;Lcom/meizu/media/camera/Camera;Ljava/util/List;)V

    .line 30
    return-void
.end method
