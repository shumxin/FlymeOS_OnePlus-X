.class Lcom/meizu/media/camera/CameraThread$25;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/CameraThread;->onStarting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/EventHandler",
        "<",
        "Lcom/oneplus/base/component/ComponentEventArgs",
        "<",
        "Lcom/oneplus/base/component/Component;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/CameraThread;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/CameraThread;)V
    .locals 0

    .prologue
    .line 2318
    iput-object p1, p0, Lcom/meizu/media/camera/CameraThread$25;->this$0:Lcom/meizu/media/camera/CameraThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/base/EventSource;
    .param p2, "x1"    # Lcom/oneplus/base/EventKey;
    .param p3, "x2"    # Lcom/oneplus/base/EventArgs;

    .prologue
    .line 2318
    check-cast p3, Lcom/oneplus/base/component/ComponentEventArgs;

    .end local p3    # "x2":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/meizu/media/camera/CameraThread$25;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/component/ComponentEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/component/ComponentEventArgs;)V
    .locals 2
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/base/component/ComponentEventArgs",
            "<",
            "Lcom/oneplus/base/component/Component;",
            ">;>;",
            "Lcom/oneplus/base/component/ComponentEventArgs",
            "<",
            "Lcom/oneplus/base/component/Component;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2322
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/base/component/ComponentEventArgs<Lcom/oneplus/base/component/Component;>;>;"
    .local p3, "e":Lcom/oneplus/base/component/ComponentEventArgs;, "Lcom/oneplus/base/component/ComponentEventArgs<Lcom/oneplus/base/component/Component;>;"
    iget-object v0, p0, Lcom/meizu/media/camera/CameraThread$25;->this$0:Lcom/meizu/media/camera/CameraThread;

    sget-object v1, Lcom/oneplus/base/component/ComponentOwner;->EVENT_COMPONENT_ADDED:Lcom/oneplus/base/EventKey;

    # invokes: Lcom/meizu/media/camera/CameraThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    invoke-static {v0, v1, p3}, Lcom/meizu/media/camera/CameraThread;->access$2800(Lcom/meizu/media/camera/CameraThread;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 2323
    return-void
.end method
