.class Lcom/meizu/media/camera/ui/ThumbnailBarImpl$CircleOutlineProvider;
.super Landroid/view/ViewOutlineProvider;
.source "ThumbnailBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/ui/ThumbnailBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CircleOutlineProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/ui/ThumbnailBarImpl;


# direct methods
.method private constructor <init>(Lcom/meizu/media/camera/ui/ThumbnailBarImpl;)V
    .locals 0

    .prologue
    .line 542
    iput-object p1, p0, Lcom/meizu/media/camera/ui/ThumbnailBarImpl$CircleOutlineProvider;->this$0:Lcom/meizu/media/camera/ui/ThumbnailBarImpl;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/media/camera/ui/ThumbnailBarImpl;Lcom/meizu/media/camera/ui/ThumbnailBarImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/meizu/media/camera/ui/ThumbnailBarImpl;
    .param p2, "x1"    # Lcom/meizu/media/camera/ui/ThumbnailBarImpl$1;

    .prologue
    .line 542
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/ui/ThumbnailBarImpl$CircleOutlineProvider;-><init>(Lcom/meizu/media/camera/ui/ThumbnailBarImpl;)V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .prologue
    const/4 v2, 0x0

    .line 547
    iget-object v0, p0, Lcom/meizu/media/camera/ui/ThumbnailBarImpl$CircleOutlineProvider;->this$0:Lcom/meizu/media/camera/ui/ThumbnailBarImpl;

    # getter for: Lcom/meizu/media/camera/ui/ThumbnailBarImpl;->m_Length:I
    invoke-static {v0}, Lcom/meizu/media/camera/ui/ThumbnailBarImpl;->access$2000(Lcom/meizu/media/camera/ui/ThumbnailBarImpl;)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/media/camera/ui/ThumbnailBarImpl$CircleOutlineProvider;->this$0:Lcom/meizu/media/camera/ui/ThumbnailBarImpl;

    # getter for: Lcom/meizu/media/camera/ui/ThumbnailBarImpl;->m_Length:I
    invoke-static {v1}, Lcom/meizu/media/camera/ui/ThumbnailBarImpl;->access$2000(Lcom/meizu/media/camera/ui/ThumbnailBarImpl;)I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Outline;->setOval(IIII)V

    .line 548
    return-void
.end method
