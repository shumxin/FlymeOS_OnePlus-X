.class synthetic Lcom/meizu/media/camera/capturemode/CaptureModeManagerImpl$2;
.super Ljava/lang/Object;
.source "CaptureModeManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/capturemode/CaptureModeManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$oneplus$camera$Mode$State:[I

.field static final synthetic $SwitchMap$com$oneplus$camera$OperationState:[I

.field static final synthetic $SwitchMap$com$oneplus$camera$PhotoCaptureState:[I

.field static final synthetic $SwitchMap$com$oneplus$camera$VideoCaptureState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 404
    invoke-static {}, Lcom/meizu/media/camera/OperationState;->values()[Lcom/meizu/media/camera/OperationState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/meizu/media/camera/capturemode/CaptureModeManagerImpl$2;->$SwitchMap$com$oneplus$camera$OperationState:[I

    :try_start_0
    sget-object v0, Lcom/meizu/media/camera/capturemode/CaptureModeManagerImpl$2;->$SwitchMap$com$oneplus$camera$OperationState:[I

    sget-object v1, Lcom/meizu/media/camera/OperationState;->STARTING:Lcom/meizu/media/camera/OperationState;

    invoke-virtual {v1}, Lcom/meizu/media/camera/OperationState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_0
    :try_start_1
    sget-object v0, Lcom/meizu/media/camera/capturemode/CaptureModeManagerImpl$2;->$SwitchMap$com$oneplus$camera$OperationState:[I

    sget-object v1, Lcom/meizu/media/camera/OperationState;->STARTED:Lcom/meizu/media/camera/OperationState;

    invoke-virtual {v1}, Lcom/meizu/media/camera/OperationState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    .line 363
    :goto_1
    invoke-static {}, Lcom/meizu/media/camera/VideoCaptureState;->values()[Lcom/meizu/media/camera/VideoCaptureState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/meizu/media/camera/capturemode/CaptureModeManagerImpl$2;->$SwitchMap$com$oneplus$camera$VideoCaptureState:[I

    :try_start_2
    sget-object v0, Lcom/meizu/media/camera/capturemode/CaptureModeManagerImpl$2;->$SwitchMap$com$oneplus$camera$VideoCaptureState:[I

    sget-object v1, Lcom/meizu/media/camera/VideoCaptureState;->PREPARING:Lcom/meizu/media/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/meizu/media/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_2
    :try_start_3
    sget-object v0, Lcom/meizu/media/camera/capturemode/CaptureModeManagerImpl$2;->$SwitchMap$com$oneplus$camera$VideoCaptureState:[I

    sget-object v1, Lcom/meizu/media/camera/VideoCaptureState;->READY:Lcom/meizu/media/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/meizu/media/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    .line 354
    :goto_3
    invoke-static {}, Lcom/meizu/media/camera/PhotoCaptureState;->values()[Lcom/meizu/media/camera/PhotoCaptureState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/meizu/media/camera/capturemode/CaptureModeManagerImpl$2;->$SwitchMap$com$oneplus$camera$PhotoCaptureState:[I

    :try_start_4
    sget-object v0, Lcom/meizu/media/camera/capturemode/CaptureModeManagerImpl$2;->$SwitchMap$com$oneplus$camera$PhotoCaptureState:[I

    sget-object v1, Lcom/meizu/media/camera/PhotoCaptureState;->PREPARING:Lcom/meizu/media/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/meizu/media/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    :try_start_5
    sget-object v0, Lcom/meizu/media/camera/capturemode/CaptureModeManagerImpl$2;->$SwitchMap$com$oneplus$camera$PhotoCaptureState:[I

    sget-object v1, Lcom/meizu/media/camera/PhotoCaptureState;->READY:Lcom/meizu/media/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/meizu/media/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    .line 48
    :goto_5
    invoke-static {}, Lcom/meizu/media/camera/Mode$State;->values()[Lcom/meizu/media/camera/Mode$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/meizu/media/camera/capturemode/CaptureModeManagerImpl$2;->$SwitchMap$com$oneplus$camera$Mode$State:[I

    :try_start_6
    sget-object v0, Lcom/meizu/media/camera/capturemode/CaptureModeManagerImpl$2;->$SwitchMap$com$oneplus$camera$Mode$State:[I

    sget-object v1, Lcom/meizu/media/camera/Mode$State;->DISABLED:Lcom/meizu/media/camera/Mode$State;

    invoke-virtual {v1}, Lcom/meizu/media/camera/Mode$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_6
    :try_start_7
    sget-object v0, Lcom/meizu/media/camera/capturemode/CaptureModeManagerImpl$2;->$SwitchMap$com$oneplus$camera$Mode$State:[I

    sget-object v1, Lcom/meizu/media/camera/Mode$State;->RELEASED:Lcom/meizu/media/camera/Mode$State;

    invoke-virtual {v1}, Lcom/meizu/media/camera/Mode$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_7
    return-void

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    .line 354
    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_4

    .line 363
    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_2

    .line 404
    :catch_6
    move-exception v0

    goto :goto_1

    :catch_7
    move-exception v0

    goto :goto_0
.end method
