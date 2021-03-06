.class final Lcom/meizu/media/camera/ui/ZoomBarImpl;
.super Lcom/meizu/media/camera/UIComponent;
.source "ZoomBarImpl.java"

# interfaces
.implements Lcom/meizu/media/camera/ZoomBar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/media/camera/ui/ZoomBarImpl$ProgressDrawable;,
        Lcom/meizu/media/camera/ui/ZoomBarImpl$BaseProgressDrawable;
    }
.end annotation


# static fields
.field private static final DURATION_ZOOM_BAR_VISIBLE:J = 0x3e8L

.field private static final MSG_HIDE_ZOOM_BAR:I = 0x2710


# instance fields
.field private m_Container:Landroid/view/View;

.field private m_UpdatingZoom:Z

.field private m_ZoomBar:Landroid/widget/SeekBar;

.field private m_ZoomController:Lcom/meizu/media/camera/ZoomController;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/CameraActivity;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/meizu/media/camera/CameraActivity;

    .prologue
    .line 99
    const-string v0, "Zoom Bar"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/meizu/media/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/meizu/media/camera/CameraActivity;Z)V

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/media/camera/ui/ZoomBarImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/ZoomBarImpl;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/meizu/media/camera/ui/ZoomBarImpl;->m_UpdatingZoom:Z

    return v0
.end method

.method static synthetic access$002(Lcom/meizu/media/camera/ui/ZoomBarImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/ZoomBarImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/meizu/media/camera/ui/ZoomBarImpl;->m_UpdatingZoom:Z

    return p1
.end method

.method static synthetic access$100(Lcom/meizu/media/camera/ui/ZoomBarImpl;)Lcom/meizu/media/camera/ZoomController;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/ZoomBarImpl;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/meizu/media/camera/ui/ZoomBarImpl;->m_ZoomController:Lcom/meizu/media/camera/ZoomController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/media/camera/ui/ZoomBarImpl;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/ZoomBarImpl;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/meizu/media/camera/ui/ZoomBarImpl;->m_Container:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/media/camera/ui/ZoomBarImpl;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/ZoomBarImpl;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/meizu/media/camera/ui/ZoomBarImpl;->setViewVisibility(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/meizu/media/camera/ui/ZoomBarImpl;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/ZoomBarImpl;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/meizu/media/camera/ui/ZoomBarImpl;->setViewVisibility(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/meizu/media/camera/ui/ZoomBarImpl;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/ZoomBarImpl;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/meizu/media/camera/ui/ZoomBarImpl;->setViewVisibility(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/meizu/media/camera/ui/ZoomBarImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/ZoomBarImpl;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/meizu/media/camera/ui/ZoomBarImpl;->showCurrentZoom()V

    return-void
.end method

.method static synthetic access$700(Lcom/meizu/media/camera/ui/ZoomBarImpl;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/ZoomBarImpl;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/meizu/media/camera/ui/ZoomBarImpl;->setViewVisibility(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/meizu/media/camera/ui/ZoomBarImpl;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/ZoomBarImpl;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/meizu/media/camera/ui/ZoomBarImpl;->setViewVisibility(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/meizu/media/camera/ui/ZoomBarImpl;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/ZoomBarImpl;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/meizu/media/camera/ui/ZoomBarImpl;->setViewVisibility(Landroid/view/View;Z)V

    return-void
.end method

.method private showCurrentZoom()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 261
    iget-boolean v2, p0, Lcom/meizu/media/camera/ui/ZoomBarImpl;->m_UpdatingZoom:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/meizu/media/camera/ui/ZoomBarImpl;->m_ZoomController:Lcom/meizu/media/camera/ZoomController;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/meizu/media/camera/ui/ZoomBarImpl;->m_ZoomBar:Landroid/widget/SeekBar;

    if-nez v2, :cond_1

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    iget-object v2, p0, Lcom/meizu/media/camera/ui/ZoomBarImpl;->m_ZoomController:Lcom/meizu/media/camera/ZoomController;

    sget-object v3, Lcom/meizu/media/camera/ZoomController;->PROP_MAX_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/meizu/media/camera/ZoomController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 264
    .local v1, "maxDigitalZoom":F
    iget-object v2, p0, Lcom/meizu/media/camera/ui/ZoomBarImpl;->m_ZoomController:Lcom/meizu/media/camera/ZoomController;

    sget-object v3, Lcom/meizu/media/camera/ZoomController;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/meizu/media/camera/ZoomController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 265
    .local v0, "digitalZoom":F
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/meizu/media/camera/ui/ZoomBarImpl;->m_UpdatingZoom:Z

    .line 266
    iget-object v2, p0, Lcom/meizu/media/camera/ui/ZoomBarImpl;->m_ZoomBar:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/meizu/media/camera/ui/ZoomBarImpl;->m_ZoomBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    int-to-float v3, v3

    sub-float v4, v0, v5

    sub-float v5, v1, v5

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 267
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/meizu/media/camera/ui/ZoomBarImpl;->m_UpdatingZoom:Z

    goto :goto_0
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 107
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 114
    invoke-super {p0, p1}, Lcom/meizu/media/camera/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 117
    :goto_0
    return-void

    .line 110
    :pswitch_0
    iget-object v2, p0, Lcom/meizu/media/camera/ui/ZoomBarImpl;->m_Container:Landroid/view/View;

    const/4 v3, 0x0

    const-wide/16 v4, 0x258

    sget-object v6, Lcom/meizu/media/camera/ui/ZoomBarImpl;->INTERPOLATOR_FADE_IN:Landroid/view/animation/Interpolator;

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/meizu/media/camera/ui/ZoomBarImpl;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method

.method protected onInitialize()V
    .locals 4

    .prologue
    .line 125
    invoke-super {p0}, Lcom/meizu/media/camera/UIComponent;->onInitialize()V

    .line 128
    const-class v1, Lcom/meizu/media/camera/ZoomController;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/ui/ZoomBarImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/ZoomController;

    iput-object v1, p0, Lcom/meizu/media/camera/ui/ZoomBarImpl;->m_ZoomController:Lcom/meizu/media/camera/ZoomController;

    .line 131
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/ZoomBarImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/OPCameraActivity;

    .line 132
    .local v0, "cameraActivity":Lcom/meizu/media/camera/OPCameraActivity;
    invoke-virtual {v0}, Lcom/meizu/media/camera/OPCameraActivity;->getCaptureUIContainer()Landroid/view/ViewGroup;

    move-result-object v1

    const v2, 0x7f0b0086

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/media/camera/ui/ZoomBarImpl;->m_Container:Landroid/view/View;

    .line 133
    iget-object v1, p0, Lcom/meizu/media/camera/ui/ZoomBarImpl;->m_Container:Landroid/view/View;

    const v2, 0x7f0b0088

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/meizu/media/camera/ui/ZoomBarImpl;->m_ZoomBar:Landroid/widget/SeekBar;

    .line 134
    iget-object v1, p0, Lcom/meizu/media/camera/ui/ZoomBarImpl;->m_ZoomBar:Landroid/widget/SeekBar;

    new-instance v2, Lcom/meizu/media/camera/ui/ZoomBarImpl$ProgressDrawable;

    invoke-direct {v2, v0}, Lcom/meizu/media/camera/ui/ZoomBarImpl$ProgressDrawable;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    iget-object v1, p0, Lcom/meizu/media/camera/ui/ZoomBarImpl;->m_ZoomBar:Landroid/widget/SeekBar;

    new-instance v2, Lcom/meizu/media/camera/ui/ZoomBarImpl$1;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/ui/ZoomBarImpl$1;-><init>(Lcom/meizu/media/camera/ui/ZoomBarImpl;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 157
    iget-object v1, p0, Lcom/meizu/media/camera/ui/ZoomBarImpl;->m_Container:Landroid/view/View;

    const v2, 0x7f0b0087

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/ui/ZoomBarImpl;->addAutoRotateView(Landroid/view/View;)V

    .line 158
    iget-object v1, p0, Lcom/meizu/media/camera/ui/ZoomBarImpl;->m_Container:Landroid/view/View;

    const v2, 0x7f0b0089

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/ui/ZoomBarImpl;->addAutoRotateView(Landroid/view/View;)V

    .line 161
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/meizu/media/camera/ui/ZoomBarImpl$2;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/ui/ZoomBarImpl$2;-><init>(Lcom/meizu/media/camera/ui/ZoomBarImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/OPCameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 169
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_READY_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/meizu/media/camera/ui/ZoomBarImpl$3;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/ui/ZoomBarImpl$3;-><init>(Lcom/meizu/media/camera/ui/ZoomBarImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/OPCameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 178
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/meizu/media/camera/ui/ZoomBarImpl$4;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/ui/ZoomBarImpl$4;-><init>(Lcom/meizu/media/camera/ui/ZoomBarImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/OPCameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 186
    iget-object v1, p0, Lcom/meizu/media/camera/ui/ZoomBarImpl;->m_ZoomController:Lcom/meizu/media/camera/ZoomController;

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/meizu/media/camera/ui/ZoomBarImpl;->m_ZoomController:Lcom/meizu/media/camera/ZoomController;

    sget-object v2, Lcom/meizu/media/camera/ZoomController;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/meizu/media/camera/ui/ZoomBarImpl$5;

    invoke-direct {v3, p0}, Lcom/meizu/media/camera/ui/ZoomBarImpl$5;-><init>(Lcom/meizu/media/camera/ui/ZoomBarImpl;)V

    invoke-interface {v1, v2, v3}, Lcom/meizu/media/camera/ZoomController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 202
    iget-object v1, p0, Lcom/meizu/media/camera/ui/ZoomBarImpl;->m_ZoomController:Lcom/meizu/media/camera/ZoomController;

    sget-object v2, Lcom/meizu/media/camera/ZoomController;->PROP_IS_DIGITAL_ZOOM_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/meizu/media/camera/ui/ZoomBarImpl$6;

    invoke-direct {v3, p0}, Lcom/meizu/media/camera/ui/ZoomBarImpl$6;-><init>(Lcom/meizu/media/camera/ui/ZoomBarImpl;)V

    invoke-interface {v1, v2, v3}, Lcom/meizu/media/camera/ZoomController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 211
    iget-object v1, p0, Lcom/meizu/media/camera/ui/ZoomBarImpl;->m_ZoomController:Lcom/meizu/media/camera/ZoomController;

    sget-object v2, Lcom/meizu/media/camera/ZoomController;->PROP_IS_ZOOM_LOCKED:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/meizu/media/camera/ui/ZoomBarImpl$7;

    invoke-direct {v3, p0}, Lcom/meizu/media/camera/ui/ZoomBarImpl$7;-><init>(Lcom/meizu/media/camera/ui/ZoomBarImpl;)V

    invoke-interface {v1, v2, v3}, Lcom/meizu/media/camera/ZoomController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 220
    iget-object v1, p0, Lcom/meizu/media/camera/ui/ZoomBarImpl;->m_ZoomController:Lcom/meizu/media/camera/ZoomController;

    sget-object v2, Lcom/meizu/media/camera/ZoomController;->PROP_MAX_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/meizu/media/camera/ui/ZoomBarImpl$8;

    invoke-direct {v3, p0}, Lcom/meizu/media/camera/ui/ZoomBarImpl$8;-><init>(Lcom/meizu/media/camera/ui/ZoomBarImpl;)V

    invoke-interface {v1, v2, v3}, Lcom/meizu/media/camera/ZoomController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 229
    :cond_0
    return-void
.end method

.method public setZoomBarVisibility(ZI)Lcom/oneplus/base/Handle;
    .locals 5
    .param p1, "visible"    # Z
    .param p2, "flags"    # I

    .prologue
    const/16 v1, 0x2710

    const/4 v4, 0x1

    .line 234
    if-eqz p1, :cond_0

    .line 236
    invoke-static {p0, v1}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 237
    const-wide/16 v2, 0x3e8

    invoke-static {p0, v1, v4, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    .line 238
    iget-object v1, p0, Lcom/meizu/media/camera/ui/ZoomBarImpl;->m_Container:Landroid/view/View;

    invoke-virtual {p0, v1, v4}, Lcom/meizu/media/camera/ui/ZoomBarImpl;->setViewVisibility(Landroid/view/View;Z)V

    .line 246
    :goto_0
    new-instance v0, Lcom/meizu/media/camera/ui/ZoomBarImpl$9;

    const-string v1, "Set Zoom Bar Visibility Handle"

    invoke-direct {v0, p0, v1}, Lcom/meizu/media/camera/ui/ZoomBarImpl$9;-><init>(Lcom/meizu/media/camera/ui/ZoomBarImpl;Ljava/lang/String;)V

    .line 255
    .local v0, "handle":Lcom/oneplus/base/Handle;
    return-object v0

    .line 242
    .end local v0    # "handle":Lcom/oneplus/base/Handle;
    :cond_0
    iget-object v1, p0, Lcom/meizu/media/camera/ui/ZoomBarImpl;->m_Container:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/meizu/media/camera/ui/ZoomBarImpl;->setViewVisibility(Landroid/view/View;Z)V

    goto :goto_0
.end method
