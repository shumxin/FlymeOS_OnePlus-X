.class final Lcom/meizu/media/camera/ui/SavedMediaCue;
.super Lcom/meizu/media/camera/UIComponent;
.source "SavedMediaCue.java"


# static fields
.field private static final ANIMATION_DURATION:I = 0x64

.field private static final DECODED_IMAGE_SIZE:I = 0x100

.field public static m_ImageDecoder:Lcom/oneplus/media/BitmapPool;


# instance fields
.field private m_AnimationBitmapQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private m_Animator:Landroid/view/ViewPropertyAnimator;

.field private m_BitmapDecodeCallback:Lcom/oneplus/media/BitmapPool$Callback;

.field private m_BurstImageSaveCount:I

.field private m_BurstShotCount:I

.field private m_CueFrameContainer:Landroid/widget/RelativeLayout;

.field private m_CueFrameLandscape:Landroid/widget/ImageView;

.field private m_CueFramePortrait:Landroid/widget/ImageView;

.field private m_DecodeHandleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/base/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private m_ValidBurstFilePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const-wide/32 v2, 0x80000

    .line 36
    new-instance v0, Lcom/oneplus/media/BitmapPool;

    const-string v1, "AnimationBitmapPool"

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-wide v4, v2

    invoke-direct/range {v0 .. v8}, Lcom/oneplus/media/BitmapPool;-><init>(Ljava/lang/String;JJLandroid/graphics/Bitmap$Config;II)V

    sput-object v0, Lcom/meizu/media/camera/ui/SavedMediaCue;->m_ImageDecoder:Lcom/oneplus/media/BitmapPool;

    return-void
.end method

.method constructor <init>(Lcom/meizu/media/camera/CameraActivity;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/meizu/media/camera/CameraActivity;

    .prologue
    const/4 v1, 0x0

    .line 60
    const-string v0, "Saved Media Cue"

    invoke-direct {p0, v0, p1, v1}, Lcom/meizu/media/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/meizu/media/camera/CameraActivity;Z)V

    .line 40
    iput v1, p0, Lcom/meizu/media/camera/ui/SavedMediaCue;->m_BurstShotCount:I

    .line 41
    iput v1, p0, Lcom/meizu/media/camera/ui/SavedMediaCue;->m_BurstImageSaveCount:I

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/media/camera/ui/SavedMediaCue;->m_DecodeHandleList:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/meizu/media/camera/ui/SavedMediaCue;->m_AnimationBitmapQueue:Ljava/util/LinkedList;

    .line 48
    new-instance v0, Lcom/meizu/media/camera/ui/SavedMediaCue$1;

    invoke-direct {v0, p0}, Lcom/meizu/media/camera/ui/SavedMediaCue$1;-><init>(Lcom/meizu/media/camera/ui/SavedMediaCue;)V

    iput-object v0, p0, Lcom/meizu/media/camera/ui/SavedMediaCue;->m_BitmapDecodeCallback:Lcom/oneplus/media/BitmapPool$Callback;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/media/camera/ui/SavedMediaCue;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/SavedMediaCue;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/meizu/media/camera/ui/SavedMediaCue;->m_DecodeHandleList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/media/camera/ui/SavedMediaCue;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/SavedMediaCue;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/ui/SavedMediaCue;->showCueAnimation(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/meizu/media/camera/ui/SavedMediaCue;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/SavedMediaCue;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/meizu/media/camera/ui/SavedMediaCue;->m_AnimationBitmapQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/media/camera/ui/SavedMediaCue;Lcom/meizu/media/camera/CaptureEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/SavedMediaCue;
    .param p1, "x1"    # Lcom/meizu/media/camera/CaptureEventArgs;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/ui/SavedMediaCue;->onBurstPhotoReceived(Lcom/meizu/media/camera/CaptureEventArgs;)V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/media/camera/ui/SavedMediaCue;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/SavedMediaCue;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/ui/SavedMediaCue;->decodeImageForAnimation(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/meizu/media/camera/ui/SavedMediaCue;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/SavedMediaCue;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/meizu/media/camera/ui/SavedMediaCue;->onBurstSaveEventReceived()V

    return-void
.end method

.method static synthetic access$502(Lcom/meizu/media/camera/ui/SavedMediaCue;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/SavedMediaCue;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/meizu/media/camera/ui/SavedMediaCue;->m_ValidBurstFilePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/meizu/media/camera/ui/SavedMediaCue;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/SavedMediaCue;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/meizu/media/camera/ui/SavedMediaCue;->m_CueFrameContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$702(Lcom/meizu/media/camera/ui/SavedMediaCue;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/SavedMediaCue;
    .param p1, "x1"    # Landroid/view/ViewPropertyAnimator;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/meizu/media/camera/ui/SavedMediaCue;->m_Animator:Landroid/view/ViewPropertyAnimator;

    return-object p1
.end method

.method static synthetic access$800(Lcom/meizu/media/camera/ui/SavedMediaCue;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/SavedMediaCue;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/meizu/media/camera/ui/SavedMediaCue;->m_CueFramePortrait:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/meizu/media/camera/ui/SavedMediaCue;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/SavedMediaCue;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/meizu/media/camera/ui/SavedMediaCue;->m_CueFrameLandscape:Landroid/widget/ImageView;

    return-object v0
.end method

.method private animatePhotograph(Landroid/view/View;FJII)V
    .locals 9
    .param p1, "image"    # Landroid/view/View;
    .param p2, "angel"    # F
    .param p3, "duration"    # J
    .param p5, "width"    # I
    .param p6, "height"    # I

    .prologue
    .line 259
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/meizu/media/camera/ui/SavedMediaCue$7;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/meizu/media/camera/ui/SavedMediaCue$7;-><init>(Lcom/meizu/media/camera/ui/SavedMediaCue;Landroid/view/View;JII)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/camera/ui/SavedMediaCue;->m_Animator:Landroid/view/ViewPropertyAnimator;

    .line 304
    iget-object v0, p0, Lcom/meizu/media/camera/ui/SavedMediaCue;->m_Animator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 305
    return-void
.end method

.method private decodeImageForAnimation(Ljava/lang/String;)V
    .locals 8
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x100

    .line 186
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/meizu/media/camera/ui/SavedMediaCue;->TAG:Ljava/lang/String;

    const-string v1, "decodeImageForAnimation() - filePath is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :goto_0
    return-void

    .line 191
    :cond_0
    sget-object v0, Lcom/meizu/media/camera/ui/SavedMediaCue;->m_ImageDecoder:Lcom/oneplus/media/BitmapPool;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/meizu/media/camera/ui/SavedMediaCue;->m_BitmapDecodeCallback:Lcom/oneplus/media/BitmapPool$Callback;

    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/SavedMediaCue;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/media/camera/CameraActivity;->getHandler()Landroid/os/Handler;

    move-result-object v6

    move-object v1, p1

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Lcom/oneplus/media/BitmapPool;->decode(Ljava/lang/String;IIILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v7

    .line 192
    .local v7, "handle":Lcom/oneplus/base/Handle;
    iget-object v0, p0, Lcom/meizu/media/camera/ui/SavedMediaCue;->m_DecodeHandleList:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private onBurstPhotoReceived(Lcom/meizu/media/camera/CaptureEventArgs;)V
    .locals 3
    .param p1, "e"    # Lcom/meizu/media/camera/CaptureEventArgs;

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/SavedMediaCue;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_BURST_PHOTO_ON_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/meizu/media/camera/ui/SavedMediaCue;->TAG:Ljava/lang/String;

    const-string v1, "onBurstPhotoReceived() - wrong state"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-virtual {p1}, Lcom/meizu/media/camera/CaptureEventArgs;->getFrameIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/meizu/media/camera/ui/SavedMediaCue;->m_BurstShotCount:I

    .line 138
    iget-object v0, p0, Lcom/meizu/media/camera/ui/SavedMediaCue;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBurstPhotoReceived() - m_BurstShotCount is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/media/camera/ui/SavedMediaCue;->m_BurstShotCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onBurstSaveEventReceived()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 143
    iget v0, p0, Lcom/meizu/media/camera/ui/SavedMediaCue;->m_BurstImageSaveCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/meizu/media/camera/ui/SavedMediaCue;->m_BurstImageSaveCount:I

    .line 144
    iget-object v0, p0, Lcom/meizu/media/camera/ui/SavedMediaCue;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBurstSaveEventReceived() - m_BurstImageSaveCount is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/media/camera/ui/SavedMediaCue;->m_BurstImageSaveCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget v0, p0, Lcom/meizu/media/camera/ui/SavedMediaCue;->m_BurstImageSaveCount:I

    iget v1, p0, Lcom/meizu/media/camera/ui/SavedMediaCue;->m_BurstShotCount:I

    if-ge v0, v1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/meizu/media/camera/ui/SavedMediaCue;->TAG:Ljava/lang/String;

    const-string v1, "onBurstSaveEventReceived() - waiting for more save count"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :goto_0
    return-void

    .line 148
    :cond_0
    iget v0, p0, Lcom/meizu/media/camera/ui/SavedMediaCue;->m_BurstImageSaveCount:I

    iget v1, p0, Lcom/meizu/media/camera/ui/SavedMediaCue;->m_BurstShotCount:I

    if-ne v0, v1, :cond_1

    .line 150
    iget-object v0, p0, Lcom/meizu/media/camera/ui/SavedMediaCue;->TAG:Ljava/lang/String;

    const-string v1, "onBurstSaveEventReceived() - save count is enough, start animation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/meizu/media/camera/ui/SavedMediaCue;->m_ValidBurstFilePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/ui/SavedMediaCue;->decodeImageForAnimation(Ljava/lang/String;)V

    .line 154
    iput v3, p0, Lcom/meizu/media/camera/ui/SavedMediaCue;->m_BurstImageSaveCount:I

    .line 155
    iput v3, p0, Lcom/meizu/media/camera/ui/SavedMediaCue;->m_BurstShotCount:I

    .line 156
    iput-object v4, p0, Lcom/meizu/media/camera/ui/SavedMediaCue;->m_ValidBurstFilePath:Ljava/lang/String;

    goto :goto_0

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/camera/ui/SavedMediaCue;->TAG:Ljava/lang/String;

    const-string v1, "onBurstSaveEventReceived() - wrong state"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iput v3, p0, Lcom/meizu/media/camera/ui/SavedMediaCue;->m_BurstImageSaveCount:I

    .line 164
    iput v3, p0, Lcom/meizu/media/camera/ui/SavedMediaCue;->m_BurstShotCount:I

    .line 165
    iput-object v4, p0, Lcom/meizu/media/camera/ui/SavedMediaCue;->m_ValidBurstFilePath:Ljava/lang/String;

    goto :goto_0
.end method

.method private showCueAnimation(Landroid/graphics/Bitmap;)V
    .locals 17
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 197
    if-nez p1, :cond_0

    .line 199
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/media/camera/ui/SavedMediaCue;->TAG:Ljava/lang/String;

    const-string v4, "showCueAnimation() - bitmap is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :goto_0
    return-void

    .line 203
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/media/camera/ui/SavedMediaCue;->m_Animator:Landroid/view/ViewPropertyAnimator;

    if-eqz v3, :cond_1

    .line 205
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/media/camera/ui/SavedMediaCue;->TAG:Ljava/lang/String;

    const-string v4, "showCueAnimation() - animation is running"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/media/camera/ui/SavedMediaCue;->m_AnimationBitmapQueue:Ljava/util/LinkedList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 211
    :cond_1
    const/4 v5, 0x0

    .line 212
    .local v5, "angle":F
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/media/camera/ui/SavedMediaCue;->getScreenSize()Lcom/oneplus/base/ScreenSize;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/base/ScreenSize;->getWidth()I

    move-result v8

    .line 213
    .local v8, "screenWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/media/camera/ui/SavedMediaCue;->getScreenSize()Lcom/oneplus/base/ScreenSize;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/base/ScreenSize;->getHeight()I

    move-result v9

    .line 215
    .local v9, "screenHeight":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/media/camera/ui/SavedMediaCue;->m_CueFrameContainer:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 217
    sget-object v3, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/media/camera/ui/SavedMediaCue;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v4

    if-eq v3, v4, :cond_2

    sget-object v3, Lcom/oneplus/base/Rotation;->INVERSE_PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/media/camera/ui/SavedMediaCue;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v4

    if-ne v3, v4, :cond_3

    .line 220
    :cond_2
    const/high16 v5, -0x3f600000    # -5.0f

    .line 221
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/media/camera/ui/SavedMediaCue;->m_CueFrameContainer:Landroid/widget/RelativeLayout;

    int-to-float v4, v8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    .line 222
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/media/camera/ui/SavedMediaCue;->m_CueFrameContainer:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setPivotX(F)V

    .line 223
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/media/camera/ui/SavedMediaCue;->m_CueFrameContainer:Landroid/widget/RelativeLayout;

    int-to-float v4, v9

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setPivotY(F)V

    .line 225
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/media/camera/ui/SavedMediaCue;->m_CueFramePortrait:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 226
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/media/camera/ui/SavedMediaCue;->m_CueFramePortrait:Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/media/camera/ui/SavedMediaCue;->m_CueFrameContainer:Landroid/widget/RelativeLayout;

    const-wide/16 v6, 0x64

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/meizu/media/camera/ui/SavedMediaCue;->animatePhotograph(Landroid/view/View;FJII)V

    goto :goto_0

    .line 231
    :cond_3
    new-instance v15, Landroid/graphics/Matrix;

    invoke-direct {v15}, Landroid/graphics/Matrix;-><init>()V

    .line 232
    .local v15, "matrix":Landroid/graphics/Matrix;
    const/4 v2, 0x0

    .line 235
    .local v2, "rotatedBitmap":Landroid/graphics/Bitmap;
    sget-object v3, Lcom/oneplus/base/Rotation;->LANDSCAPE:Lcom/oneplus/base/Rotation;

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/media/camera/ui/SavedMediaCue;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v4

    if-ne v3, v4, :cond_4

    .line 237
    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v15, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 238
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/media/camera/ui/SavedMediaCue;->m_CueFrameContainer:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setPivotX(F)V

    .line 239
    const/high16 v5, -0x3ee00000    # -10.0f

    .line 247
    :goto_1
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    const/16 v16, 0x1

    move-object/from16 v10, p1

    invoke-static/range {v10 .. v16}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 248
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/media/camera/ui/SavedMediaCue;->m_CueFrameLandscape:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 249
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/media/camera/ui/SavedMediaCue;->m_CueFrameLandscape:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 250
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/media/camera/ui/SavedMediaCue;->m_CueFrameContainer:Landroid/widget/RelativeLayout;

    int-to-float v4, v9

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    .line 251
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/media/camera/ui/SavedMediaCue;->m_CueFrameContainer:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setPivotY(F)V

    .line 253
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/media/camera/ui/SavedMediaCue;->m_CueFrameContainer:Landroid/widget/RelativeLayout;

    const-wide/16 v6, 0x64

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/meizu/media/camera/ui/SavedMediaCue;->animatePhotograph(Landroid/view/View;FJII)V

    goto/16 :goto_0

    .line 243
    :cond_4
    const/high16 v3, -0x3d4c0000    # -90.0f

    invoke-virtual {v15, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 244
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/media/camera/ui/SavedMediaCue;->m_CueFrameContainer:Landroid/widget/RelativeLayout;

    int-to-float v4, v8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setPivotX(F)V

    .line 245
    const/high16 v5, 0x41200000    # 10.0f

    goto :goto_1
.end method


# virtual methods
.method protected onDeinitialize()V
    .locals 3

    .prologue
    .line 171
    invoke-super {p0}, Lcom/meizu/media/camera/UIComponent;->onDeinitialize()V

    .line 173
    iget-object v2, p0, Lcom/meizu/media/camera/ui/SavedMediaCue;->m_DecodeHandleList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 175
    iget-object v2, p0, Lcom/meizu/media/camera/ui/SavedMediaCue;->m_DecodeHandleList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/Handle;

    .line 176
    .local v0, "handle":Lcom/oneplus/base/Handle;
    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 177
    .end local v0    # "handle":Lcom/oneplus/base/Handle;
    :cond_0
    iget-object v2, p0, Lcom/meizu/media/camera/ui/SavedMediaCue;->m_DecodeHandleList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 180
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lcom/meizu/media/camera/ui/SavedMediaCue;->m_AnimationBitmapQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 181
    iget-object v2, p0, Lcom/meizu/media/camera/ui/SavedMediaCue;->m_AnimationBitmapQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 182
    :cond_2
    return-void
.end method

.method protected onInitialize()V
    .locals 3

    .prologue
    .line 68
    invoke-super {p0}, Lcom/meizu/media/camera/UIComponent;->onInitialize()V

    .line 71
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/SavedMediaCue;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    .line 74
    .local v0, "cameraActivity":Lcom/meizu/media/camera/CameraActivity;
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->EVENT_BURST_PHOTO_RECEIVED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/meizu/media/camera/ui/SavedMediaCue$2;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/ui/SavedMediaCue$2;-><init>(Lcom/meizu/media/camera/ui/SavedMediaCue;)V

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 82
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->EVENT_MEDIA_FILE_SAVED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/meizu/media/camera/ui/SavedMediaCue$3;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/ui/SavedMediaCue$3;-><init>(Lcom/meizu/media/camera/ui/SavedMediaCue;)V

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 91
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->EVENT_MEDIA_SAVE_CANCELLED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/meizu/media/camera/ui/SavedMediaCue$4;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/ui/SavedMediaCue$4;-><init>(Lcom/meizu/media/camera/ui/SavedMediaCue;)V

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 100
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->EVENT_MEDIA_SAVE_FAILED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/meizu/media/camera/ui/SavedMediaCue$5;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/ui/SavedMediaCue$5;-><init>(Lcom/meizu/media/camera/ui/SavedMediaCue;)V

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 109
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->EVENT_MEDIA_SAVED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/meizu/media/camera/ui/SavedMediaCue$6;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/ui/SavedMediaCue$6;-><init>(Lcom/meizu/media/camera/ui/SavedMediaCue;)V

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 123
    const v1, 0x7f0b007e

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/meizu/media/camera/ui/SavedMediaCue;->m_CueFrameContainer:Landroid/widget/RelativeLayout;

    .line 124
    const v1, 0x7f0b007f

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/meizu/media/camera/ui/SavedMediaCue;->m_CueFramePortrait:Landroid/widget/ImageView;

    .line 125
    const v1, 0x7f0b0080

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/meizu/media/camera/ui/SavedMediaCue;->m_CueFrameLandscape:Landroid/widget/ImageView;

    .line 126
    return-void
.end method
