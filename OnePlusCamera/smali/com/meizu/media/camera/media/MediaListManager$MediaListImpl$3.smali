.class Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl$3;
.super Ljava/lang/Object;
.source "MediaListManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;->clearMedia()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl$3;->this$0:Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl$3;->this$0:Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;

    # invokes: Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;->onMediaCleared()V
    invoke-static {v0}, Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;->access$200(Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;)V

    .line 197
    return-void
.end method
