.class public final Lcom/meizu/media/camera/scene/PhotoFaceBeautyScene;
.super Lcom/meizu/media/camera/scene/PhotoScene;
.source "PhotoFaceBeautyScene.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/media/camera/scene/PhotoFaceBeautyScene$1;
    }
.end annotation


# static fields
.field public static final ID:Ljava/lang/String; = "Face Beauty (Photo)"


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/CameraActivity;)V
    .locals 3
    .param p1, "cameraActivity"    # Lcom/meizu/media/camera/CameraActivity;

    .prologue
    .line 23
    const-string v0, "Face Beauty (Photo)"

    const/4 v1, 0x3

    const/16 v2, 0x15

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/meizu/media/camera/scene/PhotoScene;-><init>(Lcom/meizu/media/camera/CameraActivity;Ljava/lang/String;II)V

    .line 27
    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/meizu/media/camera/scene/PhotoFaceBeautyScene;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f09002d

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImage(Lcom/meizu/media/camera/scene/Scene$ImageUsage;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "usage"    # Lcom/meizu/media/camera/scene/Scene$ImageUsage;

    .prologue
    .line 42
    sget-object v0, Lcom/meizu/media/camera/scene/PhotoFaceBeautyScene$1;->$SwitchMap$com$oneplus$camera$scene$Scene$ImageUsage:[I

    invoke-virtual {p1}, Lcom/meizu/media/camera/scene/Scene$ImageUsage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 47
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 45
    :pswitch_0
    invoke-virtual {p0}, Lcom/meizu/media/camera/scene/PhotoFaceBeautyScene;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f020081

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
