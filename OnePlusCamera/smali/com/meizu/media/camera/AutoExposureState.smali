.class public final enum Lcom/meizu/media/camera/AutoExposureState;
.super Ljava/lang/Enum;
.source "AutoExposureState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/media/camera/AutoExposureState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/media/camera/AutoExposureState;

.field public static final enum CONVERGED:Lcom/meizu/media/camera/AutoExposureState;

.field public static final enum FLASH_REQUIRED:Lcom/meizu/media/camera/AutoExposureState;

.field public static final enum INACTIVE:Lcom/meizu/media/camera/AutoExposureState;

.field public static final enum LOCKED:Lcom/meizu/media/camera/AutoExposureState;

.field public static final enum PRECAPTURE:Lcom/meizu/media/camera/AutoExposureState;

.field public static final enum SEARCHING:Lcom/meizu/media/camera/AutoExposureState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/meizu/media/camera/AutoExposureState;

    const-string v1, "INACTIVE"

    invoke-direct {v0, v1, v3}, Lcom/meizu/media/camera/AutoExposureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/AutoExposureState;->INACTIVE:Lcom/meizu/media/camera/AutoExposureState;

    .line 15
    new-instance v0, Lcom/meizu/media/camera/AutoExposureState;

    const-string v1, "SEARCHING"

    invoke-direct {v0, v1, v4}, Lcom/meizu/media/camera/AutoExposureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/AutoExposureState;->SEARCHING:Lcom/meizu/media/camera/AutoExposureState;

    .line 19
    new-instance v0, Lcom/meizu/media/camera/AutoExposureState;

    const-string v1, "CONVERGED"

    invoke-direct {v0, v1, v5}, Lcom/meizu/media/camera/AutoExposureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/AutoExposureState;->CONVERGED:Lcom/meizu/media/camera/AutoExposureState;

    .line 23
    new-instance v0, Lcom/meizu/media/camera/AutoExposureState;

    const-string v1, "LOCKED"

    invoke-direct {v0, v1, v6}, Lcom/meizu/media/camera/AutoExposureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/AutoExposureState;->LOCKED:Lcom/meizu/media/camera/AutoExposureState;

    .line 27
    new-instance v0, Lcom/meizu/media/camera/AutoExposureState;

    const-string v1, "FLASH_REQUIRED"

    invoke-direct {v0, v1, v7}, Lcom/meizu/media/camera/AutoExposureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/AutoExposureState;->FLASH_REQUIRED:Lcom/meizu/media/camera/AutoExposureState;

    .line 31
    new-instance v0, Lcom/meizu/media/camera/AutoExposureState;

    const-string v1, "PRECAPTURE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/meizu/media/camera/AutoExposureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/AutoExposureState;->PRECAPTURE:Lcom/meizu/media/camera/AutoExposureState;

    .line 6
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/meizu/media/camera/AutoExposureState;

    sget-object v1, Lcom/meizu/media/camera/AutoExposureState;->INACTIVE:Lcom/meizu/media/camera/AutoExposureState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/media/camera/AutoExposureState;->SEARCHING:Lcom/meizu/media/camera/AutoExposureState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/meizu/media/camera/AutoExposureState;->CONVERGED:Lcom/meizu/media/camera/AutoExposureState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/meizu/media/camera/AutoExposureState;->LOCKED:Lcom/meizu/media/camera/AutoExposureState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/meizu/media/camera/AutoExposureState;->FLASH_REQUIRED:Lcom/meizu/media/camera/AutoExposureState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/meizu/media/camera/AutoExposureState;->PRECAPTURE:Lcom/meizu/media/camera/AutoExposureState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/meizu/media/camera/AutoExposureState;->$VALUES:[Lcom/meizu/media/camera/AutoExposureState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/media/camera/AutoExposureState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/meizu/media/camera/AutoExposureState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/AutoExposureState;

    return-object v0
.end method

.method public static values()[Lcom/meizu/media/camera/AutoExposureState;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/meizu/media/camera/AutoExposureState;->$VALUES:[Lcom/meizu/media/camera/AutoExposureState;

    invoke-virtual {v0}, [Lcom/meizu/media/camera/AutoExposureState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/media/camera/AutoExposureState;

    return-object v0
.end method