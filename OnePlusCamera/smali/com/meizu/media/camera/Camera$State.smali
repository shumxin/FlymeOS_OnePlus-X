.class public final enum Lcom/meizu/media/camera/Camera$State;
.super Ljava/lang/Enum;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/media/camera/Camera$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/media/camera/Camera$State;

.field public static final enum CLOSED:Lcom/meizu/media/camera/Camera$State;

.field public static final enum CLOSING:Lcom/meizu/media/camera/Camera$State;

.field public static final enum OPENED:Lcom/meizu/media/camera/Camera$State;

.field public static final enum OPENING:Lcom/meizu/media/camera/Camera$State;

.field public static final enum UNAVAILABLE:Lcom/meizu/media/camera/Camera$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 726
    new-instance v0, Lcom/meizu/media/camera/Camera$State;

    const-string v1, "OPENING"

    invoke-direct {v0, v1, v2}, Lcom/meizu/media/camera/Camera$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/Camera$State;->OPENING:Lcom/meizu/media/camera/Camera$State;

    .line 730
    new-instance v0, Lcom/meizu/media/camera/Camera$State;

    const-string v1, "OPENED"

    invoke-direct {v0, v1, v3}, Lcom/meizu/media/camera/Camera$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/Camera$State;->OPENED:Lcom/meizu/media/camera/Camera$State;

    .line 734
    new-instance v0, Lcom/meizu/media/camera/Camera$State;

    const-string v1, "CLOSING"

    invoke-direct {v0, v1, v4}, Lcom/meizu/media/camera/Camera$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/Camera$State;->CLOSING:Lcom/meizu/media/camera/Camera$State;

    .line 738
    new-instance v0, Lcom/meizu/media/camera/Camera$State;

    const-string v1, "CLOSED"

    invoke-direct {v0, v1, v5}, Lcom/meizu/media/camera/Camera$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/Camera$State;->CLOSED:Lcom/meizu/media/camera/Camera$State;

    .line 742
    new-instance v0, Lcom/meizu/media/camera/Camera$State;

    const-string v1, "UNAVAILABLE"

    invoke-direct {v0, v1, v6}, Lcom/meizu/media/camera/Camera$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/Camera$State;->UNAVAILABLE:Lcom/meizu/media/camera/Camera$State;

    .line 721
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/meizu/media/camera/Camera$State;

    sget-object v1, Lcom/meizu/media/camera/Camera$State;->OPENING:Lcom/meizu/media/camera/Camera$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/meizu/media/camera/Camera$State;->OPENED:Lcom/meizu/media/camera/Camera$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/media/camera/Camera$State;->CLOSING:Lcom/meizu/media/camera/Camera$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/meizu/media/camera/Camera$State;->CLOSED:Lcom/meizu/media/camera/Camera$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/meizu/media/camera/Camera$State;->UNAVAILABLE:Lcom/meizu/media/camera/Camera$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/meizu/media/camera/Camera$State;->$VALUES:[Lcom/meizu/media/camera/Camera$State;

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
    .line 721
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/media/camera/Camera$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 721
    const-class v0, Lcom/meizu/media/camera/Camera$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/Camera$State;

    return-object v0
.end method

.method public static values()[Lcom/meizu/media/camera/Camera$State;
    .locals 1

    .prologue
    .line 721
    sget-object v0, Lcom/meizu/media/camera/Camera$State;->$VALUES:[Lcom/meizu/media/camera/Camera$State;

    invoke-virtual {v0}, [Lcom/meizu/media/camera/Camera$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/media/camera/Camera$State;

    return-object v0
.end method
