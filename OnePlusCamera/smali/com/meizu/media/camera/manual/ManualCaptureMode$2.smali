.class synthetic Lcom/meizu/media/camera/manual/ManualCaptureMode$2;
.super Ljava/lang/Object;
.source "ManualCaptureMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/manual/ManualCaptureMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$oneplus$camera$capturemode$CaptureMode$ImageUsage:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    invoke-static {}, Lcom/meizu/media/camera/capturemode/CaptureMode$ImageUsage;->values()[Lcom/meizu/media/camera/capturemode/CaptureMode$ImageUsage;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/meizu/media/camera/manual/ManualCaptureMode$2;->$SwitchMap$com$oneplus$camera$capturemode$CaptureMode$ImageUsage:[I

    :try_start_0
    sget-object v0, Lcom/meizu/media/camera/manual/ManualCaptureMode$2;->$SwitchMap$com$oneplus$camera$capturemode$CaptureMode$ImageUsage:[I

    sget-object v1, Lcom/meizu/media/camera/capturemode/CaptureMode$ImageUsage;->CAPTURE_MODES_PANEL_ICON:Lcom/meizu/media/camera/capturemode/CaptureMode$ImageUsage;

    invoke-virtual {v1}, Lcom/meizu/media/camera/capturemode/CaptureMode$ImageUsage;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
