.class Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$15;
.super Ljava/lang/Object;
.source "FocusExposureIndicatorImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->onInitialize()V
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
        "Lcom/meizu/media/camera/FocusMode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;)V
    .locals 0

    .prologue
    .line 1006
    iput-object p1, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$15;->this$0:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;

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
            "Lcom/meizu/media/camera/FocusMode;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/meizu/media/camera/FocusMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1010
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/meizu/media/camera/FocusMode;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/meizu/media/camera/FocusMode;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/FocusMode;->MANUAL:Lcom/meizu/media/camera/FocusMode;

    if-ne v0, v1, :cond_0

    .line 1011
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$15;->this$0:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;

    # invokes: Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->hideFocusIndicator()V
    invoke-static {v0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->access$500(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;)V

    .line 1012
    :cond_0
    return-void
.end method
