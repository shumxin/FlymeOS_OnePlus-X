.class Lcom/meizu/media/camera/ui/CaptureModeSwitcher$12;
.super Ljava/lang/Object;
.source "CaptureModeSwitcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/ui/CaptureModeSwitcher;->shiftCaptureModesPanelVertical(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/ui/CaptureModeSwitcher;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/ui/CaptureModeSwitcher;)V
    .locals 0

    .prologue
    .line 1076
    iput-object p1, p0, Lcom/meizu/media/camera/ui/CaptureModeSwitcher$12;->this$0:Lcom/meizu/media/camera/ui/CaptureModeSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/meizu/media/camera/ui/CaptureModeSwitcher$12;->this$0:Lcom/meizu/media/camera/ui/CaptureModeSwitcher;

    # invokes: Lcom/meizu/media/camera/ui/CaptureModeSwitcher;->checkPreviewCoverState()V
    invoke-static {v0}, Lcom/meizu/media/camera/ui/CaptureModeSwitcher;->access$2800(Lcom/meizu/media/camera/ui/CaptureModeSwitcher;)V

    .line 1080
    return-void
.end method
