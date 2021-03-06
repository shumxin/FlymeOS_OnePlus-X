.class final Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FocusExposureIndicatorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FocusExposureRegionDrawable"
.end annotation


# instance fields
.field private final m_BaseDrawable:Landroid/graphics/drawable/Drawable;

.field private final m_ExposureCompBorderWidth:I

.field private final m_ExposureCompPaint:Landroid/graphics/Paint;

.field private m_RelativeExposureComp:F


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    .line 123
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 124
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->m_BaseDrawable:Landroid/graphics/drawable/Drawable;

    .line 125
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->m_BaseDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable$1;

    invoke-direct {v1, p0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable$1;-><init>(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f070000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->m_ExposureCompBorderWidth:I

    .line 146
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->m_ExposureCompPaint:Landroid/graphics/Paint;

    .line 147
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->m_ExposureCompPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 148
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->m_ExposureCompPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 149
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->m_ExposureCompPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->m_ExposureCompBorderWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 150
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->m_ExposureCompPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 151
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    .line 159
    .local v9, "bounds":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->m_BaseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 160
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->m_BaseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 163
    iget v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->m_RelativeExposureComp:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 165
    iget v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->m_ExposureCompBorderWidth:I

    div-int/lit8 v10, v0, 0x2

    .line 166
    .local v10, "offset":I
    invoke-virtual {v9, v10, v10}, Landroid/graphics/Rect;->inset(II)V

    .line 167
    iget v0, v9, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v9, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v9, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    const/high16 v5, 0x43870000    # 270.0f

    const/high16 v0, 0x43b40000    # 360.0f

    iget v6, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->m_RelativeExposureComp:F

    mul-float/2addr v6, v0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->m_ExposureCompPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 168
    neg-int v0, v10

    neg-int v1, v10

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 170
    .end local v10    # "offset":I
    :cond_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->m_BaseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->m_BaseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->m_BaseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 197
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->m_BaseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 198
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->m_BaseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 205
    return-void
.end method

.method public setRelativeExposureComp(F)V
    .locals 0
    .param p1, "exposureComp"    # F

    .prologue
    .line 210
    iput p1, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->m_RelativeExposureComp:F

    .line 211
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->invalidateSelf()V

    .line 212
    return-void
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->m_BaseDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->m_BaseDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 219
    :cond_0
    return-void
.end method

.method public stopAnimation()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->m_BaseDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->m_BaseDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 227
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->m_BaseDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    .line 229
    :cond_0
    return-void
.end method
