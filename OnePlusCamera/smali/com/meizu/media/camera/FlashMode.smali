.class public final enum Lcom/meizu/media/camera/FlashMode;
.super Ljava/lang/Enum;
.source "FlashMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/media/camera/FlashMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/media/camera/FlashMode;

.field public static final enum AUTO:Lcom/meizu/media/camera/FlashMode;

.field public static final enum OFF:Lcom/meizu/media/camera/FlashMode;

.field public static final enum ON:Lcom/meizu/media/camera/FlashMode;

.field public static final enum TORCH:Lcom/meizu/media/camera/FlashMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/meizu/media/camera/FlashMode;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v2}, Lcom/meizu/media/camera/FlashMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/FlashMode;->OFF:Lcom/meizu/media/camera/FlashMode;

    .line 15
    new-instance v0, Lcom/meizu/media/camera/FlashMode;

    const-string v1, "ON"

    invoke-direct {v0, v1, v3}, Lcom/meizu/media/camera/FlashMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/FlashMode;->ON:Lcom/meizu/media/camera/FlashMode;

    .line 19
    new-instance v0, Lcom/meizu/media/camera/FlashMode;

    const-string v1, "AUTO"

    invoke-direct {v0, v1, v4}, Lcom/meizu/media/camera/FlashMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/FlashMode;->AUTO:Lcom/meizu/media/camera/FlashMode;

    .line 23
    new-instance v0, Lcom/meizu/media/camera/FlashMode;

    const-string v1, "TORCH"

    invoke-direct {v0, v1, v5}, Lcom/meizu/media/camera/FlashMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/FlashMode;->TORCH:Lcom/meizu/media/camera/FlashMode;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/meizu/media/camera/FlashMode;

    sget-object v1, Lcom/meizu/media/camera/FlashMode;->OFF:Lcom/meizu/media/camera/FlashMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/meizu/media/camera/FlashMode;->ON:Lcom/meizu/media/camera/FlashMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/media/camera/FlashMode;->AUTO:Lcom/meizu/media/camera/FlashMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/meizu/media/camera/FlashMode;->TORCH:Lcom/meizu/media/camera/FlashMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/meizu/media/camera/FlashMode;->$VALUES:[Lcom/meizu/media/camera/FlashMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/media/camera/FlashMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/meizu/media/camera/FlashMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/FlashMode;

    return-object v0
.end method

.method public static values()[Lcom/meizu/media/camera/FlashMode;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/meizu/media/camera/FlashMode;->$VALUES:[Lcom/meizu/media/camera/FlashMode;

    invoke-virtual {v0}, [Lcom/meizu/media/camera/FlashMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/media/camera/FlashMode;

    return-object v0
.end method
