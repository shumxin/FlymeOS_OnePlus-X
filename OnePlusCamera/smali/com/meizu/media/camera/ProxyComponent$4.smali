.class Lcom/meizu/media/camera/ProxyComponent$4;
.super Ljava/lang/Object;
.source "ProxyComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/ProxyComponent;->cancelCallingTargetMethod(Lcom/meizu/media/camera/ProxyComponent$AsyncMethodCallHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/ProxyComponent;

.field final synthetic val$handle:Lcom/meizu/media/camera/ProxyComponent$AsyncMethodCallHandle;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/ProxyComponent;Lcom/meizu/media/camera/ProxyComponent$AsyncMethodCallHandle;)V
    .locals 0

    .prologue
    .line 262
    .local p0, "this":Lcom/meizu/media/camera/ProxyComponent$4;, "Lcom/meizu/media/camera/ProxyComponent.4;"
    iput-object p1, p0, Lcom/meizu/media/camera/ProxyComponent$4;->this$0:Lcom/meizu/media/camera/ProxyComponent;

    iput-object p2, p0, Lcom/meizu/media/camera/ProxyComponent$4;->val$handle:Lcom/meizu/media/camera/ProxyComponent$AsyncMethodCallHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 266
    .local p0, "this":Lcom/meizu/media/camera/ProxyComponent$4;, "Lcom/meizu/media/camera/ProxyComponent.4;"
    iget-object v0, p0, Lcom/meizu/media/camera/ProxyComponent$4;->val$handle:Lcom/meizu/media/camera/ProxyComponent$AsyncMethodCallHandle;

    iget-object v0, v0, Lcom/meizu/media/camera/ProxyComponent$AsyncMethodCallHandle;->resultHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 267
    return-void
.end method
