.class public final enum Lcom/meizu/media/camera/ui/PreviewCover$UIState;
.super Ljava/lang/Enum;
.source "PreviewCover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/ui/PreviewCover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UIState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/media/camera/ui/PreviewCover$UIState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/media/camera/ui/PreviewCover$UIState;

.field public static final enum CLOSED:Lcom/meizu/media/camera/ui/PreviewCover$UIState;

.field public static final enum CLOSING:Lcom/meizu/media/camera/ui/PreviewCover$UIState;

.field public static final enum OPENED:Lcom/meizu/media/camera/ui/PreviewCover$UIState;

.field public static final enum OPENING:Lcom/meizu/media/camera/ui/PreviewCover$UIState;

.field public static final enum PREPARE_TO_CLOSE:Lcom/meizu/media/camera/ui/PreviewCover$UIState;

.field public static final enum PREPARE_TO_OPEN:Lcom/meizu/media/camera/ui/PreviewCover$UIState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    new-instance v0, Lcom/meizu/media/camera/ui/PreviewCover$UIState;

    const-string v1, "PREPARE_TO_OPEN"

    invoke-direct {v0, v1, v3}, Lcom/meizu/media/camera/ui/PreviewCover$UIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/ui/PreviewCover$UIState;->PREPARE_TO_OPEN:Lcom/meizu/media/camera/ui/PreviewCover$UIState;

    .line 27
    new-instance v0, Lcom/meizu/media/camera/ui/PreviewCover$UIState;

    const-string v1, "OPENING"

    invoke-direct {v0, v1, v4}, Lcom/meizu/media/camera/ui/PreviewCover$UIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/ui/PreviewCover$UIState;->OPENING:Lcom/meizu/media/camera/ui/PreviewCover$UIState;

    .line 28
    new-instance v0, Lcom/meizu/media/camera/ui/PreviewCover$UIState;

    const-string v1, "OPENED"

    invoke-direct {v0, v1, v5}, Lcom/meizu/media/camera/ui/PreviewCover$UIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/ui/PreviewCover$UIState;->OPENED:Lcom/meizu/media/camera/ui/PreviewCover$UIState;

    .line 29
    new-instance v0, Lcom/meizu/media/camera/ui/PreviewCover$UIState;

    const-string v1, "PREPARE_TO_CLOSE"

    invoke-direct {v0, v1, v6}, Lcom/meizu/media/camera/ui/PreviewCover$UIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/ui/PreviewCover$UIState;->PREPARE_TO_CLOSE:Lcom/meizu/media/camera/ui/PreviewCover$UIState;

    .line 30
    new-instance v0, Lcom/meizu/media/camera/ui/PreviewCover$UIState;

    const-string v1, "CLOSING"

    invoke-direct {v0, v1, v7}, Lcom/meizu/media/camera/ui/PreviewCover$UIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/ui/PreviewCover$UIState;->CLOSING:Lcom/meizu/media/camera/ui/PreviewCover$UIState;

    .line 31
    new-instance v0, Lcom/meizu/media/camera/ui/PreviewCover$UIState;

    const-string v1, "CLOSED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/meizu/media/camera/ui/PreviewCover$UIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/ui/PreviewCover$UIState;->CLOSED:Lcom/meizu/media/camera/ui/PreviewCover$UIState;

    .line 24
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/meizu/media/camera/ui/PreviewCover$UIState;

    sget-object v1, Lcom/meizu/media/camera/ui/PreviewCover$UIState;->PREPARE_TO_OPEN:Lcom/meizu/media/camera/ui/PreviewCover$UIState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/media/camera/ui/PreviewCover$UIState;->OPENING:Lcom/meizu/media/camera/ui/PreviewCover$UIState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/meizu/media/camera/ui/PreviewCover$UIState;->OPENED:Lcom/meizu/media/camera/ui/PreviewCover$UIState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/meizu/media/camera/ui/PreviewCover$UIState;->PREPARE_TO_CLOSE:Lcom/meizu/media/camera/ui/PreviewCover$UIState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/meizu/media/camera/ui/PreviewCover$UIState;->CLOSING:Lcom/meizu/media/camera/ui/PreviewCover$UIState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/meizu/media/camera/ui/PreviewCover$UIState;->CLOSED:Lcom/meizu/media/camera/ui/PreviewCover$UIState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/meizu/media/camera/ui/PreviewCover$UIState;->$VALUES:[Lcom/meizu/media/camera/ui/PreviewCover$UIState;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/media/camera/ui/PreviewCover$UIState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lcom/meizu/media/camera/ui/PreviewCover$UIState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/ui/PreviewCover$UIState;

    return-object v0
.end method

.method public static values()[Lcom/meizu/media/camera/ui/PreviewCover$UIState;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/meizu/media/camera/ui/PreviewCover$UIState;->$VALUES:[Lcom/meizu/media/camera/ui/PreviewCover$UIState;

    invoke-virtual {v0}, [Lcom/meizu/media/camera/ui/PreviewCover$UIState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/media/camera/ui/PreviewCover$UIState;

    return-object v0
.end method
