.class Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$8;
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


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;)V
    .locals 0

    .prologue
    .line 939
    iput-object p1, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$8;->this$0:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 2
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .param p2, "key"    # Lcom/oneplus/base/PropertyKey;
    .param p3, "e"    # Lcom/oneplus/base/PropertyChangeEventArgs;

    .prologue
    .line 943
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$8;->this$0:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;

    const/4 v1, 0x0

    # invokes: Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->onExposureCompChanged(Z)V
    invoke-static {v0, v1}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->access$900(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;Z)V

    .line 944
    return-void
.end method
