.class Lcom/meizu/media/camera/ui/ViewfinderImpl$6;
.super Ljava/lang/Object;
.source "ViewfinderImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/ui/ViewfinderImpl;->onInitialize()V
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
        "Lcom/oneplus/base/ScreenSize;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/ui/ViewfinderImpl;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/ui/ViewfinderImpl;)V
    .locals 0

    .prologue
    .line 558
    iput-object p1, p0, Lcom/meizu/media/camera/ui/ViewfinderImpl$6;->this$0:Lcom/meizu/media/camera/ui/ViewfinderImpl;

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
            "Lcom/oneplus/base/ScreenSize;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/base/ScreenSize;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 562
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/base/ScreenSize;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/base/ScreenSize;>;"
    iget-object v1, p0, Lcom/meizu/media/camera/ui/ViewfinderImpl$6;->this$0:Lcom/meizu/media/camera/ui/ViewfinderImpl;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/ScreenSize;

    const/4 v2, 0x0

    # invokes: Lcom/meizu/media/camera/ui/ViewfinderImpl;->onScreenSizeChanged(Lcom/oneplus/base/ScreenSize;Z)V
    invoke-static {v1, v0, v2}, Lcom/meizu/media/camera/ui/ViewfinderImpl;->access$700(Lcom/meizu/media/camera/ui/ViewfinderImpl;Lcom/oneplus/base/ScreenSize;Z)V

    .line 563
    return-void
.end method
