.class final Lcom/meizu/media/camera/ZoomControlImpl;
.super Lcom/meizu/media/camera/CameraComponent;
.source "ZoomControlImpl.java"

# interfaces
.implements Lcom/meizu/media/camera/ZoomController;


# instance fields
.field private volatile m_DigitalZoom:F

.field private volatile m_IsDigitalZoomSupported:Z

.field private volatile m_MaxDigitalZoom:F

.field private final m_ScalerCropRegionChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final m_ZoomLockHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/Handle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/CameraThread;)V
    .locals 3
    .param p1, "cameraThread"    # Lcom/meizu/media/camera/CameraThread;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 39
    const-string v0, "Zoom Controller"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/meizu/media/camera/CameraComponent;-><init>(Ljava/lang/String;Lcom/meizu/media/camera/CameraThread;Z)V

    .line 19
    iput v2, p0, Lcom/meizu/media/camera/ZoomControlImpl;->m_DigitalZoom:F

    .line 21
    iput v2, p0, Lcom/meizu/media/camera/ZoomControlImpl;->m_MaxDigitalZoom:F

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/media/camera/ZoomControlImpl;->m_ZoomLockHandles:Ljava/util/List;

    .line 26
    new-instance v0, Lcom/meizu/media/camera/ZoomControlImpl$1;

    invoke-direct {v0, p0}, Lcom/meizu/media/camera/ZoomControlImpl$1;-><init>(Lcom/meizu/media/camera/ZoomControlImpl;)V

    iput-object v0, p0, Lcom/meizu/media/camera/ZoomControlImpl;->m_ScalerCropRegionChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/media/camera/ZoomControlImpl;Lcom/meizu/media/camera/Camera;Ljava/lang/Float;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ZoomControlImpl;
    .param p1, "x1"    # Lcom/meizu/media/camera/Camera;
    .param p2, "x2"    # Ljava/lang/Float;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/meizu/media/camera/ZoomControlImpl;->onDigitalZoomChanged(Lcom/meizu/media/camera/Camera;Ljava/lang/Float;)V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/media/camera/ZoomControlImpl;Lcom/oneplus/base/Handle;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ZoomControlImpl;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/ZoomControlImpl;->unlockZoom(Lcom/oneplus/base/Handle;)V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/media/camera/ZoomControlImpl;Lcom/meizu/media/camera/Camera;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ZoomControlImpl;
    .param p1, "x1"    # Lcom/meizu/media/camera/Camera;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/ZoomControlImpl;->detachFromCamera(Lcom/meizu/media/camera/Camera;)V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/media/camera/ZoomControlImpl;Lcom/meizu/media/camera/Camera;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ZoomControlImpl;
    .param p1, "x1"    # Lcom/meizu/media/camera/Camera;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/ZoomControlImpl;->attachToCamera(Lcom/meizu/media/camera/Camera;)V

    return-void
.end method

.method private attachToCamera(Lcom/meizu/media/camera/Camera;)V
    .locals 8
    .param p1, "camera"    # Lcom/meizu/media/camera/Camera;

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 46
    if-eqz p1, :cond_0

    .line 49
    sget-object v4, Lcom/meizu/media/camera/Camera;->PROP_MAX_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v4}, Lcom/meizu/media/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 50
    .local v0, "maxDigitalZoom":F
    iget v2, p0, Lcom/meizu/media/camera/ZoomControlImpl;->m_MaxDigitalZoom:F

    .line 51
    .local v2, "oldRatio":F
    iput v0, p0, Lcom/meizu/media/camera/ZoomControlImpl;->m_MaxDigitalZoom:F

    .line 52
    iget-boolean v1, p0, Lcom/meizu/media/camera/ZoomControlImpl;->m_IsDigitalZoomSupported:Z

    .line 53
    .local v1, "oldDigitalZoomSupportState":Z
    iget v4, p0, Lcom/meizu/media/camera/ZoomControlImpl;->m_MaxDigitalZoom:F

    sub-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3a83126f    # 0.001f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, p0, Lcom/meizu/media/camera/ZoomControlImpl;->m_IsDigitalZoomSupported:Z

    .line 54
    sget-object v4, Lcom/meizu/media/camera/ZoomControlImpl;->PROP_IS_DIGITAL_ZOOM_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v6, p0, Lcom/meizu/media/camera/ZoomControlImpl;->m_IsDigitalZoomSupported:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/meizu/media/camera/ZoomControlImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    sget-object v4, Lcom/meizu/media/camera/ZoomControlImpl;->PROP_MAX_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget v6, p0, Lcom/meizu/media/camera/ZoomControlImpl;->m_MaxDigitalZoom:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/meizu/media/camera/ZoomControlImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    sget-object v4, Lcom/meizu/media/camera/Camera;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Lcom/meizu/media/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 59
    iget v3, p0, Lcom/meizu/media/camera/ZoomControlImpl;->m_DigitalZoom:F

    .line 60
    .local v3, "oldZoom":F
    iput v7, p0, Lcom/meizu/media/camera/ZoomControlImpl;->m_DigitalZoom:F

    .line 61
    sget-object v4, Lcom/meizu/media/camera/ZoomControlImpl;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/meizu/media/camera/ZoomControlImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    sget-object v4, Lcom/meizu/media/camera/Camera;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    iget-object v5, p0, Lcom/meizu/media/camera/ZoomControlImpl;->m_ScalerCropRegionChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v4, v5}, Lcom/meizu/media/camera/Camera;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 66
    .end local v0    # "maxDigitalZoom":F
    .end local v1    # "oldDigitalZoomSupportState":Z
    .end local v2    # "oldRatio":F
    .end local v3    # "oldZoom":F
    :cond_0
    return-void

    .line 53
    .restart local v0    # "maxDigitalZoom":F
    .restart local v1    # "oldDigitalZoomSupportState":Z
    .restart local v2    # "oldRatio":F
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private detachFromCamera(Lcom/meizu/media/camera/Camera;)V
    .locals 2
    .param p1, "camera"    # Lcom/meizu/media/camera/Camera;

    .prologue
    .line 72
    if-eqz p1, :cond_0

    .line 73
    sget-object v0, Lcom/meizu/media/camera/Camera;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/meizu/media/camera/ZoomControlImpl;->m_ScalerCropRegionChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/meizu/media/camera/Camera;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 74
    :cond_0
    return-void
.end method

.method private onDigitalZoomChanged(Lcom/meizu/media/camera/Camera;Ljava/lang/Float;)V
    .locals 4
    .param p1, "camera"    # Lcom/meizu/media/camera/Camera;
    .param p2, "zoom"    # Ljava/lang/Float;

    .prologue
    .line 162
    iget v0, p0, Lcom/meizu/media/camera/ZoomControlImpl;->m_DigitalZoom:F

    .line 163
    .local v0, "oldZoom":F
    if-nez p2, :cond_0

    .line 164
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/meizu/media/camera/ZoomControlImpl;->m_DigitalZoom:F

    .line 167
    :goto_0
    sget-object v1, Lcom/meizu/media/camera/ZoomControlImpl;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p0, Lcom/meizu/media/camera/ZoomControlImpl;->m_DigitalZoom:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/meizu/media/camera/ZoomControlImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 168
    return-void

    .line 166
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, p0, Lcom/meizu/media/camera/ZoomControlImpl;->m_DigitalZoom:F

    goto :goto_0
.end method

.method private setDigitalZoomProp(FZ)Z
    .locals 5
    .param p1, "zoom"    # F
    .param p2, "forceSet"    # Z

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const v3, 0x3c23d70a    # 0.01f

    const/4 v2, 0x0

    .line 185
    invoke-virtual {p0}, Lcom/meizu/media/camera/ZoomControlImpl;->verifyAccess()V

    .line 186
    iget-boolean v1, p0, Lcom/meizu/media/camera/ZoomControlImpl;->m_IsDigitalZoomSupported:Z

    if-nez v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/meizu/media/camera/ZoomControlImpl;->TAG:Ljava/lang/String;

    const-string v3, "setDigitalZoomProp() - Digital zoom is unsupported"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 218
    :goto_0
    return v1

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/media/camera/ZoomControlImpl;->getCamera()Lcom/meizu/media/camera/Camera;

    move-result-object v0

    .line 194
    .local v0, "camera":Lcom/meizu/media/camera/Camera;
    if-nez v0, :cond_1

    .line 196
    iget-object v1, p0, Lcom/meizu/media/camera/ZoomControlImpl;->TAG:Ljava/lang/String;

    const-string v3, "setDigitalZoomProp() - No primary camera"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 197
    goto :goto_0

    .line 201
    :cond_1
    cmpg-float v1, p1, v4

    if-ltz v1, :cond_2

    sub-float v1, p1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v3

    if-gez v1, :cond_3

    .line 202
    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    .line 205
    :goto_1
    iget v1, p0, Lcom/meizu/media/camera/ZoomControlImpl;->m_DigitalZoom:F

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v3

    if-gez v1, :cond_4

    move v1, v2

    .line 206
    goto :goto_0

    .line 204
    :cond_3
    sget-object v1, Lcom/meizu/media/camera/ZoomControlImpl;->PROP_MAX_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/ZoomControlImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_1

    .line 209
    :cond_4
    sget-object v1, Lcom/meizu/media/camera/ZoomControlImpl;->PROP_IS_ZOOM_LOCKED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/ZoomControlImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez p2, :cond_5

    .line 211
    iget-object v1, p0, Lcom/meizu/media/camera/ZoomControlImpl;->TAG:Ljava/lang/String;

    const-string v3, "setDigitalZoomProp() - Zoom is locked"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 212
    goto :goto_0

    .line 214
    :cond_5
    iget-object v1, p0, Lcom/meizu/media/camera/ZoomControlImpl;->TAG:Ljava/lang/String;

    const-string v2, "setDigitalZoomProp() - Zoom : "

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 215
    sget-object v1, Lcom/meizu/media/camera/Camera;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/meizu/media/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 218
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private unlockZoom(Lcom/oneplus/base/Handle;)V
    .locals 2
    .param p1, "handle"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/meizu/media/camera/ZoomControlImpl;->verifyAccess()V

    .line 226
    iget-object v0, p0, Lcom/meizu/media/camera/ZoomControlImpl;->m_ZoomLockHandles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/media/camera/ZoomControlImpl;->m_ZoomLockHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    sget-object v0, Lcom/meizu/media/camera/ZoomControlImpl;->PROP_IS_ZOOM_LOCKED:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/ZoomControlImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 228
    :cond_0
    return-void
.end method


# virtual methods
.method public get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;)TTValue;"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/meizu/media/camera/ZoomControlImpl;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 83
    iget v0, p0, Lcom/meizu/media/camera/ZoomControlImpl;->m_DigitalZoom:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 88
    :goto_0
    return-object v0

    .line 84
    :cond_0
    sget-object v0, Lcom/meizu/media/camera/ZoomControlImpl;->PROP_IS_DIGITAL_ZOOM_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1

    .line 85
    iget-boolean v0, p0, Lcom/meizu/media/camera/ZoomControlImpl;->m_IsDigitalZoomSupported:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 86
    :cond_1
    sget-object v0, Lcom/meizu/media/camera/ZoomControlImpl;->PROP_MAX_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_2

    .line 87
    iget v0, p0, Lcom/meizu/media/camera/ZoomControlImpl;->m_MaxDigitalZoom:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 88
    :cond_2
    invoke-super {p0, p1}, Lcom/meizu/media/camera/CameraComponent;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public lockZoom(I)Lcom/oneplus/base/Handle;
    .locals 4
    .param p1, "flags"    # I

    .prologue
    const/4 v3, 0x1

    .line 97
    invoke-virtual {p0}, Lcom/meizu/media/camera/ZoomControlImpl;->verifyAccess()V

    .line 98
    invoke-virtual {p0}, Lcom/meizu/media/camera/ZoomControlImpl;->isRunningOrInitializing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 100
    iget-object v1, p0, Lcom/meizu/media/camera/ZoomControlImpl;->TAG:Ljava/lang/String;

    const-string v2, "lockZoom() - Component is not running"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const/4 v0, 0x0

    .line 122
    :cond_0
    :goto_0
    return-object v0

    .line 105
    :cond_1
    new-instance v0, Lcom/meizu/media/camera/ZoomControlImpl$2;

    const-string v1, "ZoomLock"

    invoke-direct {v0, p0, v1}, Lcom/meizu/media/camera/ZoomControlImpl$2;-><init>(Lcom/meizu/media/camera/ZoomControlImpl;Ljava/lang/String;)V

    .line 113
    .local v0, "handle":Lcom/oneplus/base/Handle;
    iget-object v1, p0, Lcom/meizu/media/camera/ZoomControlImpl;->m_ZoomLockHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v1, p0, Lcom/meizu/media/camera/ZoomControlImpl;->m_ZoomLockHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 116
    sget-object v1, Lcom/meizu/media/camera/ZoomControlImpl;->PROP_IS_ZOOM_LOCKED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/meizu/media/camera/ZoomControlImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 117
    invoke-virtual {p0}, Lcom/meizu/media/camera/ZoomControlImpl;->getCamera()Lcom/meizu/media/camera/Camera;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 118
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, v3}, Lcom/meizu/media/camera/ZoomControlImpl;->setDigitalZoomProp(FZ)Z

    goto :goto_0
.end method

.method protected onDeinitialize()V
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/meizu/media/camera/ZoomControlImpl;->getCamera()Lcom/meizu/media/camera/Camera;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/ZoomControlImpl;->detachFromCamera(Lcom/meizu/media/camera/Camera;)V

    .line 131
    invoke-super {p0}, Lcom/meizu/media/camera/CameraComponent;->onDeinitialize()V

    .line 132
    return-void
.end method

.method protected onInitialize()V
    .locals 3

    .prologue
    .line 140
    invoke-super {p0}, Lcom/meizu/media/camera/CameraComponent;->onInitialize()V

    .line 143
    invoke-virtual {p0}, Lcom/meizu/media/camera/ZoomControlImpl;->getCameraThread()Lcom/meizu/media/camera/CameraThread;

    move-result-object v0

    .line 144
    .local v0, "cameraThread":Lcom/meizu/media/camera/CameraThread;
    sget-object v1, Lcom/meizu/media/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/meizu/media/camera/ZoomControlImpl$3;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/ZoomControlImpl$3;-><init>(Lcom/meizu/media/camera/ZoomControlImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraThread;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 155
    invoke-virtual {p0}, Lcom/meizu/media/camera/ZoomControlImpl;->getCamera()Lcom/meizu/media/camera/Camera;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/meizu/media/camera/ZoomControlImpl;->attachToCamera(Lcom/meizu/media/camera/Camera;)V

    .line 156
    return-void
.end method

.method public set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 2
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
    .line 175
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    sget-object v0, Lcom/meizu/media/camera/ZoomControlImpl;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 176
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/meizu/media/camera/ZoomControlImpl;->setDigitalZoomProp(FZ)Z

    move-result v0

    .line 177
    :goto_0
    return v0

    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/meizu/media/camera/CameraComponent;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
