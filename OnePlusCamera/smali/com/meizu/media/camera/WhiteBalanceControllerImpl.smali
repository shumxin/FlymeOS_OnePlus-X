.class public Lcom/meizu/media/camera/WhiteBalanceControllerImpl;
.super Lcom/meizu/media/camera/CameraComponent;
.source "WhiteBalanceControllerImpl.java"

# interfaces
.implements Lcom/meizu/media/camera/WhiteBalanceController;


# instance fields
.field private m_AwbLockHandles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/base/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_CameraPropertyChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/CameraThread;)V
    .locals 2
    .param p1, "cameraThread"    # Lcom/meizu/media/camera/CameraThread;

    .prologue
    .line 32
    const-string v0, "WhiteBalance Controller"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/meizu/media/camera/CameraComponent;-><init>(Ljava/lang/String;Lcom/meizu/media/camera/CameraThread;Z)V

    .line 17
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/meizu/media/camera/WhiteBalanceControllerImpl;->m_AwbLockHandles:Ljava/util/LinkedList;

    .line 20
    new-instance v0, Lcom/meizu/media/camera/WhiteBalanceControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/meizu/media/camera/WhiteBalanceControllerImpl$1;-><init>(Lcom/meizu/media/camera/WhiteBalanceControllerImpl;)V

    iput-object v0, p0, Lcom/meizu/media/camera/WhiteBalanceControllerImpl;->m_CameraPropertyChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/media/camera/WhiteBalanceControllerImpl;Lcom/oneplus/base/Handle;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/WhiteBalanceControllerImpl;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/WhiteBalanceControllerImpl;->unlockAutoWhiteBalance(Lcom/oneplus/base/Handle;)V

    return-void
.end method

.method private onAwbLockedChanged(Z)V
    .locals 2
    .param p1, "locked"    # Z

    .prologue
    .line 113
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/meizu/media/camera/WhiteBalanceControllerImpl;->m_AwbLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/meizu/media/camera/WhiteBalanceControllerImpl;->m_AwbLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 115
    sget-object v0, Lcom/meizu/media/camera/WhiteBalanceControllerImpl;->PROP_IS_AWB_LOCKED:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/WhiteBalanceControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 117
    :cond_0
    return-void
.end method

.method private unlockAutoWhiteBalance(Lcom/oneplus/base/Handle;)V
    .locals 6
    .param p1, "handle"    # Lcom/oneplus/base/Handle;

    .prologue
    const/4 v5, 0x0

    .line 167
    invoke-virtual {p0}, Lcom/meizu/media/camera/WhiteBalanceControllerImpl;->verifyAccess()V

    .line 168
    iget-object v1, p0, Lcom/meizu/media/camera/WhiteBalanceControllerImpl;->m_AwbLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-object v1, p0, Lcom/meizu/media/camera/WhiteBalanceControllerImpl;->TAG:Ljava/lang/String;

    const-string v2, "unlockAutoWhiteBalance() - Handle : "

    const-string v3, ", handle count : "

    iget-object v4, p0, Lcom/meizu/media/camera/WhiteBalanceControllerImpl;->m_AwbLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, p1, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 174
    iget-object v1, p0, Lcom/meizu/media/camera/WhiteBalanceControllerImpl;->m_AwbLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/meizu/media/camera/WhiteBalanceControllerImpl;->getCamera()Lcom/meizu/media/camera/Camera;

    move-result-object v0

    .line 179
    .local v0, "camera":Lcom/meizu/media/camera/Camera;
    if-eqz v0, :cond_2

    .line 180
    sget-object v1, Lcom/meizu/media/camera/Camera;->PROP_IS_AWB_LOCKED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/meizu/media/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 181
    :cond_2
    sget-object v1, Lcom/meizu/media/camera/WhiteBalanceControllerImpl;->PROP_IS_AWB_LOCKED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/meizu/media/camera/WhiteBalanceControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method protected attachToCamera(Lcom/meizu/media/camera/Camera;)V
    .locals 2
    .param p1, "camera"    # Lcom/meizu/media/camera/Camera;

    .prologue
    .line 39
    if-nez p1, :cond_0

    .line 51
    :goto_0
    return-void

    .line 43
    :cond_0
    sget-object v0, Lcom/meizu/media/camera/Camera;->PROP_IS_AWB_LOCKED:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/meizu/media/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lcom/meizu/media/camera/Camera;->PROP_IS_AWB_LOCKED:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/meizu/media/camera/WhiteBalanceControllerImpl;->m_CameraPropertyChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/meizu/media/camera/Camera;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 49
    sget-object v0, Lcom/meizu/media/camera/Camera;->PROP_IS_AWB_LOCKED:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/meizu/media/camera/Camera;->PROP_IS_AE_LOCKED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v1}, Lcom/meizu/media/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/WhiteBalanceControllerImpl;->onCameraPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected detachFromCamera(Lcom/meizu/media/camera/Camera;)V
    .locals 2
    .param p1, "camera"    # Lcom/meizu/media/camera/Camera;

    .prologue
    .line 57
    if-nez p1, :cond_0

    .line 66
    :goto_0
    return-void

    .line 61
    :cond_0
    sget-object v0, Lcom/meizu/media/camera/Camera;->PROP_IS_AWB_LOCKED:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/meizu/media/camera/WhiteBalanceControllerImpl;->m_CameraPropertyChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/meizu/media/camera/Camera;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 64
    iget-object v0, p0, Lcom/meizu/media/camera/WhiteBalanceControllerImpl;->m_AwbLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 65
    sget-object v0, Lcom/meizu/media/camera/WhiteBalanceControllerImpl;->PROP_IS_AWB_LOCKED:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/WhiteBalanceControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public lockAutoWhiteBalance(I)Lcom/oneplus/base/Handle;
    .locals 7
    .param p1, "flags"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 72
    invoke-virtual {p0}, Lcom/meizu/media/camera/WhiteBalanceControllerImpl;->verifyAccess()V

    .line 73
    invoke-virtual {p0}, Lcom/meizu/media/camera/WhiteBalanceControllerImpl;->isRunningOrInitializing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 75
    iget-object v2, p0, Lcom/meizu/media/camera/WhiteBalanceControllerImpl;->TAG:Ljava/lang/String;

    const-string v3, "lockAutoWhiteBalance() - Component is not running"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_0
    :goto_0
    return-object v1

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/media/camera/WhiteBalanceControllerImpl;->getCamera()Lcom/meizu/media/camera/Camera;

    move-result-object v0

    .line 81
    .local v0, "camera":Lcom/meizu/media/camera/Camera;
    if-nez v0, :cond_2

    .line 83
    iget-object v2, p0, Lcom/meizu/media/camera/WhiteBalanceControllerImpl;->TAG:Ljava/lang/String;

    const-string v3, "lockAutoWhiteBalance() - No primary camera"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_2
    new-instance v1, Lcom/meizu/media/camera/WhiteBalanceControllerImpl$2;

    const-string v2, "AwbLock"

    invoke-direct {v1, p0, v2}, Lcom/meizu/media/camera/WhiteBalanceControllerImpl$2;-><init>(Lcom/meizu/media/camera/WhiteBalanceControllerImpl;Ljava/lang/String;)V

    .line 96
    .local v1, "handle":Lcom/oneplus/base/Handle;
    iget-object v2, p0, Lcom/meizu/media/camera/WhiteBalanceControllerImpl;->m_AwbLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v2, p0, Lcom/meizu/media/camera/WhiteBalanceControllerImpl;->TAG:Ljava/lang/String;

    const-string v3, "lockAutoWhiteBalance() - Handle : "

    const-string v4, ", handle count : "

    iget-object v5, p0, Lcom/meizu/media/camera/WhiteBalanceControllerImpl;->m_AwbLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v3, v1, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 100
    iget-object v2, p0, Lcom/meizu/media/camera/WhiteBalanceControllerImpl;->m_AwbLockHandles:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 102
    sget-object v2, Lcom/meizu/media/camera/Camera;->PROP_IS_AWB_LOCKED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/meizu/media/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 103
    sget-object v2, Lcom/meizu/media/camera/WhiteBalanceControllerImpl;->PROP_IS_AWB_LOCKED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/meizu/media/camera/WhiteBalanceControllerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onCameraPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Lcom/oneplus/base/PropertyKey;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 122
    sget-object v0, Lcom/meizu/media/camera/Camera;->PROP_IS_AWB_LOCKED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 123
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/WhiteBalanceControllerImpl;->onAwbLockedChanged(Z)V

    .line 124
    :cond_0
    return-void
.end method

.method protected onInitialize()V
    .locals 3

    .prologue
    .line 132
    invoke-super {p0}, Lcom/meizu/media/camera/CameraComponent;->onInitialize()V

    .line 135
    invoke-virtual {p0}, Lcom/meizu/media/camera/WhiteBalanceControllerImpl;->getCameraThread()Lcom/meizu/media/camera/CameraThread;

    move-result-object v0

    .line 136
    .local v0, "cameraThread":Lcom/meizu/media/camera/CameraThread;
    sget-object v1, Lcom/meizu/media/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/meizu/media/camera/WhiteBalanceControllerImpl$3;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/WhiteBalanceControllerImpl$3;-><init>(Lcom/meizu/media/camera/WhiteBalanceControllerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraThread;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 147
    invoke-virtual {p0}, Lcom/meizu/media/camera/WhiteBalanceControllerImpl;->getCamera()Lcom/meizu/media/camera/Camera;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/WhiteBalanceControllerImpl;->attachToCamera(Lcom/meizu/media/camera/Camera;)V

    .line 148
    return-void
.end method

.method protected onRelease()V
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/meizu/media/camera/WhiteBalanceControllerImpl;->getCamera()Lcom/meizu/media/camera/Camera;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/WhiteBalanceControllerImpl;->detachFromCamera(Lcom/meizu/media/camera/Camera;)V

    .line 159
    invoke-super {p0}, Lcom/meizu/media/camera/CameraComponent;->onRelease()V

    .line 160
    return-void
.end method
