.class Lcom/meizu/media/camera/ui/CaptureModeSwitcher$4;
.super Ljava/lang/Object;
.source "CaptureModeSwitcher.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/ui/CaptureModeSwitcher;->onInitialize()V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/ui/CaptureModeSwitcher;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/ui/CaptureModeSwitcher;)V
    .locals 0

    .prologue
    .line 636
    iput-object p1, p0, Lcom/meizu/media/camera/ui/CaptureModeSwitcher$4;->this$0:Lcom/meizu/media/camera/ui/CaptureModeSwitcher;

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
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 640
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Boolean;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Boolean;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/meizu/media/camera/ui/CaptureModeSwitcher$4;->this$0:Lcom/meizu/media/camera/ui/CaptureModeSwitcher;

    iget-object v1, p0, Lcom/meizu/media/camera/ui/CaptureModeSwitcher$4;->this$0:Lcom/meizu/media/camera/ui/CaptureModeSwitcher;

    # getter for: Lcom/meizu/media/camera/ui/CaptureModeSwitcher;->m_PreviewCoverHandle:Lcom/oneplus/base/Handle;
    invoke-static {v1}, Lcom/meizu/media/camera/ui/CaptureModeSwitcher;->access$2900(Lcom/meizu/media/camera/ui/CaptureModeSwitcher;)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    # setter for: Lcom/meizu/media/camera/ui/CaptureModeSwitcher;->m_PreviewCoverHandle:Lcom/oneplus/base/Handle;
    invoke-static {v0, v1}, Lcom/meizu/media/camera/ui/CaptureModeSwitcher;->access$2902(Lcom/meizu/media/camera/ui/CaptureModeSwitcher;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 644
    :cond_0
    return-void
.end method
