.class Lcom/oneplus/camera/ui/OptionsPanelImpl$24;
.super Ljava/lang/Object;
.source "OptionsPanelImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/OptionsPanelImpl;->setupPropertyChangedCallback()V
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
        "Lcom/oneplus/camera/scene/Scene;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V
    .locals 0

    .prologue
    .line 1360
    iput-object p1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl$24;->this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;

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
            "Lcom/oneplus/camera/scene/Scene;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/camera/scene/Scene;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1364
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/camera/scene/Scene;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/scene/Scene;>;"
    iget-object v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl$24;->this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/scene/Scene;

    # invokes: Lcom/oneplus/camera/ui/OptionsPanelImpl;->onSceneChanged(Lcom/oneplus/camera/scene/Scene;)V
    invoke-static {v1, v0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->access$3200(Lcom/oneplus/camera/ui/OptionsPanelImpl;Lcom/oneplus/camera/scene/Scene;)V

    .line 1366
    iget-object v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl$24;->this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;

    # invokes: Lcom/oneplus/camera/ui/OptionsPanelImpl;->updateSceneButton()V
    invoke-static {v0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->access$1100(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V

    .line 1367
    return-void
.end method
