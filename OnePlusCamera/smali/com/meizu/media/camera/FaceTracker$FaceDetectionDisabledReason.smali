.class public final enum Lcom/meizu/media/camera/FaceTracker$FaceDetectionDisabledReason;
.super Ljava/lang/Enum;
.source "FaceTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/FaceTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FaceDetectionDisabledReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/media/camera/FaceTracker$FaceDetectionDisabledReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/media/camera/FaceTracker$FaceDetectionDisabledReason;

.field public static final enum NOT_SUPPORTED:Lcom/meizu/media/camera/FaceTracker$FaceDetectionDisabledReason;

.field public static final enum NOT_SUPPORTED_IN_CAPTURE_MODE:Lcom/meizu/media/camera/FaceTracker$FaceDetectionDisabledReason;

.field public static final enum UNKNOWN:Lcom/meizu/media/camera/FaceTracker$FaceDetectionDisabledReason;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/meizu/media/camera/FaceTracker$FaceDetectionDisabledReason;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/meizu/media/camera/FaceTracker$FaceDetectionDisabledReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/FaceTracker$FaceDetectionDisabledReason;->UNKNOWN:Lcom/meizu/media/camera/FaceTracker$FaceDetectionDisabledReason;

    .line 35
    new-instance v0, Lcom/meizu/media/camera/FaceTracker$FaceDetectionDisabledReason;

    const-string v1, "NOT_SUPPORTED"

    invoke-direct {v0, v1, v3}, Lcom/meizu/media/camera/FaceTracker$FaceDetectionDisabledReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/FaceTracker$FaceDetectionDisabledReason;->NOT_SUPPORTED:Lcom/meizu/media/camera/FaceTracker$FaceDetectionDisabledReason;

    .line 39
    new-instance v0, Lcom/meizu/media/camera/FaceTracker$FaceDetectionDisabledReason;

    const-string v1, "NOT_SUPPORTED_IN_CAPTURE_MODE"

    invoke-direct {v0, v1, v4}, Lcom/meizu/media/camera/FaceTracker$FaceDetectionDisabledReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/FaceTracker$FaceDetectionDisabledReason;->NOT_SUPPORTED_IN_CAPTURE_MODE:Lcom/meizu/media/camera/FaceTracker$FaceDetectionDisabledReason;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/meizu/media/camera/FaceTracker$FaceDetectionDisabledReason;

    sget-object v1, Lcom/meizu/media/camera/FaceTracker$FaceDetectionDisabledReason;->UNKNOWN:Lcom/meizu/media/camera/FaceTracker$FaceDetectionDisabledReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/meizu/media/camera/FaceTracker$FaceDetectionDisabledReason;->NOT_SUPPORTED:Lcom/meizu/media/camera/FaceTracker$FaceDetectionDisabledReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/media/camera/FaceTracker$FaceDetectionDisabledReason;->NOT_SUPPORTED_IN_CAPTURE_MODE:Lcom/meizu/media/camera/FaceTracker$FaceDetectionDisabledReason;

    aput-object v1, v0, v4

    sput-object v0, Lcom/meizu/media/camera/FaceTracker$FaceDetectionDisabledReason;->$VALUES:[Lcom/meizu/media/camera/FaceTracker$FaceDetectionDisabledReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/media/camera/FaceTracker$FaceDetectionDisabledReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lcom/meizu/media/camera/FaceTracker$FaceDetectionDisabledReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/FaceTracker$FaceDetectionDisabledReason;

    return-object v0
.end method

.method public static values()[Lcom/meizu/media/camera/FaceTracker$FaceDetectionDisabledReason;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/meizu/media/camera/FaceTracker$FaceDetectionDisabledReason;->$VALUES:[Lcom/meizu/media/camera/FaceTracker$FaceDetectionDisabledReason;

    invoke-virtual {v0}, [Lcom/meizu/media/camera/FaceTracker$FaceDetectionDisabledReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/media/camera/FaceTracker$FaceDetectionDisabledReason;

    return-object v0
.end method
