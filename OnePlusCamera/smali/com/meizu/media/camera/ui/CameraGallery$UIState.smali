.class public final enum Lcom/meizu/media/camera/ui/CameraGallery$UIState;
.super Ljava/lang/Enum;
.source "CameraGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/ui/CameraGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UIState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/media/camera/ui/CameraGallery$UIState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/media/camera/ui/CameraGallery$UIState;

.field public static final enum CLOSED:Lcom/meizu/media/camera/ui/CameraGallery$UIState;

.field public static final enum CLOSING:Lcom/meizu/media/camera/ui/CameraGallery$UIState;

.field public static final enum DRAGGING:Lcom/meizu/media/camera/ui/CameraGallery$UIState;

.field public static final enum OPENED:Lcom/meizu/media/camera/ui/CameraGallery$UIState;

.field public static final enum OPENING:Lcom/meizu/media/camera/ui/CameraGallery$UIState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/meizu/media/camera/ui/CameraGallery$UIState;

    const-string v1, "CLOSING"

    invoke-direct {v0, v1, v2}, Lcom/meizu/media/camera/ui/CameraGallery$UIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/ui/CameraGallery$UIState;->CLOSING:Lcom/meizu/media/camera/ui/CameraGallery$UIState;

    .line 35
    new-instance v0, Lcom/meizu/media/camera/ui/CameraGallery$UIState;

    const-string v1, "CLOSED"

    invoke-direct {v0, v1, v3}, Lcom/meizu/media/camera/ui/CameraGallery$UIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/ui/CameraGallery$UIState;->CLOSED:Lcom/meizu/media/camera/ui/CameraGallery$UIState;

    .line 36
    new-instance v0, Lcom/meizu/media/camera/ui/CameraGallery$UIState;

    const-string v1, "DRAGGING"

    invoke-direct {v0, v1, v4}, Lcom/meizu/media/camera/ui/CameraGallery$UIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/ui/CameraGallery$UIState;->DRAGGING:Lcom/meizu/media/camera/ui/CameraGallery$UIState;

    .line 37
    new-instance v0, Lcom/meizu/media/camera/ui/CameraGallery$UIState;

    const-string v1, "OPENING"

    invoke-direct {v0, v1, v5}, Lcom/meizu/media/camera/ui/CameraGallery$UIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/ui/CameraGallery$UIState;->OPENING:Lcom/meizu/media/camera/ui/CameraGallery$UIState;

    .line 38
    new-instance v0, Lcom/meizu/media/camera/ui/CameraGallery$UIState;

    const-string v1, "OPENED"

    invoke-direct {v0, v1, v6}, Lcom/meizu/media/camera/ui/CameraGallery$UIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/ui/CameraGallery$UIState;->OPENED:Lcom/meizu/media/camera/ui/CameraGallery$UIState;

    .line 32
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/meizu/media/camera/ui/CameraGallery$UIState;

    sget-object v1, Lcom/meizu/media/camera/ui/CameraGallery$UIState;->CLOSING:Lcom/meizu/media/camera/ui/CameraGallery$UIState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/meizu/media/camera/ui/CameraGallery$UIState;->CLOSED:Lcom/meizu/media/camera/ui/CameraGallery$UIState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/media/camera/ui/CameraGallery$UIState;->DRAGGING:Lcom/meizu/media/camera/ui/CameraGallery$UIState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/meizu/media/camera/ui/CameraGallery$UIState;->OPENING:Lcom/meizu/media/camera/ui/CameraGallery$UIState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/meizu/media/camera/ui/CameraGallery$UIState;->OPENED:Lcom/meizu/media/camera/ui/CameraGallery$UIState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/meizu/media/camera/ui/CameraGallery$UIState;->$VALUES:[Lcom/meizu/media/camera/ui/CameraGallery$UIState;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/media/camera/ui/CameraGallery$UIState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v0, Lcom/meizu/media/camera/ui/CameraGallery$UIState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/ui/CameraGallery$UIState;

    return-object v0
.end method

.method public static values()[Lcom/meizu/media/camera/ui/CameraGallery$UIState;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/meizu/media/camera/ui/CameraGallery$UIState;->$VALUES:[Lcom/meizu/media/camera/ui/CameraGallery$UIState;

    invoke-virtual {v0}, [Lcom/meizu/media/camera/ui/CameraGallery$UIState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/media/camera/ui/CameraGallery$UIState;

    return-object v0
.end method
