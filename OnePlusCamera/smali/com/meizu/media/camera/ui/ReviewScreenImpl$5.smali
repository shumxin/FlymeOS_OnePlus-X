.class Lcom/meizu/media/camera/ui/ReviewScreenImpl$5;
.super Ljava/lang/Object;
.source "ReviewScreenImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/ui/ReviewScreenImpl;->setupUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/ui/ReviewScreenImpl;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/ui/ReviewScreenImpl;)V
    .locals 0

    .prologue
    .line 535
    iput-object p1, p0, Lcom/meizu/media/camera/ui/ReviewScreenImpl$5;->this$0:Lcom/meizu/media/camera/ui/ReviewScreenImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 539
    iget-object v0, p0, Lcom/meizu/media/camera/ui/ReviewScreenImpl$5;->this$0:Lcom/meizu/media/camera/ui/ReviewScreenImpl;

    # invokes: Lcom/meizu/media/camera/ui/ReviewScreenImpl;->onClickCancelButton()V
    invoke-static {v0}, Lcom/meizu/media/camera/ui/ReviewScreenImpl;->access$900(Lcom/meizu/media/camera/ui/ReviewScreenImpl;)V

    .line 540
    return-void
.end method
