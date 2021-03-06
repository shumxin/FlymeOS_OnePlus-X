.class final Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;
.super Lcom/meizu/media/camera/UIComponent;
.source "FocusExposureIndicatorImpl.java"

# interfaces
.implements Lcom/meizu/media/camera/ui/FocusExposureIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$18;,
        Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;,
        Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;
    }
.end annotation


# static fields
.field private static final DELAY_SHOW_FOCUS_INDICATOR:J = 0x32L

.field private static final DURATION_EXPOSURE_COMP_ICON_ROTATION:J = 0x64L

.field private static final DURATION_FOCUS_INDICATOR_SHOW:J = 0x12cL

.field private static final DURATION_FOCUS_INDICATOR_VISIBLE_LONG:J = 0xbb8L

.field private static final DURATION_FOCUS_INDICATOR_VISIBLE_NORMAL:J = 0x3e8L

.field private static final DURATION_UI_ROTATION:J = 0x2bcL

.field private static final MSG_HIDE_FOCUS_INDICATOR:I = 0x2711

.field private static final MSG_SHOW_FOCUS_INDICATOR:I = 0x2710

.field private static final MSG_UI_ROTATING:I = 0x2715

.field private static final THRESHOLD_SEPARATE_INDICATORS:I = 0x32


# instance fields
.field private m_AeRegion:Lcom/meizu/media/camera/Camera$MeteringRect;

.field private m_AfRegion:Lcom/meizu/media/camera/Camera$MeteringRect;

.field private m_ExposureCompDirectionIcon:Landroid/widget/ImageView;

.field private m_ExposureCompDragIcon:Landroid/view/View;

.field private m_ExposureCompDragIconContainer:Landroid/view/View;

.field private m_ExposureController:Lcom/meizu/media/camera/ExposureController;

.field private m_ExposureIndicator:Landroid/widget/ImageView;

.field private m_ExposureIndicatorContainer:Landroid/view/View;

.field private m_ExposureIndicatorText:Landroid/widget/TextView;

.field private m_FaceTracker:Lcom/meizu/media/camera/FaceTracker;

.field private m_FocusController:Lcom/meizu/media/camera/FocusController;

.field private m_FocusIndicator:Landroid/widget/ImageView;

.field private m_FocusIndicatorText:Landroid/widget/TextView;

.field private m_FocusLockedDrawable:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;

.field private m_FocusLockedHintHandle:Lcom/oneplus/base/Handle;

.field private m_FocusingDrawable:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;

.field private m_IndicatorBaseView:Landroid/view/View;

.field private final m_IndicatorCenterPointInWindow:Landroid/graphics/Point;

.field private m_IndicatorContainer:Landroid/view/View;

.field private m_IndicatorContainerHeight:I

.field private m_IndicatorContainerWidth:I

.field private m_IndicatorState:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

.field private m_LockExposureIndicator:Z

.field private m_OnScreenHint:Lcom/meizu/media/camera/ui/OnScreenHint;

.field private m_RelativeExposureComp:F

.field private m_TempInitPoint:Landroid/graphics/PointF;

.field private final m_TempLocationBuffer:[I

.field private m_TempTargetInitPoint:Landroid/graphics/PointF;

.field private m_TouchAutoExposureUI:Lcom/meizu/media/camera/ui/TouchAutoExposureUI;

.field private m_TouchAutoFocusUI:Lcom/meizu/media/camera/ui/TouchAutoFocusUI;

.field private m_Viewfinder:Lcom/meizu/media/camera/ui/Viewfinder;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/CameraActivity;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/meizu/media/camera/CameraActivity;

    .prologue
    .line 236
    const-string v0, "Focus/Exposure indicator"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/meizu/media/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/meizu/media/camera/CameraActivity;Z)V

    .line 83
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorCenterPointInWindow:Landroid/graphics/Point;

    .line 87
    sget-object v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->INVISIBLE:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    iput-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorState:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    .line 92
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_TempInitPoint:Landroid/graphics/PointF;

    .line 93
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_TempLocationBuffer:[I

    .line 94
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_TempTargetInitPoint:Landroid/graphics/PointF;

    .line 237
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->onExposureCompDragIconTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->onAeRegionsChanged(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;)Lcom/meizu/media/camera/Camera$MeteringRect;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_AfRegion:Lcom/meizu/media/camera/Camera$MeteringRect;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->onAfRegionsChanged(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;Lcom/meizu/media/camera/FocusState;Lcom/meizu/media/camera/FocusState;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;
    .param p1, "x1"    # Lcom/meizu/media/camera/FocusState;
    .param p2, "x2"    # Lcom/meizu/media/camera/FocusState;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->onFocusStateChanged(Lcom/meizu/media/camera/FocusState;Lcom/meizu/media/camera/FocusState;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;Landroid/graphics/RectF;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;
    .param p1, "x1"    # Landroid/graphics/RectF;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->updateBaseViewLayout(Landroid/graphics/RectF;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;
    .param p1, "x1"    # Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->changeIndicatorState(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;)Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorState:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->hideFocusIndicatorDelayed()V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/MotionEvent;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->onIndicatorIconTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureIndicatorContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->isFocusExposureLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->hideFocusIndicator()V

    return-void
.end method

.method static synthetic access$600(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;)Lcom/oneplus/base/Handle;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_FocusLockedHintHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic access$602(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_FocusLockedHintHandle:Lcom/oneplus/base/Handle;

    return-object p1
.end method

.method static synthetic access$700(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->lockExposureIndicator(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->updateFocusExposureLockIndicator()V

    return-void
.end method

.method static synthetic access$900(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->onExposureCompChanged(Z)V

    return-void
.end method

.method private changeIndicatorState(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;)V
    .locals 4
    .param p1, "state"    # Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    .prologue
    .line 244
    iget-object v1, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorState:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    if-ne v1, p1, :cond_0

    .line 307
    :goto_0
    return-void

    .line 246
    :cond_0
    const/4 v0, 0x0

    .line 247
    .local v0, "abnormalStateChange":Z
    sget-object v1, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$18;->$SwitchMap$com$oneplus$camera$ui$FocusExposureIndicatorImpl$IndicatorState:[I

    iget-object v2, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorState:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    invoke-virtual {v2}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 296
    :cond_1
    :goto_1
    :pswitch_0
    if-eqz v0, :cond_2

    .line 297
    iget-object v1, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeIndicatorState() - Abnormal state change : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorState:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_2
    iget-object v1, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "changeIndicatorState() - State: "

    invoke-static {v1, v2, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 300
    sget-object v1, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->VISIBLE_SEPARATED:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    if-ne p1, v1, :cond_3

    .line 302
    sget-object v1, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->PROP_IS_FOCUS_EXPOSURE_SEPARATED:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 306
    :goto_2
    iput-object p1, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorState:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    goto :goto_0

    .line 250
    :pswitch_1
    sget-object v1, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->VISIBLE:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    if-eq p1, v1, :cond_1

    .line 251
    const/4 v0, 0x1

    goto :goto_1

    .line 254
    :pswitch_2
    sget-object v1, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->VISIBLE_SEPARATED:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    if-eq p1, v1, :cond_1

    .line 255
    const/4 v0, 0x1

    goto :goto_1

    .line 258
    :pswitch_3
    sget-object v1, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->VISIBLE_IN_ANIMATING:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    if-eq p1, v1, :cond_1

    .line 259
    const/4 v0, 0x1

    goto :goto_1

    .line 262
    :pswitch_4
    sget-object v1, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$18;->$SwitchMap$com$oneplus$camera$ui$FocusExposureIndicatorImpl$IndicatorState:[I

    invoke-virtual {p1}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 269
    const/4 v0, 0x1

    .line 270
    goto :goto_1

    .line 274
    :pswitch_5
    sget-object v1, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$18;->$SwitchMap$com$oneplus$camera$ui$FocusExposureIndicatorImpl$IndicatorState:[I

    invoke-virtual {p1}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2

    .line 280
    const/4 v0, 0x1

    .line 281
    goto :goto_1

    .line 285
    :pswitch_6
    sget-object v1, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$18;->$SwitchMap$com$oneplus$camera$ui$FocusExposureIndicatorImpl$IndicatorState:[I

    invoke-virtual {p1}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3

    .line 291
    const/4 v0, 0x1

    goto :goto_1

    .line 304
    :cond_3
    sget-object v1, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->PROP_IS_FOCUS_EXPOSURE_SEPARATED:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_2

    .line 247
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 262
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 274
    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 285
    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private hideFocusIndicator()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 336
    sget-object v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$18;->$SwitchMap$com$oneplus$camera$ui$FocusExposureIndicatorImpl$IndicatorState:[I

    iget-object v1, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorState:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    invoke-virtual {v1}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 342
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "hideFocusIndicator() - Hide"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    sget-object v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->INVISIBLE:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->changeIndicatorState(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;)V

    .line 348
    const/16 v0, 0x2710

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 349
    const/16 v0, 0x2711

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 352
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorContainer:Landroid/view/View;

    invoke-virtual {p0, v0, v2}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->setViewVisibility(Landroid/view/View;Z)V

    .line 355
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_FocusIndicatorText:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v2}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->setViewVisibility(Landroid/view/View;Z)V

    .line 358
    sget-object v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->PROP_CAN_FOCUS_EXPOSURE_SEPARATED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 360
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureIndicatorContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureIndicatorContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureIndicatorContainer:Landroid/view/View;

    invoke-virtual {p0, v0, v2}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->setViewVisibility(Landroid/view/View;Z)V

    .line 363
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureIndicatorText:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v2}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->setViewVisibility(Landroid/view/View;Z)V

    .line 366
    :cond_2
    :pswitch_0
    return-void

    .line 336
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private hideFocusIndicatorDelayed()V
    .locals 4

    .prologue
    .line 373
    invoke-direct {p0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->isFocusExposureLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v2

    sget-object v3, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_READY_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    iget-object v2, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_FocusController:Lcom/meizu/media/camera/FocusController;

    if-eqz v2, :cond_2

    .line 377
    iget-object v2, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_FocusController:Lcom/meizu/media/camera/FocusController;

    sget-object v3, Lcom/meizu/media/camera/FocusController;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/meizu/media/camera/FocusController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/meizu/media/camera/FocusState;->SCANNING:Lcom/meizu/media/camera/FocusState;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_FocusController:Lcom/meizu/media/camera/FocusController;

    sget-object v3, Lcom/meizu/media/camera/FocusController;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/meizu/media/camera/FocusController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/meizu/media/camera/FocusState;->STARTING:Lcom/meizu/media/camera/FocusState;

    if-eq v2, v3, :cond_0

    .line 380
    const-wide/16 v0, 0x3e8

    .line 381
    .local v0, "duration":J
    sget-object v2, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$18;->$SwitchMap$com$oneplus$camera$ui$FocusExposureIndicatorImpl$IndicatorState:[I

    iget-object v3, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorState:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    invoke-virtual {v3}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 387
    :goto_1
    const/16 v2, 0x2711

    const/4 v3, 0x1

    invoke-static {p0, v2, v3, v0, v1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    goto :goto_0

    .line 384
    :pswitch_0
    const-wide/16 v0, 0xbb8

    goto :goto_1

    .line 391
    .end local v0    # "duration":J
    :cond_2
    invoke-direct {p0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->hideFocusIndicator()V

    goto :goto_0

    .line 381
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method private isExposureLocked()Z
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureController:Lcom/meizu/media/camera/ExposureController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureController:Lcom/meizu/media/camera/ExposureController;

    sget-object v1, Lcom/meizu/media/camera/ExposureController;->PROP_IS_AE_LOCKED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/meizu/media/camera/ExposureController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 398
    :cond_0
    const/4 v0, 0x0

    .line 399
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isFocusExposureAtSameRegion()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    .line 405
    iget-object v1, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_AfRegion:Lcom/meizu/media/camera/Camera$MeteringRect;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_AeRegion:Lcom/meizu/media/camera/Camera$MeteringRect;

    if-nez v1, :cond_1

    .line 413
    :cond_0
    :goto_0
    return v0

    .line 407
    :cond_1
    iget-object v1, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_AfRegion:Lcom/meizu/media/camera/Camera$MeteringRect;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_AeRegion:Lcom/meizu/media/camera/Camera$MeteringRect;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_AfRegion:Lcom/meizu/media/camera/Camera$MeteringRect;

    invoke-virtual {v1}, Lcom/meizu/media/camera/Camera$MeteringRect;->getLeft()F

    move-result v1

    iget-object v2, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_AeRegion:Lcom/meizu/media/camera/Camera$MeteringRect;

    invoke-virtual {v2}, Lcom/meizu/media/camera/Camera$MeteringRect;->getLeft()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    cmpg-double v1, v2, v4

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_AfRegion:Lcom/meizu/media/camera/Camera$MeteringRect;

    invoke-virtual {v1}, Lcom/meizu/media/camera/Camera$MeteringRect;->getTop()F

    move-result v1

    iget-object v2, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_AeRegion:Lcom/meizu/media/camera/Camera$MeteringRect;

    invoke-virtual {v2}, Lcom/meizu/media/camera/Camera$MeteringRect;->getTop()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    cmpg-double v1, v2, v4

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_AfRegion:Lcom/meizu/media/camera/Camera$MeteringRect;

    invoke-virtual {v1}, Lcom/meizu/media/camera/Camera$MeteringRect;->getRight()F

    move-result v1

    iget-object v2, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_AeRegion:Lcom/meizu/media/camera/Camera$MeteringRect;

    invoke-virtual {v2}, Lcom/meizu/media/camera/Camera$MeteringRect;->getRight()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    cmpg-double v1, v2, v4

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_AfRegion:Lcom/meizu/media/camera/Camera$MeteringRect;

    invoke-virtual {v1}, Lcom/meizu/media/camera/Camera$MeteringRect;->getBottom()F

    move-result v1

    iget-object v2, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_AeRegion:Lcom/meizu/media/camera/Camera$MeteringRect;

    invoke-virtual {v2}, Lcom/meizu/media/camera/Camera$MeteringRect;->getBottom()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    cmpg-double v1, v2, v4

    if-ltz v1, :cond_0

    .line 413
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFocusExposureLocked()Z
    .locals 1

    .prologue
    .line 427
    invoke-direct {p0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->isFocusLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->isExposureLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFocusLocked()Z
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_FocusController:Lcom/meizu/media/camera/FocusController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_FocusController:Lcom/meizu/media/camera/FocusController;

    sget-object v1, Lcom/meizu/media/camera/FocusController;->PROP_IS_FOCUS_LOCKED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/meizu/media/camera/FocusController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 420
    :cond_0
    const/4 v0, 0x0

    .line 421
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private lockExposureIndicator(Z)V
    .locals 0
    .param p1, "lock"    # Z

    .prologue
    .line 1045
    iput-boolean p1, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_LockExposureIndicator:Z

    .line 1046
    return-void
.end method

.method private onAeRegionsChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/media/camera/Camera$MeteringRect;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 434
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/camera/Camera$MeteringRect;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 435
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/Camera$MeteringRect;

    iput-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_AeRegion:Lcom/meizu/media/camera/Camera$MeteringRect;

    .line 439
    :goto_0
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "onAeRegionsChanged() - AE region: "

    iget-object v2, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_AeRegion:Lcom/meizu/media/camera/Camera$MeteringRect;

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 440
    return-void

    .line 437
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_AeRegion:Lcom/meizu/media/camera/Camera$MeteringRect;

    goto :goto_0
.end method

.method private onAfRegionsChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/media/camera/Camera$MeteringRect;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 446
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/camera/Camera$MeteringRect;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 447
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/Camera$MeteringRect;

    iput-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_AfRegion:Lcom/meizu/media/camera/Camera$MeteringRect;

    .line 451
    :goto_0
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "onAfRegionsChanged() - AF region: "

    iget-object v2, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_AfRegion:Lcom/meizu/media/camera/Camera$MeteringRect;

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 452
    return-void

    .line 449
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_AfRegion:Lcom/meizu/media/camera/Camera$MeteringRect;

    goto :goto_0
.end method

.method private onExposureCompChanged(Z)V
    .locals 8
    .param p1, "animate"    # Z

    .prologue
    .line 491
    iget-object v3, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorState:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    sget-object v4, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->DRAGING_EXPOSURE_COMP:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    if-ne v3, v4, :cond_1

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 495
    :cond_1
    iget-object v3, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureController:Lcom/meizu/media/camera/ExposureController;

    sget-object v4, Lcom/meizu/media/camera/ExposureController;->PROP_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v4}, Lcom/meizu/media/camera/ExposureController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 496
    .local v0, "ev":F
    iget-object v3, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureController:Lcom/meizu/media/camera/ExposureController;

    sget-object v4, Lcom/meizu/media/camera/ExposureController;->PROP_EXPOSURE_COMPENSATION_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v4}, Lcom/meizu/media/camera/ExposureController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    .line 498
    .local v1, "evRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_2

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    div-float v2, v0, v3

    .line 501
    .local v2, "relativeExposureComp":F
    :goto_1
    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float v3, v4, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v4, v3

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v3, v4, v6

    if-gtz v3, :cond_3

    .line 503
    iget-object v3, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureCompDragIcon:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 504
    iget-object v3, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureCompDragIcon:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 498
    .end local v2    # "relativeExposureComp":F
    :cond_2
    neg-float v4, v0

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    div-float v2, v4, v3

    goto :goto_1

    .line 508
    .restart local v2    # "relativeExposureComp":F
    :cond_3
    invoke-direct {p0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->updateExposureCompensationDragIconVisibility()V

    .line 512
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, p1}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->setRelativeExposureComp(FZZ)V

    goto :goto_0
.end method

.method private onExposureCompDragIconTouch(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 520
    iget-boolean v7, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_LockExposureIndicator:Z

    if-eqz v7, :cond_0

    .line 521
    const/4 v7, 0x0

    .line 640
    :goto_0
    return v7

    .line 523
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 640
    :goto_1
    const/4 v7, 0x1

    goto :goto_0

    .line 528
    :pswitch_0
    const/16 v7, 0x2711

    invoke-static {p0, v7}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 531
    iget-object v7, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorContainer:Landroid/view/View;

    iget-object v8, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_TempLocationBuffer:[I

    invoke-virtual {v7, v8}, Landroid/view/View;->getLocationInWindow([I)V

    .line 532
    iget-object v7, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorCenterPointInWindow:Landroid/graphics/Point;

    iget-object v8, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_TempLocationBuffer:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    iget v9, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorContainerWidth:I

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Point;->x:I

    .line 533
    iget-object v7, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorCenterPointInWindow:Landroid/graphics/Point;

    iget-object v8, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_TempLocationBuffer:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    iget v9, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorContainerHeight:I

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Point;->y:I

    .line 534
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oneplus/base/Rotation;->getDeviceOrientation()I

    move-result v7

    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->getCameraActivityRotation()Lcom/oneplus/base/Rotation;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oneplus/base/Rotation;->getDeviceOrientation()I

    move-result v8

    sub-int/2addr v7, v8

    add-int/lit16 v7, v7, 0x168

    rem-int/lit16 v7, v7, 0x168

    sparse-switch v7, :sswitch_data_0

    .line 549
    :goto_2
    sget-object v7, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->DRAGING_EXPOSURE_COMP:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    invoke-direct {p0, v7}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->changeIndicatorState(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;)V

    goto :goto_1

    .line 537
    :sswitch_0
    iget-object v7, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorCenterPointInWindow:Landroid/graphics/Point;

    iget v8, v7, Landroid/graphics/Point;->y:I

    iget v9, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorContainerWidth:I

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Point;->y:I

    goto :goto_2

    .line 540
    :sswitch_1
    iget-object v7, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorCenterPointInWindow:Landroid/graphics/Point;

    iget v8, v7, Landroid/graphics/Point;->x:I

    iget v9, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorContainerWidth:I

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Point;->x:I

    .line 541
    iget-object v7, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorCenterPointInWindow:Landroid/graphics/Point;

    iget v8, v7, Landroid/graphics/Point;->y:I

    iget v9, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorContainerHeight:I

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Point;->y:I

    goto :goto_2

    .line 544
    :sswitch_2
    iget-object v7, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorCenterPointInWindow:Landroid/graphics/Point;

    iget v8, v7, Landroid/graphics/Point;->x:I

    iget v9, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorContainerHeight:I

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Point;->x:I

    goto :goto_2

    .line 555
    :pswitch_1
    iget-object v7, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorState:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    sget-object v8, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->DRAGING_EXPOSURE_COMP:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    if-ne v7, v8, :cond_e

    .line 558
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    .line 559
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    .line 560
    .local v6, "y":F
    iget-object v7, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorCenterPointInWindow:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    sub-float v0, v5, v7

    .line 561
    .local v0, "diffX":F
    iget-object v7, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorCenterPointInWindow:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    sub-float v1, v6, v7

    .line 563
    .local v1, "diffY":F
    const/4 v7, 0x0

    cmpl-float v7, v0, v7

    if-ltz v7, :cond_4

    .line 565
    const/4 v7, 0x0

    cmpg-float v7, v1, v7

    if-gtz v7, :cond_3

    .line 566
    neg-float v7, v1

    div-float v7, v0, v7

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    double-to-float v4, v8

    .line 577
    .local v4, "relativeAngle":F
    :goto_3
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oneplus/base/Rotation;->getDeviceOrientation()I

    move-result v7

    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->getCameraActivityRotation()Lcom/oneplus/base/Rotation;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oneplus/base/Rotation;->getDeviceOrientation()I

    move-result v8

    sub-int v3, v7, v8

    .line 578
    .local v3, "orientationDiff":I
    int-to-float v7, v3

    const/high16 v8, 0x43b40000    # 360.0f

    div-float/2addr v7, v8

    add-float/2addr v4, v7

    .line 579
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, v4, v7

    if-lez v7, :cond_6

    .line 580
    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v4, v7

    .line 585
    :cond_1
    :goto_4
    iget v2, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_RelativeExposureComp:F

    .line 586
    .local v2, "exposureComp":F
    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v7, v2, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-double v8, v7

    const-wide v10, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v7, v8, v10

    if-gtz v7, :cond_7

    .line 588
    const/high16 v7, 0x3f000000    # 0.5f

    cmpl-float v7, v4, v7

    if-lez v7, :cond_2

    .line 589
    move v2, v4

    .line 619
    :cond_2
    :goto_5
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {p0, v2, v7, v8}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->setRelativeExposureComp(FZZ)V

    goto/16 :goto_1

    .line 568
    .end local v2    # "exposureComp":F
    .end local v3    # "orientationDiff":I
    .end local v4    # "relativeAngle":F
    :cond_3
    const-wide v8, 0x400921fb54442d18L    # Math.PI

    div-float v7, v0, v1

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->atan(D)D

    move-result-wide v10

    sub-double/2addr v8, v10

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    double-to-float v4, v8

    .restart local v4    # "relativeAngle":F
    goto :goto_3

    .line 572
    .end local v4    # "relativeAngle":F
    :cond_4
    const/4 v7, 0x0

    cmpg-float v7, v1, v7

    if-gtz v7, :cond_5

    .line 573
    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    div-float v7, v0, v1

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->atan(D)D

    move-result-wide v10

    sub-double/2addr v8, v10

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    double-to-float v4, v8

    .restart local v4    # "relativeAngle":F
    goto :goto_3

    .line 575
    .end local v4    # "relativeAngle":F
    :cond_5
    const-wide v8, 0x400921fb54442d18L    # Math.PI

    neg-float v7, v0

    div-float/2addr v7, v1

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->atan(D)D

    move-result-wide v10

    add-double/2addr v8, v10

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    double-to-float v4, v8

    .restart local v4    # "relativeAngle":F
    goto/16 :goto_3

    .line 581
    .restart local v3    # "orientationDiff":I
    :cond_6
    const/4 v7, 0x0

    cmpg-float v7, v4, v7

    if-gez v7, :cond_1

    .line 582
    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v4, v7

    goto :goto_4

    .line 591
    .restart local v2    # "exposureComp":F
    :cond_7
    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-double v8, v7

    const-wide v10, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v7, v8, v10

    if-gtz v7, :cond_8

    .line 593
    const/high16 v7, 0x3f000000    # 0.5f

    cmpg-float v7, v4, v7

    if-gez v7, :cond_2

    .line 594
    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, v4

    neg-float v2, v7

    goto :goto_5

    .line 596
    :cond_8
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-double v8, v7

    const-wide v10, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v7, v8, v10

    if-gtz v7, :cond_a

    .line 598
    const/high16 v7, 0x3f000000    # 0.5f

    cmpg-float v7, v4, v7

    if-gtz v7, :cond_9

    .line 599
    move v2, v4

    goto/16 :goto_5

    .line 601
    :cond_9
    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, v4

    neg-float v2, v7

    goto/16 :goto_5

    .line 603
    :cond_a
    const/4 v7, 0x0

    cmpl-float v7, v2, v7

    if-lez v7, :cond_c

    .line 605
    move v2, v4

    .line 606
    const/4 v7, 0x0

    cmpl-float v7, v2, v7

    if-lez v7, :cond_b

    iget v7, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_RelativeExposureComp:F

    const/high16 v8, 0x3f000000    # 0.5f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_b

    iget v7, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_RelativeExposureComp:F

    sub-float v7, v2, v7

    const/high16 v8, -0x41000000    # -0.5f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_b

    .line 607
    const/high16 v2, 0x3f800000    # 1.0f

    goto/16 :goto_5

    .line 608
    :cond_b
    iget v7, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_RelativeExposureComp:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    iget v7, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_RelativeExposureComp:F

    const/high16 v8, 0x3f000000    # 0.5f

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_2

    iget v7, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_RelativeExposureComp:F

    sub-float v7, v2, v7

    const/high16 v8, 0x3f000000    # 0.5f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    .line 609
    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v2, v7

    goto/16 :goto_5

    .line 613
    :cond_c
    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, v4

    neg-float v2, v7

    .line 614
    iget v7, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_RelativeExposureComp:F

    const/high16 v8, -0x41000000    # -0.5f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_d

    const/4 v7, 0x0

    cmpg-float v7, v2, v7

    if-gez v7, :cond_d

    iget v7, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_RelativeExposureComp:F

    sub-float v7, v2, v7

    const/high16 v8, 0x3f000000    # 0.5f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_d

    .line 615
    const/high16 v2, -0x40800000    # -1.0f

    goto/16 :goto_5

    .line 616
    :cond_d
    iget v7, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_RelativeExposureComp:F

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    iget v7, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_RelativeExposureComp:F

    const/high16 v8, -0x41000000    # -0.5f

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_2

    iget v7, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_RelativeExposureComp:F

    sub-float v7, v2, v7

    const/high16 v8, -0x41000000    # -0.5f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    .line 617
    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v2, v7

    goto/16 :goto_5

    .line 622
    .end local v0    # "diffX":F
    .end local v1    # "diffY":F
    .end local v2    # "exposureComp":F
    .end local v3    # "orientationDiff":I
    .end local v4    # "relativeAngle":F
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_e
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 630
    :pswitch_2
    sget-object v7, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->VISIBLE:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    invoke-direct {p0, v7}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->changeIndicatorState(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;)V

    .line 633
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->onExposureCompChanged(Z)V

    .line 636
    invoke-direct {p0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->hideFocusIndicatorDelayed()V

    .line 637
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 523
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 534
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method private onFocusStateChanged(Lcom/meizu/media/camera/FocusState;Lcom/meizu/media/camera/FocusState;)V
    .locals 9
    .param p1, "oldFocusState"    # Lcom/meizu/media/camera/FocusState;
    .param p2, "newFocusState"    # Lcom/meizu/media/camera/FocusState;

    .prologue
    const/16 v1, 0x2710

    const/4 v3, 0x1

    .line 458
    sget-object v0, Lcom/meizu/media/camera/FocusState;->SCANNING:Lcom/meizu/media/camera/FocusState;

    if-ne p2, v0, :cond_4

    .line 460
    const/4 v8, 0x0

    .line 461
    .local v8, "hideAndShow":Z
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorState:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    sget-object v2, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->VISIBLE_SEPARATED:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    if-ne v0, v2, :cond_2

    .line 463
    invoke-direct {p0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->isFocusExposureAtSameRegion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    const/4 v8, 0x1

    .line 468
    :cond_0
    :goto_0
    if-eqz v8, :cond_1

    .line 470
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "onFocusStateChanged() - Hide and Show"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    invoke-direct {p0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->hideFocusIndicator()V

    .line 472
    invoke-direct {p0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->isFocusExposureLocked()Z

    move-result v0

    if-eqz v0, :cond_3

    move v2, v3

    :goto_1
    const/4 v4, 0x0

    const-wide/16 v6, 0x32

    move-object v0, p0

    move v5, v3

    invoke-static/range {v0 .. v7}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;ZJ)Z

    .line 484
    .end local v8    # "hideAndShow":Z
    :cond_1
    :goto_2
    return-void

    .line 466
    .restart local v8    # "hideAndShow":Z
    :cond_2
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorState:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    sget-object v2, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->DRAGING_INDICATOR:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    if-eq v0, v2, :cond_0

    .line 467
    const/4 v8, 0x1

    goto :goto_0

    .line 472
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 475
    .end local v8    # "hideAndShow":Z
    :cond_4
    sget-object v0, Lcom/meizu/media/camera/FocusState;->STARTING:Lcom/meizu/media/camera/FocusState;

    if-eq p2, v0, :cond_1

    .line 477
    sget-object v0, Lcom/meizu/media/camera/FocusState;->SCANNING:Lcom/meizu/media/camera/FocusState;

    if-eq p2, v0, :cond_5

    sget-object v0, Lcom/meizu/media/camera/FocusState;->SCANNING:Lcom/meizu/media/camera/FocusState;

    if-eq p1, v0, :cond_5

    .line 478
    invoke-direct {p0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->hideFocusIndicator()V

    goto :goto_2

    .line 481
    :cond_5
    invoke-static {p0, v1}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 482
    invoke-direct {p0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->hideFocusIndicatorDelayed()V

    goto :goto_2
.end method

.method private onIndicatorIconTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 16
    .param p1, "target"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 649
    sget-object v12, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->PROP_CAN_FOCUS_EXPOSURE_SEPARATED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-nez v12, :cond_0

    .line 650
    const/4 v12, 0x0

    .line 798
    :goto_0
    return v12

    .line 652
    :cond_0
    sget-object v12, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$18;->$SwitchMap$com$oneplus$camera$ui$FocusExposureIndicatorImpl$IndicatorState:[I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorState:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    invoke-virtual {v13}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    .line 659
    :pswitch_0
    const/4 v12, 0x0

    goto :goto_0

    .line 663
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    .line 664
    .local v10, "rawX":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    .line 666
    .local v11, "rawY":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    packed-switch v12, :pswitch_data_1

    .line 798
    :cond_1
    :goto_1
    const/4 v12, 0x1

    goto :goto_0

    .line 671
    :pswitch_2
    const/16 v12, 0x2715

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/oneplus/base/HandlerUtils;->hasMessages(Lcom/oneplus/base/HandlerObject;I)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 673
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->TAG:Ljava/lang/String;

    const-string v13, "onIndicatorIconTouch() - UI rotating, ignore"

    invoke-static {v12, v13}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    const/4 v12, 0x1

    goto :goto_0

    .line 678
    :cond_2
    const/16 v12, 0x2711

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 681
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_TempInitPoint:Landroid/graphics/PointF;

    invoke-virtual {v12, v10, v11}, Landroid/graphics/PointF;->set(FF)V

    .line 682
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_TempLocationBuffer:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->getLocationInWindow([I)V

    .line 683
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_TempTargetInitPoint:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_TempLocationBuffer:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_TempLocationBuffer:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    int-to-float v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/graphics/PointF;->set(FF)V

    .line 686
    sget-object v12, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$18;->$SwitchMap$com$oneplus$base$Rotation:[I

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v13

    invoke-virtual {v13}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_2

    goto :goto_1

    .line 689
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_TempTargetInitPoint:Landroid/graphics/PointF;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v13

    neg-int v13, v13

    int-to-float v13, v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/graphics/PointF;->offset(FF)V

    goto :goto_1

    .line 692
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_TempTargetInitPoint:Landroid/graphics/PointF;

    const/4 v13, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v14

    neg-int v14, v14

    int-to-float v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/graphics/PointF;->offset(FF)V

    goto :goto_1

    .line 695
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_TempTargetInitPoint:Landroid/graphics/PointF;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v13

    neg-int v13, v13

    int-to-float v13, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v14

    neg-int v14, v14

    int-to-float v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/graphics/PointF;->offset(FF)V

    goto/16 :goto_1

    .line 703
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_TempInitPoint:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->x:F

    sub-float v4, v10, v12

    .line 704
    .local v4, "diffX":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_TempInitPoint:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    sub-float v5, v11, v12

    .line 707
    .local v5, "diffY":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorState:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    sget-object v13, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->DRAGING_INDICATOR:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    if-eq v12, v13, :cond_6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v12

    const/high16 v13, 0x42480000    # 50.0f

    cmpl-float v12, v12, v13

    if-gtz v12, :cond_3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v12

    const/high16 v13, 0x42480000    # 50.0f

    cmpl-float v12, v12, v13

    if-lez v12, :cond_6

    .line 710
    :cond_3
    sget-object v12, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->DRAGING_INDICATOR:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->changeIndicatorState(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;)V

    .line 713
    const/16 v12, 0x2711

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 716
    invoke-direct/range {p0 .. p0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->updateExposureCompensationDragIconVisibility()V

    .line 719
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureController:Lcom/meizu/media/camera/ExposureController;

    if-eqz v12, :cond_4

    .line 720
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureController:Lcom/meizu/media/camera/ExposureController;

    sget-object v13, Lcom/meizu/media/camera/ExposureController;->PROP_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Lcom/meizu/media/camera/ExposureController;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 723
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_FocusIndicatorText:Landroid/widget/TextView;

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_FocusIndicatorText:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getVisibility()I

    move-result v12

    if-eqz v12, :cond_5

    .line 724
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_FocusIndicatorText:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 725
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureIndicatorText:Landroid/widget/TextView;

    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureIndicatorText:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getVisibility()I

    move-result v12

    if-eqz v12, :cond_6

    .line 726
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureIndicatorText:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 730
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorState:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    sget-object v13, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->DRAGING_INDICATOR:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    if-ne v12, v13, :cond_1

    .line 732
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_TempTargetInitPoint:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->x:F

    add-float v8, v12, v4

    .line 733
    .local v8, "newX":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_TempTargetInitPoint:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    add-float v9, v12, v5

    .line 734
    .local v9, "newY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    add-float v2, v8, v12

    .line 735
    .local v2, "cX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    add-float v3, v9, v12

    .line 737
    .local v3, "cY":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_Viewfinder:Lcom/meizu/media/camera/ui/Viewfinder;

    if-eqz v12, :cond_8

    .line 739
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_Viewfinder:Lcom/meizu/media/camera/ui/Viewfinder;

    sget-object v13, Lcom/meizu/media/camera/ui/Viewfinder;->PROP_PREVIEW_BOUNDS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v12, v13}, Lcom/meizu/media/camera/ui/Viewfinder;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    .line 740
    .local v1, "bounds":Landroid/graphics/RectF;
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v12

    const/high16 v13, 0x41000000    # 8.0f

    div-float v6, v12, v13

    .line 741
    .local v6, "estAfRegionPadding":F
    sub-float v12, v2, v6

    iget v13, v1, Landroid/graphics/RectF;->left:F

    cmpg-float v12, v12, v13

    if-gez v12, :cond_9

    .line 742
    iget v12, v1, Landroid/graphics/RectF;->left:F

    add-float v2, v12, v6

    .line 745
    :cond_7
    :goto_2
    sub-float v12, v3, v6

    iget v13, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v12, v12, v13

    if-gez v12, :cond_a

    .line 746
    iget v12, v1, Landroid/graphics/RectF;->top:F

    add-float v3, v12, v6

    .line 750
    .end local v1    # "bounds":Landroid/graphics/RectF;
    .end local v6    # "estAfRegionPadding":F
    :cond_8
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    sub-float v8, v2, v12

    .line 751
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    sub-float v9, v3, v12

    .line 752
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/View;->setX(F)V

    .line 753
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/View;->setY(F)V

    goto/16 :goto_1

    .line 743
    .restart local v1    # "bounds":Landroid/graphics/RectF;
    .restart local v6    # "estAfRegionPadding":F
    :cond_9
    add-float v12, v2, v6

    iget v13, v1, Landroid/graphics/RectF;->right:F

    cmpl-float v12, v12, v13

    if-lez v12, :cond_7

    .line 744
    iget v12, v1, Landroid/graphics/RectF;->right:F

    sub-float v2, v12, v6

    goto :goto_2

    .line 747
    :cond_a
    add-float v12, v3, v6

    iget v13, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v12, v12, v13

    if-lez v12, :cond_8

    .line 748
    iget v12, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v3, v12, v6

    goto :goto_3

    .line 760
    .end local v1    # "bounds":Landroid/graphics/RectF;
    .end local v2    # "cX":F
    .end local v3    # "cY":F
    .end local v4    # "diffX":F
    .end local v5    # "diffY":F
    .end local v6    # "estAfRegionPadding":F
    .end local v8    # "newX":F
    .end local v9    # "newY":F
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorState:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    sget-object v13, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->DRAGING_INDICATOR:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    if-eq v12, v13, :cond_b

    .line 761
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 764
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getX()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    add-float v2, v12, v13

    .line 765
    .restart local v2    # "cX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getY()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    add-float v3, v12, v13

    .line 768
    .restart local v3    # "cY":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorContainer:Landroid/view/View;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_d

    const/4 v7, 0x1

    .line 769
    .local v7, "isFocusIndicator":Z
    :goto_4
    if-eqz v7, :cond_e

    .line 772
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_TouchAutoFocusUI:Lcom/meizu/media/camera/ui/TouchAutoFocusUI;

    if-eqz v12, :cond_c

    .line 773
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_TouchAutoFocusUI:Lcom/meizu/media/camera/ui/TouchAutoFocusUI;

    invoke-interface {v12, v2, v3}, Lcom/meizu/media/camera/ui/TouchAutoFocusUI;->touchAutoFocus(FF)Lcom/oneplus/base/Handle;

    .line 787
    .end local v2    # "cX":F
    .end local v3    # "cY":F
    .end local v7    # "isFocusIndicator":Z
    :cond_c
    :goto_5
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorState:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    sget-object v13, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->DRAGING_INDICATOR:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    if-eq v12, v13, :cond_f

    .line 788
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 768
    .restart local v2    # "cX":F
    .restart local v3    # "cY":F
    :cond_d
    const/4 v7, 0x0

    goto :goto_4

    .line 778
    .restart local v7    # "isFocusIndicator":Z
    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_TouchAutoExposureUI:Lcom/meizu/media/camera/ui/TouchAutoExposureUI;

    if-eqz v12, :cond_c

    .line 779
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_TouchAutoExposureUI:Lcom/meizu/media/camera/ui/TouchAutoExposureUI;

    invoke-interface {v12, v2, v3}, Lcom/meizu/media/camera/ui/TouchAutoExposureUI;->touchAutoExposure(FF)Lcom/oneplus/base/Handle;

    goto :goto_5

    .line 791
    .end local v2    # "cX":F
    .end local v3    # "cY":F
    .end local v7    # "isFocusIndicator":Z
    :cond_f
    sget-object v12, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->VISIBLE_SEPARATED:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->changeIndicatorState(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;)V

    .line 794
    invoke-direct/range {p0 .. p0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->hideFocusIndicatorDelayed()V

    goto/16 :goto_1

    .line 652
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 666
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_7
        :pswitch_6
        :pswitch_8
    .end packed-switch

    .line 686
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private setCanFocusExposureSeparated(Z)V
    .locals 3
    .param p1, "canSeparate"    # Z

    .prologue
    .line 1071
    iget-object v1, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "setCanFocusExposureSeparated() - "

    if-eqz p1, :cond_0

    const-string v0, "Can separate"

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1074
    invoke-direct {p0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->hideFocusIndicator()V

    .line 1075
    return-void

    .line 1071
    :cond_0
    const-string v0, " Cannot separate"

    goto :goto_0
.end method

.method private setRelativeExposureComp(FZZ)V
    .locals 8
    .param p1, "exposureComp"    # F
    .param p2, "apply"    # Z
    .param p3, "animation"    # Z

    .prologue
    .line 1082
    iget v3, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_RelativeExposureComp:F

    sub-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v4, v3

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v3, v4, v6

    if-gtz v3, :cond_1

    .line 1156
    :cond_0
    :goto_0
    return-void

    .line 1085
    :cond_1
    iget-object v3, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "setRelativeExposureComp() - Relative exposure compensation : "

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const-string v6, ", apply : "

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v3, v4, v5, v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1088
    iput p1, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_RelativeExposureComp:F

    .line 1091
    iget-object v3, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_FocusingDrawable:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;

    if-eqz v3, :cond_2

    .line 1092
    iget-object v3, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_FocusingDrawable:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;

    invoke-virtual {v3, p1}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->setRelativeExposureComp(F)V

    .line 1093
    :cond_2
    iget-object v3, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_FocusLockedDrawable:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;

    if-eqz v3, :cond_3

    .line 1094
    iget-object v3, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_FocusLockedDrawable:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;

    invoke-virtual {v3, p1}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->setRelativeExposureComp(F)V

    .line 1097
    :cond_3
    iget-object v3, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureCompDragIcon:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 1099
    iget-object v3, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureCompDragIcon:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_4

    .line 1100
    const/4 p3, 0x0

    .line 1103
    :cond_4
    const/high16 v3, 0x43b40000    # 360.0f

    mul-float v2, v3, p1

    .line 1104
    .local v2, "viewRotation":F
    iget-object v3, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureCompDragIconContainer:Landroid/view/View;

    if-eqz v3, :cond_5

    .line 1106
    if-eqz p3, :cond_8

    .line 1108
    iget-object v3, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureCompDragIconContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1116
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureCompDragIcon:Landroid/view/View;

    if-eqz v3, :cond_6

    .line 1118
    if-eqz p3, :cond_9

    .line 1120
    iget-object v3, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureCompDragIcon:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    neg-float v4, v2

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1130
    :cond_6
    :goto_2
    iget-object v3, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureCompDirectionIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_7

    .line 1132
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v4, v3

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v3, v4, v6

    if-lez v3, :cond_b

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v4, v3

    const-wide v6, 0x3fefae147ae147aeL    # 0.99

    cmpg-double v3, v4, v6

    if-gez v3, :cond_b

    .line 1134
    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-lez v3, :cond_a

    .line 1135
    iget-object v3, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureCompDirectionIcon:Landroid/widget/ImageView;

    const v4, 0x7f020026

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1138
    :goto_3
    iget-object v3, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureCompDirectionIcon:Landroid/widget/ImageView;

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->setViewVisibility(Landroid/view/View;Z)V

    .line 1145
    :cond_7
    :goto_4
    iget-object v3, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureController:Lcom/meizu/media/camera/ExposureController;

    if-eqz v3, :cond_d

    .line 1147
    if-eqz p2, :cond_0

    .line 1149
    iget-object v3, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureController:Lcom/meizu/media/camera/ExposureController;

    sget-object v4, Lcom/meizu/media/camera/ExposureController;->PROP_EXPOSURE_COMPENSATION_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v4}, Lcom/meizu/media/camera/ExposureController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    .line 1150
    .local v1, "evRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_c

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float v0, p1, v3

    .line 1151
    .local v0, "ev":F
    :goto_5
    iget-object v3, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureController:Lcom/meizu/media/camera/ExposureController;

    sget-object v4, Lcom/meizu/media/camera/ExposureController;->PROP_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/meizu/media/camera/ExposureController;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1114
    .end local v0    # "ev":F
    .end local v1    # "evRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    :cond_8
    iget-object v3, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureCompDragIconContainer:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setRotation(F)V

    goto :goto_1

    .line 1126
    :cond_9
    iget-object v3, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureCompDragIcon:Landroid/view/View;

    neg-float v4, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->setRotation(F)V

    goto :goto_2

    .line 1137
    :cond_a
    iget-object v3, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureCompDirectionIcon:Landroid/widget/ImageView;

    const v4, 0x7f020025

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 1141
    :cond_b
    iget-object v3, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureCompDirectionIcon:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 1150
    .restart local v1    # "evRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    :cond_c
    neg-float v4, p1

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float v0, v4, v3

    goto :goto_5

    .line 1155
    .end local v1    # "evRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    :cond_d
    iget-object v3, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "setRelativeExposureComp() - No ExposureController interface"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private showFocusIndicator(ZZ)V
    .locals 25
    .param p1, "isFocusLocked"    # Z
    .param p2, "animation"    # Z

    .prologue
    .line 1163
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_Viewfinder:Lcom/meizu/media/camera/ui/Viewfinder;

    if-nez v5, :cond_1

    .line 1295
    :cond_0
    :goto_0
    return-void

    .line 1165
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorContainer:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 1169
    const/16 v5, 0x2710

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 1170
    const/16 v5, 0x2711

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 1173
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v15

    .line 1174
    .local v15, "cameraActivity":Lcom/meizu/media/camera/CameraActivity;
    sget-object v5, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v15, v5}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v15, v5}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/meizu/media/camera/VideoCaptureState;->CAPTURING:Lcom/meizu/media/camera/VideoCaptureState;

    if-ne v5, v6, :cond_0

    .line 1178
    :cond_2
    sget-object v5, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_SELF_TIMER_STARTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v15, v5}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1182
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_AfRegion:Lcom/meizu/media/camera/Camera$MeteringRect;

    if-nez v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_FaceTracker:Lcom/meizu/media/camera/FaceTracker;

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_FaceTracker:Lcom/meizu/media/camera/FaceTracker;

    sget-object v6, Lcom/meizu/media/camera/FaceTracker;->PROP_FACES:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v5, v6}, Lcom/meizu/media/camera/FaceTracker;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1186
    :cond_3
    if-eqz p1, :cond_5

    .line 1188
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_FocusIndicator:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_FocusLockedDrawable:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1189
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_FocusLockedDrawable:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;

    invoke-virtual {v5}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->stopAnimation()V

    .line 1190
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_FocusLockedDrawable:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;

    invoke-virtual {v5}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->startAnimation()V

    .line 1195
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->TAG:Ljava/lang/String;

    const-string v6, "showFocusIndicator() - Focus"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    new-instance v17, Landroid/graphics/PointF;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/PointF;-><init>()V

    .line 1200
    .local v17, "centerPoint":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_Viewfinder:Lcom/meizu/media/camera/ui/Viewfinder;

    sget-object v6, Lcom/meizu/media/camera/ui/Viewfinder;->PROP_PREVIEW_BOUNDS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v5, v6}, Lcom/meizu/media/camera/ui/Viewfinder;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/graphics/RectF;

    .line 1201
    .local v23, "previewBounds":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_AfRegion:Lcom/meizu/media/camera/Camera$MeteringRect;

    if-nez v5, :cond_6

    .line 1203
    const/high16 v21, 0x3f000000    # 0.5f

    .line 1204
    .local v21, "focusX":F
    const/high16 v22, 0x3f000000    # 0.5f

    .line 1211
    .local v22, "focusY":F
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_Viewfinder:Lcom/meizu/media/camera/ui/Viewfinder;

    const/4 v6, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v17

    invoke-interface {v5, v0, v1, v2, v6}, Lcom/meizu/media/camera/ui/Viewfinder;->pointFromPreview(FFLandroid/graphics/PointF;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1213
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorContainer:Landroid/view/View;

    move-object/from16 v0, v17

    iget v6, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorContainerWidth:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v6, v7

    move-object/from16 v0, v23

    iget v7, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 1214
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorContainer:Landroid/view/View;

    move-object/from16 v0, v17

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorContainerHeight:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v6, v7

    move-object/from16 v0, v23

    iget v7, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 1217
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorContainer:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1220
    invoke-direct/range {p0 .. p0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->updateExposureCompensationDragIconVisibility()V

    .line 1223
    sget-object v5, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->PROP_CAN_FOCUS_EXPOSURE_SEPARATED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_AfRegion:Lcom/meizu/media/camera/Camera$MeteringRect;

    if-eqz v5, :cond_7

    const/16 v16, 0x1

    .line 1226
    .local v16, "canShowExposureIndicator":Z
    :goto_3
    if-eqz v16, :cond_4

    .line 1229
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureIndicatorContainer:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 1232
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->TAG:Ljava/lang/String;

    const-string v6, "showFocusIndicator() - Exposure"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    new-instance v18, Landroid/graphics/PointF;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/PointF;-><init>()V

    .line 1238
    .local v18, "exposureCenterPoint":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_AeRegion:Lcom/meizu/media/camera/Camera$MeteringRect;

    if-nez v5, :cond_8

    .line 1240
    const/high16 v19, 0x3f000000    # 0.5f

    .line 1241
    .local v19, "exposureX":F
    const/high16 v20, 0x3f000000    # 0.5f

    .line 1248
    .local v20, "exposureY":F
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_Viewfinder:Lcom/meizu/media/camera/ui/Viewfinder;

    const/4 v6, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v18

    invoke-interface {v5, v0, v1, v2, v6}, Lcom/meizu/media/camera/ui/Viewfinder;->pointFromPreview(FFLandroid/graphics/PointF;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1250
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureIndicatorContainer:Landroid/view/View;

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureIndicatorContainer:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/view/View;->setX(F)V

    .line 1251
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureIndicatorContainer:Landroid/view/View;

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureIndicatorContainer:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/view/View;->setY(F)V

    .line 1254
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureIndicatorContainer:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1258
    .end local v18    # "exposureCenterPoint":Landroid/graphics/PointF;
    .end local v19    # "exposureX":F
    .end local v20    # "exposureY":F
    :cond_4
    if-eqz p2, :cond_0

    .line 1260
    new-instance v14, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x1

    invoke-direct {v14, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1261
    .local v14, "animationSet":Landroid/view/animation/AnimationSet;
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const v5, 0x3fb33333    # 1.4f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3fb33333    # 1.4f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    move-object/from16 v0, v17

    iget v10, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v23

    iget v11, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v10, v11

    const/4 v11, 0x0

    move-object/from16 v0, v17

    iget v12, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    sub-float v12, v12, v24

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1262
    .local v4, "scaleAnimation":Landroid/view/animation/ScaleAnimation;
    new-instance v13, Landroid/view/animation/AlphaAnimation;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v13, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1263
    .local v13, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1264
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/animation/ScaleAnimation;->setFillBefore(Z)V

    .line 1265
    const-wide/16 v6, 0x12c

    invoke-virtual {v13, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1266
    const/4 v5, 0x1

    invoke-virtual {v13, v5}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    .line 1267
    invoke-virtual {v14, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1268
    invoke-virtual {v14, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1269
    new-instance v5, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$17;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$17;-><init>(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;)V

    invoke-virtual {v14, v5}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1291
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorContainer:Landroid/view/View;

    invoke-virtual {v5, v14}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1292
    if-eqz v16, :cond_0

    .line 1293
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureIndicatorContainer:Landroid/view/View;

    invoke-virtual {v5, v14}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 1193
    .end local v4    # "scaleAnimation":Landroid/view/animation/ScaleAnimation;
    .end local v13    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    .end local v14    # "animationSet":Landroid/view/animation/AnimationSet;
    .end local v16    # "canShowExposureIndicator":Z
    .end local v17    # "centerPoint":Landroid/graphics/PointF;
    .end local v21    # "focusX":F
    .end local v22    # "focusY":F
    .end local v23    # "previewBounds":Landroid/graphics/RectF;
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_FocusIndicator:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_FocusingDrawable:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 1208
    .restart local v17    # "centerPoint":Landroid/graphics/PointF;
    .restart local v23    # "previewBounds":Landroid/graphics/RectF;
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_AfRegion:Lcom/meizu/media/camera/Camera$MeteringRect;

    invoke-virtual {v5}, Lcom/meizu/media/camera/Camera$MeteringRect;->getLeft()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_AfRegion:Lcom/meizu/media/camera/Camera$MeteringRect;

    invoke-virtual {v6}, Lcom/meizu/media/camera/Camera$MeteringRect;->getRight()F

    move-result v6

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float v21, v5, v6

    .line 1209
    .restart local v21    # "focusX":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_AfRegion:Lcom/meizu/media/camera/Camera$MeteringRect;

    invoke-virtual {v5}, Lcom/meizu/media/camera/Camera$MeteringRect;->getTop()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_AfRegion:Lcom/meizu/media/camera/Camera$MeteringRect;

    invoke-virtual {v6}, Lcom/meizu/media/camera/Camera$MeteringRect;->getBottom()F

    move-result v6

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float v22, v5, v6

    .restart local v22    # "focusY":F
    goto/16 :goto_2

    .line 1223
    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 1245
    .restart local v16    # "canShowExposureIndicator":Z
    .restart local v18    # "exposureCenterPoint":Landroid/graphics/PointF;
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_AeRegion:Lcom/meizu/media/camera/Camera$MeteringRect;

    invoke-virtual {v5}, Lcom/meizu/media/camera/Camera$MeteringRect;->getLeft()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_AeRegion:Lcom/meizu/media/camera/Camera$MeteringRect;

    invoke-virtual {v6}, Lcom/meizu/media/camera/Camera$MeteringRect;->getRight()F

    move-result v6

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float v19, v5, v6

    .line 1246
    .restart local v19    # "exposureX":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_AeRegion:Lcom/meizu/media/camera/Camera$MeteringRect;

    invoke-virtual {v5}, Lcom/meizu/media/camera/Camera$MeteringRect;->getTop()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_AeRegion:Lcom/meizu/media/camera/Camera$MeteringRect;

    invoke-virtual {v6}, Lcom/meizu/media/camera/Camera$MeteringRect;->getBottom()F

    move-result v6

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float v20, v5, v6

    .restart local v20    # "exposureY":F
    goto/16 :goto_4
.end method

.method private updateBaseViewLayout(Landroid/graphics/RectF;)V
    .locals 4
    .param p1, "previewBounds"    # Landroid/graphics/RectF;

    .prologue
    const/4 v3, 0x0

    .line 1301
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorBaseView:Landroid/view/View;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 1305
    :cond_0
    :goto_0
    return-void

    .line 1303
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorBaseView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/widget/ViewUtils;->setSize(Landroid/view/View;II)V

    .line 1304
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorBaseView:Landroid/view/View;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    invoke-static {v0, v1, v2, v3, v3}, Lcom/oneplus/widget/ViewUtils;->setMargins(Landroid/view/View;IIII)V

    goto :goto_0
.end method

.method private updateExposureCompensationDragIconVisibility()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1312
    iget-object v5, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureCompDragIcon:Landroid/view/View;

    if-eqz v5, :cond_2

    .line 1314
    iget-object v5, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_AfRegion:Lcom/meizu/media/camera/Camera$MeteringRect;

    if-nez v5, :cond_3

    move v0, v3

    .line 1315
    .local v0, "isSensorFocus":Z
    :goto_0
    iget-object v5, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorState:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    sget-object v6, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->VISIBLE_SEPARATED:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorState:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    sget-object v6, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->DRAGING_INDICATOR:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    if-ne v5, v6, :cond_4

    :cond_0
    move v1, v3

    .line 1316
    .local v1, "isSeparated":Z
    :goto_1
    if-nez v0, :cond_1

    if-eqz v1, :cond_5

    :cond_1
    const/16 v2, 0x8

    .line 1317
    .local v2, "visibility":I
    :goto_2
    iget-object v3, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureCompDragIcon:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v2, :cond_2

    .line 1319
    iget-object v3, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureCompDragIcon:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1320
    iget-object v4, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureCompDragIcon:Landroid/view/View;

    if-eqz v0, :cond_6

    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v4, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1323
    .end local v0    # "isSensorFocus":Z
    .end local v1    # "isSeparated":Z
    .end local v2    # "visibility":I
    :cond_2
    return-void

    :cond_3
    move v0, v4

    .line 1314
    goto :goto_0

    .restart local v0    # "isSensorFocus":Z
    :cond_4
    move v1, v4

    .line 1315
    goto :goto_1

    .restart local v1    # "isSeparated":Z
    :cond_5
    move v2, v4

    .line 1316
    goto :goto_2

    .line 1320
    .restart local v2    # "visibility":I
    :cond_6
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_3
.end method

.method private updateFocusExposureLockIndicator()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1329
    iget-object v2, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->TAG:Ljava/lang/String;

    const-string v5, "updateFocusExposureLockIndicator()"

    invoke-static {v2, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    invoke-direct {p0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->isFocusExposureLocked()Z

    move-result v1

    .line 1335
    .local v1, "isVisible":Z
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    .line 1336
    .local v0, "activity":Lcom/meizu/media/camera/CameraActivity;
    if-eqz v1, :cond_0

    .line 1338
    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v5, Lcom/meizu/media/camera/PhotoCaptureState;->REVIEWING:Lcom/meizu/media/camera/PhotoCaptureState;

    if-eq v2, v5, :cond_2

    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v5, Lcom/meizu/media/camera/VideoCaptureState;->REVIEWING:Lcom/meizu/media/camera/VideoCaptureState;

    if-eq v2, v5, :cond_2

    move v1, v3

    .line 1343
    :cond_0
    :goto_0
    if-eqz v1, :cond_4

    .line 1345
    iget-object v2, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_FocusLockedHintHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_READY_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1348
    invoke-direct {p0, v3, v4}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->showFocusIndicator(ZZ)V

    .line 1349
    const/16 v2, 0x2711

    invoke-static {p0, v2}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 1352
    sget-object v3, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$18;->$SwitchMap$com$oneplus$camera$VideoCaptureState:[I

    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v2

    sget-object v4, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v4}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/media/camera/VideoCaptureState;

    invoke-virtual {v2}, Lcom/meizu/media/camera/VideoCaptureState;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 1381
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v1, v4

    .line 1338
    goto :goto_0

    .line 1362
    :pswitch_0
    iget-object v2, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_OnScreenHint:Lcom/meizu/media/camera/ui/OnScreenHint;

    if-nez v2, :cond_3

    .line 1363
    const-class v2, Lcom/meizu/media/camera/ui/OnScreenHint;

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/meizu/media/camera/ui/OnScreenHint;

    iput-object v2, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_OnScreenHint:Lcom/meizu/media/camera/ui/OnScreenHint;

    .line 1364
    :cond_3
    iget-object v2, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_OnScreenHint:Lcom/meizu/media/camera/ui/OnScreenHint;

    if-eqz v2, :cond_1

    .line 1368
    iget-object v2, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_OnScreenHint:Lcom/meizu/media/camera/ui/OnScreenHint;

    const v3, 0x7f090019

    invoke-virtual {v0, v3}, Lcom/meizu/media/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xd

    invoke-interface {v2, v3, v4}, Lcom/meizu/media/camera/ui/OnScreenHint;->showHint(Ljava/lang/CharSequence;I)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_FocusLockedHintHandle:Lcom/oneplus/base/Handle;

    goto :goto_1

    .line 1373
    :cond_4
    iget-object v2, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_FocusIndicator:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_FocusingDrawable:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1374
    iget-object v2, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_FocusLockedHintHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_FocusLockedHintHandle:Lcom/oneplus/base/Handle;

    .line 1376
    invoke-direct {p0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->isFocusLocked()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-direct {p0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->isExposureLocked()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1377
    invoke-direct {p0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->hideFocusIndicator()V

    goto :goto_1

    .line 1379
    :cond_5
    invoke-direct {p0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->hideFocusIndicatorDelayed()V

    goto :goto_1

    .line 1352
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 314
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 325
    invoke-super {p0, p1}, Lcom/meizu/media/camera/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 328
    :goto_0
    return-void

    .line 317
    :pswitch_0
    invoke-direct {p0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->hideFocusIndicator()V

    goto :goto_0

    .line 321
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-eqz v3, :cond_1

    :goto_2
    invoke-direct {p0, v0, v1}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->showFocusIndicator(ZZ)V

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_2

    .line 314
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onInitialize()V
    .locals 8

    .prologue
    const v6, 0x7f0b0046

    const/4 v7, 0x0

    .line 808
    invoke-super {p0}, Lcom/meizu/media/camera/UIComponent;->onInitialize()V

    .line 811
    const-class v4, Lcom/meizu/media/camera/ExposureController;

    invoke-virtual {p0, v4}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v4

    check-cast v4, Lcom/meizu/media/camera/ExposureController;

    iput-object v4, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureController:Lcom/meizu/media/camera/ExposureController;

    .line 812
    const-class v4, Lcom/meizu/media/camera/FaceTracker;

    invoke-virtual {p0, v4}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v4

    check-cast v4, Lcom/meizu/media/camera/FaceTracker;

    iput-object v4, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_FaceTracker:Lcom/meizu/media/camera/FaceTracker;

    .line 813
    const-class v4, Lcom/meizu/media/camera/FocusController;

    invoke-virtual {p0, v4}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v4

    check-cast v4, Lcom/meizu/media/camera/FocusController;

    iput-object v4, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_FocusController:Lcom/meizu/media/camera/FocusController;

    .line 814
    const-class v4, Lcom/meizu/media/camera/ui/TouchAutoExposureUI;

    invoke-virtual {p0, v4}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v4

    check-cast v4, Lcom/meizu/media/camera/ui/TouchAutoExposureUI;

    iput-object v4, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_TouchAutoExposureUI:Lcom/meizu/media/camera/ui/TouchAutoExposureUI;

    .line 815
    const-class v4, Lcom/meizu/media/camera/ui/TouchAutoFocusUI;

    invoke-virtual {p0, v4}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v4

    check-cast v4, Lcom/meizu/media/camera/ui/TouchAutoFocusUI;

    iput-object v4, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_TouchAutoFocusUI:Lcom/meizu/media/camera/ui/TouchAutoFocusUI;

    .line 816
    const-class v4, Lcom/meizu/media/camera/ui/Viewfinder;

    invoke-virtual {p0, v4}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v4

    check-cast v4, Lcom/meizu/media/camera/ui/Viewfinder;

    iput-object v4, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_Viewfinder:Lcom/meizu/media/camera/ui/Viewfinder;

    .line 819
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v2

    .line 820
    .local v2, "cameraActivity":Lcom/meizu/media/camera/CameraActivity;
    invoke-virtual {v2}, Lcom/meizu/media/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .local v3, "res":Landroid/content/res/Resources;
    move-object v4, v2

    .line 821
    check-cast v4, Lcom/meizu/media/camera/OPCameraActivity;

    invoke-virtual {v4}, Lcom/meizu/media/camera/OPCameraActivity;->getCaptureUIContainer()Landroid/view/ViewGroup;

    move-result-object v0

    .line 822
    .local v0, "baseView":Landroid/view/View;
    const v4, 0x7f0b0041

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorBaseView:Landroid/view/View;

    .line 823
    iget-object v4, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorBaseView:Landroid/view/View;

    const v5, 0x7f0b0042

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorContainer:Landroid/view/View;

    .line 824
    const v4, 0x7f070030

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorContainerWidth:I

    .line 825
    const v4, 0x7f07002f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorContainerHeight:I

    .line 826
    iget-object v4, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorContainer:Landroid/view/View;

    const v5, 0x7f0b0043

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_FocusIndicator:Landroid/widget/ImageView;

    .line 827
    iget-object v4, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorContainer:Landroid/view/View;

    const v5, 0x7f0b0044

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_FocusIndicatorText:Landroid/widget/TextView;

    .line 828
    iget-object v4, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorContainer:Landroid/view/View;

    const v5, 0x7f0b0045

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureCompDragIconContainer:Landroid/view/View;

    .line 829
    iget-object v4, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorContainer:Landroid/view/View;

    const v5, 0x7f0b0047

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureCompDirectionIcon:Landroid/widget/ImageView;

    .line 830
    iget-object v4, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureCompDragIconContainer:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureCompDragIcon:Landroid/view/View;

    .line 831
    iget-object v4, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureCompDragIcon:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$1;

    invoke-direct {v5, p0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$1;-><init>(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 839
    iget-object v4, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_FocusIndicator:Landroid/widget/ImageView;

    new-instance v5, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$2;

    invoke-direct {v5, p0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$2;-><init>(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 847
    iget-object v4, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorContainer:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->addAutoRotateView(Landroid/view/View;)V

    .line 848
    new-instance v4, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;

    const v5, 0x7f02002d

    invoke-direct {v4, v2, v5}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_FocusingDrawable:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;

    .line 849
    new-instance v4, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;

    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v5

    const v6, 0x7f02002f

    invoke-direct {v4, v5, v6}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_FocusLockedDrawable:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;

    .line 850
    const/4 v4, 0x0

    invoke-direct {p0, v4, v7, v7}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->setRelativeExposureComp(FZZ)V

    .line 853
    const v4, 0x7f0b003e

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureIndicatorContainer:Landroid/view/View;

    .line 854
    iget-object v4, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureIndicatorContainer:Landroid/view/View;

    const v5, 0x7f0b0040

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureIndicatorText:Landroid/widget/TextView;

    .line 855
    iget-object v4, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureIndicatorContainer:Landroid/view/View;

    const v5, 0x7f0b003f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureIndicator:Landroid/widget/ImageView;

    .line 856
    iget-object v4, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureIndicator:Landroid/widget/ImageView;

    const v5, 0x7f020027

    invoke-virtual {v2, v5}, Lcom/meizu/media/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 857
    iget-object v4, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureIndicator:Landroid/widget/ImageView;

    new-instance v5, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$3;

    invoke-direct {v5, p0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$3;-><init>(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 865
    iget-object v4, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureIndicatorContainer:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->addAutoRotateView(Landroid/view/View;)V

    .line 866
    iget-object v4, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureIndicatorContainer:Landroid/view/View;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 869
    sget-object v4, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    new-instance v5, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$4;

    invoke-direct {v5, p0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$4;-><init>(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;)V

    invoke-virtual {v2, v4, v5}, Lcom/meizu/media/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 889
    sget-object v4, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v5, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$5;

    invoke-direct {v5, p0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$5;-><init>(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;)V

    invoke-virtual {v2, v4, v5}, Lcom/meizu/media/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 907
    sget-object v4, Lcom/meizu/media/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v5, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$6;

    invoke-direct {v5, p0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$6;-><init>(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;)V

    invoke-virtual {v2, v4, v5}, Lcom/meizu/media/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 927
    sget-object v4, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_SELF_TIMER_STARTED:Lcom/oneplus/base/PropertyKey;

    new-instance v5, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$7;

    invoke-direct {v5, p0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$7;-><init>(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;)V

    invoke-virtual {v2, v4, v5}, Lcom/meizu/media/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 936
    iget-object v4, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureController:Lcom/meizu/media/camera/ExposureController;

    if-eqz v4, :cond_0

    .line 938
    new-instance v1, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$8;

    invoke-direct {v1, p0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$8;-><init>(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;)V

    .line 946
    .local v1, "callback":Lcom/oneplus/base/PropertyChangedCallback;
    iget-object v4, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureController:Lcom/meizu/media/camera/ExposureController;

    sget-object v5, Lcom/meizu/media/camera/ExposureController;->PROP_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v5, v1}, Lcom/meizu/media/camera/ExposureController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 947
    iget-object v4, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureController:Lcom/meizu/media/camera/ExposureController;

    sget-object v5, Lcom/meizu/media/camera/ExposureController;->PROP_EXPOSURE_COMPENSATION_RANGE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v5, v1}, Lcom/meizu/media/camera/ExposureController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 948
    iget-object v4, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureController:Lcom/meizu/media/camera/ExposureController;

    sget-object v5, Lcom/meizu/media/camera/ExposureController;->PROP_EXPOSURE_COMPENSATION_STEP:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v5, v1}, Lcom/meizu/media/camera/ExposureController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 949
    iget-object v4, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureController:Lcom/meizu/media/camera/ExposureController;

    sget-object v5, Lcom/meizu/media/camera/ExposureController;->PROP_IS_AE_LOCKED:Lcom/oneplus/base/PropertyKey;

    new-instance v6, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$9;

    invoke-direct {v6, p0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$9;-><init>(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;)V

    invoke-interface {v4, v5, v6}, Lcom/meizu/media/camera/ExposureController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 957
    invoke-direct {p0, v7}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->onExposureCompChanged(Z)V

    .line 958
    iget-object v4, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureController:Lcom/meizu/media/camera/ExposureController;

    sget-object v5, Lcom/meizu/media/camera/ExposureController;->PROP_AE_REGIONS:Lcom/oneplus/base/PropertyKey;

    new-instance v6, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$10;

    invoke-direct {v6, p0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$10;-><init>(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;)V

    invoke-interface {v4, v5, v6}, Lcom/meizu/media/camera/ExposureController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 967
    .end local v1    # "callback":Lcom/oneplus/base/PropertyChangedCallback;
    :cond_0
    iget-object v4, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_FaceTracker:Lcom/meizu/media/camera/FaceTracker;

    if-eqz v4, :cond_1

    .line 969
    iget-object v4, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_FaceTracker:Lcom/meizu/media/camera/FaceTracker;

    sget-object v5, Lcom/meizu/media/camera/FaceTracker;->PROP_FACES:Lcom/oneplus/base/PropertyKey;

    new-instance v6, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$11;

    invoke-direct {v6, p0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$11;-><init>(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;)V

    invoke-interface {v4, v5, v6}, Lcom/meizu/media/camera/FaceTracker;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 979
    :cond_1
    iget-object v4, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_FocusController:Lcom/meizu/media/camera/FocusController;

    if-eqz v4, :cond_4

    .line 981
    iget-object v4, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_FocusController:Lcom/meizu/media/camera/FocusController;

    sget-object v5, Lcom/meizu/media/camera/FocusController;->PROP_AF_REGIONS:Lcom/oneplus/base/PropertyKey;

    new-instance v6, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$12;

    invoke-direct {v6, p0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$12;-><init>(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;)V

    invoke-interface {v4, v5, v6}, Lcom/meizu/media/camera/FocusController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 989
    iget-object v4, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_FocusController:Lcom/meizu/media/camera/FocusController;

    sget-object v5, Lcom/meizu/media/camera/FocusController;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v6, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$13;

    invoke-direct {v6, p0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$13;-><init>(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;)V

    invoke-interface {v4, v5, v6}, Lcom/meizu/media/camera/FocusController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 997
    iget-object v4, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_FocusController:Lcom/meizu/media/camera/FocusController;

    sget-object v5, Lcom/meizu/media/camera/FocusController;->PROP_IS_FOCUS_LOCKED:Lcom/oneplus/base/PropertyKey;

    new-instance v6, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$14;

    invoke-direct {v6, p0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$14;-><init>(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;)V

    invoke-interface {v4, v5, v6}, Lcom/meizu/media/camera/FocusController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1005
    iget-object v4, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_FocusController:Lcom/meizu/media/camera/FocusController;

    sget-object v5, Lcom/meizu/media/camera/FocusController;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    new-instance v6, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$15;

    invoke-direct {v6, p0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$15;-><init>(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;)V

    invoke-interface {v4, v5, v6}, Lcom/meizu/media/camera/FocusController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1017
    :goto_0
    iget-object v4, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_Viewfinder:Lcom/meizu/media/camera/ui/Viewfinder;

    if-eqz v4, :cond_5

    .line 1019
    iget-object v4, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_Viewfinder:Lcom/meizu/media/camera/ui/Viewfinder;

    sget-object v5, Lcom/meizu/media/camera/ui/Viewfinder;->PROP_PREVIEW_BOUNDS:Lcom/oneplus/base/PropertyKey;

    new-instance v6, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$16;

    invoke-direct {v6, p0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$16;-><init>(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;)V

    invoke-interface {v4, v5, v6}, Lcom/meizu/media/camera/ui/Viewfinder;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1032
    :goto_1
    iget-object v4, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_Viewfinder:Lcom/meizu/media/camera/ui/Viewfinder;

    if-eqz v4, :cond_2

    .line 1033
    iget-object v4, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_Viewfinder:Lcom/meizu/media/camera/ui/Viewfinder;

    sget-object v5, Lcom/meizu/media/camera/ui/Viewfinder;->PROP_PREVIEW_BOUNDS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v5}, Lcom/meizu/media/camera/ui/Viewfinder;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/RectF;

    invoke-direct {p0, v4}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->updateBaseViewLayout(Landroid/graphics/RectF;)V

    .line 1034
    :cond_2
    iget-object v4, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_FocusController:Lcom/meizu/media/camera/FocusController;

    if-eqz v4, :cond_3

    .line 1036
    iget-object v4, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_FocusController:Lcom/meizu/media/camera/FocusController;

    sget-object v5, Lcom/meizu/media/camera/FocusController;->PROP_AF_REGIONS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v5}, Lcom/meizu/media/camera/FocusController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {p0, v4}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->onAfRegionsChanged(Ljava/util/List;)V

    .line 1037
    const/4 v5, 0x0

    iget-object v4, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_FocusController:Lcom/meizu/media/camera/FocusController;

    sget-object v6, Lcom/meizu/media/camera/FocusController;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v6}, Lcom/meizu/media/camera/FocusController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/media/camera/FocusState;

    invoke-direct {p0, v5, v4}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->onFocusStateChanged(Lcom/meizu/media/camera/FocusState;Lcom/meizu/media/camera/FocusState;)V

    .line 1039
    :cond_3
    invoke-direct {p0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->updateFocusExposureLockIndicator()V

    .line 1040
    return-void

    .line 1016
    :cond_4
    iget-object v4, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->TAG:Ljava/lang/String;

    const-string v5, "onInitialize() - No FocusController"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1029
    :cond_5
    iget-object v4, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->TAG:Ljava/lang/String;

    const-string v5, "onInitialize() - No Viewfinder"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V
    .locals 4
    .param p1, "prevRotation"    # Lcom/oneplus/base/Rotation;
    .param p2, "newRotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    .line 1053
    const/16 v0, 0x2715

    const/4 v1, 0x1

    const-wide/16 v2, 0x2bc

    invoke-static {p0, v0, v1, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    .line 1054
    invoke-super {p0, p1, p2}, Lcom/meizu/media/camera/UIComponent;->onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 1055
    return-void
.end method

.method public set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;TTValue;)Z"
        }
    .end annotation

    .prologue
    .line 1062
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    sget-object v0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->PROP_CAN_FOCUS_EXPOSURE_SEPARATED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    move-object v0, p2

    .line 1063
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->setCanFocusExposureSeparated(Z)V

    .line 1064
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/meizu/media/camera/UIComponent;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
