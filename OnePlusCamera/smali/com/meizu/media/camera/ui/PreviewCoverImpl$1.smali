.class Lcom/meizu/media/camera/ui/PreviewCoverImpl$1;
.super Ljava/lang/Object;
.source "PreviewCoverImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/ui/PreviewCoverImpl;
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
        "Lcom/meizu/media/camera/ui/PreviewCoverProducer$State;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/ui/PreviewCoverImpl;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/ui/PreviewCoverImpl;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/meizu/media/camera/ui/PreviewCoverImpl$1;->this$0:Lcom/meizu/media/camera/ui/PreviewCoverImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 1
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/meizu/media/camera/ui/PreviewCoverProducer$State;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/meizu/media/camera/ui/PreviewCoverProducer$State;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/meizu/media/camera/ui/PreviewCoverProducer$State;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/meizu/media/camera/ui/PreviewCoverProducer$State;>;"
    iget-object v0, p0, Lcom/meizu/media/camera/ui/PreviewCoverImpl$1;->this$0:Lcom/meizu/media/camera/ui/PreviewCoverImpl;

    # invokes: Lcom/meizu/media/camera/ui/PreviewCoverImpl;->onPreviewCoverProducerStateChanged(Lcom/oneplus/base/PropertyChangeEventArgs;)V
    invoke-static {v0, p3}, Lcom/meizu/media/camera/ui/PreviewCoverImpl;->access$000(Lcom/meizu/media/camera/ui/PreviewCoverImpl;Lcom/oneplus/base/PropertyChangeEventArgs;)V

    .line 31
    return-void
.end method
