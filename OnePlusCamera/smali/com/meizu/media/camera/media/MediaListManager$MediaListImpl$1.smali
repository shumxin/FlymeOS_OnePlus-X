.class Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl$1;
.super Ljava/lang/Object;
.source "MediaListManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;->addMedia(Lcom/meizu/media/camera/media/MediaInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;

.field final synthetic val$media:Lcom/meizu/media/camera/media/MediaInfo;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;Lcom/meizu/media/camera/media/MediaInfo;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl$1;->this$0:Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;

    iput-object p2, p0, Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl$1;->val$media:Lcom/meizu/media/camera/media/MediaInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl$1;->this$0:Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;

    iget-object v1, p0, Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl$1;->val$media:Lcom/meizu/media/camera/media/MediaInfo;

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;->add(Lcom/meizu/media/camera/media/MediaInfo;)Z

    .line 157
    return-void
.end method
