.class final Lcom/meizu/media/camera/ui/FaceRenderer$FaceInfo;
.super Ljava/lang/Object;
.source "FaceRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/ui/FaceRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FaceInfo"
.end annotation


# instance fields
.field public final currentBounds:Landroid/graphics/RectF;

.field public face:Lcom/meizu/media/camera/Camera$Face;

.field public startTime:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/meizu/media/camera/ui/FaceRenderer$FaceInfo;->currentBounds:Landroid/graphics/RectF;

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/media/camera/ui/FaceRenderer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/meizu/media/camera/ui/FaceRenderer$1;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/meizu/media/camera/ui/FaceRenderer$FaceInfo;-><init>()V

    return-void
.end method
