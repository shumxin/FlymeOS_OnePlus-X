.class public final enum Lcom/meizu/media/camera/FlashController$FlashDisabledReason;
.super Ljava/lang/Enum;
.source "FlashController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/FlashController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FlashDisabledReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/media/camera/FlashController$FlashDisabledReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/media/camera/FlashController$FlashDisabledReason;

.field public static final enum AE_LOCKED:Lcom/meizu/media/camera/FlashController$FlashDisabledReason;

.field public static final enum CALLING:Lcom/meizu/media/camera/FlashController$FlashDisabledReason;

.field public static final enum LOW_BATTERY_LEVEL:Lcom/meizu/media/camera/FlashController$FlashDisabledReason;

.field public static final enum LOW_BATTERY_TEMPERATURE:Lcom/meizu/media/camera/FlashController$FlashDisabledReason;

.field public static final enum NOT_SUPPORTED_IN_CAPTURE:Lcom/meizu/media/camera/FlashController$FlashDisabledReason;

.field public static final enum NOT_SUPPORTED_IN_CAPTURE_MODE:Lcom/meizu/media/camera/FlashController$FlashDisabledReason;

.field public static final enum NOT_SUPPORTED_IN_EFFECT:Lcom/meizu/media/camera/FlashController$FlashDisabledReason;

.field public static final enum NOT_SUPPORTED_IN_SCENE:Lcom/meizu/media/camera/FlashController$FlashDisabledReason;

.field public static final enum UNKNOWN:Lcom/meizu/media/camera/FlashController$FlashDisabledReason;

.field public static final enum USING_WIFI_HOTSPOT:Lcom/meizu/media/camera/FlashController$FlashDisabledReason;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 38
    new-instance v0, Lcom/meizu/media/camera/FlashController$FlashDisabledReason;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/meizu/media/camera/FlashController$FlashDisabledReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/FlashController$FlashDisabledReason;->UNKNOWN:Lcom/meizu/media/camera/FlashController$FlashDisabledReason;

    .line 42
    new-instance v0, Lcom/meizu/media/camera/FlashController$FlashDisabledReason;

    const-string v1, "NOT_SUPPORTED_IN_CAPTURE_MODE"

    invoke-direct {v0, v1, v4}, Lcom/meizu/media/camera/FlashController$FlashDisabledReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/FlashController$FlashDisabledReason;->NOT_SUPPORTED_IN_CAPTURE_MODE:Lcom/meizu/media/camera/FlashController$FlashDisabledReason;

    .line 46
    new-instance v0, Lcom/meizu/media/camera/FlashController$FlashDisabledReason;

    const-string v1, "NOT_SUPPORTED_IN_SCENE"

    invoke-direct {v0, v1, v5}, Lcom/meizu/media/camera/FlashController$FlashDisabledReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/FlashController$FlashDisabledReason;->NOT_SUPPORTED_IN_SCENE:Lcom/meizu/media/camera/FlashController$FlashDisabledReason;

    .line 50
    new-instance v0, Lcom/meizu/media/camera/FlashController$FlashDisabledReason;

    const-string v1, "NOT_SUPPORTED_IN_EFFECT"

    invoke-direct {v0, v1, v6}, Lcom/meizu/media/camera/FlashController$FlashDisabledReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/FlashController$FlashDisabledReason;->NOT_SUPPORTED_IN_EFFECT:Lcom/meizu/media/camera/FlashController$FlashDisabledReason;

    .line 54
    new-instance v0, Lcom/meizu/media/camera/FlashController$FlashDisabledReason;

    const-string v1, "NOT_SUPPORTED_IN_CAPTURE"

    invoke-direct {v0, v1, v7}, Lcom/meizu/media/camera/FlashController$FlashDisabledReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/FlashController$FlashDisabledReason;->NOT_SUPPORTED_IN_CAPTURE:Lcom/meizu/media/camera/FlashController$FlashDisabledReason;

    .line 58
    new-instance v0, Lcom/meizu/media/camera/FlashController$FlashDisabledReason;

    const-string v1, "LOW_BATTERY_LEVEL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/meizu/media/camera/FlashController$FlashDisabledReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/FlashController$FlashDisabledReason;->LOW_BATTERY_LEVEL:Lcom/meizu/media/camera/FlashController$FlashDisabledReason;

    .line 62
    new-instance v0, Lcom/meizu/media/camera/FlashController$FlashDisabledReason;

    const-string v1, "LOW_BATTERY_TEMPERATURE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/meizu/media/camera/FlashController$FlashDisabledReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/FlashController$FlashDisabledReason;->LOW_BATTERY_TEMPERATURE:Lcom/meizu/media/camera/FlashController$FlashDisabledReason;

    .line 66
    new-instance v0, Lcom/meizu/media/camera/FlashController$FlashDisabledReason;

    const-string v1, "USING_WIFI_HOTSPOT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/meizu/media/camera/FlashController$FlashDisabledReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/FlashController$FlashDisabledReason;->USING_WIFI_HOTSPOT:Lcom/meizu/media/camera/FlashController$FlashDisabledReason;

    .line 70
    new-instance v0, Lcom/meizu/media/camera/FlashController$FlashDisabledReason;

    const-string v1, "CALLING"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/meizu/media/camera/FlashController$FlashDisabledReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/FlashController$FlashDisabledReason;->CALLING:Lcom/meizu/media/camera/FlashController$FlashDisabledReason;

    .line 74
    new-instance v0, Lcom/meizu/media/camera/FlashController$FlashDisabledReason;

    const-string v1, "AE_LOCKED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/meizu/media/camera/FlashController$FlashDisabledReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/FlashController$FlashDisabledReason;->AE_LOCKED:Lcom/meizu/media/camera/FlashController$FlashDisabledReason;

    .line 33
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/meizu/media/camera/FlashController$FlashDisabledReason;

    sget-object v1, Lcom/meizu/media/camera/FlashController$FlashDisabledReason;->UNKNOWN:Lcom/meizu/media/camera/FlashController$FlashDisabledReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/media/camera/FlashController$FlashDisabledReason;->NOT_SUPPORTED_IN_CAPTURE_MODE:Lcom/meizu/media/camera/FlashController$FlashDisabledReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/meizu/media/camera/FlashController$FlashDisabledReason;->NOT_SUPPORTED_IN_SCENE:Lcom/meizu/media/camera/FlashController$FlashDisabledReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/meizu/media/camera/FlashController$FlashDisabledReason;->NOT_SUPPORTED_IN_EFFECT:Lcom/meizu/media/camera/FlashController$FlashDisabledReason;

    aput-object v1, v0, v6

    sget-object v1, Lcom/meizu/media/camera/FlashController$FlashDisabledReason;->NOT_SUPPORTED_IN_CAPTURE:Lcom/meizu/media/camera/FlashController$FlashDisabledReason;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/meizu/media/camera/FlashController$FlashDisabledReason;->LOW_BATTERY_LEVEL:Lcom/meizu/media/camera/FlashController$FlashDisabledReason;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/meizu/media/camera/FlashController$FlashDisabledReason;->LOW_BATTERY_TEMPERATURE:Lcom/meizu/media/camera/FlashController$FlashDisabledReason;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/meizu/media/camera/FlashController$FlashDisabledReason;->USING_WIFI_HOTSPOT:Lcom/meizu/media/camera/FlashController$FlashDisabledReason;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/meizu/media/camera/FlashController$FlashDisabledReason;->CALLING:Lcom/meizu/media/camera/FlashController$FlashDisabledReason;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/meizu/media/camera/FlashController$FlashDisabledReason;->AE_LOCKED:Lcom/meizu/media/camera/FlashController$FlashDisabledReason;

    aput-object v2, v0, v1

    sput-object v0, Lcom/meizu/media/camera/FlashController$FlashDisabledReason;->$VALUES:[Lcom/meizu/media/camera/FlashController$FlashDisabledReason;

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
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/media/camera/FlashController$FlashDisabledReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v0, Lcom/meizu/media/camera/FlashController$FlashDisabledReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/FlashController$FlashDisabledReason;

    return-object v0
.end method

.method public static values()[Lcom/meizu/media/camera/FlashController$FlashDisabledReason;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/meizu/media/camera/FlashController$FlashDisabledReason;->$VALUES:[Lcom/meizu/media/camera/FlashController$FlashDisabledReason;

    invoke-virtual {v0}, [Lcom/meizu/media/camera/FlashController$FlashDisabledReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/media/camera/FlashController$FlashDisabledReason;

    return-object v0
.end method
