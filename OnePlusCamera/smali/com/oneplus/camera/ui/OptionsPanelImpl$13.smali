.class Lcom/oneplus/camera/ui/OptionsPanelImpl$13;
.super Ljava/lang/Object;
.source "OptionsPanelImpl.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/OptionsPanelImpl;->setupEventHandler()V
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
        "Lcom/oneplus/camera/scene/SceneEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V
    .locals 0

    .prologue
    .line 1166
    iput-object p1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl$13;->this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;

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
    .line 1166
    check-cast p3, Lcom/oneplus/camera/scene/SceneEventArgs;

    .end local p3    # "x2":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/camera/ui/OptionsPanelImpl$13;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/scene/SceneEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/scene/SceneEventArgs;)V
    .locals 2
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p3, "e"    # Lcom/oneplus/camera/scene/SceneEventArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/scene/SceneEventArgs;",
            ">;",
            "Lcom/oneplus/camera/scene/SceneEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1170
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/camera/scene/SceneEventArgs;>;"
    iget-object v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl$13;->this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;

    invoke-virtual {p3}, Lcom/oneplus/camera/scene/SceneEventArgs;->getScene()Lcom/oneplus/camera/scene/Scene;

    move-result-object v1

    # invokes: Lcom/oneplus/camera/ui/OptionsPanelImpl;->onSceneRemoved(Lcom/oneplus/camera/scene/Scene;)V
    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->access$1200(Lcom/oneplus/camera/ui/OptionsPanelImpl;Lcom/oneplus/camera/scene/Scene;)V

    .line 1171
    iget-object v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl$13;->this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;

    # invokes: Lcom/oneplus/camera/ui/OptionsPanelImpl;->updateSceneButton()V
    invoke-static {v0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->access$1100(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V

    .line 1172
    return-void
.end method
