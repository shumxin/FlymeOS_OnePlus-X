.class Lcom/meizu/media/camera/ui/ScaleImageView$12;
.super Ljava/lang/Object;
.source "ScaleImageView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/ui/ScaleImageView;->finishPortrait()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/ui/ScaleImageView;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/ui/ScaleImageView;)V
    .locals 0

    .prologue
    .line 1130
    iput-object p1, p0, Lcom/meizu/media/camera/ui/ScaleImageView$12;->this$0:Lcom/meizu/media/camera/ui/ScaleImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 1132
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1133
    .local v0, "value":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/meizu/media/camera/ui/ScaleImageView$12;->this$0:Lcom/meizu/media/camera/ui/ScaleImageView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    # setter for: Lcom/meizu/media/camera/ui/ScaleImageView;->m_PaddingY:I
    invoke-static {v1, v2}, Lcom/meizu/media/camera/ui/ScaleImageView;->access$2502(Lcom/meizu/media/camera/ui/ScaleImageView;I)I

    .line 1134
    iget-object v1, p0, Lcom/meizu/media/camera/ui/ScaleImageView$12;->this$0:Lcom/meizu/media/camera/ui/ScaleImageView;

    # getter for: Lcom/meizu/media/camera/ui/ScaleImageView;->m_parent:Landroid/view/View;
    invoke-static {v1}, Lcom/meizu/media/camera/ui/ScaleImageView;->access$2600(Lcom/meizu/media/camera/ui/ScaleImageView;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/media/camera/ui/ScaleImageView$12;->this$0:Lcom/meizu/media/camera/ui/ScaleImageView;

    # getter for: Lcom/meizu/media/camera/ui/ScaleImageView;->m_PaddingY:I
    invoke-static {v2}, Lcom/meizu/media/camera/ui/ScaleImageView;->access$2500(Lcom/meizu/media/camera/ui/ScaleImageView;)I

    move-result v2

    mul-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v5, v2}, Landroid/view/View;->scrollTo(II)V

    .line 1135
    iget-object v1, p0, Lcom/meizu/media/camera/ui/ScaleImageView$12;->this$0:Lcom/meizu/media/camera/ui/ScaleImageView;

    # getter for: Lcom/meizu/media/camera/ui/ScaleImageView;->m_parent:Landroid/view/View;
    invoke-static {v1}, Lcom/meizu/media/camera/ui/ScaleImageView;->access$2600(Lcom/meizu/media/camera/ui/ScaleImageView;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/media/camera/ui/ScaleImageView$12;->this$0:Lcom/meizu/media/camera/ui/ScaleImageView;

    # getter for: Lcom/meizu/media/camera/ui/ScaleImageView;->m_PaddingY:I
    invoke-static {v2}, Lcom/meizu/media/camera/ui/ScaleImageView;->access$2500(Lcom/meizu/media/camera/ui/ScaleImageView;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/meizu/media/camera/ui/ScaleImageView$12;->this$0:Lcom/meizu/media/camera/ui/ScaleImageView;

    # getter for: Lcom/meizu/media/camera/ui/ScaleImageView;->m_MinY:I
    invoke-static {v3}, Lcom/meizu/media/camera/ui/ScaleImageView;->access$2700(Lcom/meizu/media/camera/ui/ScaleImageView;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, v4, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1136
    iget-object v1, p0, Lcom/meizu/media/camera/ui/ScaleImageView$12;->this$0:Lcom/meizu/media/camera/ui/ScaleImageView;

    # getter for: Lcom/meizu/media/camera/ui/ScaleImageView;->m_PaddingY:I
    invoke-static {v1}, Lcom/meizu/media/camera/ui/ScaleImageView;->access$2500(Lcom/meizu/media/camera/ui/ScaleImageView;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/media/camera/ui/ScaleImageView$12;->this$0:Lcom/meizu/media/camera/ui/ScaleImageView;

    # getter for: Lcom/meizu/media/camera/ui/ScaleImageView;->m_MinY:I
    invoke-static {v2}, Lcom/meizu/media/camera/ui/ScaleImageView;->access$2700(Lcom/meizu/media/camera/ui/ScaleImageView;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 1137
    iget-object v1, p0, Lcom/meizu/media/camera/ui/ScaleImageView$12;->this$0:Lcom/meizu/media/camera/ui/ScaleImageView;

    const/4 v2, 0x1

    # setter for: Lcom/meizu/media/camera/ui/ScaleImageView;->m_IsDeleted:Z
    invoke-static {v1, v2}, Lcom/meizu/media/camera/ui/ScaleImageView;->access$2802(Lcom/meizu/media/camera/ui/ScaleImageView;Z)Z

    .line 1138
    iget-object v1, p0, Lcom/meizu/media/camera/ui/ScaleImageView$12;->this$0:Lcom/meizu/media/camera/ui/ScaleImageView;

    # getter for: Lcom/meizu/media/camera/ui/ScaleImageView;->m_parent:Landroid/view/View;
    invoke-static {v1}, Lcom/meizu/media/camera/ui/ScaleImageView;->access$2600(Lcom/meizu/media/camera/ui/ScaleImageView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1139
    iget-object v1, p0, Lcom/meizu/media/camera/ui/ScaleImageView$12;->this$0:Lcom/meizu/media/camera/ui/ScaleImageView;

    # getter for: Lcom/meizu/media/camera/ui/ScaleImageView;->m_Gallery:Lcom/meizu/media/camera/ui/PreviewGallery;
    invoke-static {v1}, Lcom/meizu/media/camera/ui/ScaleImageView;->access$1900(Lcom/meizu/media/camera/ui/ScaleImageView;)Lcom/meizu/media/camera/ui/PreviewGallery;

    move-result-object v1

    const/16 v2, 0x3ea

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/meizu/media/camera/ui/ScaleImageView$12;->this$0:Lcom/meizu/media/camera/ui/ScaleImageView;

    # getter for: Lcom/meizu/media/camera/ui/ScaleImageView;->m_Path:Ljava/lang/String;
    invoke-static {v4}, Lcom/meizu/media/camera/ui/ScaleImageView;->access$2900(Lcom/meizu/media/camera/ui/ScaleImageView;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v5, v5, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 1144
    :cond_0
    :goto_0
    sget-object v1, Lcom/meizu/media/camera/ui/ScaleImageView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isOpened: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/media/camera/ui/ScaleImageView$12;->this$0:Lcom/meizu/media/camera/ui/ScaleImageView;

    # getter for: Lcom/meizu/media/camera/ui/ScaleImageView;->m_IsDeleted:Z
    invoke-static {v3}, Lcom/meizu/media/camera/ui/ScaleImageView;->access$2800(Lcom/meizu/media/camera/ui/ScaleImageView;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    return-void

    .line 1140
    :cond_1
    iget-object v1, p0, Lcom/meizu/media/camera/ui/ScaleImageView$12;->this$0:Lcom/meizu/media/camera/ui/ScaleImageView;

    # getter for: Lcom/meizu/media/camera/ui/ScaleImageView;->m_PaddingY:I
    invoke-static {v1}, Lcom/meizu/media/camera/ui/ScaleImageView;->access$2500(Lcom/meizu/media/camera/ui/ScaleImageView;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/media/camera/ui/ScaleImageView$12;->this$0:Lcom/meizu/media/camera/ui/ScaleImageView;

    # getter for: Lcom/meizu/media/camera/ui/ScaleImageView;->m_MaxY:I
    invoke-static {v2}, Lcom/meizu/media/camera/ui/ScaleImageView;->access$3000(Lcom/meizu/media/camera/ui/ScaleImageView;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1141
    iget-object v1, p0, Lcom/meizu/media/camera/ui/ScaleImageView$12;->this$0:Lcom/meizu/media/camera/ui/ScaleImageView;

    # setter for: Lcom/meizu/media/camera/ui/ScaleImageView;->m_IsDeleted:Z
    invoke-static {v1, v5}, Lcom/meizu/media/camera/ui/ScaleImageView;->access$2802(Lcom/meizu/media/camera/ui/ScaleImageView;Z)Z

    goto :goto_0
.end method
