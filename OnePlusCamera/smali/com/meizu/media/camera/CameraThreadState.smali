.class public final enum Lcom/meizu/media/camera/CameraThreadState;
.super Ljava/lang/Enum;
.source "CameraThreadState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/media/camera/CameraThreadState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/media/camera/CameraThreadState;

.field public static final enum NEW:Lcom/meizu/media/camera/CameraThreadState;

.field public static final enum RELEASED:Lcom/meizu/media/camera/CameraThreadState;

.field public static final enum RELEASING:Lcom/meizu/media/camera/CameraThreadState;

.field public static final enum RUNNING:Lcom/meizu/media/camera/CameraThreadState;

.field public static final enum STARTING:Lcom/meizu/media/camera/CameraThreadState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/meizu/media/camera/CameraThreadState;

    const-string v1, "NEW"

    invoke-direct {v0, v1, v2}, Lcom/meizu/media/camera/CameraThreadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/CameraThreadState;->NEW:Lcom/meizu/media/camera/CameraThreadState;

    .line 15
    new-instance v0, Lcom/meizu/media/camera/CameraThreadState;

    const-string v1, "STARTING"

    invoke-direct {v0, v1, v3}, Lcom/meizu/media/camera/CameraThreadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/CameraThreadState;->STARTING:Lcom/meizu/media/camera/CameraThreadState;

    .line 19
    new-instance v0, Lcom/meizu/media/camera/CameraThreadState;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v4}, Lcom/meizu/media/camera/CameraThreadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/CameraThreadState;->RUNNING:Lcom/meizu/media/camera/CameraThreadState;

    .line 23
    new-instance v0, Lcom/meizu/media/camera/CameraThreadState;

    const-string v1, "RELEASING"

    invoke-direct {v0, v1, v5}, Lcom/meizu/media/camera/CameraThreadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/CameraThreadState;->RELEASING:Lcom/meizu/media/camera/CameraThreadState;

    .line 27
    new-instance v0, Lcom/meizu/media/camera/CameraThreadState;

    const-string v1, "RELEASED"

    invoke-direct {v0, v1, v6}, Lcom/meizu/media/camera/CameraThreadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/CameraThreadState;->RELEASED:Lcom/meizu/media/camera/CameraThreadState;

    .line 6
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/meizu/media/camera/CameraThreadState;

    sget-object v1, Lcom/meizu/media/camera/CameraThreadState;->NEW:Lcom/meizu/media/camera/CameraThreadState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/meizu/media/camera/CameraThreadState;->STARTING:Lcom/meizu/media/camera/CameraThreadState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/media/camera/CameraThreadState;->RUNNING:Lcom/meizu/media/camera/CameraThreadState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/meizu/media/camera/CameraThreadState;->RELEASING:Lcom/meizu/media/camera/CameraThreadState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/meizu/media/camera/CameraThreadState;->RELEASED:Lcom/meizu/media/camera/CameraThreadState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/meizu/media/camera/CameraThreadState;->$VALUES:[Lcom/meizu/media/camera/CameraThreadState;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/media/camera/CameraThreadState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/meizu/media/camera/CameraThreadState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/CameraThreadState;

    return-object v0
.end method

.method public static values()[Lcom/meizu/media/camera/CameraThreadState;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/meizu/media/camera/CameraThreadState;->$VALUES:[Lcom/meizu/media/camera/CameraThreadState;

    invoke-virtual {v0}, [Lcom/meizu/media/camera/CameraThreadState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/media/camera/CameraThreadState;

    return-object v0
.end method
