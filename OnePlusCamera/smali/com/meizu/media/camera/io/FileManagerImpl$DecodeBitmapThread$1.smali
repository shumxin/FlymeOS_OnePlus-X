.class Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread$1;
.super Landroid/os/Handler;
.source "FileManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 635
    iput-object p1, p0, Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread$1;->this$1:Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 638
    iget v10, p1, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    .line 692
    :cond_0
    :goto_0
    return-void

    .line 640
    :pswitch_0
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/meizu/media/camera/io/MediaSaveTask;

    move-object v8, v10

    check-cast v8, Lcom/meizu/media/camera/io/MediaSaveTask;

    .line 641
    .local v8, "task":Lcom/meizu/media/camera/io/MediaSaveTask;
    iget-object v10, p0, Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread$1;->this$1:Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread;

    iget-object v10, v10, Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread;->this$0:Lcom/meizu/media/camera/io/FileManagerImpl;

    sget-object v11, Lcom/meizu/media/camera/io/FileManager;->EVENT_MEDIA_FILE_ADDED:Lcom/oneplus/base/EventKey;

    const/4 v12, 0x1

    # invokes: Lcom/meizu/media/camera/io/FileManagerImpl;->notifyCameraThread(Lcom/oneplus/base/EventKey;Lcom/meizu/media/camera/io/MediaSaveTask;Z)Z
    invoke-static {v10, v11, v8, v12}, Lcom/meizu/media/camera/io/FileManagerImpl;->access$900(Lcom/meizu/media/camera/io/FileManagerImpl;Lcom/oneplus/base/EventKey;Lcom/meizu/media/camera/io/MediaSaveTask;Z)Z

    goto :goto_0

    .line 645
    .end local v8    # "task":Lcom/meizu/media/camera/io/MediaSaveTask;
    :pswitch_1
    iget-object v10, p0, Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread$1;->this$1:Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread;

    iget-object v10, v10, Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread;->this$0:Lcom/meizu/media/camera/io/FileManagerImpl;

    # getter for: Lcom/meizu/media/camera/io/FileManagerImpl;->m_DecodeQueue:Ljava/util/concurrent/LinkedBlockingDeque;
    invoke-static {v10}, Lcom/meizu/media/camera/io/FileManagerImpl;->access$1500(Lcom/meizu/media/camera/io/FileManagerImpl;)Ljava/util/concurrent/LinkedBlockingDeque;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/LinkedBlockingDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/io/FileManagerImpl$BitmapArgs;

    .line 646
    .local v0, "args":Lcom/meizu/media/camera/io/FileManagerImpl$BitmapArgs;
    if-nez v0, :cond_1

    .line 647
    iget-object v10, p0, Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread$1;->this$1:Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread;

    iget-object v10, v10, Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread;->TAG:Ljava/lang/String;

    const-string v11, "MESSAGE_GET_BITMAP args == null"

    invoke-static {v10, v11}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    :goto_1
    iget-object v10, p0, Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread$1;->this$1:Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread;

    iget-object v10, v10, Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread;->this$0:Lcom/meizu/media/camera/io/FileManagerImpl;

    # getter for: Lcom/meizu/media/camera/io/FileManagerImpl;->m_DecodeQueue:Ljava/util/concurrent/LinkedBlockingDeque;
    invoke-static {v10}, Lcom/meizu/media/camera/io/FileManagerImpl;->access$1500(Lcom/meizu/media/camera/io/FileManagerImpl;)Ljava/util/concurrent/LinkedBlockingDeque;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 686
    iget-object v10, p0, Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread$1;->this$1:Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread;

    iget-object v10, v10, Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread;->this$0:Lcom/meizu/media/camera/io/FileManagerImpl;

    # getter for: Lcom/meizu/media/camera/io/FileManagerImpl;->m_DecodeBitmapHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/meizu/media/camera/io/FileManagerImpl;->access$1600(Lcom/meizu/media/camera/io/FileManagerImpl;)Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread$1;->this$1:Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread;

    iget-object v11, v11, Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread;->this$0:Lcom/meizu/media/camera/io/FileManagerImpl;

    # getter for: Lcom/meizu/media/camera/io/FileManagerImpl;->m_DecodeBitmapHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/meizu/media/camera/io/FileManagerImpl;->access$1600(Lcom/meizu/media/camera/io/FileManagerImpl;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x3ec

    invoke-static {v11, v12}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 649
    :cond_1
    # getter for: Lcom/meizu/media/camera/io/FileManagerImpl$BitmapArgs;->m_Path:Ljava/lang/String;
    invoke-static {v0}, Lcom/meizu/media/camera/io/FileManagerImpl$BitmapArgs;->access$2300(Lcom/meizu/media/camera/io/FileManagerImpl$BitmapArgs;)Ljava/lang/String;

    move-result-object v6

    .line 650
    .local v6, "path":Ljava/lang/String;
    # getter for: Lcom/meizu/media/camera/io/FileManagerImpl$BitmapArgs;->m_callback:Lcom/meizu/media/camera/io/FileManager$PhotoCallback;
    invoke-static {v0}, Lcom/meizu/media/camera/io/FileManagerImpl$BitmapArgs;->access$2400(Lcom/meizu/media/camera/io/FileManagerImpl$BitmapArgs;)Lcom/meizu/media/camera/io/FileManager$PhotoCallback;

    move-result-object v2

    .line 651
    .local v2, "callback":Lcom/meizu/media/camera/io/FileManager$PhotoCallback;
    # getter for: Lcom/meizu/media/camera/io/FileManagerImpl$BitmapArgs;->m_Position:I
    invoke-static {v0}, Lcom/meizu/media/camera/io/FileManagerImpl$BitmapArgs;->access$2500(Lcom/meizu/media/camera/io/FileManagerImpl$BitmapArgs;)I

    move-result v7

    .line 652
    .local v7, "position":I
    # getter for: Lcom/meizu/media/camera/io/FileManagerImpl$BitmapArgs;->m_Width:I
    invoke-static {v0}, Lcom/meizu/media/camera/io/FileManagerImpl$BitmapArgs;->access$2600(Lcom/meizu/media/camera/io/FileManagerImpl$BitmapArgs;)I

    move-result v9

    .line 653
    .local v9, "width":I
    # getter for: Lcom/meizu/media/camera/io/FileManagerImpl$BitmapArgs;->mHeight:I
    invoke-static {v0}, Lcom/meizu/media/camera/io/FileManagerImpl$BitmapArgs;->access$2700(Lcom/meizu/media/camera/io/FileManagerImpl$BitmapArgs;)I

    move-result v3

    .line 654
    .local v3, "height":I
    iget-object v10, p0, Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread$1;->this$1:Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread;

    iget-object v10, v10, Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread;->this$0:Lcom/meizu/media/camera/io/FileManagerImpl;

    # invokes: Lcom/meizu/media/camera/io/FileManagerImpl;->isImage(Ljava/lang/String;)Z
    invoke-static {v10, v6}, Lcom/meizu/media/camera/io/FileManagerImpl;->access$1200(Lcom/meizu/media/camera/io/FileManagerImpl;Ljava/lang/String;)Z

    move-result v4

    .line 655
    .local v4, "isImage":Z
    if-nez v4, :cond_2

    const/4 v5, 0x1

    .line 658
    .local v5, "isVideo":Z
    :goto_2
    iget-object v10, p0, Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread$1;->this$1:Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread;

    # invokes: Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread;->checkInterrupt(I)Z
    invoke-static {v10, v7}, Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread;->access$2800(Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread;I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 659
    iget-object v10, p0, Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread$1;->this$1:Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread;

    iget-object v10, v10, Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "checkInterrupt before decode : position: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " m_Current: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread$1;->this$1:Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread;

    # getter for: Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread;->m_Current:I
    invoke-static {v12}, Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread;->access$000(Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-interface {v2, v10, v5, v11}, Lcom/meizu/media/camera/io/FileManager$PhotoCallback;->onBitmapLoad(Landroid/graphics/Bitmap;ZZ)V

    .line 661
    iget-object v10, p0, Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread$1;->this$1:Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread;

    iget-object v10, v10, Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread;->this$0:Lcom/meizu/media/camera/io/FileManagerImpl;

    # getter for: Lcom/meizu/media/camera/io/FileManagerImpl;->m_DecodeQueue:Ljava/util/concurrent/LinkedBlockingDeque;
    invoke-static {v10}, Lcom/meizu/media/camera/io/FileManagerImpl;->access$1500(Lcom/meizu/media/camera/io/FileManagerImpl;)Ljava/util/concurrent/LinkedBlockingDeque;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 662
    iget-object v10, p0, Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread$1;->this$1:Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread;

    iget-object v10, v10, Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread;->this$0:Lcom/meizu/media/camera/io/FileManagerImpl;

    # getter for: Lcom/meizu/media/camera/io/FileManagerImpl;->m_DecodeBitmapHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/meizu/media/camera/io/FileManagerImpl;->access$1600(Lcom/meizu/media/camera/io/FileManagerImpl;)Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread$1;->this$1:Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread;

    iget-object v11, v11, Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread;->this$0:Lcom/meizu/media/camera/io/FileManagerImpl;

    # getter for: Lcom/meizu/media/camera/io/FileManagerImpl;->m_DecodeBitmapHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/meizu/media/camera/io/FileManagerImpl;->access$1600(Lcom/meizu/media/camera/io/FileManagerImpl;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x3ec

    invoke-static {v11, v12}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 655
    .end local v5    # "isVideo":Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 667
    .restart local v5    # "isVideo":Z
    :cond_3
    if-eqz v4, :cond_4

    .line 668
    iget-object v10, p0, Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread$1;->this$1:Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread;

    iget-object v10, v10, Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread;->this$0:Lcom/meizu/media/camera/io/FileManagerImpl;

    invoke-virtual {v10, v6, v9, v3}, Lcom/meizu/media/camera/io/FileManagerImpl;->decodeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 673
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :goto_3
    iget-object v10, p0, Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread$1;->this$1:Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread;

    # invokes: Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread;->checkInterrupt(I)Z
    invoke-static {v10, v7}, Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread;->access$2800(Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread;I)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 674
    iget-object v10, p0, Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread$1;->this$1:Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread;

    iget-object v10, v10, Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "checkInterrupt after decode : position: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " m_Current: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread$1;->this$1:Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread;

    # getter for: Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread;->m_Current:I
    invoke-static {v12}, Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread;->access$000(Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-interface {v2, v10, v5, v11}, Lcom/meizu/media/camera/io/FileManager$PhotoCallback;->onBitmapLoad(Landroid/graphics/Bitmap;ZZ)V

    .line 676
    iget-object v10, p0, Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread$1;->this$1:Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread;

    iget-object v10, v10, Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread;->this$0:Lcom/meizu/media/camera/io/FileManagerImpl;

    # getter for: Lcom/meizu/media/camera/io/FileManagerImpl;->m_DecodeQueue:Ljava/util/concurrent/LinkedBlockingDeque;
    invoke-static {v10}, Lcom/meizu/media/camera/io/FileManagerImpl;->access$1500(Lcom/meizu/media/camera/io/FileManagerImpl;)Ljava/util/concurrent/LinkedBlockingDeque;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 677
    iget-object v10, p0, Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread$1;->this$1:Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread;

    iget-object v10, v10, Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread;->this$0:Lcom/meizu/media/camera/io/FileManagerImpl;

    # getter for: Lcom/meizu/media/camera/io/FileManagerImpl;->m_DecodeBitmapHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/meizu/media/camera/io/FileManagerImpl;->access$1600(Lcom/meizu/media/camera/io/FileManagerImpl;)Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread$1;->this$1:Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread;

    iget-object v11, v11, Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread;->this$0:Lcom/meizu/media/camera/io/FileManagerImpl;

    # getter for: Lcom/meizu/media/camera/io/FileManagerImpl;->m_DecodeBitmapHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/meizu/media/camera/io/FileManagerImpl;->access$1600(Lcom/meizu/media/camera/io/FileManagerImpl;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x3ec

    invoke-static {v11, v12}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 670
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_4
    const/4 v10, 0x2

    invoke-static {v6, v10}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_3

    .line 682
    :cond_5
    iget-object v10, p0, Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread$1;->this$1:Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread;

    iget-object v10, v10, Lcom/meizu/media/camera/io/FileManagerImpl$DecodeBitmapThread;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " bitmap: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " path: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    const/4 v10, 0x0

    invoke-interface {v2, v1, v5, v10}, Lcom/meizu/media/camera/io/FileManager$PhotoCallback;->onBitmapLoad(Landroid/graphics/Bitmap;ZZ)V

    goto/16 :goto_1

    .line 638
    :pswitch_data_0
    .packed-switch 0x3ec
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
