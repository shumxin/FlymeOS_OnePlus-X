.class Lcom/meizu/media/camera/timelapse/TimelapseUI$2;
.super Ljava/lang/Object;
.source "TimelapseUI.java"

# interfaces
.implements Lcom/oneplus/base/component/ComponentSearchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/timelapse/TimelapseUI;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/component/ComponentSearchCallback",
        "<",
        "Lcom/meizu/media/camera/media/ResolutionManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/timelapse/TimelapseUI;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/timelapse/TimelapseUI;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/meizu/media/camera/timelapse/TimelapseUI$2;->this$0:Lcom/meizu/media/camera/timelapse/TimelapseUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComponentFound(Lcom/oneplus/base/component/Component;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 162
    check-cast p1, Lcom/meizu/media/camera/media/ResolutionManager;

    .end local p1    # "x0":Lcom/oneplus/base/component/Component;
    invoke-virtual {p0, p1}, Lcom/meizu/media/camera/timelapse/TimelapseUI$2;->onComponentFound(Lcom/meizu/media/camera/media/ResolutionManager;)V

    return-void
.end method

.method public onComponentFound(Lcom/meizu/media/camera/media/ResolutionManager;)V
    .locals 4
    .param p1, "component"    # Lcom/meizu/media/camera/media/ResolutionManager;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/meizu/media/camera/timelapse/TimelapseUI$2;->this$0:Lcom/meizu/media/camera/timelapse/TimelapseUI;

    # setter for: Lcom/meizu/media/camera/timelapse/TimelapseUI;->m_ResolutionManager:Lcom/meizu/media/camera/media/ResolutionManager;
    invoke-static {v0, p1}, Lcom/meizu/media/camera/timelapse/TimelapseUI;->access$102(Lcom/meizu/media/camera/timelapse/TimelapseUI;Lcom/meizu/media/camera/media/ResolutionManager;)Lcom/meizu/media/camera/media/ResolutionManager;

    .line 167
    iget-object v0, p0, Lcom/meizu/media/camera/timelapse/TimelapseUI$2;->this$0:Lcom/meizu/media/camera/timelapse/TimelapseUI;

    # invokes: Lcom/meizu/media/camera/timelapse/TimelapseUI;->isEntered()Z
    invoke-static {v0}, Lcom/meizu/media/camera/timelapse/TimelapseUI;->access$200(Lcom/meizu/media/camera/timelapse/TimelapseUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/meizu/media/camera/timelapse/TimelapseUI$2;->this$0:Lcom/meizu/media/camera/timelapse/TimelapseUI;

    # getter for: Lcom/meizu/media/camera/timelapse/TimelapseUI;->m_Handles:Lcom/oneplus/base/HandleSet;
    invoke-static {v0}, Lcom/meizu/media/camera/timelapse/TimelapseUI;->access$400(Lcom/meizu/media/camera/timelapse/TimelapseUI;)Lcom/oneplus/base/HandleSet;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/media/camera/timelapse/TimelapseUI$2;->this$0:Lcom/meizu/media/camera/timelapse/TimelapseUI;

    # getter for: Lcom/meizu/media/camera/timelapse/TimelapseUI;->m_ResolutionManager:Lcom/meizu/media/camera/media/ResolutionManager;
    invoke-static {v1}, Lcom/meizu/media/camera/timelapse/TimelapseUI;->access$100(Lcom/meizu/media/camera/timelapse/TimelapseUI;)Lcom/meizu/media/camera/media/ResolutionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/media/camera/timelapse/TimelapseUI$2;->this$0:Lcom/meizu/media/camera/timelapse/TimelapseUI;

    # getter for: Lcom/meizu/media/camera/timelapse/TimelapseUI;->m_ResolutionSelector:Lcom/meizu/media/camera/timelapse/TimelapseUI$ResolutionSelector;
    invoke-static {v2}, Lcom/meizu/media/camera/timelapse/TimelapseUI;->access$300(Lcom/meizu/media/camera/timelapse/TimelapseUI;)Lcom/meizu/media/camera/timelapse/TimelapseUI$ResolutionSelector;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/meizu/media/camera/media/ResolutionManager;->setResolutionSelector(Lcom/meizu/media/camera/media/ResolutionSelector;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 169
    :cond_0
    return-void
.end method
