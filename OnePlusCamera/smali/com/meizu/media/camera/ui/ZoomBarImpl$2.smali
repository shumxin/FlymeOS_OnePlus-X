.class Lcom/meizu/media/camera/ui/ZoomBarImpl$2;
.super Ljava/lang/Object;
.source "ZoomBarImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/ui/ZoomBarImpl;->onInitialize()V
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
        "Lcom/meizu/media/camera/Camera;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/ui/ZoomBarImpl;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/ui/ZoomBarImpl;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/meizu/media/camera/ui/ZoomBarImpl$2;->this$0:Lcom/meizu/media/camera/ui/ZoomBarImpl;

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
            "Lcom/meizu/media/camera/Camera;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/meizu/media/camera/Camera;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/meizu/media/camera/Camera;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/meizu/media/camera/Camera;>;"
    iget-object v0, p0, Lcom/meizu/media/camera/ui/ZoomBarImpl$2;->this$0:Lcom/meizu/media/camera/ui/ZoomBarImpl;

    iget-object v1, p0, Lcom/meizu/media/camera/ui/ZoomBarImpl$2;->this$0:Lcom/meizu/media/camera/ui/ZoomBarImpl;

    # getter for: Lcom/meizu/media/camera/ui/ZoomBarImpl;->m_Container:Landroid/view/View;
    invoke-static {v1}, Lcom/meizu/media/camera/ui/ZoomBarImpl;->access$200(Lcom/meizu/media/camera/ui/ZoomBarImpl;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    # invokes: Lcom/meizu/media/camera/ui/ZoomBarImpl;->setViewVisibility(Landroid/view/View;Z)V
    invoke-static {v0, v1, v2}, Lcom/meizu/media/camera/ui/ZoomBarImpl;->access$300(Lcom/meizu/media/camera/ui/ZoomBarImpl;Landroid/view/View;Z)V

    .line 167
    return-void
.end method