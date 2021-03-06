.class public Lcom/meizu/media/camera/io/RequestedPhotoSaveTask;
.super Lcom/meizu/media/camera/io/PhotoSaveTask;
.source "RequestedPhotoSaveTask.java"


# instance fields
.field private m_ContentUri:Landroid/net/Uri;

.field private m_Context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/meizu/media/camera/CaptureHandle;Landroid/net/Uri;Lcom/meizu/media/camera/CameraCaptureEventArgs;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "captureHandle"    # Lcom/meizu/media/camera/CaptureHandle;
    .param p3, "contentUri"    # Landroid/net/Uri;
    .param p4, "e"    # Lcom/meizu/media/camera/CameraCaptureEventArgs;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p4}, Lcom/meizu/media/camera/io/PhotoSaveTask;-><init>(Landroid/content/Context;Lcom/meizu/media/camera/CaptureHandle;Lcom/meizu/media/camera/CameraCaptureEventArgs;)V

    .line 25
    iput-object p3, p0, Lcom/meizu/media/camera/io/RequestedPhotoSaveTask;->m_ContentUri:Landroid/net/Uri;

    .line 26
    iput-object p1, p0, Lcom/meizu/media/camera/io/RequestedPhotoSaveTask;->m_Context:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method protected onGenerateFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/meizu/media/camera/io/RequestedPhotoSaveTask;->m_ContentUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onInsertToMediaStore(Ljava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "preparedValues"    # Landroid/content/ContentValues;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/meizu/media/camera/io/RequestedPhotoSaveTask;->m_CaptureEventArgs:Lcom/meizu/media/camera/CameraCaptureEventArgs;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/meizu/media/camera/io/RequestedPhotoSaveTask;->m_CaptureEventArgs:Lcom/meizu/media/camera/CameraCaptureEventArgs;

    invoke-virtual {v0}, Lcom/meizu/media/camera/CameraCaptureEventArgs;->recycle()V

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/io/RequestedPhotoSaveTask;->m_ContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method protected onSaveToFile(Ljava/lang/String;)Z
    .locals 8
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 53
    const/4 v2, 0x1

    .line 54
    .local v2, "success":Z
    :try_start_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    iget-object v4, p0, Lcom/meizu/media/camera/io/RequestedPhotoSaveTask;->m_Context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/media/camera/io/RequestedPhotoSaveTask;->m_ContentUri:Landroid/net/Uri;

    const-string v6, "w"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .local v0, "bos":Ljava/io/BufferedOutputStream;
    const/4 v5, 0x0

    .line 56
    :try_start_1
    iget-object v4, p0, Lcom/meizu/media/camera/io/RequestedPhotoSaveTask;->m_CaptureEventArgs:Lcom/meizu/media/camera/CameraCaptureEventArgs;

    invoke-virtual {v4}, Lcom/meizu/media/camera/CameraCaptureEventArgs;->getPicturePlanes()[Lcom/meizu/media/camera/media/ImagePlane;

    move-result-object v4

    const/4 v6, 0x0

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lcom/meizu/media/camera/media/ImagePlane;->getData()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 57
    if-eqz v0, :cond_0

    if-eqz v5, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 64
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    :cond_0
    :goto_0
    return v2

    .line 57
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    :catch_0
    move-exception v3

    .local v3, "x2":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 58
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 60
    .local v1, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    .line 61
    iget-object v4, p0, Lcom/meizu/media/camera/io/RequestedPhotoSaveTask;->TAG:Ljava/lang/String;

    const-string v5, "onSaveToFile() - Open output stream error"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 57
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    :cond_1
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 54
    :catch_2
    move-exception v4

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 57
    :catchall_0
    move-exception v5

    move-object v7, v5

    move-object v5, v4

    move-object v4, v7

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v5, :cond_3

    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_2
    :goto_2
    :try_start_7
    throw v4

    :catch_3
    move-exception v3

    .restart local v3    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v3    # "x2":Ljava/lang/Throwable;
    :cond_3
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catchall_1
    move-exception v4

    goto :goto_1
.end method
