.class Lcom/meizu/media/camera/capturemode/PhotoCaptureMode$8;
.super Ljava/lang/Object;
.source "PhotoCaptureMode.java"

# interfaces
.implements Lcom/oneplus/base/component/ComponentSearchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;-><init>(Lcom/meizu/media/camera/CameraActivity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/component/ComponentSearchCallback",
        "<",
        "Lcom/meizu/media/camera/scene/SceneManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode$8;->this$0:Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComponentFound(Lcom/oneplus/base/component/Component;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 152
    check-cast p1, Lcom/meizu/media/camera/scene/SceneManager;

    .end local p1    # "x0":Lcom/oneplus/base/component/Component;
    invoke-virtual {p0, p1}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode$8;->onComponentFound(Lcom/meizu/media/camera/scene/SceneManager;)V

    return-void
.end method

.method public onComponentFound(Lcom/meizu/media/camera/scene/SceneManager;)V
    .locals 1
    .param p1, "component"    # Lcom/meizu/media/camera/scene/SceneManager;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode$8;->this$0:Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;

    # invokes: Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->onSceneManagerFound(Lcom/meizu/media/camera/scene/SceneManager;)V
    invoke-static {v0, p1}, Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;->access$700(Lcom/meizu/media/camera/capturemode/PhotoCaptureMode;Lcom/meizu/media/camera/scene/SceneManager;)V

    .line 157
    return-void
.end method
