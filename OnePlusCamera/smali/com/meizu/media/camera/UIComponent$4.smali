.class Lcom/meizu/media/camera/UIComponent$4;
.super Ljava/lang/Object;
.source "UIComponent.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/UIComponent;->onInitialize()V
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
.field final synthetic this$0:Lcom/meizu/media/camera/UIComponent;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/UIComponent;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/meizu/media/camera/UIComponent$4;->this$0:Lcom/meizu/media/camera/UIComponent;

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
    .line 250
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Boolean;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/meizu/media/camera/UIComponent$4;->this$0:Lcom/meizu/media/camera/UIComponent;

    const/4 v1, 0x0

    # setter for: Lcom/meizu/media/camera/UIComponent;->m_IsCameraThreadStartedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    invoke-static {v0, v1}, Lcom/meizu/media/camera/UIComponent;->access$102(Lcom/meizu/media/camera/UIComponent;Lcom/oneplus/base/PropertyChangedCallback;)Lcom/oneplus/base/PropertyChangedCallback;

    .line 251
    invoke-interface {p1, p2, p0}, Lcom/oneplus/base/PropertySource;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 252
    iget-object v0, p0, Lcom/meizu/media/camera/UIComponent$4;->this$0:Lcom/meizu/media/camera/UIComponent;

    invoke-virtual {v0}, Lcom/meizu/media/camera/UIComponent;->onCameraThreadStarted()V

    .line 253
    return-void
.end method
