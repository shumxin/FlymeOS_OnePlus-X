.class public abstract Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;
.super Lcom/meizu/media/camera/UIComponent;
.source "BaseSwitchAnimationImpl.java"

# interfaces
.implements Lcom/meizu/media/camera/ui/SwitchAnimation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl$5;
    }
.end annotation


# static fields
.field private static final MSG_ASYNC_CLOSE_RENDER_SCRIPT:I = -0x4e21

.field private static final MSG_ASYNC_PROCESS_IMAGE_PLANE:I = -0x4e22

.field private static final MSG_ON_FIRST_PREVIEW_FRAME_TIMEOUT:I = -0x2724

.field private static final MSG_ON_LAST_PREVIEW_FRAME_TIMEOUT:I = -0x2725

.field private static final MSG_ON_LAST_PREVIEW_IMAGE_CREATED:I = -0x271f

.field private static final MSG_ON_PROCESS_IMAGE_PLANES_TIMEOUT:I = -0x2726

.field private static final TIMEOUT_PREVIEW_FRAME:I = 0x1388

.field private static final TIMEOUT_PROCESS_IMAGE_PLANES:I = 0xbb8


# instance fields
.field private m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

.field private m_RenderScript:Landroid/renderscript/RenderScript;

.field private m_RenderScriptHandle:Lcom/oneplus/base/Handle;

.field private m_ResizeScript:Landroid/renderscript/ScriptIntrinsicResize;

.field private m_RgbBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

.field private m_Viewfinder:Lcom/meizu/media/camera/ui/Viewfinder;

.field private m_YuvToRgbScript:Landroid/renderscript/ScriptIntrinsicYuvToRGB;


# direct methods
.method protected constructor <init>(Lcom/meizu/media/camera/CameraActivity;)V
    .locals 1
    .param p1, "cameraActivity"    # Lcom/meizu/media/camera/CameraActivity;

    .prologue
    .line 62
    const-string v0, "Base Switch Animation Impl"

    invoke-direct {p0, v0, p1}, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;-><init>(Ljava/lang/String;Lcom/meizu/media/camera/CameraActivity;)V

    .line 63
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/meizu/media/camera/CameraActivity;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cameraActivity"    # Lcom/meizu/media/camera/CameraActivity;

    .prologue
    const/4 v0, 0x1

    .line 66
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/meizu/media/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/meizu/media/camera/CameraActivity;ZZ)V

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected handleAsyncMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 74
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 136
    invoke-super {p0, p1}, Lcom/meizu/media/camera/UIComponent;->handleAsyncMessage(Landroid/os/Message;)V

    .line 139
    :goto_0
    return-void

    .line 78
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_RenderScriptHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 85
    :pswitch_1
    sget-object v0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->PROP_ANIMATION_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/OperationState;->STOPPED:Lcom/meizu/media/camera/OperationState;

    if-ne v0, v1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->TAG:Ljava/lang/String;

    const-string v1, "handleAsyncMessage() - Already stopped"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_0
    iget v13, p1, Landroid/os/Message;->arg1:I

    .line 93
    .local v13, "width":I
    iget v7, p1, Landroid/os/Message;->arg2:I

    .line 94
    .local v7, "height":I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, [Ljava/lang/Object;

    .line 97
    .local v11, "objs":[Ljava/lang/Object;
    const/4 v0, 0x1

    aget-object v10, v11, v0

    check-cast v10, Lcom/meizu/media/camera/Camera$LensFacing;

    .line 98
    .local v10, "lensFacing":Lcom/meizu/media/camera/Camera$LensFacing;
    const/4 v0, 0x2

    aget-object v6, v11, v0

    check-cast v6, Landroid/graphics/RectF;

    .line 99
    .local v6, "previewBounds":Landroid/graphics/RectF;
    const/4 v0, 0x0

    aget-object v0, v11, v0

    instance-of v0, v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 101
    const/4 v0, 0x0

    aget-object v12, v11, v0

    check-cast v12, Landroid/graphics/Bitmap;

    .line 102
    .local v12, "previewFrame":Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .line 109
    .local v8, "imagePlanes":[Lcom/meizu/media/camera/media/ImagePlane;
    :goto_1
    iget-object v0, p0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->TAG:Ljava/lang/String;

    const-string v1, "handleAsyncMessage() - Process image planes, width: "

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ", height: "

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, ", preview bounds: "

    invoke-static/range {v0 .. v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 112
    const/16 v0, -0x2726

    const-wide/16 v2, 0xbb8

    invoke-static {p0, v0, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IJ)Z

    .line 116
    if-eqz v12, :cond_2

    .line 117
    invoke-virtual {p0, v12, v6}, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->processImageBitmap(Landroid/graphics/Bitmap;Landroid/graphics/RectF;)[Landroid/graphics/Bitmap;

    move-result-object v9

    .line 122
    .local v9, "images":[Landroid/graphics/Bitmap;
    :goto_2
    monitor-enter p0

    .line 124
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 125
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    const/16 v0, -0x2726

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 131
    const/16 v0, -0x271f

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, v9}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    goto :goto_0

    .line 106
    .end local v8    # "imagePlanes":[Lcom/meizu/media/camera/media/ImagePlane;
    .end local v9    # "images":[Landroid/graphics/Bitmap;
    .end local v12    # "previewFrame":Landroid/graphics/Bitmap;
    :cond_1
    const/4 v12, 0x0

    .line 107
    .restart local v12    # "previewFrame":Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    aget-object v0, v11, v0

    check-cast v0, [Lcom/meizu/media/camera/media/ImagePlane;

    move-object v8, v0

    check-cast v8, [Lcom/meizu/media/camera/media/ImagePlane;

    .restart local v8    # "imagePlanes":[Lcom/meizu/media/camera/media/ImagePlane;
    goto :goto_1

    :cond_2
    move-object v1, p0

    move v2, v13

    move v3, v7

    move-object v4, v8

    move-object v5, v10

    .line 119
    invoke-virtual/range {v1 .. v6}, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->processImagePlanes(II[Lcom/meizu/media/camera/media/ImagePlane;Lcom/meizu/media/camera/Camera$LensFacing;Landroid/graphics/RectF;)[Landroid/graphics/Bitmap;

    move-result-object v9

    .restart local v9    # "images":[Landroid/graphics/Bitmap;
    goto :goto_2

    .line 125
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 74
    :pswitch_data_0
    .packed-switch -0x4e22
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 146
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 168
    :pswitch_0
    invoke-super {p0, p1}, Lcom/meizu/media/camera/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 171
    :goto_0
    return-void

    .line 149
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Landroid/graphics/Bitmap;

    check-cast v0, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->onLastPreviewImageCreated([Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 153
    :pswitch_2
    iget-object v0, p0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->TAG:Ljava/lang/String;

    const-string v1, "handleMessage() - On first preview frame timeout"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->reset()V

    goto :goto_0

    .line 158
    :pswitch_3
    iget-object v0, p0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->TAG:Ljava/lang/String;

    const-string v1, "handleMessage() - On last frame timeout"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->reset()V

    goto :goto_0

    .line 163
    :pswitch_4
    iget-object v0, p0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->TAG:Ljava/lang/String;

    const-string v1, "handleMessage() - On process image planes timeout"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->reset()V

    goto :goto_0

    .line 146
    :pswitch_data_0
    .packed-switch -0x2726
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDeinitialize()V
    .locals 1

    .prologue
    .line 179
    const/16 v0, -0x4e21

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->sendAsyncMessage(Lcom/oneplus/base/AsyncHandlerObject;I)Z

    .line 181
    invoke-super {p0}, Lcom/meizu/media/camera/UIComponent;->onDeinitialize()V

    .line 182
    return-void
.end method

.method protected abstract onFirstPreviewFrameReceived()V
.end method

.method protected onInitialize()V
    .locals 3

    .prologue
    .line 193
    invoke-super {p0}, Lcom/meizu/media/camera/UIComponent;->onInitialize()V

    .line 195
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    .line 196
    .local v0, "cameraActivity":Lcom/meizu/media/camera/CameraActivity;
    const-class v1, Lcom/meizu/media/camera/ui/Viewfinder;

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/ui/Viewfinder;

    iput-object v1, p0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_Viewfinder:Lcom/meizu/media/camera/ui/Viewfinder;

    .line 197
    iget-object v1, p0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_Viewfinder:Lcom/meizu/media/camera/ui/Viewfinder;

    if-nez v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->TAG:Ljava/lang/String;

    const-string v2, "onInitialize() - Cannot find Viewfinder component"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_0
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl$1;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl$1;-><init>(Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 215
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl$2;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl$2;-><init>(Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 229
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl$3;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl$3;-><init>(Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 238
    return-void
.end method

.method protected abstract onLastPreviewImageCreated([Landroid/graphics/Bitmap;)V
.end method

.method protected abstract onReset()V
.end method

.method protected abstract onStarted()V
.end method

.method protected processImageBitmap(Landroid/graphics/Bitmap;Landroid/graphics/RectF;)[Landroid/graphics/Bitmap;
    .locals 14
    .param p1, "previewFrame"    # Landroid/graphics/Bitmap;
    .param p2, "previewBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 256
    iget-object v11, p0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_RenderScript:Landroid/renderscript/RenderScript;

    if-nez v11, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v11

    invoke-static {v11}, Lcom/oneplus/renderscript/RenderScriptManager;->createRenderScript(Landroid/content/Context;)Lcom/oneplus/base/Handle;

    move-result-object v11

    iput-object v11, p0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_RenderScriptHandle:Lcom/oneplus/base/Handle;

    .line 259
    iget-object v11, p0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_RenderScriptHandle:Lcom/oneplus/base/Handle;

    invoke-static {v11}, Lcom/oneplus/renderscript/RenderScriptManager;->getRenderScript(Lcom/oneplus/base/Handle;)Landroid/renderscript/RenderScript;

    move-result-object v11

    iput-object v11, p0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_RenderScript:Landroid/renderscript/RenderScript;

    .line 262
    iget-object v11, p0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_RenderScript:Landroid/renderscript/RenderScript;

    iget-object v12, p0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_RenderScript:Landroid/renderscript/RenderScript;

    invoke-static {v12}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    move-result-object v11

    iput-object v11, p0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_YuvToRgbScript:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    .line 263
    iget-object v11, p0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_RenderScript:Landroid/renderscript/RenderScript;

    iget-object v12, p0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_RenderScript:Landroid/renderscript/RenderScript;

    invoke-static {v12}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v11

    iput-object v11, p0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_RgbBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    .line 264
    iget-object v11, p0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_RenderScript:Landroid/renderscript/RenderScript;

    invoke-static {v11}, Landroid/renderscript/ScriptIntrinsicResize;->create(Landroid/renderscript/RenderScript;)Landroid/renderscript/ScriptIntrinsicResize;

    move-result-object v11

    iput-object v11, p0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_ResizeScript:Landroid/renderscript/ScriptIntrinsicResize;

    .line 268
    :cond_0
    iget-object v11, p0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_RenderScript:Landroid/renderscript/RenderScript;

    invoke-static {v11, p1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v2

    .line 271
    .local v2, "frameRgbAllocation":Landroid/renderscript/Allocation;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    div-int/lit8 v5, v11, 0xa

    .line 272
    .local v5, "resizeWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    div-int/lit8 v4, v11, 0xa

    .line 273
    .local v4, "resizeHeight":I
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v4, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 274
    .local v9, "thumbImage":Landroid/graphics/Bitmap;
    iget-object v11, p0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_RenderScript:Landroid/renderscript/RenderScript;

    invoke-static {v11, v9}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 277
    .local v0, "frameBlurAllocation":Landroid/renderscript/Allocation;
    new-instance v6, Landroid/renderscript/Type$Builder;

    iget-object v11, p0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_RenderScript:Landroid/renderscript/RenderScript;

    iget-object v12, p0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_RenderScript:Landroid/renderscript/RenderScript;

    invoke-static {v12}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v12

    invoke-direct {v6, v11, v12}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 278
    .local v6, "rgbaTypeBuilder":Landroid/renderscript/Type$Builder;
    invoke-virtual {v6, v5}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 279
    invoke-virtual {v6, v4}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 280
    iget-object v11, p0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_RenderScript:Landroid/renderscript/RenderScript;

    invoke-virtual {v6}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v1

    .line 283
    .local v1, "frameResizeAllocation":Landroid/renderscript/Allocation;
    iget-object v11, p0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_ResizeScript:Landroid/renderscript/ScriptIntrinsicResize;

    invoke-virtual {v11, v2}, Landroid/renderscript/ScriptIntrinsicResize;->setInput(Landroid/renderscript/Allocation;)V

    .line 284
    iget-object v11, p0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_ResizeScript:Landroid/renderscript/ScriptIntrinsicResize;

    invoke-virtual {v11, v1}, Landroid/renderscript/ScriptIntrinsicResize;->forEach_bicubic(Landroid/renderscript/Allocation;)V

    .line 287
    iget-object v11, p0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_RgbBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    const/high16 v12, 0x41c80000    # 25.0f

    invoke-virtual {v11, v12}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 288
    iget-object v11, p0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_RgbBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v11, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 289
    iget-object v11, p0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_RgbBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v11, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 292
    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 306
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 307
    .local v10, "thumbMatrix":Landroid/graphics/Matrix;
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 310
    .local v3, "originalMatrix":Landroid/graphics/Matrix;
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v11

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float v7, v11, v12

    .line 311
    .local v7, "scaleX":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v11

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float v8, v11, v12

    .line 312
    .local v8, "scaleY":F
    invoke-virtual {v10, v7, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 315
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v11

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float v7, v11, v12

    .line 316
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v11

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float v8, v11, v12

    .line 317
    invoke-virtual {v3, v7, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 341
    const/4 v11, 0x2

    new-array v11, v11, [Landroid/graphics/Bitmap;

    const/4 v12, 0x0

    aput-object p1, v11, v12

    const/4 v12, 0x1

    aput-object v9, v11, v12

    return-object v11
.end method

.method protected processImagePlanes(II[Lcom/meizu/media/camera/media/ImagePlane;Lcom/meizu/media/camera/Camera$LensFacing;Landroid/graphics/RectF;)[Landroid/graphics/Bitmap;
    .locals 36
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "planes"    # [Lcom/meizu/media/camera/media/ImagePlane;
    .param p4, "lensFacing"    # Lcom/meizu/media/camera/Camera$LensFacing;
    .param p5, "previewBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 351
    mul-int v5, p1, p2

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x2

    new-array v0, v5, [B

    move-object/from16 v27, v0

    .line 354
    .local v27, "nv21FrameBuffer":[B
    :try_start_0
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/meizu/media/camera/media/YuvUtils;->multiPlaneYuvToNV21([Lcom/meizu/media/camera/media/ImagePlane;[BII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_RenderScript:Landroid/renderscript/RenderScript;

    if-nez v5, :cond_0

    .line 366
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/oneplus/renderscript/RenderScriptManager;->createRenderScript(Landroid/content/Context;)Lcom/oneplus/base/Handle;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_RenderScriptHandle:Lcom/oneplus/base/Handle;

    .line 367
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_RenderScriptHandle:Lcom/oneplus/base/Handle;

    invoke-static {v5}, Lcom/oneplus/renderscript/RenderScriptManager;->getRenderScript(Lcom/oneplus/base/Handle;)Landroid/renderscript/RenderScript;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_RenderScript:Landroid/renderscript/RenderScript;

    .line 370
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_RenderScript:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_RenderScript:Landroid/renderscript/RenderScript;

    invoke-static {v6}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_YuvToRgbScript:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    .line 371
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_RenderScript:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_RenderScript:Landroid/renderscript/RenderScript;

    invoke-static {v6}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_RgbBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    .line 372
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_RenderScript:Landroid/renderscript/RenderScript;

    invoke-static {v5}, Landroid/renderscript/ScriptIntrinsicResize;->create(Landroid/renderscript/RenderScript;)Landroid/renderscript/ScriptIntrinsicResize;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_ResizeScript:Landroid/renderscript/ScriptIntrinsicResize;

    .line 376
    :cond_0
    new-instance v35, Landroid/renderscript/Type$Builder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_RenderScript:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_RenderScript:Landroid/renderscript/RenderScript;

    invoke-static {v6}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v6

    move-object/from16 v0, v35

    invoke-direct {v0, v5, v6}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 377
    .local v35, "u8TypeBuilder":Landroid/renderscript/Type$Builder;
    mul-int v5, p1, p2

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x2

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 378
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_RenderScript:Landroid/renderscript/RenderScript;

    invoke-virtual/range {v35 .. v35}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v26

    .line 381
    .local v26, "frameYuvAllocation":Landroid/renderscript/Allocation;
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v28

    .line 382
    .local v28, "originalImage":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_RenderScript:Landroid/renderscript/RenderScript;

    move-object/from16 v0, v28

    invoke-static {v5, v0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v25

    .line 385
    .local v25, "frameRgbAllocation":Landroid/renderscript/Allocation;
    div-int/lit8 v30, p1, 0xa

    .line 386
    .local v30, "resizeWidth":I
    div-int/lit8 v29, p2, 0xa

    .line 387
    .local v29, "resizeHeight":I
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v30

    move/from16 v1, v29

    invoke-static {v0, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 388
    .local v4, "thumbImage":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_RenderScript:Landroid/renderscript/RenderScript;

    invoke-static {v5, v4}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v23

    .line 391
    .local v23, "frameBlurAllocation":Landroid/renderscript/Allocation;
    new-instance v31, Landroid/renderscript/Type$Builder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_RenderScript:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_RenderScript:Landroid/renderscript/RenderScript;

    invoke-static {v6}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-direct {v0, v5, v6}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 392
    .local v31, "rgbaTypeBuilder":Landroid/renderscript/Type$Builder;
    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 393
    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 394
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_RenderScript:Landroid/renderscript/RenderScript;

    invoke-virtual/range {v31 .. v31}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v24

    .line 397
    .local v24, "frameResizeAllocation":Landroid/renderscript/Allocation;
    invoke-virtual/range {v26 .. v27}, Landroid/renderscript/Allocation;->copyFrom([B)V

    .line 398
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_YuvToRgbScript:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->setInput(Landroid/renderscript/Allocation;)V

    .line 399
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_YuvToRgbScript:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->forEach(Landroid/renderscript/Allocation;)V

    .line 402
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_ResizeScript:Landroid/renderscript/ScriptIntrinsicResize;

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/renderscript/ScriptIntrinsicResize;->setInput(Landroid/renderscript/Allocation;)V

    .line 403
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_ResizeScript:Landroid/renderscript/ScriptIntrinsicResize;

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/renderscript/ScriptIntrinsicResize;->forEach_bicubic(Landroid/renderscript/Allocation;)V

    .line 406
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_RgbBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    const/high16 v6, 0x41c80000    # 25.0f

    invoke-virtual {v5, v6}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 407
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_RgbBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 408
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_RgbBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 411
    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 412
    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 415
    sget-object v5, Lcom/meizu/media/camera/Camera$LensFacing;->FRONT:Lcom/meizu/media/camera/Camera$LensFacing;

    move-object/from16 v0, p4

    if-ne v0, v5, :cond_1

    .line 417
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 418
    .local v9, "m":Landroid/graphics/Matrix;
    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v9, v5, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 419
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x1

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 420
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    const/16 v16, 0x1

    move-object/from16 v10, v28

    move-object v15, v9

    invoke-static/range {v10 .. v16}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v28

    .line 424
    .end local v9    # "m":Landroid/graphics/Matrix;
    :cond_1
    new-instance v15, Landroid/graphics/Matrix;

    invoke-direct {v15}, Landroid/graphics/Matrix;-><init>()V

    .line 425
    .local v15, "thumbMatrix":Landroid/graphics/Matrix;
    new-instance v21, Landroid/graphics/Matrix;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Matrix;-><init>()V

    .line 428
    .local v21, "originalMatrix":Landroid/graphics/Matrix;
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v32, v5, v6

    .line 429
    .local v32, "scaleX":F
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v33, v5, v6

    .line 430
    .local v33, "scaleY":F
    move/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 433
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v32, v5, v6

    .line 434
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v33, v5, v6

    .line 435
    move-object/from16 v0, v21

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 438
    sget-object v5, Lcom/meizu/media/camera/Camera$LensFacing;->BACK:Lcom/meizu/media/camera/Camera$LensFacing;

    move-object/from16 v0, p4

    if-ne v0, v5, :cond_3

    .line 440
    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {v15, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 441
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/RectF;->width()F

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v15, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 442
    const/high16 v5, 0x42b40000    # 90.0f

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 443
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/RectF;->width()F

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 454
    :cond_2
    :goto_0
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    const/16 v16, 0x1

    move-object v10, v4

    invoke-static/range {v10 .. v16}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 455
    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    const/16 v22, 0x1

    move-object/from16 v16, v28

    invoke-static/range {v16 .. v22}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v28

    .line 457
    const/4 v5, 0x2

    new-array v5, v5, [Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    aput-object v28, v5, v6

    const/4 v6, 0x1

    aput-object v4, v5, v6

    .end local v4    # "thumbImage":Landroid/graphics/Bitmap;
    .end local v15    # "thumbMatrix":Landroid/graphics/Matrix;
    .end local v21    # "originalMatrix":Landroid/graphics/Matrix;
    .end local v23    # "frameBlurAllocation":Landroid/renderscript/Allocation;
    .end local v24    # "frameResizeAllocation":Landroid/renderscript/Allocation;
    .end local v25    # "frameRgbAllocation":Landroid/renderscript/Allocation;
    .end local v26    # "frameYuvAllocation":Landroid/renderscript/Allocation;
    .end local v28    # "originalImage":Landroid/graphics/Bitmap;
    .end local v29    # "resizeHeight":I
    .end local v30    # "resizeWidth":I
    .end local v31    # "rgbaTypeBuilder":Landroid/renderscript/Type$Builder;
    .end local v32    # "scaleX":F
    .end local v33    # "scaleY":F
    .end local v35    # "u8TypeBuilder":Landroid/renderscript/Type$Builder;
    :goto_1
    return-object v5

    .line 356
    :catch_0
    move-exception v34

    .line 358
    .local v34, "tr":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->TAG:Ljava/lang/String;

    const-string v6, "processImagePlanes() - Error to transfer to NV21"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Throwable;->printStackTrace()V

    .line 360
    const/4 v5, 0x0

    goto :goto_1

    .line 445
    .end local v34    # "tr":Ljava/lang/Throwable;
    .restart local v4    # "thumbImage":Landroid/graphics/Bitmap;
    .restart local v15    # "thumbMatrix":Landroid/graphics/Matrix;
    .restart local v21    # "originalMatrix":Landroid/graphics/Matrix;
    .restart local v23    # "frameBlurAllocation":Landroid/renderscript/Allocation;
    .restart local v24    # "frameResizeAllocation":Landroid/renderscript/Allocation;
    .restart local v25    # "frameRgbAllocation":Landroid/renderscript/Allocation;
    .restart local v26    # "frameYuvAllocation":Landroid/renderscript/Allocation;
    .restart local v28    # "originalImage":Landroid/graphics/Bitmap;
    .restart local v29    # "resizeHeight":I
    .restart local v30    # "resizeWidth":I
    .restart local v31    # "rgbaTypeBuilder":Landroid/renderscript/Type$Builder;
    .restart local v32    # "scaleX":F
    .restart local v33    # "scaleY":F
    .restart local v35    # "u8TypeBuilder":Landroid/renderscript/Type$Builder;
    :cond_3
    sget-object v5, Lcom/meizu/media/camera/Camera$LensFacing;->FRONT:Lcom/meizu/media/camera/Camera$LensFacing;

    move-object/from16 v0, p4

    if-ne v0, v5, :cond_2

    .line 447
    const/high16 v5, -0x3d4c0000    # -90.0f

    invoke-virtual {v15, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 448
    const/4 v5, 0x0

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-virtual {v15, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 449
    const/high16 v5, -0x3d4c0000    # -90.0f

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 450
    const/4 v5, 0x0

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/RectF;->height()F

    move-result v6

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0
.end method

.method protected reset()V
    .locals 2

    .prologue
    .line 465
    sget-object v0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->PROP_ANIMATION_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/OperationState;->STOPPED:Lcom/meizu/media/camera/OperationState;

    if-ne v0, v1, :cond_0

    .line 467
    iget-object v0, p0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->TAG:Ljava/lang/String;

    const-string v1, "reset() - Already stopped"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    :goto_0
    return-void

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->TAG:Ljava/lang/String;

    const-string v1, "reset()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->onReset()V

    .line 477
    const/16 v0, -0x2724

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 478
    const/16 v0, -0x2725

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 479
    const/16 v0, -0x2726

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 482
    sget-object v0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->PROP_ANIMATION_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/meizu/media/camera/OperationState;->STOPPED:Lcom/meizu/media/camera/OperationState;

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 485
    iget-object v0, p0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    goto :goto_0
.end method

.method public start(I)V
    .locals 14
    .param p1, "flags"    # I

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 497
    sget-object v9, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl$5;->$SwitchMap$com$oneplus$camera$OperationState:[I

    sget-object v8, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->PROP_ANIMATION_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v8}, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/meizu/media/camera/OperationState;

    invoke-virtual {v8}, Lcom/meizu/media/camera/OperationState;->ordinal()I

    move-result v8

    aget v8, v9, v8

    packed-switch v8, :pswitch_data_0

    .line 607
    iget-object v8, p0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->TAG:Ljava/lang/String;

    const-string v9, "start() - Previous animation is running, skip"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    :goto_0
    return-void

    .line 502
    :pswitch_0
    sget-object v8, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->PROP_ANIMATION_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v9, Lcom/meizu/media/camera/OperationState;->STARTING:Lcom/meizu/media/camera/OperationState;

    invoke-virtual {p0, v8, v9}, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 505
    iget-object v8, p0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    invoke-static {v8}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 506
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v8

    iget-object v9, p0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/meizu/media/camera/CameraActivity;->disableCaptureUI(Ljava/lang/String;)Lcom/oneplus/base/Handle;

    move-result-object v8

    iput-object v8, p0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    .line 510
    :cond_0
    iget-object v8, p0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_Viewfinder:Lcom/meizu/media/camera/ui/Viewfinder;

    if-eqz v8, :cond_1

    .line 511
    iget-object v8, p0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_Viewfinder:Lcom/meizu/media/camera/ui/Viewfinder;

    sget-object v9, Lcom/meizu/media/camera/ui/Viewfinder;->PROP_PREVIEW_BOUNDS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v8, v9}, Lcom/meizu/media/camera/ui/Viewfinder;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/RectF;

    .line 520
    .local v5, "previewBounds":Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->getCamera()Lcom/meizu/media/camera/Camera;

    move-result-object v0

    .line 521
    .local v0, "camera":Lcom/meizu/media/camera/Camera;
    if-nez v0, :cond_2

    .line 523
    iget-object v8, p0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->TAG:Ljava/lang/String;

    const-string v9, "start() - No camera so switch directly"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->reset()V

    goto :goto_0

    .line 514
    .end local v0    # "camera":Lcom/meizu/media/camera/Camera;
    .end local v5    # "previewBounds":Landroid/graphics/RectF;
    :cond_1
    iget-object v8, p0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->TAG:Ljava/lang/String;

    const-string v9, "start() - No viewfinder"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->reset()V

    goto :goto_0

    .line 528
    .restart local v0    # "camera":Lcom/meizu/media/camera/Camera;
    .restart local v5    # "previewBounds":Landroid/graphics/RectF;
    :cond_2
    iget-object v8, p0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->TAG:Ljava/lang/String;

    const-string v9, "start()"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    const/16 v8, -0x2725

    const-wide/16 v10, 0x1388

    invoke-static {p0, v8, v10, v11}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IJ)Z

    .line 534
    const/4 v6, 0x0

    .line 535
    .local v6, "previewFrame":Landroid/graphics/Bitmap;
    iget-object v8, p0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_Viewfinder:Lcom/meizu/media/camera/ui/Viewfinder;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_Viewfinder:Lcom/meizu/media/camera/ui/Viewfinder;

    sget-object v9, Lcom/meizu/media/camera/ui/Viewfinder;->PROP_IS_DISPLAY_PREVIEW_FRAME_COPY_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v8, v9}, Lcom/meizu/media/camera/ui/Viewfinder;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v8

    cmpl-float v8, v8, v12

    if-lez v8, :cond_3

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v8

    cmpl-float v8, v8, v12

    if-lez v8, :cond_3

    .line 540
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v8

    float-to-int v7, v8

    .line 541
    .local v7, "width":I
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v8

    float-to-int v3, v8

    .line 542
    .local v3, "height":I
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v3, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 543
    iget-object v8, p0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->m_Viewfinder:Lcom/meizu/media/camera/ui/Viewfinder;

    invoke-interface {v8, v6, v13}, Lcom/meizu/media/camera/ui/Viewfinder;->copyDisplayPreviewFrame(Landroid/graphics/Bitmap;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 545
    const/4 v8, 0x3

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v6, v4, v13

    const/4 v8, 0x1

    sget-object v9, Lcom/meizu/media/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v9}, Lcom/meizu/media/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x2

    aput-object v5, v4, v8

    .line 546
    .local v4, "objs":[Ljava/lang/Object;
    const/16 v8, -0x4e22

    invoke-static {p0, v8, v7, v3, v4}, Lcom/oneplus/base/HandlerUtils;->sendAsyncMessage(Lcom/oneplus/base/AsyncHandlerObject;IIILjava/lang/Object;)Z

    .line 547
    monitor-enter p0

    .line 551
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 562
    .end local v3    # "height":I
    .end local v4    # "objs":[Ljava/lang/Object;
    .end local v7    # "width":I
    :cond_3
    if-nez v6, :cond_4

    .line 564
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->getCameraThread()Lcom/meizu/media/camera/CameraThread;

    move-result-object v1

    .line 565
    .local v1, "cameraThread":Lcom/meizu/media/camera/CameraThread;
    new-instance v8, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl$4;

    invoke-direct {v8, p0, v0, v5}, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl$4;-><init>(Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;Lcom/meizu/media/camera/Camera;Landroid/graphics/RectF;)V

    invoke-static {v1, v8}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 612
    .end local v1    # "cameraThread":Lcom/meizu/media/camera/CameraThread;
    :cond_4
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->onStarted()V

    goto/16 :goto_0

    .line 553
    .restart local v3    # "height":I
    .restart local v4    # "objs":[Ljava/lang/Object;
    .restart local v7    # "width":I
    :catch_0
    move-exception v2

    .line 555
    .local v2, "ex":Ljava/lang/Throwable;
    :try_start_2
    iget-object v8, p0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->TAG:Ljava/lang/String;

    const-string v9, "start() - Fail to wait asynchronous image processing"

    invoke-static {v8, v9, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 557
    .end local v2    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 497
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
