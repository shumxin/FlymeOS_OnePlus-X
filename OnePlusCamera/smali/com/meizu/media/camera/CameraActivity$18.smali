.class Lcom/meizu/media/camera/CameraActivity$18;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/CameraActivity;->onContentViewSet(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/CameraActivity;)V
    .locals 0

    .prologue
    .line 2995
    iput-object p1, p0, Lcom/meizu/media/camera/CameraActivity$18;->this$0:Lcom/meizu/media/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 6
    .param p1, "visibility"    # I

    .prologue
    const/4 v5, 0x1

    const/16 v4, -0x50

    .line 2999
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity$18;->this$0:Lcom/meizu/media/camera/CameraActivity;

    sget-object v1, Lcom/oneplus/base/BaseActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3014
    :goto_0
    return-void

    .line 3001
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_2

    .line 3003
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity$18;->this$0:Lcom/meizu/media/camera/CameraActivity;

    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_TOUCHING_ON_SCREEN:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3004
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity$18;->this$0:Lcom/meizu/media/camera/CameraActivity;

    # setter for: Lcom/meizu/media/camera/CameraActivity;->m_CancelTouchEvents:Z
    invoke-static {v0, v5}, Lcom/meizu/media/camera/CameraActivity;->access$2102(Lcom/meizu/media/camera/CameraActivity;Z)Z

    .line 3005
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity$18;->this$0:Lcom/meizu/media/camera/CameraActivity;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    # setter for: Lcom/meizu/media/camera/CameraActivity;->m_LastNavBarVisibleTime:J
    invoke-static {v0, v2, v3}, Lcom/meizu/media/camera/CameraActivity;->access$2202(Lcom/meizu/media/camera/CameraActivity;J)J

    .line 3006
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity$18;->this$0:Lcom/meizu/media/camera/CameraActivity;

    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3012
    :goto_1
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity$18;->this$0:Lcom/meizu/media/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/meizu/media/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3013
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity$18;->this$0:Lcom/meizu/media/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/meizu/media/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 3010
    :cond_2
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity$18;->this$0:Lcom/meizu/media/camera/CameraActivity;

    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_1
.end method
