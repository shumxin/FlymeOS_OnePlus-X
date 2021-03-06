.class final Lcom/meizu/media/camera/UIZoomControllerImpl;
.super Lcom/meizu/media/camera/ProxyComponent;
.source "UIZoomControllerImpl.java"

# interfaces
.implements Lcom/meizu/media/camera/ZoomController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meizu/media/camera/ProxyComponent",
        "<",
        "Lcom/meizu/media/camera/ZoomController;",
        ">;",
        "Lcom/meizu/media/camera/ZoomController;"
    }
.end annotation


# instance fields
.field private m_CaptureModeManager:Lcom/meizu/media/camera/capturemode/CaptureModeManager;

.field private m_DigitalZoomRunnable:Ljava/lang/Runnable;

.field private m_LastZoomChangedTime:J


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/CameraActivity;)V
    .locals 3
    .param p1, "cameraActivity"    # Lcom/meizu/media/camera/CameraActivity;

    .prologue
    .line 29
    const-string v0, "UI Zoom Controller"

    invoke-virtual {p1}, Lcom/meizu/media/camera/CameraActivity;->getCameraThread()Lcom/meizu/media/camera/CameraThread;

    move-result-object v1

    const-class v2, Lcom/meizu/media/camera/ZoomController;

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/meizu/media/camera/ProxyComponent;-><init>(Ljava/lang/String;Lcom/meizu/media/camera/CameraActivity;Lcom/oneplus/base/component/ComponentOwner;Ljava/lang/Class;)V

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/media/camera/UIZoomControllerImpl;F)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/UIZoomControllerImpl;
    .param p1, "x1"    # F

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/UIZoomControllerImpl;->setDigitalZoomProp(F)Z

    move-result v0

    return v0
.end method

.method private applyDigitalZoom(F)Z
    .locals 3
    .param p1, "zoom"    # F

    .prologue
    const/4 v0, 0x1

    .line 36
    invoke-virtual {p0}, Lcom/meizu/media/camera/UIZoomControllerImpl;->isTargetBound()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 38
    iget-object v1, p0, Lcom/meizu/media/camera/UIZoomControllerImpl;->m_DigitalZoomRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/meizu/media/camera/UIZoomControllerImpl;->getTargetOwner()Lcom/oneplus/base/component/ComponentOwner;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/media/camera/UIZoomControllerImpl;->m_DigitalZoomRunnable:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Lcom/oneplus/base/HandlerUtils;->removeCallbacks(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)V

    .line 40
    :cond_0
    new-instance v1, Lcom/meizu/media/camera/UIZoomControllerImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/meizu/media/camera/UIZoomControllerImpl$1;-><init>(Lcom/meizu/media/camera/UIZoomControllerImpl;F)V

    iput-object v1, p0, Lcom/meizu/media/camera/UIZoomControllerImpl;->m_DigitalZoomRunnable:Ljava/lang/Runnable;

    .line 48
    invoke-virtual {p0}, Lcom/meizu/media/camera/UIZoomControllerImpl;->getTargetOwner()Lcom/oneplus/base/component/ComponentOwner;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/media/camera/UIZoomControllerImpl;->m_DigitalZoomRunnable:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 50
    iget-object v0, p0, Lcom/meizu/media/camera/UIZoomControllerImpl;->TAG:Ljava/lang/String;

    const-string v1, "applyDigitalZoom() - Fail to set zoom asynchronously"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const/4 v0, 0x0

    .line 58
    :cond_1
    :goto_0
    return v0

    .line 57
    :cond_2
    iget-object v1, p0, Lcom/meizu/media/camera/UIZoomControllerImpl;->TAG:Ljava/lang/String;

    const-string v2, "applyDigitalZoom() - Target is not ready, set zoom later"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setDigitalZoomProp(F)Z
    .locals 4
    .param p1, "zoom"    # F

    .prologue
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 161
    invoke-virtual {p0}, Lcom/meizu/media/camera/UIZoomControllerImpl;->verifyAccess()V

    .line 162
    sget-object v0, Lcom/meizu/media/camera/UIZoomControllerImpl;->PROP_IS_DIGITAL_ZOOM_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/UIZoomControllerImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/meizu/media/camera/UIZoomControllerImpl;->TAG:Ljava/lang/String;

    const-string v2, "setDigitalZoomProp() - Digital zoom is unsupported"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 184
    :goto_0
    return v0

    .line 169
    :cond_0
    cmpg-float v0, p1, v2

    if-ltz v0, :cond_1

    sub-float v0, p1, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 170
    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 175
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/meizu/media/camera/UIZoomControllerImpl;->m_LastZoomChangedTime:J

    .line 176
    sget-object v0, Lcom/meizu/media/camera/UIZoomControllerImpl;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-super {p0, v0, v2}, Lcom/meizu/media/camera/ProxyComponent;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 177
    goto :goto_0

    .line 172
    :cond_2
    sget-object v0, Lcom/meizu/media/camera/UIZoomControllerImpl;->PROP_MAX_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/UIZoomControllerImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_1

    .line 178
    :cond_3
    sget-object v0, Lcom/meizu/media/camera/UIZoomControllerImpl;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/UIZoomControllerImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 181
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/UIZoomControllerImpl;->applyDigitalZoom(F)Z

    .line 184
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public lockZoom(I)Lcom/oneplus/base/Handle;
    .locals 7
    .param p1, "flags"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 68
    invoke-virtual {p0}, Lcom/meizu/media/camera/UIZoomControllerImpl;->verifyAccess()V

    .line 71
    const-string v1, "lockZoom"

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v6

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v1, v2, v3}, Lcom/meizu/media/camera/UIZoomControllerImpl;->callTargetMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/oneplus/base/Handle;

    move-result-object v0

    .line 72
    .local v0, "handle":Lcom/oneplus/base/Handle;
    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    sget-object v1, Lcom/meizu/media/camera/UIZoomControllerImpl;->PROP_IS_ZOOM_LOCKED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/meizu/media/camera/UIZoomControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 74
    :cond_0
    return-object v0
.end method

.method protected onBindingToTargetProperties(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/PropertyKey",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/PropertyKey<*>;>;"
    invoke-super {p0, p1}, Lcom/meizu/media/camera/ProxyComponent;->onBindingToTargetProperties(Ljava/util/List;)V

    .line 83
    sget-object v0, Lcom/meizu/media/camera/UIZoomControllerImpl;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lcom/meizu/media/camera/UIZoomControllerImpl;->PROP_IS_DIGITAL_ZOOM_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lcom/meizu/media/camera/UIZoomControllerImpl;->PROP_IS_ZOOM_LOCKED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Lcom/meizu/media/camera/UIZoomControllerImpl;->PROP_MAX_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method

.method protected onInitialize()V
    .locals 4

    .prologue
    .line 95
    invoke-super {p0}, Lcom/meizu/media/camera/ProxyComponent;->onInitialize()V

    .line 98
    invoke-virtual {p0}, Lcom/meizu/media/camera/UIZoomControllerImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    .line 99
    .local v0, "cameraActivity":Lcom/meizu/media/camera/CameraActivity;
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/meizu/media/camera/UIZoomControllerImpl$2;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/UIZoomControllerImpl$2;-><init>(Lcom/meizu/media/camera/UIZoomControllerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 108
    const-class v1, Lcom/meizu/media/camera/capturemode/CaptureModeManager;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/UIZoomControllerImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/capturemode/CaptureModeManager;

    iput-object v1, p0, Lcom/meizu/media/camera/UIZoomControllerImpl;->m_CaptureModeManager:Lcom/meizu/media/camera/capturemode/CaptureModeManager;

    .line 109
    iget-object v1, p0, Lcom/meizu/media/camera/UIZoomControllerImpl;->m_CaptureModeManager:Lcom/meizu/media/camera/capturemode/CaptureModeManager;

    sget-object v2, Lcom/meizu/media/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/meizu/media/camera/UIZoomControllerImpl$3;

    invoke-direct {v3, p0}, Lcom/meizu/media/camera/UIZoomControllerImpl$3;-><init>(Lcom/meizu/media/camera/UIZoomControllerImpl;)V

    invoke-interface {v1, v2, v3}, Lcom/meizu/media/camera/capturemode/CaptureModeManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 117
    return-void
.end method

.method protected bridge synthetic onTargetBound(Lcom/oneplus/base/component/Component;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 18
    check-cast p1, Lcom/meizu/media/camera/ZoomController;

    .end local p1    # "x0":Lcom/oneplus/base/component/Component;
    invoke-virtual {p0, p1}, Lcom/meizu/media/camera/UIZoomControllerImpl;->onTargetBound(Lcom/meizu/media/camera/ZoomController;)V

    return-void
.end method

.method protected onTargetBound(Lcom/meizu/media/camera/ZoomController;)V
    .locals 4
    .param p1, "target"    # Lcom/meizu/media/camera/ZoomController;

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/meizu/media/camera/ProxyComponent;->onTargetBound(Lcom/oneplus/base/component/Component;)V

    .line 128
    iget-wide v0, p0, Lcom/meizu/media/camera/UIZoomControllerImpl;->m_LastZoomChangedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 129
    sget-object v0, Lcom/meizu/media/camera/UIZoomControllerImpl;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/UIZoomControllerImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/UIZoomControllerImpl;->applyDigitalZoom(F)Z

    .line 130
    :cond_0
    return-void
.end method

.method protected onTargetPropertyChanged(JLcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 3
    .param p1, "time"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/oneplus/base/PropertyKey",
            "<*>;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p3, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<*>;"
    .local p4, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<*>;"
    sget-object v0, Lcom/meizu/media/camera/UIZoomControllerImpl;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    if-ne p3, v0, :cond_1

    .line 139
    iget-wide v0, p0, Lcom/meizu/media/camera/UIZoomControllerImpl;->m_LastZoomChangedTime:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 140
    sget-object v1, Lcom/meizu/media/camera/UIZoomControllerImpl;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p4}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-super {p0, v1, v0}, Lcom/meizu/media/camera/ProxyComponent;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/meizu/media/camera/ProxyComponent;->onTargetPropertyChanged(JLcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V

    goto :goto_0
.end method

.method public set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;TTValue;)Z"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    sget-object v0, Lcom/meizu/media/camera/UIZoomControllerImpl;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 152
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/UIZoomControllerImpl;->setDigitalZoomProp(F)Z

    move-result v0

    .line 153
    :goto_0
    return v0

    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/meizu/media/camera/ProxyComponent;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
