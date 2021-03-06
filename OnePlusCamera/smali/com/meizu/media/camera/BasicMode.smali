.class public abstract Lcom/meizu/media/camera/BasicMode;
.super Lcom/oneplus/base/HandlerBaseObject;
.source "BasicMode.java"

# interfaces
.implements Lcom/meizu/media/camera/Mode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/media/camera/BasicMode$2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/meizu/media/camera/Mode",
        "<*>;>",
        "Lcom/oneplus/base/HandlerBaseObject;",
        "Lcom/meizu/media/camera/Mode",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final m_CameraActivity:Lcom/meizu/media/camera/CameraActivity;

.field private m_IsCameraThreadStartedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_State:Lcom/meizu/media/camera/Mode$State;


# direct methods
.method protected constructor <init>(Lcom/meizu/media/camera/CameraActivity;Ljava/lang/String;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/meizu/media/camera/CameraActivity;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 30
    .local p0, "this":Lcom/meizu/media/camera/BasicMode;, "Lcom/meizu/media/camera/BasicMode<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/base/HandlerBaseObject;-><init>(Z)V

    .line 19
    sget-object v0, Lcom/meizu/media/camera/Mode$State;->EXITED:Lcom/meizu/media/camera/Mode$State;

    iput-object v0, p0, Lcom/meizu/media/camera/BasicMode;->m_State:Lcom/meizu/media/camera/Mode$State;

    .line 33
    if-nez p1, :cond_0

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No camera activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    sget-object v0, Lcom/meizu/media/camera/BasicMode;->PROP_ID:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, p2}, Lcom/meizu/media/camera/BasicMode;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 38
    iput-object p1, p0, Lcom/meizu/media/camera/BasicMode;->m_CameraActivity:Lcom/meizu/media/camera/CameraActivity;

    .line 41
    iget-object v0, p0, Lcom/meizu/media/camera/BasicMode;->m_CameraActivity:Lcom/meizu/media/camera/CameraActivity;

    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_CAMERA_THREAD_STARTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 43
    new-instance v0, Lcom/meizu/media/camera/BasicMode$1;

    invoke-direct {v0, p0}, Lcom/meizu/media/camera/BasicMode$1;-><init>(Lcom/meizu/media/camera/BasicMode;)V

    iput-object v0, p0, Lcom/meizu/media/camera/BasicMode;->m_IsCameraThreadStartedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 53
    sget-object v0, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_CAMERA_THREAD_STARTED:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/meizu/media/camera/BasicMode;->m_IsCameraThreadStartedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/meizu/media/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 55
    :cond_1
    return-void
.end method

.method static synthetic access$002(Lcom/meizu/media/camera/BasicMode;Lcom/oneplus/base/PropertyChangedCallback;)Lcom/oneplus/base/PropertyChangedCallback;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/BasicMode;
    .param p1, "x1"    # Lcom/oneplus/base/PropertyChangedCallback;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/meizu/media/camera/BasicMode;->m_IsCameraThreadStartedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    return-object p1
.end method

.method private changeState(Lcom/meizu/media/camera/Mode$State;)Lcom/meizu/media/camera/Mode$State;
    .locals 2
    .param p1, "state"    # Lcom/meizu/media/camera/Mode$State;

    .prologue
    .line 61
    .local p0, "this":Lcom/meizu/media/camera/BasicMode;, "Lcom/meizu/media/camera/BasicMode<TT;>;"
    iget-object v0, p0, Lcom/meizu/media/camera/BasicMode;->m_State:Lcom/meizu/media/camera/Mode$State;

    .line 62
    .local v0, "oldState":Lcom/meizu/media/camera/Mode$State;
    if-eq v0, p1, :cond_0

    .line 64
    iput-object p1, p0, Lcom/meizu/media/camera/BasicMode;->m_State:Lcom/meizu/media/camera/Mode$State;

    .line 65
    sget-object v1, Lcom/meizu/media/camera/BasicMode;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0, p1}, Lcom/meizu/media/camera/BasicMode;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/meizu/media/camera/BasicMode;->m_State:Lcom/meizu/media/camera/Mode$State;

    return-object v1
.end method


# virtual methods
.method protected final disable()V
    .locals 3

    .prologue
    .line 76
    .local p0, "this":Lcom/meizu/media/camera/BasicMode;, "Lcom/meizu/media/camera/BasicMode<TT;>;"
    invoke-virtual {p0}, Lcom/meizu/media/camera/BasicMode;->verifyAccess()V

    .line 77
    sget-object v0, Lcom/meizu/media/camera/BasicMode$2;->$SwitchMap$com$oneplus$camera$Mode$State:[I

    iget-object v1, p0, Lcom/meizu/media/camera/BasicMode;->m_State:Lcom/meizu/media/camera/Mode$State;

    invoke-virtual {v1}, Lcom/meizu/media/camera/Mode$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 90
    iget-object v0, p0, Lcom/meizu/media/camera/BasicMode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disable() - Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/media/camera/BasicMode;->m_State:Lcom/meizu/media/camera/Mode$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :goto_0
    sget-object v0, Lcom/meizu/media/camera/Mode$State;->DISABLED:Lcom/meizu/media/camera/Mode$State;

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/BasicMode;->changeState(Lcom/meizu/media/camera/Mode$State;)Lcom/meizu/media/camera/Mode$State;

    .line 94
    :pswitch_0
    return-void

    .line 83
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/media/camera/BasicMode;->TAG:Ljava/lang/String;

    const-string v1, "disable()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :pswitch_2
    iget-object v0, p0, Lcom/meizu/media/camera/BasicMode;->TAG:Ljava/lang/String;

    const-string v1, "exit()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/BasicMode;->exit(Lcom/meizu/media/camera/Mode;I)V

    goto :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final enable()V
    .locals 2

    .prologue
    .line 102
    .local p0, "this":Lcom/meizu/media/camera/BasicMode;, "Lcom/meizu/media/camera/BasicMode<TT;>;"
    invoke-virtual {p0}, Lcom/meizu/media/camera/BasicMode;->verifyAccess()V

    .line 103
    iget-object v0, p0, Lcom/meizu/media/camera/BasicMode;->m_State:Lcom/meizu/media/camera/Mode$State;

    sget-object v1, Lcom/meizu/media/camera/Mode$State;->DISABLED:Lcom/meizu/media/camera/Mode$State;

    if-eq v0, v1, :cond_0

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/BasicMode;->TAG:Ljava/lang/String;

    const-string v1, "enable()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    sget-object v0, Lcom/meizu/media/camera/Mode$State;->EXITED:Lcom/meizu/media/camera/Mode$State;

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/BasicMode;->changeState(Lcom/meizu/media/camera/Mode$State;)Lcom/meizu/media/camera/Mode$State;

    goto :goto_0
.end method

.method public final enter(Lcom/meizu/media/camera/Mode;I)Z
    .locals 5
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/meizu/media/camera/BasicMode;, "Lcom/meizu/media/camera/BasicMode<TT;>;"
    .local p1, "prevMode":Lcom/meizu/media/camera/Mode;, "TT;"
    const/4 v1, 0x0

    .line 115
    invoke-virtual {p0}, Lcom/meizu/media/camera/BasicMode;->verifyAccess()V

    .line 116
    iget-object v2, p0, Lcom/meizu/media/camera/BasicMode;->m_State:Lcom/meizu/media/camera/Mode$State;

    sget-object v3, Lcom/meizu/media/camera/Mode$State;->EXITED:Lcom/meizu/media/camera/Mode$State;

    if-eq v2, v3, :cond_1

    .line 118
    iget-object v2, p0, Lcom/meizu/media/camera/BasicMode;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enter() - Current state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/media/camera/BasicMode;->m_State:Lcom/meizu/media/camera/Mode$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_0
    :goto_0
    return v1

    .line 123
    :cond_1
    sget-object v2, Lcom/meizu/media/camera/Mode$State;->ENTERING:Lcom/meizu/media/camera/Mode$State;

    invoke-direct {p0, v2}, Lcom/meizu/media/camera/BasicMode;->changeState(Lcom/meizu/media/camera/Mode$State;)Lcom/meizu/media/camera/Mode$State;

    move-result-object v2

    sget-object v3, Lcom/meizu/media/camera/Mode$State;->ENTERING:Lcom/meizu/media/camera/Mode$State;

    if-eq v2, v3, :cond_2

    .line 125
    iget-object v2, p0, Lcom/meizu/media/camera/BasicMode;->TAG:Ljava/lang/String;

    const-string v3, "enter() - Entering process was interrupted"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_2
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/meizu/media/camera/BasicMode;->onEnter(Lcom/meizu/media/camera/Mode;I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 134
    iget-object v2, p0, Lcom/meizu/media/camera/BasicMode;->TAG:Ljava/lang/String;

    const-string v3, "enter() - Fail to enter"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v2, p0, Lcom/meizu/media/camera/BasicMode;->m_State:Lcom/meizu/media/camera/Mode$State;

    sget-object v3, Lcom/meizu/media/camera/Mode$State;->ENTERING:Lcom/meizu/media/camera/Mode$State;

    if-ne v2, v3, :cond_0

    .line 136
    sget-object v2, Lcom/meizu/media/camera/Mode$State;->EXITED:Lcom/meizu/media/camera/Mode$State;

    invoke-direct {p0, v2}, Lcom/meizu/media/camera/BasicMode;->changeState(Lcom/meizu/media/camera/Mode$State;)Lcom/meizu/media/camera/Mode$State;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 142
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/meizu/media/camera/BasicMode;->TAG:Ljava/lang/String;

    const-string v3, "enter() - Fail to enter"

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    iget-object v2, p0, Lcom/meizu/media/camera/BasicMode;->m_State:Lcom/meizu/media/camera/Mode$State;

    sget-object v3, Lcom/meizu/media/camera/Mode$State;->ENTERING:Lcom/meizu/media/camera/Mode$State;

    if-ne v2, v3, :cond_0

    .line 144
    sget-object v2, Lcom/meizu/media/camera/Mode$State;->EXITED:Lcom/meizu/media/camera/Mode$State;

    invoke-direct {p0, v2}, Lcom/meizu/media/camera/BasicMode;->changeState(Lcom/meizu/media/camera/Mode$State;)Lcom/meizu/media/camera/Mode$State;

    goto :goto_0

    .line 149
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_3
    iget-object v2, p0, Lcom/meizu/media/camera/BasicMode;->m_State:Lcom/meizu/media/camera/Mode$State;

    sget-object v3, Lcom/meizu/media/camera/Mode$State;->ENTERING:Lcom/meizu/media/camera/Mode$State;

    if-ne v2, v3, :cond_4

    sget-object v2, Lcom/meizu/media/camera/Mode$State;->ENTERED:Lcom/meizu/media/camera/Mode$State;

    invoke-direct {p0, v2}, Lcom/meizu/media/camera/BasicMode;->changeState(Lcom/meizu/media/camera/Mode$State;)Lcom/meizu/media/camera/Mode$State;

    move-result-object v2

    sget-object v3, Lcom/meizu/media/camera/Mode$State;->ENTERED:Lcom/meizu/media/camera/Mode$State;

    if-eq v2, v3, :cond_5

    .line 151
    :cond_4
    iget-object v2, p0, Lcom/meizu/media/camera/BasicMode;->TAG:Ljava/lang/String;

    const-string v3, "enter() - Entering process was interrupted"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :cond_5
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final exit(Lcom/meizu/media/camera/Mode;I)V
    .locals 3
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, "this":Lcom/meizu/media/camera/BasicMode;, "Lcom/meizu/media/camera/BasicMode<TT;>;"
    .local p1, "nextMode":Lcom/meizu/media/camera/Mode;, "TT;"
    invoke-virtual {p0}, Lcom/meizu/media/camera/BasicMode;->verifyAccess()V

    .line 166
    iget-object v1, p0, Lcom/meizu/media/camera/BasicMode;->m_State:Lcom/meizu/media/camera/Mode$State;

    sget-object v2, Lcom/meizu/media/camera/Mode$State;->ENTERED:Lcom/meizu/media/camera/Mode$State;

    if-eq v1, v2, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    sget-object v1, Lcom/meizu/media/camera/Mode$State;->EXITING:Lcom/meizu/media/camera/Mode$State;

    invoke-direct {p0, v1}, Lcom/meizu/media/camera/BasicMode;->changeState(Lcom/meizu/media/camera/Mode$State;)Lcom/meizu/media/camera/Mode$State;

    move-result-object v1

    sget-object v2, Lcom/meizu/media/camera/Mode$State;->EXITING:Lcom/meizu/media/camera/Mode$State;

    if-eq v1, v2, :cond_2

    .line 172
    iget-object v1, p0, Lcom/meizu/media/camera/BasicMode;->TAG:Ljava/lang/String;

    const-string v2, "exit() - Exiting process was interrupted"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_2
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/meizu/media/camera/BasicMode;->onExit(Lcom/meizu/media/camera/Mode;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_1
    iget-object v1, p0, Lcom/meizu/media/camera/BasicMode;->m_State:Lcom/meizu/media/camera/Mode$State;

    sget-object v2, Lcom/meizu/media/camera/Mode$State;->EXITING:Lcom/meizu/media/camera/Mode$State;

    if-ne v1, v2, :cond_0

    .line 188
    sget-object v1, Lcom/meizu/media/camera/Mode$State;->EXITED:Lcom/meizu/media/camera/Mode$State;

    invoke-direct {p0, v1}, Lcom/meizu/media/camera/BasicMode;->changeState(Lcom/meizu/media/camera/Mode$State;)Lcom/meizu/media/camera/Mode$State;

    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 183
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/meizu/media/camera/BasicMode;->TAG:Ljava/lang/String;

    const-string v2, "exit() - Unhandled exception occurred while exiting"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

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
    .line 197
    .local p0, "this":Lcom/meizu/media/camera/BasicMode;, "Lcom/meizu/media/camera/BasicMode<TT;>;"
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/meizu/media/camera/BasicMode;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/meizu/media/camera/BasicMode;->m_State:Lcom/meizu/media/camera/Mode$State;

    .line 199
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/base/HandlerBaseObject;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected final getCamera()Lcom/meizu/media/camera/Camera;
    .locals 2

    .prologue
    .line 209
    .local p0, "this":Lcom/meizu/media/camera/BasicMode;, "Lcom/meizu/media/camera/BasicMode<TT;>;"
    iget-object v0, p0, Lcom/meizu/media/camera/BasicMode;->m_CameraActivity:Lcom/meizu/media/camera/CameraActivity;

    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/Camera;

    return-object v0
.end method

.method public final getCameraActivity()Lcom/meizu/media/camera/CameraActivity;
    .locals 1

    .prologue
    .line 219
    .local p0, "this":Lcom/meizu/media/camera/BasicMode;, "Lcom/meizu/media/camera/BasicMode<TT;>;"
    iget-object v0, p0, Lcom/meizu/media/camera/BasicMode;->m_CameraActivity:Lcom/meizu/media/camera/CameraActivity;

    return-object v0
.end method

.method protected final getMediaType()Lcom/meizu/media/camera/media/MediaType;
    .locals 2

    .prologue
    .line 229
    .local p0, "this":Lcom/meizu/media/camera/BasicMode;, "Lcom/meizu/media/camera/BasicMode<TT;>;"
    iget-object v0, p0, Lcom/meizu/media/camera/BasicMode;->m_CameraActivity:Lcom/meizu/media/camera/CameraActivity;

    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/media/MediaType;

    return-object v0
.end method

.method public final isEntered()Z
    .locals 2

    .prologue
    .line 239
    .local p0, "this":Lcom/meizu/media/camera/BasicMode;, "Lcom/meizu/media/camera/BasicMode<TT;>;"
    iget-object v0, p0, Lcom/meizu/media/camera/BasicMode;->m_State:Lcom/meizu/media/camera/Mode$State;

    sget-object v1, Lcom/meizu/media/camera/Mode$State;->ENTERED:Lcom/meizu/media/camera/Mode$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCameraThreadStarted()V
    .locals 0

    .prologue
    .line 247
    .local p0, "this":Lcom/meizu/media/camera/BasicMode;, "Lcom/meizu/media/camera/BasicMode<TT;>;"
    return-void
.end method

.method protected abstract onEnter(Lcom/meizu/media/camera/Mode;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation
.end method

.method protected abstract onExit(Lcom/meizu/media/camera/Mode;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation
.end method

.method protected onRelease()V
    .locals 3

    .prologue
    .line 278
    .local p0, "this":Lcom/meizu/media/camera/BasicMode;, "Lcom/meizu/media/camera/BasicMode<TT;>;"
    sget-object v0, Lcom/meizu/media/camera/Mode$State;->RELEASED:Lcom/meizu/media/camera/Mode$State;

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/BasicMode;->changeState(Lcom/meizu/media/camera/Mode$State;)Lcom/meizu/media/camera/Mode$State;

    .line 281
    iget-object v0, p0, Lcom/meizu/media/camera/BasicMode;->m_IsCameraThreadStartedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {p0}, Lcom/meizu/media/camera/BasicMode;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_CAMERA_THREAD_STARTED:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/meizu/media/camera/BasicMode;->m_IsCameraThreadStartedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/media/camera/BasicMode;->m_IsCameraThreadStartedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 288
    :cond_0
    invoke-super {p0}, Lcom/oneplus/base/HandlerBaseObject;->onRelease()V

    .line 289
    return-void
.end method

.method protected setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
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
    .line 296
    .local p0, "this":Lcom/meizu/media/camera/BasicMode;, "Lcom/meizu/media/camera/BasicMode<TT;>;"
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    sget-object v0, Lcom/meizu/media/camera/BasicMode;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 297
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Cannot change mode state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/base/HandlerBaseObject;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    .local p0, "this":Lcom/meizu/media/camera/BasicMode;, "Lcom/meizu/media/camera/BasicMode<TT;>;"
    sget-object v0, Lcom/meizu/media/camera/BasicMode;->PROP_ID:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/BasicMode;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
