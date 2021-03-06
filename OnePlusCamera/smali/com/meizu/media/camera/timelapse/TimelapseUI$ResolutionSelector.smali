.class final Lcom/meizu/media/camera/timelapse/TimelapseUI$ResolutionSelector;
.super Lcom/meizu/media/camera/media/DefaultVideoResolutionSelector;
.source "TimelapseUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/timelapse/TimelapseUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResolutionSelector"
.end annotation


# direct methods
.method public constructor <init>(Lcom/meizu/media/camera/CameraActivity;)V
    .locals 0
    .param p1, "cameraActivity"    # Lcom/meizu/media/camera/CameraActivity;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/media/DefaultVideoResolutionSelector;-><init>(Lcom/meizu/media/camera/CameraActivity;)V

    .line 52
    return-void
.end method


# virtual methods
.method public selectResolutions(Lcom/meizu/media/camera/Camera;Lcom/oneplus/base/Settings;Lcom/meizu/media/camera/media/ResolutionSelector$Restriction;)Ljava/util/List;
    .locals 5
    .param p1, "camera"    # Lcom/meizu/media/camera/Camera;
    .param p2, "settings"    # Lcom/oneplus/base/Settings;
    .param p3, "restriction"    # Lcom/meizu/media/camera/media/ResolutionSelector$Restriction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/media/camera/Camera;",
            "Lcom/oneplus/base/Settings;",
            "Lcom/meizu/media/camera/media/ResolutionSelector$Restriction;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/media/camera/media/Resolution;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v4, 0x870

    .line 57
    if-nez p3, :cond_1

    .line 58
    new-instance p3, Lcom/meizu/media/camera/media/ResolutionSelector$Restriction;

    .end local p3    # "restriction":Lcom/meizu/media/camera/media/ResolutionSelector$Restriction;
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v4, v4}, Landroid/util/Size;-><init>(II)V

    invoke-direct {p3, v1}, Lcom/meizu/media/camera/media/ResolutionSelector$Restriction;-><init>(Landroid/util/Size;)V

    .line 62
    .restart local p3    # "restriction":Lcom/meizu/media/camera/media/ResolutionSelector$Restriction;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/meizu/media/camera/media/DefaultVideoResolutionSelector;->selectResolutions(Lcom/meizu/media/camera/Camera;Lcom/oneplus/base/Settings;Lcom/meizu/media/camera/media/ResolutionSelector$Restriction;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 59
    :cond_1
    iget-object v1, p3, Lcom/meizu/media/camera/media/ResolutionSelector$Restriction;->maxSize:Landroid/util/Size;

    if-eqz v1, :cond_0

    iget-object v1, p3, Lcom/meizu/media/camera/media/ResolutionSelector$Restriction;->maxSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-gt v1, v4, :cond_2

    iget-object v1, p3, Lcom/meizu/media/camera/media/ResolutionSelector$Restriction;->maxSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-le v1, v4, :cond_0

    .line 60
    :cond_2
    new-instance v0, Lcom/meizu/media/camera/media/ResolutionSelector$Restriction;

    new-instance v1, Landroid/util/Size;

    iget-object v2, p3, Lcom/meizu/media/camera/media/ResolutionSelector$Restriction;->maxSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p3, Lcom/meizu/media/camera/media/ResolutionSelector$Restriction;->maxSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    invoke-direct {v0, v1}, Lcom/meizu/media/camera/media/ResolutionSelector$Restriction;-><init>(Landroid/util/Size;)V

    .end local p3    # "restriction":Lcom/meizu/media/camera/media/ResolutionSelector$Restriction;
    .local v0, "restriction":Lcom/meizu/media/camera/media/ResolutionSelector$Restriction;
    move-object p3, v0

    .end local v0    # "restriction":Lcom/meizu/media/camera/media/ResolutionSelector$Restriction;
    .restart local p3    # "restriction":Lcom/meizu/media/camera/media/ResolutionSelector$Restriction;
    goto :goto_0
.end method
