.class Lcom/meizu/media/camera/FlashControllerImpl$8;
.super Ljava/lang/Object;
.source "FlashControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/FlashControllerImpl;->setFlashMode(Lcom/meizu/media/camera/FlashMode;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/FlashControllerImpl;

.field final synthetic val$camera:Lcom/meizu/media/camera/Camera;

.field final synthetic val$flashMode:Lcom/meizu/media/camera/FlashMode;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/FlashControllerImpl;Lcom/meizu/media/camera/Camera;Lcom/meizu/media/camera/FlashMode;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/meizu/media/camera/FlashControllerImpl$8;->this$0:Lcom/meizu/media/camera/FlashControllerImpl;

    iput-object p2, p0, Lcom/meizu/media/camera/FlashControllerImpl$8;->val$camera:Lcom/meizu/media/camera/Camera;

    iput-object p3, p0, Lcom/meizu/media/camera/FlashControllerImpl$8;->val$flashMode:Lcom/meizu/media/camera/FlashMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 309
    :try_start_0
    iget-object v1, p0, Lcom/meizu/media/camera/FlashControllerImpl$8;->val$camera:Lcom/meizu/media/camera/Camera;

    sget-object v2, Lcom/meizu/media/camera/Camera;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/meizu/media/camera/FlashControllerImpl$8;->val$flashMode:Lcom/meizu/media/camera/FlashMode;

    invoke-interface {v1, v2, v3}, Lcom/meizu/media/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :goto_0
    return-void

    .line 311
    :catch_0
    move-exception v0

    .line 313
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/meizu/media/camera/FlashControllerImpl$8;->this$0:Lcom/meizu/media/camera/FlashControllerImpl;

    # getter for: Lcom/meizu/media/camera/FlashControllerImpl;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/meizu/media/camera/FlashControllerImpl;->access$1300(Lcom/meizu/media/camera/FlashControllerImpl;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setFlashMode() - Fail to set flash mode"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
