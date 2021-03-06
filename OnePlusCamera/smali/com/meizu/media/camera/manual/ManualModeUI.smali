.class final Lcom/meizu/media/camera/manual/ManualModeUI;
.super Lcom/meizu/media/camera/ModeUI;
.source "ManualModeUI.java"

# interfaces
.implements Lcom/meizu/media/camera/manual/KnobViewChangedListener;
.implements Lcom/meizu/media/camera/manual/ControlItem$ControlItemListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/media/camera/manual/ManualModeUI$25;,
        Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;,
        Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meizu/media/camera/ModeUI",
        "<",
        "Lcom/meizu/media/camera/manual/ManualModeController;",
        ">;",
        "Lcom/meizu/media/camera/manual/KnobViewChangedListener;",
        "Lcom/meizu/media/camera/manual/ControlItem$ControlItemListener;"
    }
.end annotation


# static fields
.field private static final CONTROL_TYPE_IN_ORDER:[Lcom/meizu/media/camera/manual/ControlType;

.field private static final INTERPOLATOR_DECELERATE:Landroid/view/animation/PathInterpolator;

.field private static final LONG_EXPOSURE_TIME_THRESHOLD:J = 0x1dcd6500L


# instance fields
.field private m_BaseView:Landroid/widget/RelativeLayout;

.field private m_CaptureButtons:Lcom/meizu/media/camera/ui/CaptureButtons;

.field private m_CaptureButtonsHandles:Lcom/oneplus/base/HandleSet;

.field private m_CloseOptionsPanelHandle:Lcom/oneplus/base/Handle;

.field private m_ControlItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/meizu/media/camera/manual/ControlType;",
            "Lcom/meizu/media/camera/manual/ControlItem;",
            ">;"
        }
    .end annotation
.end field

.field private m_ControlType:Lcom/meizu/media/camera/manual/ControlType;

.field private m_ControlsContainer:Landroid/widget/LinearLayout;

.field private m_EnterFlags:Ljava/lang/Integer;

.field private m_FlashController:Lcom/meizu/media/camera/FlashController;

.field private m_FocusExposureIndicator:Lcom/meizu/media/camera/ui/FocusExposureIndicator;

.field private m_Handles:Lcom/oneplus/base/HandleSet;

.field private m_IndicatorContainer:Landroid/widget/RelativeLayout;

.field private m_IndicatorTextView:Landroid/widget/TextView;

.field private m_IndicatorTextViewVisibilityState:Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;

.field private m_KnobViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/meizu/media/camera/manual/ControlType;",
            "Lcom/meizu/media/camera/manual/KnobView;",
            ">;"
        }
    .end annotation
.end field

.field private m_KnobViewsVisibilityState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/meizu/media/camera/manual/ControlType;",
            "Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;",
            ">;"
        }
    .end annotation
.end field

.field private m_LockCameraHandle:Lcom/oneplus/base/Handle;

.field private m_MoreButton:Landroid/widget/ImageButton;

.field private m_OpenOptionsPanelHandle:Lcom/oneplus/base/Handle;

.field private m_OptionsPanel:Lcom/meizu/media/camera/ui/OptionsPanel;

.field private m_ProcessingDialog:Lcom/meizu/media/camera/ui/ProcessingDialog;

.field private m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

.field private m_RawCaptureProcessingDialogHandle:Lcom/oneplus/base/Handle;

.field private m_SceneManager:Lcom/meizu/media/camera/scene/SceneManager;

.field private m_Settings:Lcom/oneplus/base/Settings;

.field private m_TouchAutoExposureUI:Lcom/meizu/media/camera/ui/TouchAutoExposureUI;

.field private m_TouchAutoFocusUI:Lcom/meizu/media/camera/ui/TouchAutoFocusUI;

.field private m_Viewfinder:Lcom/meizu/media/camera/ui/Viewfinder;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 67
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/meizu/media/camera/manual/ControlType;

    const/4 v1, 0x0

    sget-object v2, Lcom/meizu/media/camera/manual/ControlType;->ISO:Lcom/meizu/media/camera/manual/ControlType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/meizu/media/camera/manual/ControlType;->AWB:Lcom/meizu/media/camera/manual/ControlType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/meizu/media/camera/manual/ControlType;->EXPOSURE:Lcom/meizu/media/camera/manual/ControlType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/meizu/media/camera/manual/ControlType;->FOCUS:Lcom/meizu/media/camera/manual/ControlType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/meizu/media/camera/manual/ManualModeUI;->CONTROL_TYPE_IN_ORDER:[Lcom/meizu/media/camera/manual/ControlType;

    .line 69
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f333333    # 0.7f

    const/4 v2, 0x0

    const v3, 0x3e99999a    # 0.3f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/meizu/media/camera/manual/ManualModeUI;->INTERPOLATOR_DECELERATE:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method constructor <init>(Lcom/meizu/media/camera/CameraActivity;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/meizu/media/camera/CameraActivity;

    .prologue
    .line 120
    const-string v0, "Manual Mode UI"

    const-class v1, Lcom/meizu/media/camera/manual/ManualModeController;

    invoke-direct {p0, v0, p1, v1}, Lcom/meizu/media/camera/ModeUI;-><init>(Ljava/lang/String;Lcom/meizu/media/camera/CameraActivity;Ljava/lang/Class;)V

    .line 85
    sget-object v0, Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;->INVISIBLE:Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;

    iput-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_IndicatorTextViewVisibilityState:Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/media/camera/manual/ManualModeUI;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/manual/ManualModeUI;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_ControlsContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/media/camera/manual/ManualModeUI;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/manual/ManualModeUI;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_MoreButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/meizu/media/camera/manual/ManualModeUI;Lcom/meizu/media/camera/ui/TouchAutoFocusUI;)Lcom/meizu/media/camera/ui/TouchAutoFocusUI;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/manual/ManualModeUI;
    .param p1, "x1"    # Lcom/meizu/media/camera/ui/TouchAutoFocusUI;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_TouchAutoFocusUI:Lcom/meizu/media/camera/ui/TouchAutoFocusUI;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/meizu/media/camera/manual/ManualModeUI;)Lcom/meizu/media/camera/ui/Viewfinder;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/manual/ManualModeUI;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_Viewfinder:Lcom/meizu/media/camera/ui/Viewfinder;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/meizu/media/camera/manual/ManualModeUI;Lcom/meizu/media/camera/ui/Viewfinder;)Lcom/meizu/media/camera/ui/Viewfinder;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/manual/ManualModeUI;
    .param p1, "x1"    # Lcom/meizu/media/camera/ui/Viewfinder;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_Viewfinder:Lcom/meizu/media/camera/ui/Viewfinder;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/meizu/media/camera/manual/ManualModeUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/manual/ManualModeUI;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->isEntered()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/meizu/media/camera/manual/ManualModeUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/manual/ManualModeUI;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->updateKnobViewBackgroundColor()V

    return-void
.end method

.method static synthetic access$1400(Lcom/meizu/media/camera/manual/ManualModeUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/manual/ManualModeUI;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->updateKnobViewPosition()V

    return-void
.end method

.method static synthetic access$1500()Landroid/view/animation/PathInterpolator;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/meizu/media/camera/manual/ManualModeUI;->INTERPOLATOR_DECELERATE:Landroid/view/animation/PathInterpolator;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/meizu/media/camera/manual/ManualModeUI;Lcom/meizu/media/camera/Camera;Lcom/meizu/media/camera/Camera;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/manual/ManualModeUI;
    .param p1, "x1"    # Lcom/meizu/media/camera/Camera;
    .param p2, "x2"    # Lcom/meizu/media/camera/Camera;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/meizu/media/camera/manual/ManualModeUI;->onCameraChanged(Lcom/meizu/media/camera/Camera;Lcom/meizu/media/camera/Camera;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/meizu/media/camera/manual/ManualModeUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/manual/ManualModeUI;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->isEntered()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/meizu/media/camera/manual/ManualModeUI;Lcom/meizu/media/camera/manual/ControlType;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/manual/ManualModeUI;
    .param p1, "x1"    # Lcom/meizu/media/camera/manual/ControlType;
    .param p2, "x2"    # Z

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/meizu/media/camera/manual/ManualModeUI;->setControlType(Lcom/meizu/media/camera/manual/ControlType;Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/meizu/media/camera/manual/ManualModeUI;)Lcom/meizu/media/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/manual/ManualModeUI;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->getCamera()Lcom/meizu/media/camera/Camera;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/media/camera/manual/ManualModeUI;)Lcom/oneplus/base/Handle;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/manual/ManualModeUI;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_OpenOptionsPanelHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/meizu/media/camera/manual/ManualModeUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/manual/ManualModeUI;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->isRawCaptureEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/meizu/media/camera/manual/ManualModeUI;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/manual/ManualModeUI;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_OpenOptionsPanelHandle:Lcom/oneplus/base/Handle;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/meizu/media/camera/manual/ManualModeUI;Lcom/meizu/media/camera/Camera;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/manual/ManualModeUI;
    .param p1, "x1"    # Lcom/meizu/media/camera/Camera;
    .param p2, "x2"    # Z

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/meizu/media/camera/manual/ManualModeUI;->setRawCaptureState(Lcom/meizu/media/camera/Camera;Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/meizu/media/camera/manual/ManualModeUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/manual/ManualModeUI;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->isEntered()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/meizu/media/camera/manual/ManualModeUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/manual/ManualModeUI;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->hideUI()V

    return-void
.end method

.method static synthetic access$2400(Lcom/meizu/media/camera/manual/ManualModeUI;Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/manual/ManualModeUI;
    .param p1, "x1"    # Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;
    .param p2, "x2"    # Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/meizu/media/camera/manual/ManualModeUI;->hideKnobViewUI(Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/meizu/media/camera/manual/ManualModeUI;)Lcom/oneplus/base/HandleSet;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/manual/ManualModeUI;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_CaptureButtonsHandles:Lcom/oneplus/base/HandleSet;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/meizu/media/camera/manual/ManualModeUI;Lcom/oneplus/base/HandleSet;)Lcom/oneplus/base/HandleSet;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/manual/ManualModeUI;
    .param p1, "x1"    # Lcom/oneplus/base/HandleSet;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_CaptureButtonsHandles:Lcom/oneplus/base/HandleSet;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/meizu/media/camera/manual/ManualModeUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/manual/ManualModeUI;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->showUI()V

    return-void
.end method

.method static synthetic access$2700(Lcom/meizu/media/camera/manual/ManualModeUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/manual/ManualModeUI;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->addCaptureButtonsHandles()V

    return-void
.end method

.method static synthetic access$2800(Lcom/meizu/media/camera/manual/ManualModeUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/manual/ManualModeUI;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->isEntered()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/meizu/media/camera/manual/ManualModeUI;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/manual/ManualModeUI;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/manual/ManualModeUI;->setUIEnabled(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/media/camera/manual/ManualModeUI;)Lcom/meizu/media/camera/ui/OptionsPanel;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/manual/ManualModeUI;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_OptionsPanel:Lcom/meizu/media/camera/ui/OptionsPanel;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/meizu/media/camera/manual/ManualModeUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/manual/ManualModeUI;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->isEntered()Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lcom/meizu/media/camera/manual/ManualModeUI;Lcom/meizu/media/camera/ui/OptionsPanel;)Lcom/meizu/media/camera/ui/OptionsPanel;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/manual/ManualModeUI;
    .param p1, "x1"    # Lcom/meizu/media/camera/ui/OptionsPanel;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_OptionsPanel:Lcom/meizu/media/camera/ui/OptionsPanel;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/meizu/media/camera/manual/ManualModeUI;Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/manual/ManualModeUI;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/manual/ManualModeUI;->onIsCapturingRawPhotoChanged(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/meizu/media/camera/manual/ManualModeUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/manual/ManualModeUI;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->isEntered()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/meizu/media/camera/manual/ManualModeUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/manual/ManualModeUI;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->hideProcessingDialog()V

    return-void
.end method

.method static synthetic access$3400(Lcom/meizu/media/camera/manual/ManualModeUI;Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/manual/ManualModeUI;
    .param p1, "x1"    # Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;
    .param p2, "x2"    # Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/meizu/media/camera/manual/ManualModeUI;->showKnobViewUI(Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/meizu/media/camera/manual/ManualModeUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/manual/ManualModeUI;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->isEntered()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/meizu/media/camera/manual/ManualModeUI;)Lcom/meizu/media/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/manual/ManualModeUI;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->getCamera()Lcom/meizu/media/camera/Camera;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700(Lcom/meizu/media/camera/manual/ManualModeUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/manual/ManualModeUI;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->isEntered()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/meizu/media/camera/manual/ManualModeUI;)J
    .locals 2
    .param p0, "x0"    # Lcom/meizu/media/camera/manual/ManualModeUI;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->getSelectedExposureTimeNanos()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$3900(Lcom/meizu/media/camera/manual/ManualModeUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/manual/ManualModeUI;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->showProcessingDialog()V

    return-void
.end method

.method static synthetic access$4000(Lcom/meizu/media/camera/manual/ManualModeUI;)Lcom/meizu/media/camera/ui/ProcessingDialog;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/manual/ManualModeUI;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_ProcessingDialog:Lcom/meizu/media/camera/ui/ProcessingDialog;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/meizu/media/camera/manual/ManualModeUI;Lcom/meizu/media/camera/ui/ProcessingDialog;)Lcom/meizu/media/camera/ui/ProcessingDialog;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/manual/ManualModeUI;
    .param p1, "x1"    # Lcom/meizu/media/camera/ui/ProcessingDialog;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_ProcessingDialog:Lcom/meizu/media/camera/ui/ProcessingDialog;

    return-object p1
.end method

.method static synthetic access$402(Lcom/meizu/media/camera/manual/ManualModeUI;Lcom/meizu/media/camera/scene/SceneManager;)Lcom/meizu/media/camera/scene/SceneManager;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/manual/ManualModeUI;
    .param p1, "x1"    # Lcom/meizu/media/camera/scene/SceneManager;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_SceneManager:Lcom/meizu/media/camera/scene/SceneManager;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/meizu/media/camera/manual/ManualModeUI;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/manual/ManualModeUI;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/meizu/media/camera/manual/ManualModeUI;)Lcom/oneplus/base/Handle;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/manual/ManualModeUI;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_RawCaptureProcessingDialogHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/meizu/media/camera/manual/ManualModeUI;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/manual/ManualModeUI;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_RawCaptureProcessingDialogHandle:Lcom/oneplus/base/Handle;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/meizu/media/camera/manual/ManualModeUI;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/manual/ManualModeUI;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/meizu/media/camera/manual/ManualModeUI;Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;)Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/manual/ManualModeUI;
    .param p1, "x1"    # Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_IndicatorTextViewVisibilityState:Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/meizu/media/camera/manual/ManualModeUI;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/manual/ManualModeUI;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/meizu/media/camera/manual/ManualModeUI;Lcom/meizu/media/camera/manual/ControlType;Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/manual/ManualModeUI;
    .param p1, "x1"    # Lcom/meizu/media/camera/manual/ControlType;
    .param p2, "x2"    # Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/meizu/media/camera/manual/ManualModeUI;->changeKnobViewVisibilityState(Lcom/meizu/media/camera/manual/ControlType;Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/meizu/media/camera/manual/ManualModeUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/manual/ManualModeUI;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->retryToEnter()V

    return-void
.end method

.method static synthetic access$602(Lcom/meizu/media/camera/manual/ManualModeUI;Lcom/meizu/media/camera/ui/CaptureButtons;)Lcom/meizu/media/camera/ui/CaptureButtons;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/manual/ManualModeUI;
    .param p1, "x1"    # Lcom/meizu/media/camera/ui/CaptureButtons;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_CaptureButtons:Lcom/meizu/media/camera/ui/CaptureButtons;

    return-object p1
.end method

.method static synthetic access$702(Lcom/meizu/media/camera/manual/ManualModeUI;Lcom/meizu/media/camera/FlashController;)Lcom/meizu/media/camera/FlashController;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/manual/ManualModeUI;
    .param p1, "x1"    # Lcom/meizu/media/camera/FlashController;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_FlashController:Lcom/meizu/media/camera/FlashController;

    return-object p1
.end method

.method static synthetic access$802(Lcom/meizu/media/camera/manual/ManualModeUI;Lcom/meizu/media/camera/ui/FocusExposureIndicator;)Lcom/meizu/media/camera/ui/FocusExposureIndicator;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/manual/ManualModeUI;
    .param p1, "x1"    # Lcom/meizu/media/camera/ui/FocusExposureIndicator;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_FocusExposureIndicator:Lcom/meizu/media/camera/ui/FocusExposureIndicator;

    return-object p1
.end method

.method static synthetic access$902(Lcom/meizu/media/camera/manual/ManualModeUI;Lcom/meizu/media/camera/ui/TouchAutoExposureUI;)Lcom/meizu/media/camera/ui/TouchAutoExposureUI;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/manual/ManualModeUI;
    .param p1, "x1"    # Lcom/meizu/media/camera/ui/TouchAutoExposureUI;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_TouchAutoExposureUI:Lcom/meizu/media/camera/ui/TouchAutoExposureUI;

    return-object p1
.end method

.method private addCaptureButtonsHandles()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 127
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_CaptureButtons:Lcom/meizu/media/camera/ui/CaptureButtons;

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_CaptureButtonsHandles:Lcom/oneplus/base/HandleSet;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Lcom/oneplus/base/HandleSet;

    new-array v1, v5, [Lcom/oneplus/base/Handle;

    invoke-direct {v0, v1}, Lcom/oneplus/base/HandleSet;-><init>([Lcom/oneplus/base/Handle;)V

    iput-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_CaptureButtonsHandles:Lcom/oneplus/base/HandleSet;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_CaptureButtonsHandles:Lcom/oneplus/base/HandleSet;

    iget-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_CaptureButtons:Lcom/meizu/media/camera/ui/CaptureButtons;

    sget-object v2, Lcom/meizu/media/camera/ui/CaptureButtons$Button;->PRIMARY:Lcom/meizu/media/camera/ui/CaptureButtons$Button;

    invoke-virtual {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v3

    const v4, 0x7f02000c

    invoke-virtual {v3, v4}, Lcom/meizu/media/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v1, v2, v3, v5}, Lcom/meizu/media/camera/ui/CaptureButtons;->setButtonBackground(Lcom/meizu/media/camera/ui/CaptureButtons$Button;Landroid/graphics/drawable/Drawable;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 132
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_CaptureButtonsHandles:Lcom/oneplus/base/HandleSet;

    iget-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_CaptureButtons:Lcom/meizu/media/camera/ui/CaptureButtons;

    sget-object v2, Lcom/meizu/media/camera/ui/CaptureButtons$Button;->PRIMARY:Lcom/meizu/media/camera/ui/CaptureButtons$Button;

    sget-object v3, Lcom/meizu/media/camera/ui/CaptureButtons$ButtonStyle;->SMALL:Lcom/meizu/media/camera/ui/CaptureButtons$ButtonStyle;

    invoke-interface {v1, v2, v3, v5}, Lcom/meizu/media/camera/ui/CaptureButtons;->setButtonStyle(Lcom/meizu/media/camera/ui/CaptureButtons$Button;Lcom/meizu/media/camera/ui/CaptureButtons$ButtonStyle;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 134
    :cond_1
    return-void
.end method

.method private changeKnobViewVisibilityState(Lcom/meizu/media/camera/manual/ControlType;Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;)V
    .locals 1
    .param p1, "controlType"    # Lcom/meizu/media/camera/manual/ControlType;
    .param p2, "state"    # Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_KnobViewsVisibilityState:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_KnobViewsVisibilityState:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-direct {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->updateIndicatorContainerViewVisibility()V

    .line 145
    :cond_0
    return-void
.end method

.method private createControlViews()V
    .locals 17

    .prologue
    .line 152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    .line 215
    :cond_0
    return-void

    .line 154
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_ControlsContainer:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v8

    .line 159
    .local v8, "cameraActivity":Lcom/meizu/media/camera/CameraActivity;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    .line 160
    const/4 v11, 0x0

    .line 161
    .local v11, "iconIndex":I
    sget-object v7, Lcom/meizu/media/camera/manual/ManualModeUI;->CONTROL_TYPE_IN_ORDER:[Lcom/meizu/media/camera/manual/ControlType;

    .local v7, "arr$":[Lcom/meizu/media/camera/manual/ControlType;
    array-length v13, v7

    .local v13, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    move v12, v11

    .end local v11    # "iconIndex":I
    .local v12, "iconIndex":I
    :goto_0
    if-ge v10, v13, :cond_0

    aget-object v9, v7, v10

    .line 164
    .local v9, "controlType":Lcom/meizu/media/camera/manual/ControlType;
    const v2, 0x7f030012

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-static {v8, v2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 165
    .local v3, "container":Landroid/view/View;
    invoke-virtual {v8}, Lcom/meizu/media/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v16, 0x7f070089

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 166
    .local v15, "width":I
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v14, v15, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 167
    .local v14, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v3, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_ControlsContainer:Landroid/widget/LinearLayout;

    add-int/lit8 v11, v12, 0x1

    .end local v12    # "iconIndex":I
    .restart local v11    # "iconIndex":I
    invoke-virtual {v2, v3, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 171
    const v2, 0x7f0b004d

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 172
    .local v6, "touchView":Landroid/view/View;
    const v2, 0x7f0b004e

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 173
    .local v4, "imageView":Landroid/widget/ImageView;
    const v2, 0x7f0b004f

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 176
    .local v5, "textView":Landroid/widget/TextView;
    const/4 v1, 0x0

    .line 177
    .local v1, "controlItem":Lcom/meizu/media/camera/manual/ControlItem;
    sget-object v2, Lcom/meizu/media/camera/manual/ManualModeUI$25;->$SwitchMap$com$oneplus$camera$manual$ControlType:[I

    invoke-virtual {v9}, Lcom/meizu/media/camera/manual/ControlType;->ordinal()I

    move-result v16

    aget v2, v2, v16

    packed-switch v2, :pswitch_data_0

    .line 208
    :goto_1
    if-eqz v1, :cond_2

    .line 210
    const v2, 0x7f090049

    invoke-virtual {v8, v2}, Lcom/meizu/media/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/media/camera/manual/ControlItem;->setText(Ljava/lang/String;)V

    .line 211
    const v2, 0x7f0a0015

    invoke-virtual {v1, v8, v2}, Lcom/meizu/media/camera/manual/ControlItem;->setTextAppearance(Landroid/content/Context;I)V

    .line 212
    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/meizu/media/camera/manual/ControlItem;->setControlItemListener(Lcom/meizu/media/camera/manual/ControlItem$ControlItemListener;)V

    .line 161
    :cond_2
    add-int/lit8 v10, v10, 0x1

    move v12, v11

    .end local v11    # "iconIndex":I
    .restart local v12    # "iconIndex":I
    goto :goto_0

    .line 181
    .end local v12    # "iconIndex":I
    .restart local v11    # "iconIndex":I
    :pswitch_0
    new-instance v1, Lcom/meizu/media/camera/manual/ControlItem;

    .end local v1    # "controlItem":Lcom/meizu/media/camera/manual/ControlItem;
    sget-object v2, Lcom/meizu/media/camera/manual/ControlType;->ISO:Lcom/meizu/media/camera/manual/ControlType;

    invoke-direct/range {v1 .. v6}, Lcom/meizu/media/camera/manual/ControlItem;-><init>(Lcom/meizu/media/camera/manual/ControlType;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;)V

    .line 182
    .restart local v1    # "controlItem":Lcom/meizu/media/camera/manual/ControlItem;
    const v2, 0x7f020058

    invoke-virtual {v8, v2}, Lcom/meizu/media/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/media/camera/manual/ControlItem;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    sget-object v16, Lcom/meizu/media/camera/manual/ControlType;->ISO:Lcom/meizu/media/camera/manual/ControlType;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 188
    :pswitch_1
    new-instance v1, Lcom/meizu/media/camera/manual/ControlItem;

    .end local v1    # "controlItem":Lcom/meizu/media/camera/manual/ControlItem;
    sget-object v2, Lcom/meizu/media/camera/manual/ControlType;->AWB:Lcom/meizu/media/camera/manual/ControlType;

    invoke-direct/range {v1 .. v6}, Lcom/meizu/media/camera/manual/ControlItem;-><init>(Lcom/meizu/media/camera/manual/ControlType;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;)V

    .line 189
    .restart local v1    # "controlItem":Lcom/meizu/media/camera/manual/ControlItem;
    const v2, 0x7f020055

    invoke-virtual {v8, v2}, Lcom/meizu/media/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/media/camera/manual/ControlItem;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    sget-object v16, Lcom/meizu/media/camera/manual/ControlType;->AWB:Lcom/meizu/media/camera/manual/ControlType;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 195
    :pswitch_2
    new-instance v1, Lcom/meizu/media/camera/manual/ControlItem;

    .end local v1    # "controlItem":Lcom/meizu/media/camera/manual/ControlItem;
    sget-object v2, Lcom/meizu/media/camera/manual/ControlType;->EXPOSURE:Lcom/meizu/media/camera/manual/ControlType;

    invoke-direct/range {v1 .. v6}, Lcom/meizu/media/camera/manual/ControlItem;-><init>(Lcom/meizu/media/camera/manual/ControlType;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;)V

    .line 196
    .restart local v1    # "controlItem":Lcom/meizu/media/camera/manual/ControlItem;
    const v2, 0x7f020056

    invoke-virtual {v8, v2}, Lcom/meizu/media/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/media/camera/manual/ControlItem;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    sget-object v16, Lcom/meizu/media/camera/manual/ControlType;->EXPOSURE:Lcom/meizu/media/camera/manual/ControlType;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 202
    :pswitch_3
    new-instance v1, Lcom/meizu/media/camera/manual/ControlItem;

    .end local v1    # "controlItem":Lcom/meizu/media/camera/manual/ControlItem;
    sget-object v2, Lcom/meizu/media/camera/manual/ControlType;->FOCUS:Lcom/meizu/media/camera/manual/ControlType;

    invoke-direct/range {v1 .. v6}, Lcom/meizu/media/camera/manual/ControlItem;-><init>(Lcom/meizu/media/camera/manual/ControlType;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;)V

    .line 203
    .restart local v1    # "controlItem":Lcom/meizu/media/camera/manual/ControlItem;
    const v2, 0x7f020057

    invoke-virtual {v8, v2}, Lcom/meizu/media/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/media/camera/manual/ControlItem;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    sget-object v16, Lcom/meizu/media/camera/manual/ControlType;->FOCUS:Lcom/meizu/media/camera/manual/ControlType;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private createKnobViews()V
    .locals 15

    .prologue
    .line 221
    iget-object v12, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    if-eqz v12, :cond_0

    .line 263
    :goto_0
    return-void

    .line 225
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v1

    .line 226
    .local v1, "cameraActivity":Lcom/meizu/media/camera/CameraActivity;
    invoke-virtual {v1}, Lcom/meizu/media/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f07007f

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 227
    .local v8, "knobWidth":I
    invoke-virtual {v1}, Lcom/meizu/media/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f070080

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 228
    .local v7, "knobHeight":I
    invoke-virtual {v1}, Lcom/meizu/media/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f07000b

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 229
    .local v2, "captureBarHeight":I
    invoke-virtual {v1}, Lcom/meizu/media/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f07003e

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 232
    .local v11, "optionPanelHeight":I
    new-instance v0, Lcom/meizu/media/camera/manual/WhiteBalanceKnobView;

    invoke-direct {v0, v1}, Lcom/meizu/media/camera/manual/WhiteBalanceKnobView;-><init>(Landroid/content/Context;)V

    .line 233
    .local v0, "awbKnob":Lcom/meizu/media/camera/manual/KnobView;
    new-instance v3, Lcom/meizu/media/camera/manual/ExposureTimeKnobView;

    invoke-direct {v3, v1}, Lcom/meizu/media/camera/manual/ExposureTimeKnobView;-><init>(Landroid/content/Context;)V

    .line 234
    .local v3, "expKnob":Lcom/meizu/media/camera/manual/KnobView;
    new-instance v4, Lcom/meizu/media/camera/manual/FocusKnobView;

    invoke-direct {v4, v1}, Lcom/meizu/media/camera/manual/FocusKnobView;-><init>(Landroid/content/Context;)V

    .line 235
    .local v4, "focusKnob":Lcom/meizu/media/camera/manual/KnobView;
    new-instance v6, Lcom/meizu/media/camera/manual/ISOKnobView;

    invoke-direct {v6, v1}, Lcom/meizu/media/camera/manual/ISOKnobView;-><init>(Landroid/content/Context;)V

    .line 238
    .local v6, "isoKnob":Lcom/meizu/media/camera/manual/KnobView;
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    iput-object v12, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    .line 239
    iget-object v12, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    sget-object v13, Lcom/meizu/media/camera/manual/ControlType;->AWB:Lcom/meizu/media/camera/manual/ControlType;

    invoke-virtual {v12, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v12, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    sget-object v13, Lcom/meizu/media/camera/manual/ControlType;->EXPOSURE:Lcom/meizu/media/camera/manual/ControlType;

    invoke-virtual {v12, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v12, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    sget-object v13, Lcom/meizu/media/camera/manual/ControlType;->FOCUS:Lcom/meizu/media/camera/manual/ControlType;

    invoke-virtual {v12, v13, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v12, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    sget-object v13, Lcom/meizu/media/camera/manual/ControlType;->ISO:Lcom/meizu/media/camera/manual/ControlType;

    invoke-virtual {v12, v13, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v10, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 246
    .local v10, "knobviewParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v12, 0xc

    invoke-virtual {v10, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 247
    add-int v12, v2, v11

    iput v12, v10, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 248
    iget-object v12, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/meizu/media/camera/manual/KnobView;

    .line 249
    .local v9, "knobview":Lcom/meizu/media/camera/manual/KnobView;
    invoke-virtual {v9, v10}, Lcom/meizu/media/camera/manual/KnobView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    invoke-virtual {v9, p0}, Lcom/meizu/media/camera/manual/KnobView;->setKnobViewChangedListener(Lcom/meizu/media/camera/manual/KnobViewChangedListener;)V

    .line 251
    const/16 v12, 0x8

    invoke-virtual {v9, v12}, Lcom/meizu/media/camera/manual/KnobView;->setVisibility(I)V

    .line 253
    iget-object v12, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_BaseView:Landroid/widget/RelativeLayout;

    invoke-virtual {v12, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 257
    .end local v9    # "knobview":Lcom/meizu/media/camera/manual/KnobView;
    :cond_1
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    iput-object v12, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_KnobViewsVisibilityState:Ljava/util/HashMap;

    .line 258
    iget-object v12, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_KnobViewsVisibilityState:Ljava/util/HashMap;

    sget-object v13, Lcom/meizu/media/camera/manual/ControlType;->AWB:Lcom/meizu/media/camera/manual/ControlType;

    sget-object v14, Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;->INVISIBLE:Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget-object v12, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_KnobViewsVisibilityState:Ljava/util/HashMap;

    sget-object v13, Lcom/meizu/media/camera/manual/ControlType;->EXPOSURE:Lcom/meizu/media/camera/manual/ControlType;

    sget-object v14, Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;->INVISIBLE:Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    iget-object v12, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_KnobViewsVisibilityState:Ljava/util/HashMap;

    sget-object v13, Lcom/meizu/media/camera/manual/ControlType;->FOCUS:Lcom/meizu/media/camera/manual/ControlType;

    sget-object v14, Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;->INVISIBLE:Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iget-object v12, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_KnobViewsVisibilityState:Ljava/util/HashMap;

    sget-object v13, Lcom/meizu/media/camera/manual/ControlType;->ISO:Lcom/meizu/media/camera/manual/ControlType;

    sget-object v14, Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;->INVISIBLE:Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method private getSelectedExposureTimeNanos()J
    .locals 6

    .prologue
    const-wide/16 v2, -0x1

    .line 269
    iget-object v4, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    if-nez v4, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-wide v2

    .line 271
    :cond_1
    iget-object v4, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    sget-object v5, Lcom/meizu/media/camera/manual/ControlType;->EXPOSURE:Lcom/meizu/media/camera/manual/ControlType;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/manual/KnobView;

    .line 272
    .local v0, "expKnob":Lcom/meizu/media/camera/manual/KnobView;
    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {v0}, Lcom/meizu/media/camera/manual/KnobView;->getCurrentKnobItem()Lcom/meizu/media/camera/manual/KnobItemInfo;

    move-result-object v1

    .line 275
    .local v1, "item":Lcom/meizu/media/camera/manual/KnobItemInfo;
    if-eqz v1, :cond_0

    .line 276
    iget-wide v2, v1, Lcom/meizu/media/camera/manual/KnobItemInfo;->value:D

    double-to-long v2, v2

    goto :goto_0
.end method

.method private hideKnobViewUI(Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;)V
    .locals 3
    .param p1, "inAnimation"    # Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;
    .param p2, "outAnimation"    # Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_ControlType:Lcom/meizu/media/camera/manual/ControlType;

    if-nez v0, :cond_0

    .line 289
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string v1, "hideKnobViewUI() - Control type: "

    iget-object v2, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_ControlType:Lcom/meizu/media/camera/manual/ControlType;

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 288
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_ControlType:Lcom/meizu/media/camera/manual/ControlType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meizu/media/camera/manual/ManualModeUI;->updateKnobViewVisibility(Lcom/meizu/media/camera/manual/ControlType;Lcom/meizu/media/camera/manual/ControlType;Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;)V

    goto :goto_0
.end method

.method private hideProcessingDialog()V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

    .line 296
    return-void
.end method

.method private hideUI()V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_BaseView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string v1, "hideUI() - Hide"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_BaseView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/manual/ManualModeUI;->setViewVisibility(Landroid/view/View;Z)V

    .line 307
    :cond_0
    return-void
.end method

.method private isRawCaptureEnabled()Z
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_Settings:Lcom/oneplus/base/Settings;

    if-nez v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string v1, "isRawCaptureEnabled() - m_Settings is null"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_Settings:Lcom/oneplus/base/Settings;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_Settings:Lcom/oneplus/base/Settings;

    const-string v1, "RawCapture"

    invoke-virtual {v0, v1}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isReadyToEnter()Z
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_CaptureButtons:Lcom/meizu/media/camera/ui/CaptureButtons;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_SceneManager:Lcom/meizu/media/camera/scene/SceneManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_FlashController:Lcom/meizu/media/camera/FlashController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_FocusExposureIndicator:Lcom/meizu/media/camera/ui/FocusExposureIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_TouchAutoExposureUI:Lcom/meizu/media/camera/ui/TouchAutoExposureUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_TouchAutoFocusUI:Lcom/meizu/media/camera/ui/TouchAutoFocusUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_Viewfinder:Lcom/meizu/media/camera/ui/Viewfinder;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_CONTENT_VIEW:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 331
    const/4 v0, 0x1

    .line 332
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onCameraChanged(Lcom/meizu/media/camera/Camera;Lcom/meizu/media/camera/Camera;)V
    .locals 2
    .param p1, "oldCamera"    # Lcom/meizu/media/camera/Camera;
    .param p2, "newCamera"    # Lcom/meizu/media/camera/Camera;

    .prologue
    .line 783
    invoke-virtual {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->isEntered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string v1, "onCameraChanged() - reset raw capture property"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/media/camera/manual/ManualModeUI;->setRawCaptureState(Lcom/meizu/media/camera/Camera;Z)V

    .line 787
    invoke-direct {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->isRawCaptureEnabled()Z

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/meizu/media/camera/manual/ManualModeUI;->setRawCaptureState(Lcom/meizu/media/camera/Camera;Z)V

    .line 789
    :cond_0
    return-void
.end method

.method private onIsCapturingRawPhotoChanged(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "isCapturingRawPhoto"    # Ljava/lang/Boolean;

    .prologue
    .line 793
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 799
    :goto_0
    return-void

    .line 798
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_RawCaptureProcessingDialogHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_RawCaptureProcessingDialogHandle:Lcom/oneplus/base/Handle;

    goto :goto_0
.end method

.method private retryToEnter()V
    .locals 1

    .prologue
    .line 877
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_EnterFlags:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->isReadyToEnter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_EnterFlags:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/manual/ManualModeUI;->onEnter(I)Z

    .line 880
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_EnterFlags:Ljava/lang/Integer;

    .line 882
    :cond_0
    return-void
.end method

.method private setControlItemText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 888
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_ControlType:Lcom/meizu/media/camera/manual/ControlType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 893
    :cond_0
    :goto_0
    return-void

    .line 892
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_ControlType:Lcom/meizu/media/camera/manual/ControlType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/manual/ControlItem;

    invoke-virtual {v0, p1}, Lcom/meizu/media/camera/manual/ControlItem;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setControlType(Lcom/meizu/media/camera/manual/ControlType;)V
    .locals 1
    .param p1, "controlType"    # Lcom/meizu/media/camera/manual/ControlType;

    .prologue
    .line 899
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/meizu/media/camera/manual/ManualModeUI;->setControlType(Lcom/meizu/media/camera/manual/ControlType;Z)V

    .line 900
    return-void
.end method

.method private setControlType(Lcom/meizu/media/camera/manual/ControlType;Z)V
    .locals 4
    .param p1, "controlType"    # Lcom/meizu/media/camera/manual/ControlType;
    .param p2, "animation"    # Z

    .prologue
    .line 903
    iget-object v2, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_ControlType:Lcom/meizu/media/camera/manual/ControlType;

    if-ne v2, p1, :cond_1

    .line 928
    :cond_0
    :goto_0
    return-void

    .line 907
    :cond_1
    iget-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_ControlType:Lcom/meizu/media/camera/manual/ControlType;

    .line 908
    .local v1, "oldControlType":Lcom/meizu/media/camera/manual/ControlType;
    iput-object p1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_ControlType:Lcom/meizu/media/camera/manual/ControlType;

    .line 909
    invoke-direct {p0, v1, p1}, Lcom/meizu/media/camera/manual/ManualModeUI;->updateControlViewStyle(Lcom/meizu/media/camera/manual/ControlType;Lcom/meizu/media/camera/manual/ControlType;)V

    .line 910
    if-eqz p2, :cond_2

    sget-object v2, Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;->FADE_IN_FROM_BOTTOM:Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;

    move-object v3, v2

    :goto_1
    if-eqz p2, :cond_3

    sget-object v2, Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;->FADE_OUT_FROM_BOTTOM:Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;

    :goto_2
    invoke-direct {p0, v1, p1, v3, v2}, Lcom/meizu/media/camera/manual/ManualModeUI;->updateKnobViewVisibility(Lcom/meizu/media/camera/manual/ControlType;Lcom/meizu/media/camera/manual/ControlType;Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;)V

    .line 913
    invoke-direct {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->updateKnobItemsSelfRotation()V

    .line 914
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/meizu/media/camera/manual/ManualModeUI;->setFloatingTextViewVisibility(Z)V

    .line 917
    iget-object v2, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_ControlType:Lcom/meizu/media/camera/manual/ControlType;

    sget-object v3, Lcom/meizu/media/camera/manual/ControlType;->NONE:Lcom/meizu/media/camera/manual/ControlType;

    if-eq v2, v3, :cond_0

    .line 919
    iget-object v2, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_ControlType:Lcom/meizu/media/camera/manual/ControlType;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 921
    iget-object v2, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_ControlType:Lcom/meizu/media/camera/manual/ControlType;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/media/camera/manual/KnobView;

    invoke-virtual {v2}, Lcom/meizu/media/camera/manual/KnobView;->getCurrentKnobItem()Lcom/meizu/media/camera/manual/KnobItemInfo;

    move-result-object v0

    .line 922
    .local v0, "info":Lcom/meizu/media/camera/manual/KnobItemInfo;
    if-eqz v0, :cond_4

    .line 923
    iget-object v2, v0, Lcom/meizu/media/camera/manual/KnobItemInfo;->text:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/meizu/media/camera/manual/ManualModeUI;->setFloatingText(Ljava/lang/String;)V

    goto :goto_0

    .line 910
    .end local v0    # "info":Lcom/meizu/media/camera/manual/KnobItemInfo;
    :cond_2
    sget-object v2, Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;->NONE:Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;

    move-object v3, v2

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;->NONE:Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;

    goto :goto_2

    .line 925
    .restart local v0    # "info":Lcom/meizu/media/camera/manual/KnobItemInfo;
    :cond_4
    iget-object v2, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string v3, "setControlType() - KnobItemIfo is null"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setFloatingText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 935
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 940
    :goto_0
    return-void

    .line 939
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setFloatingTextViewVisibility(Z)V
    .locals 8
    .param p1, "visible"    # Z

    .prologue
    const-wide/16 v6, 0x12c

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 947
    iget-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 1006
    :goto_0
    :pswitch_0
    return-void

    .line 951
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/media/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07008f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v0, v1

    .line 952
    .local v0, "yMove":F
    if-eqz p1, :cond_1

    .line 954
    sget-object v1, Lcom/meizu/media/camera/manual/ManualModeUI$25;->$SwitchMap$com$oneplus$camera$manual$ManualModeUI$ViewVisibilityState:[I

    iget-object v2, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_IndicatorTextViewVisibilityState:Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;

    invoke-virtual {v2}, Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 969
    :goto_1
    sget-object v1, Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;->IN_ANIMATING:Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;

    iput-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_IndicatorTextViewVisibilityState:Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;

    .line 970
    iget-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/meizu/media/camera/manual/ManualModeUI$19;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/manual/ManualModeUI$19;-><init>(Lcom/meizu/media/camera/manual/ManualModeUI;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 959
    :pswitch_1
    iget-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 960
    iget-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setScaleX(F)V

    .line 961
    iget-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setScaleY(F)V

    .line 962
    iget-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    goto :goto_1

    .line 966
    :pswitch_2
    iget-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto :goto_1

    .line 981
    :cond_1
    sget-object v1, Lcom/meizu/media/camera/manual/ManualModeUI$25;->$SwitchMap$com$oneplus$camera$manual$ManualModeUI$ViewVisibilityState:[I

    iget-object v2, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_IndicatorTextViewVisibilityState:Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;

    invoke-virtual {v2}, Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 995
    :goto_2
    sget-object v1, Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;->OUT_ANIMATING:Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;

    iput-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_IndicatorTextViewVisibilityState:Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;

    .line 996
    iget-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/meizu/media/camera/manual/ManualModeUI$20;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/manual/ManualModeUI$20;-><init>(Lcom/meizu/media/camera/manual/ManualModeUI;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0

    .line 986
    :pswitch_3
    iget-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setScaleX(F)V

    .line 987
    iget-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setScaleY(F)V

    .line 988
    iget-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTranslationY(F)V

    goto :goto_2

    .line 992
    :pswitch_4
    iget-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto :goto_2

    .line 954
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 981
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private setRawCaptureState(Lcom/meizu/media/camera/Camera;Z)V
    .locals 3
    .param p1, "camera"    # Lcom/meizu/media/camera/Camera;
    .param p2, "enabled"    # Z

    .prologue
    .line 1012
    if-nez p1, :cond_0

    .line 1014
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string v1, "setRawCaptureState() - camera is null"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    :goto_0
    return-void

    .line 1018
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRawCaptureState() - raw capture is set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    new-instance v0, Lcom/meizu/media/camera/manual/ManualModeUI$21;

    invoke-direct {v0, p0, p1, p2}, Lcom/meizu/media/camera/manual/ManualModeUI$21;-><init>(Lcom/meizu/media/camera/manual/ManualModeUI;Lcom/meizu/media/camera/Camera;Z)V

    invoke-static {p1, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private setUIEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 1032
    iget-object v3, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    .line 1034
    iget-object v3, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/media/camera/manual/KnobView;

    .line 1035
    .local v2, "knobView":Lcom/meizu/media/camera/manual/KnobView;
    invoke-virtual {v2, p1}, Lcom/meizu/media/camera/manual/KnobView;->setEnabled(Z)V

    goto :goto_0

    .line 1038
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "knobView":Lcom/meizu/media/camera/manual/KnobView;
    :cond_0
    iget-object v3, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    .line 1040
    iget-object v3, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/manual/ControlItem;

    .line 1041
    .local v1, "item":Lcom/meizu/media/camera/manual/ControlItem;
    invoke-virtual {v1, p1}, Lcom/meizu/media/camera/manual/ControlItem;->setEnabled(Z)V

    goto :goto_1

    .line 1043
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Lcom/meizu/media/camera/manual/ControlItem;
    :cond_1
    return-void
.end method

.method private showKnobViewUI(Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;)V
    .locals 3
    .param p1, "inAnimation"    # Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;
    .param p2, "outAnimation"    # Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_ControlType:Lcom/meizu/media/camera/manual/ControlType;

    if-nez v0, :cond_0

    .line 1055
    :goto_0
    return-void

    .line 1052
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string v1, "showKnobViewUI() - Control type: "

    iget-object v2, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_ControlType:Lcom/meizu/media/camera/manual/ControlType;

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1053
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_ControlType:Lcom/meizu/media/camera/manual/ControlType;

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meizu/media/camera/manual/ManualModeUI;->updateKnobViewVisibility(Lcom/meizu/media/camera/manual/ControlType;Lcom/meizu/media/camera/manual/ControlType;Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;)V

    .line 1054
    invoke-direct {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->updateKnobItemsSelfRotation()V

    goto :goto_0
.end method

.method private showProcessingDialog()V
    .locals 3

    .prologue
    .line 1061
    iget-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_ProcessingDialog:Lcom/meizu/media/camera/ui/ProcessingDialog;

    if-nez v1, :cond_0

    .line 1062
    const-class v1, Lcom/meizu/media/camera/ui/ProcessingDialog;

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/manual/ManualModeUI;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/ui/ProcessingDialog;

    iput-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_ProcessingDialog:Lcom/meizu/media/camera/ui/ProcessingDialog;

    .line 1063
    :cond_0
    iget-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_ProcessingDialog:Lcom/meizu/media/camera/ui/ProcessingDialog;

    if-eqz v1, :cond_1

    .line 1065
    iget-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 1066
    invoke-virtual {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v1

    const v2, 0x7f090052

    invoke-virtual {v1, v2}, Lcom/meizu/media/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1067
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_ProcessingDialog:Lcom/meizu/media/camera/ui/ProcessingDialog;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/meizu/media/camera/ui/ProcessingDialog;->showProcessingDialog(Ljava/lang/CharSequence;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_ProcessingDialogHandle:Lcom/oneplus/base/Handle;

    .line 1069
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private showUI()V
    .locals 6

    .prologue
    .line 1076
    invoke-virtual {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    .line 1077
    .local v0, "cameraActivity":Lcom/meizu/media/camera/CameraActivity;
    sget-object v4, Lcom/meizu/media/camera/CameraActivity;->PROP_CONTENT_VIEW:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v4}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1078
    .local v1, "contentView":Landroid/view/View;
    if-nez v1, :cond_0

    .line 1131
    :goto_0
    return-void

    .line 1082
    :cond_0
    iget-object v4, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_BaseView:Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_1

    .line 1084
    iget-object v4, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string v5, "showUI() - Show"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    iget-object v4, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_BaseView:Landroid/widget/RelativeLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1087
    invoke-direct {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->updateKnobViewBackgroundColor()V

    .line 1088
    invoke-direct {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->updateKnobViewPosition()V

    goto :goto_0

    .line 1092
    :cond_1
    iget-object v4, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string v5, "showUI() - Setup"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    const v4, 0x7f0b000d

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewStub;

    invoke-virtual {v4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_BaseView:Landroid/widget/RelativeLayout;

    .line 1096
    iget-object v4, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_BaseView:Landroid/widget/RelativeLayout;

    const v5, 0x7f0b0048

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_ControlsContainer:Landroid/widget/LinearLayout;

    .line 1097
    iget-object v4, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_BaseView:Landroid/widget/RelativeLayout;

    const v5, 0x7f0b004a

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_IndicatorContainer:Landroid/widget/RelativeLayout;

    .line 1098
    iget-object v4, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_IndicatorContainer:Landroid/widget/RelativeLayout;

    const v5, 0x7f0b004c

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    .line 1099
    iget-object v4, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_BaseView:Landroid/widget/RelativeLayout;

    const v5, 0x7f0b0049

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_MoreButton:Landroid/widget/ImageButton;

    .line 1101
    iget-object v4, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_MoreButton:Landroid/widget/ImageButton;

    new-instance v5, Lcom/meizu/media/camera/manual/ManualModeUI$22;

    invoke-direct {v5, p0}, Lcom/meizu/media/camera/manual/ManualModeUI$22;-><init>(Lcom/meizu/media/camera/manual/ManualModeUI;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1110
    invoke-direct {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->createControlViews()V

    .line 1113
    invoke-direct {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->createKnobViews()V

    .line 1116
    invoke-direct {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->updateKnobViewBackgroundColor()V

    .line 1119
    invoke-direct {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->updateKnobViewPosition()V

    .line 1122
    invoke-direct {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->updateKnobItemsSelfRotation()V

    .line 1126
    iget-object v4, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/media/camera/manual/ControlItem;

    .line 1127
    .local v2, "controlItem":Lcom/meizu/media/camera/manual/ControlItem;
    invoke-virtual {v2}, Lcom/meizu/media/camera/manual/ControlItem;->getControlContainer()Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/meizu/media/camera/manual/ManualModeUI;->addAutoRotateView(Landroid/view/View;)V

    goto :goto_1

    .line 1129
    .end local v2    # "controlItem":Lcom/meizu/media/camera/manual/ControlItem;
    :cond_2
    iget-object v4, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/meizu/media/camera/manual/ManualModeUI;->addAutoRotateView(Landroid/view/View;)V

    .line 1130
    iget-object v4, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_MoreButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v4}, Lcom/meizu/media/camera/manual/ManualModeUI;->addAutoRotateView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method private updateControlViewStyle(Lcom/meizu/media/camera/manual/ControlType;Lcom/meizu/media/camera/manual/ControlType;)V
    .locals 4
    .param p1, "oldControlType"    # Lcom/meizu/media/camera/manual/ControlType;
    .param p2, "newControlType"    # Lcom/meizu/media/camera/manual/ControlType;

    .prologue
    .line 1137
    iget-object v3, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    if-nez v3, :cond_1

    .line 1157
    :cond_0
    :goto_0
    return-void

    .line 1140
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    .line 1141
    .local v0, "cameraActivity":Lcom/meizu/media/camera/CameraActivity;
    const/4 v2, 0x0

    .line 1142
    .local v2, "oldItem":Lcom/meizu/media/camera/manual/ControlItem;
    const/4 v1, 0x0

    .line 1143
    .local v1, "newItem":Lcom/meizu/media/camera/manual/ControlItem;
    if-eqz p1, :cond_2

    .line 1144
    iget-object v3, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "oldItem":Lcom/meizu/media/camera/manual/ControlItem;
    check-cast v2, Lcom/meizu/media/camera/manual/ControlItem;

    .line 1145
    .restart local v2    # "oldItem":Lcom/meizu/media/camera/manual/ControlItem;
    :cond_2
    if-eqz p2, :cond_3

    .line 1146
    iget-object v3, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_ControlItems:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "newItem":Lcom/meizu/media/camera/manual/ControlItem;
    check-cast v1, Lcom/meizu/media/camera/manual/ControlItem;

    .line 1147
    .restart local v1    # "newItem":Lcom/meizu/media/camera/manual/ControlItem;
    :cond_3
    if-eqz v2, :cond_4

    .line 1149
    const v3, 0x7f0a0015

    invoke-virtual {v2, v0, v3}, Lcom/meizu/media/camera/manual/ControlItem;->setTextAppearance(Landroid/content/Context;I)V

    .line 1150
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/meizu/media/camera/manual/ControlItem;->setSelected(Z)V

    .line 1152
    :cond_4
    if-eqz v1, :cond_0

    .line 1154
    const v3, 0x7f0a0017

    invoke-virtual {v1, v0, v3}, Lcom/meizu/media/camera/manual/ControlItem;->setTextAppearance(Landroid/content/Context;I)V

    .line 1155
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/meizu/media/camera/manual/ControlItem;->setSelected(Z)V

    goto :goto_0
.end method

.method private updateIndicatorContainerViewVisibility()V
    .locals 5

    .prologue
    .line 1163
    iget-object v3, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_IndicatorContainer:Landroid/widget/RelativeLayout;

    if-nez v3, :cond_0

    .line 1176
    :goto_0
    return-void

    .line 1166
    :cond_0
    const/4 v0, 0x0

    .line 1167
    .local v0, "hasVisible":Z
    iget-object v3, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_KnobViewsVisibilityState:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;

    .line 1169
    .local v2, "state":Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;
    sget-object v3, Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;->VISIBLE:Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;

    if-ne v2, v3, :cond_1

    .line 1170
    const/4 v0, 0x1

    goto :goto_1

    .line 1172
    .end local v2    # "state":Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;
    :cond_2
    if-eqz v0, :cond_3

    .line 1173
    iget-object v3, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_IndicatorContainer:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 1175
    :cond_3
    iget-object v3, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_IndicatorContainer:Landroid/widget/RelativeLayout;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateKnobItemsSelfRotation()V
    .locals 3

    .prologue
    .line 1182
    iget-object v2, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 1184
    iget-object v2, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/manual/KnobView;

    .line 1185
    .local v1, "view":Lcom/meizu/media/camera/manual/KnobView;
    invoke-virtual {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/media/camera/manual/KnobView;->setKnobItemsRotation(Lcom/oneplus/base/Rotation;)V

    goto :goto_0

    .line 1187
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "view":Lcom/meizu/media/camera/manual/KnobView;
    :cond_0
    return-void
.end method

.method private updateKnobViewBackgroundColor()V
    .locals 7

    .prologue
    .line 1193
    iget-object v5, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    if-nez v5, :cond_1

    .line 1203
    :cond_0
    return-void

    .line 1196
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    .line 1197
    .local v0, "cameraActivity":Lcom/meizu/media/camera/CameraActivity;
    invoke-virtual {v0}, Lcom/meizu/media/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060027

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 1198
    .local v1, "color":I
    sget-object v5, Lcom/meizu/media/camera/CameraActivity;->PROP_CAMERA_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v5}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Size;

    .line 1199
    .local v4, "previewSize":Landroid/util/Size;
    invoke-static {v4}, Lcom/oneplus/util/AspectRatio;->get(Landroid/util/Size;)Lcom/oneplus/util/AspectRatio;

    move-result-object v5

    sget-object v6, Lcom/oneplus/util/AspectRatio;->RATIO_16x9:Lcom/oneplus/util/AspectRatio;

    if-ne v5, v6, :cond_2

    .line 1200
    invoke-virtual {v0}, Lcom/meizu/media/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060028

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 1201
    :cond_2
    iget-object v5, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/media/camera/manual/KnobView;

    .line 1202
    .local v3, "knobView":Lcom/meizu/media/camera/manual/KnobView;
    invoke-virtual {v3, v1}, Lcom/meizu/media/camera/manual/KnobView;->setKnobViewBackgroundColor(I)V

    goto :goto_0
.end method

.method private updateKnobViewPosition()V
    .locals 19

    .prologue
    .line 1210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_IndicatorContainer:Landroid/widget/RelativeLayout;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_Viewfinder:Lcom/meizu/media/camera/ui/Viewfinder;

    move-object/from16 v16, v0

    if-nez v16, :cond_1

    .line 1260
    :cond_0
    :goto_0
    return-void

    .line 1216
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v2

    .line 1217
    .local v2, "cameraActivity":Lcom/meizu/media/camera/CameraActivity;
    invoke-virtual {v2}, Lcom/meizu/media/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f07000b

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 1218
    .local v10, "newMarginBottom":I
    invoke-virtual {v2}, Lcom/meizu/media/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f07003e

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 1219
    .local v7, "manualControlContainerHeight":I
    add-int/2addr v10, v7

    .line 1220
    sget-object v16, Lcom/meizu/media/camera/CameraActivity;->PROP_CAMERA_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/Size;

    .line 1221
    .local v14, "previewSize":Landroid/util/Size;
    invoke-static {v14}, Lcom/oneplus/util/AspectRatio;->get(Landroid/util/Size;)Lcom/oneplus/util/AspectRatio;

    move-result-object v15

    .line 1222
    .local v15, "ratio":Lcom/oneplus/util/AspectRatio;
    sget-object v16, Lcom/meizu/media/camera/manual/ManualModeUI$25;->$SwitchMap$com$oneplus$util$AspectRatio:[I

    invoke-virtual {v15}, Lcom/oneplus/util/AspectRatio;->ordinal()I

    move-result v17

    aget v16, v16, v17

    packed-switch v16, :pswitch_data_0

    .line 1231
    :goto_1
    const/4 v3, 0x0

    .line 1232
    .local v3, "hasChange":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/meizu/media/camera/manual/KnobView;

    .line 1234
    .local v6, "knobView":Lcom/meizu/media/camera/manual/KnobView;
    invoke-virtual {v6}, Lcom/meizu/media/camera/manual/KnobView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1235
    .local v12, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v11, v12, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1236
    .local v11, "oldMarginBottom":I
    if-eq v11, v10, :cond_2

    .line 1238
    iput v10, v12, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1239
    const/4 v3, 0x1

    .line 1247
    .end local v6    # "knobView":Lcom/meizu/media/camera/manual/KnobView;
    .end local v11    # "oldMarginBottom":I
    .end local v12    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_IndicatorContainer:Landroid/widget/RelativeLayout;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1248
    .local v13, "params2":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2}, Lcom/meizu/media/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f070080

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 1249
    .local v5, "knobHeight":I
    invoke-virtual {v2}, Lcom/meizu/media/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f07008e

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 1250
    .local v8, "marginToKnobView":I
    add-int v16, v10, v5

    add-int v9, v16, v8

    .line 1251
    .local v9, "newIndicatorMarginBottom":I
    iget v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v0, v9, :cond_3

    .line 1253
    iput v9, v13, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1254
    const/4 v3, 0x1

    .line 1258
    :cond_3
    if-eqz v3, :cond_0

    .line 1259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_BaseView:Landroid/widget/RelativeLayout;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/RelativeLayout;->requestLayout()V

    goto/16 :goto_0

    .line 1226
    .end local v3    # "hasChange":Z
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "knobHeight":I
    .end local v8    # "marginToKnobView":I
    .end local v9    # "newIndicatorMarginBottom":I
    .end local v13    # "params2":Landroid/widget/RelativeLayout$LayoutParams;
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->getScreenSize()Lcom/oneplus/base/ScreenSize;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/oneplus/base/ScreenSize;->getHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_Viewfinder:Lcom/meizu/media/camera/ui/Viewfinder;

    move-object/from16 v16, v0

    sget-object v18, Lcom/meizu/media/camera/ui/Viewfinder;->PROP_PREVIEW_BOUNDS:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/meizu/media/camera/ui/Viewfinder;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/graphics/RectF;

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v16, v0

    sub-float v16, v17, v16

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->floor(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v10, v0

    goto/16 :goto_1

    .line 1222
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateKnobViewVisibility(Lcom/meizu/media/camera/manual/ControlType;Lcom/meizu/media/camera/manual/ControlType;Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;)V
    .locals 10
    .param p1, "oldControlType"    # Lcom/meizu/media/camera/manual/ControlType;
    .param p2, "newControlType"    # Lcom/meizu/media/camera/manual/ControlType;
    .param p3, "inAnimation"    # Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;
    .param p4, "outAnimation"    # Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;

    .prologue
    .line 1266
    iget-object v6, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    if-nez v6, :cond_1

    .line 1370
    :cond_0
    :goto_0
    return-void

    .line 1269
    :cond_1
    const/4 v3, 0x0

    .line 1270
    .local v3, "oldKnobView":Lcom/meizu/media/camera/manual/KnobView;
    const/4 v0, 0x0

    .line 1271
    .local v0, "newKnobView":Lcom/meizu/media/camera/manual/KnobView;
    if-eqz p1, :cond_2

    .line 1272
    iget-object v6, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "oldKnobView":Lcom/meizu/media/camera/manual/KnobView;
    check-cast v3, Lcom/meizu/media/camera/manual/KnobView;

    .line 1273
    .restart local v3    # "oldKnobView":Lcom/meizu/media/camera/manual/KnobView;
    :cond_2
    if-eqz p2, :cond_3

    .line 1274
    iget-object v6, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_KnobViews:Ljava/util/HashMap;

    invoke-virtual {v6, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "newKnobView":Lcom/meizu/media/camera/manual/KnobView;
    check-cast v0, Lcom/meizu/media/camera/manual/KnobView;

    .line 1275
    .restart local v0    # "newKnobView":Lcom/meizu/media/camera/manual/KnobView;
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/meizu/media/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070080

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    div-int/lit8 v5, v6, 0x2

    .line 1276
    .local v5, "yMove":I
    if-eqz v3, :cond_4

    .line 1278
    sget-object v6, Lcom/meizu/media/camera/manual/ManualModeUI$25;->$SwitchMap$com$oneplus$camera$manual$ManualModeUI$AnimationType:[I

    invoke-virtual {p4}, Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 1315
    invoke-virtual {v3}, Lcom/meizu/media/camera/manual/KnobView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1316
    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Lcom/meizu/media/camera/manual/KnobView;->setVisibility(I)V

    .line 1317
    sget-object v6, Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;->INVISIBLE:Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;

    invoke-direct {p0, p1, v6}, Lcom/meizu/media/camera/manual/ManualModeUI;->changeKnobViewVisibilityState(Lcom/meizu/media/camera/manual/ControlType;Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;)V

    .line 1321
    :cond_4
    :goto_1
    if-eqz v0, :cond_0

    .line 1323
    sget-object v6, Lcom/meizu/media/camera/manual/ManualModeUI$25;->$SwitchMap$com$oneplus$camera$manual$ManualModeUI$AnimationType:[I

    invoke-virtual {p3}, Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1

    .line 1364
    invoke-virtual {v0}, Lcom/meizu/media/camera/manual/KnobView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1365
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/meizu/media/camera/manual/KnobView;->setVisibility(I)V

    .line 1366
    sget-object v6, Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;->VISIBLE:Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;

    invoke-direct {p0, p2, v6}, Lcom/meizu/media/camera/manual/ManualModeUI;->changeKnobViewVisibilityState(Lcom/meizu/media/camera/manual/ControlType;Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;)V

    goto :goto_0

    .line 1281
    :pswitch_0
    iget-object v6, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_KnobViewsVisibilityState:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;

    .line 1282
    .local v4, "oldState":Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;
    sget-object v6, Lcom/meizu/media/camera/manual/ManualModeUI$25;->$SwitchMap$com$oneplus$camera$manual$ManualModeUI$ViewVisibilityState:[I

    invoke-virtual {v4}, Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_2

    .line 1297
    :goto_2
    :pswitch_1
    sget-object v6, Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;->INVISIBLE:Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;

    if-eq v4, v6, :cond_4

    .line 1299
    sget-object v6, Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;->OUT_ANIMATING:Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;

    invoke-direct {p0, p1, v6}, Lcom/meizu/media/camera/manual/ManualModeUI;->changeKnobViewVisibilityState(Lcom/meizu/media/camera/manual/ControlType;Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;)V

    .line 1300
    move-object v2, v3

    .line 1301
    .local v2, "oldFinalKnobView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    int-to-float v7, v5

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v8, 0x12c

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Lcom/meizu/media/camera/manual/ManualModeUI$23;

    invoke-direct {v7, p0, p1, v2}, Lcom/meizu/media/camera/manual/ManualModeUI$23;-><init>(Lcom/meizu/media/camera/manual/ManualModeUI;Lcom/meizu/media/camera/manual/ControlType;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 1287
    .end local v2    # "oldFinalKnobView":Landroid/view/View;
    :pswitch_2
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v3, v6}, Lcom/meizu/media/camera/manual/KnobView;->setScaleX(F)V

    .line 1288
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v3, v6}, Lcom/meizu/media/camera/manual/KnobView;->setScaleY(F)V

    .line 1289
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v3, v6}, Lcom/meizu/media/camera/manual/KnobView;->setAlpha(F)V

    .line 1290
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/meizu/media/camera/manual/KnobView;->setTranslationY(F)V

    goto :goto_2

    .line 1294
    :pswitch_3
    invoke-virtual {v3}, Lcom/meizu/media/camera/manual/KnobView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto :goto_2

    .line 1326
    .end local v4    # "oldState":Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;
    :pswitch_4
    iget-object v6, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_KnobViewsVisibilityState:Ljava/util/HashMap;

    invoke-virtual {v6, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;

    .line 1327
    .local v1, "newState":Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;
    sget-object v6, Lcom/meizu/media/camera/manual/ManualModeUI$25;->$SwitchMap$com$oneplus$camera$manual$ManualModeUI$ViewVisibilityState:[I

    invoke-virtual {v1}, Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_3

    .line 1343
    :goto_3
    :pswitch_5
    sget-object v6, Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;->VISIBLE:Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;

    if-eq v1, v6, :cond_0

    .line 1345
    sget-object v6, Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;->IN_ANIMATING:Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;

    invoke-direct {p0, p2, v6}, Lcom/meizu/media/camera/manual/ManualModeUI;->changeKnobViewVisibilityState(Lcom/meizu/media/camera/manual/ControlType;Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;)V

    .line 1346
    invoke-virtual {v0}, Lcom/meizu/media/camera/manual/KnobView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v8, 0x12c

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Lcom/meizu/media/camera/manual/ManualModeUI$24;

    invoke-direct {v7, p0, p2}, Lcom/meizu/media/camera/manual/ManualModeUI$24;-><init>(Lcom/meizu/media/camera/manual/ManualModeUI;Lcom/meizu/media/camera/manual/ControlType;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0

    .line 1332
    :pswitch_6
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/meizu/media/camera/manual/KnobView;->setVisibility(I)V

    .line 1333
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/meizu/media/camera/manual/KnobView;->setScaleX(F)V

    .line 1334
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/meizu/media/camera/manual/KnobView;->setScaleY(F)V

    .line 1335
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/meizu/media/camera/manual/KnobView;->setAlpha(F)V

    .line 1336
    int-to-float v6, v5

    invoke-virtual {v0, v6}, Lcom/meizu/media/camera/manual/KnobView;->setTranslationY(F)V

    goto :goto_3

    .line 1340
    :pswitch_7
    invoke-virtual {v0}, Lcom/meizu/media/camera/manual/KnobView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto :goto_3

    .line 1358
    .end local v1    # "newState":Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;
    :pswitch_8
    invoke-virtual {v0}, Lcom/meizu/media/camera/manual/KnobView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1359
    const/4 v6, 0x1

    invoke-virtual {p0, v0, v6}, Lcom/meizu/media/camera/manual/ManualModeUI;->setViewVisibility(Landroid/view/View;Z)V

    .line 1360
    sget-object v6, Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;->VISIBLE:Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;

    invoke-direct {p0, p2, v6}, Lcom/meizu/media/camera/manual/ManualModeUI;->changeKnobViewVisibilityState(Lcom/meizu/media/camera/manual/ControlType;Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;)V

    goto/16 :goto_0

    .line 1278
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 1323
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_8
    .end packed-switch

    .line 1282
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 1327
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public onControlItemClick(Lcom/meizu/media/camera/manual/ControlType;)V
    .locals 2
    .param p1, "controlType"    # Lcom/meizu/media/camera/manual/ControlType;

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/PhotoCaptureState;->READY:Lcom/meizu/media/camera/PhotoCaptureState;

    if-eq v0, v1, :cond_0

    .line 349
    :goto_0
    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_ControlType:Lcom/meizu/media/camera/manual/ControlType;

    if-ne v0, p1, :cond_1

    .line 346
    sget-object v0, Lcom/meizu/media/camera/manual/ControlType;->NONE:Lcom/meizu/media/camera/manual/ControlType;

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/manual/ManualModeUI;->setControlType(Lcom/meizu/media/camera/manual/ControlType;)V

    goto :goto_0

    .line 348
    :cond_1
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/manual/ManualModeUI;->setControlType(Lcom/meizu/media/camera/manual/ControlType;)V

    goto :goto_0
.end method

.method protected onEnter(I)Z
    .locals 7
    .param p1, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 357
    invoke-virtual {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    .line 358
    .local v0, "cameraActivity":Lcom/meizu/media/camera/CameraActivity;
    iget-object v3, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_LockCameraHandle:Lcom/oneplus/base/Handle;

    invoke-static {v3}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 359
    sget-object v3, Lcom/meizu/media/camera/Camera$LensFacing;->BACK:Lcom/meizu/media/camera/Camera$LensFacing;

    invoke-virtual {v0, v3}, Lcom/meizu/media/camera/CameraActivity;->lockCamera(Lcom/meizu/media/camera/Camera$LensFacing;)Lcom/oneplus/base/Handle;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_LockCameraHandle:Lcom/oneplus/base/Handle;

    .line 362
    :cond_0
    invoke-super {p0, p1}, Lcom/meizu/media/camera/ModeUI;->onEnter(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 364
    iget-object v2, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_LockCameraHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_LockCameraHandle:Lcom/oneplus/base/Handle;

    .line 419
    :goto_0
    return v1

    .line 369
    :cond_1
    sget-object v3, Lcom/meizu/media/camera/media/MediaType;->PHOTO:Lcom/meizu/media/camera/media/MediaType;

    invoke-virtual {v0, v3}, Lcom/meizu/media/camera/CameraActivity;->setMediaType(Lcom/meizu/media/camera/media/MediaType;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 371
    iget-object v2, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string v3, "onEnter() - Fail to change to photo mode"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v2, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_LockCameraHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_LockCameraHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 375
    :cond_2
    invoke-direct {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->isReadyToEnter()Z

    move-result v3

    if-nez v3, :cond_3

    .line 377
    iget-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string v3, "onEnter() - Components are initializing, re-enter later"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_EnterFlags:Ljava/lang/Integer;

    move v1, v2

    .line 379
    goto :goto_0

    .line 383
    :cond_3
    new-instance v3, Lcom/oneplus/base/HandleSet;

    new-array v4, v1, [Lcom/oneplus/base/Handle;

    invoke-direct {v3, v4}, Lcom/oneplus/base/HandleSet;-><init>([Lcom/oneplus/base/Handle;)V

    iput-object v3, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    .line 386
    iget-object v3, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    invoke-virtual {v0}, Lcom/meizu/media/camera/CameraActivity;->disableBurstPhotoCapture()Lcom/oneplus/base/Handle;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 389
    iget-object v3, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_SceneManager:Lcom/meizu/media/camera/scene/SceneManager;

    if-eqz v3, :cond_4

    .line 390
    iget-object v3, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    iget-object v4, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_SceneManager:Lcom/meizu/media/camera/scene/SceneManager;

    sget-object v5, Lcom/meizu/media/camera/scene/Scene;->NO_SCENE:Lcom/meizu/media/camera/scene/Scene;

    const/4 v6, 0x2

    invoke-interface {v4, v5, v6}, Lcom/meizu/media/camera/scene/SceneManager;->setDefaultScene(Lcom/meizu/media/camera/scene/Scene;I)Lcom/oneplus/base/Handle;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 393
    :cond_4
    invoke-direct {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->addCaptureButtonsHandles()V

    .line 396
    iget-object v3, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_FlashController:Lcom/meizu/media/camera/FlashController;

    if-eqz v3, :cond_5

    .line 397
    iget-object v3, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    iget-object v4, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_FlashController:Lcom/meizu/media/camera/FlashController;

    sget-object v5, Lcom/meizu/media/camera/FlashController$FlashDisabledReason;->NOT_SUPPORTED_IN_CAPTURE_MODE:Lcom/meizu/media/camera/FlashController$FlashDisabledReason;

    invoke-interface {v4, v5, v1}, Lcom/meizu/media/camera/FlashController;->disableFlash(Lcom/meizu/media/camera/FlashController$FlashDisabledReason;I)Lcom/oneplus/base/Handle;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 400
    :cond_5
    iget-object v3, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_FocusExposureIndicator:Lcom/meizu/media/camera/ui/FocusExposureIndicator;

    if-eqz v3, :cond_6

    .line 401
    iget-object v3, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_FocusExposureIndicator:Lcom/meizu/media/camera/ui/FocusExposureIndicator;

    sget-object v4, Lcom/meizu/media/camera/ui/FocusExposureIndicator;->PROP_CAN_FOCUS_EXPOSURE_SEPARATED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/meizu/media/camera/ui/FocusExposureIndicator;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 404
    :cond_6
    iget-object v3, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_TouchAutoExposureUI:Lcom/meizu/media/camera/ui/TouchAutoExposureUI;

    if-eqz v3, :cond_7

    .line 405
    iget-object v3, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    iget-object v4, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_TouchAutoExposureUI:Lcom/meizu/media/camera/ui/TouchAutoExposureUI;

    invoke-interface {v4}, Lcom/meizu/media/camera/ui/TouchAutoExposureUI;->disableTouchLockExposure()Lcom/oneplus/base/Handle;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 406
    :cond_7
    iget-object v3, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_TouchAutoFocusUI:Lcom/meizu/media/camera/ui/TouchAutoFocusUI;

    if-eqz v3, :cond_8

    .line 407
    iget-object v3, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    iget-object v4, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_TouchAutoFocusUI:Lcom/meizu/media/camera/ui/TouchAutoFocusUI;

    invoke-interface {v4}, Lcom/meizu/media/camera/ui/TouchAutoFocusUI;->disableTouchLockFocus()Lcom/oneplus/base/Handle;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 410
    :cond_8
    invoke-virtual {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->getCamera()Lcom/meizu/media/camera/Camera;

    move-result-object v3

    invoke-direct {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->isRawCaptureEnabled()Z

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/meizu/media/camera/manual/ManualModeUI;->setRawCaptureState(Lcom/meizu/media/camera/Camera;Z)V

    .line 413
    invoke-direct {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->showUI()V

    .line 416
    iget-object v3, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_OptionsPanel:Lcom/meizu/media/camera/ui/OptionsPanel;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_CloseOptionsPanelHandle:Lcom/oneplus/base/Handle;

    invoke-static {v3}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 417
    iget-object v3, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_OptionsPanel:Lcom/meizu/media/camera/ui/OptionsPanel;

    sget-object v4, Lcom/meizu/media/camera/ui/OptionsPanel$OptionsPanelCloseReason;->MANUALMODE:Lcom/meizu/media/camera/ui/OptionsPanel$OptionsPanelCloseReason;

    invoke-interface {v3, v4, v1}, Lcom/meizu/media/camera/ui/OptionsPanel;->closeOptionsPanel(Lcom/meizu/media/camera/ui/OptionsPanel$OptionsPanelCloseReason;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_CloseOptionsPanelHandle:Lcom/oneplus/base/Handle;

    :cond_9
    move v1, v2

    .line 419
    goto/16 :goto_0
.end method

.method protected onExit(I)V
    .locals 5
    .param p1, "flags"    # I

    .prologue
    const/4 v4, 0x0

    .line 428
    sget-object v1, Lcom/meizu/media/camera/manual/ControlType;->NONE:Lcom/meizu/media/camera/manual/ControlType;

    invoke-direct {p0, v1, v4}, Lcom/meizu/media/camera/manual/ManualModeUI;->setControlType(Lcom/meizu/media/camera/manual/ControlType;Z)V

    .line 431
    invoke-direct {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->hideUI()V

    .line 434
    iget-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    check-cast v1, Lcom/oneplus/base/HandleSet;

    iput-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    .line 436
    iget-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_OpenOptionsPanelHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 441
    iget-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_ControlsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 442
    iget-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_ControlsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 443
    .local v0, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 444
    iget-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_ControlsContainer:Landroid/widget/LinearLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 447
    .end local v0    # "vg":Landroid/view/ViewGroup;
    :cond_0
    iget-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_OpenOptionsPanelHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_OpenOptionsPanelHandle:Lcom/oneplus/base/Handle;

    .line 448
    iget-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_CloseOptionsPanelHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_CloseOptionsPanelHandle:Lcom/oneplus/base/Handle;

    .line 450
    iget-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_CaptureButtonsHandles:Lcom/oneplus/base/HandleSet;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    check-cast v1, Lcom/oneplus/base/HandleSet;

    iput-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_CaptureButtonsHandles:Lcom/oneplus/base/HandleSet;

    .line 451
    iget-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_LockCameraHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_LockCameraHandle:Lcom/oneplus/base/Handle;

    .line 453
    invoke-direct {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->hideProcessingDialog()V

    .line 456
    iget-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_FocusExposureIndicator:Lcom/meizu/media/camera/ui/FocusExposureIndicator;

    if-eqz v1, :cond_1

    .line 457
    iget-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_FocusExposureIndicator:Lcom/meizu/media/camera/ui/FocusExposureIndicator;

    sget-object v2, Lcom/meizu/media/camera/ui/FocusExposureIndicator;->PROP_CAN_FOCUS_EXPOSURE_SEPARATED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/meizu/media/camera/ui/FocusExposureIndicator;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 460
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->getCamera()Lcom/meizu/media/camera/Camera;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/meizu/media/camera/manual/ManualModeUI;->setRawCaptureState(Lcom/meizu/media/camera/Camera;Z)V

    .line 462
    invoke-super {p0, p1}, Lcom/meizu/media/camera/ModeUI;->onExit(I)V

    .line 463
    return-void
.end method

.method protected onInitialize()V
    .locals 4

    .prologue
    .line 497
    invoke-super {p0}, Lcom/meizu/media/camera/ModeUI;->onInitialize()V

    .line 498
    invoke-virtual {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    .line 501
    .local v0, "cameraActivity":Lcom/meizu/media/camera/CameraActivity;
    const-class v1, Lcom/meizu/media/camera/scene/SceneManager;

    new-instance v2, Lcom/meizu/media/camera/manual/ManualModeUI$2;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/manual/ManualModeUI$2;-><init>(Lcom/meizu/media/camera/manual/ManualModeUI;)V

    invoke-virtual {p0, v1, v2}, Lcom/meizu/media/camera/manual/ManualModeUI;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 510
    const-class v1, Lcom/meizu/media/camera/ui/CaptureButtons;

    new-instance v2, Lcom/meizu/media/camera/manual/ManualModeUI$3;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/manual/ManualModeUI$3;-><init>(Lcom/meizu/media/camera/manual/ManualModeUI;)V

    invoke-virtual {p0, v1, v2}, Lcom/meizu/media/camera/manual/ManualModeUI;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 519
    const-class v1, Lcom/meizu/media/camera/FlashController;

    new-instance v2, Lcom/meizu/media/camera/manual/ManualModeUI$4;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/manual/ManualModeUI$4;-><init>(Lcom/meizu/media/camera/manual/ManualModeUI;)V

    invoke-virtual {p0, v1, v2}, Lcom/meizu/media/camera/manual/ManualModeUI;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 528
    const-class v1, Lcom/meizu/media/camera/ui/FocusExposureIndicator;

    new-instance v2, Lcom/meizu/media/camera/manual/ManualModeUI$5;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/manual/ManualModeUI$5;-><init>(Lcom/meizu/media/camera/manual/ManualModeUI;)V

    invoke-virtual {p0, v1, v2}, Lcom/meizu/media/camera/manual/ManualModeUI;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 537
    const-class v1, Lcom/meizu/media/camera/ui/TouchAutoExposureUI;

    new-instance v2, Lcom/meizu/media/camera/manual/ManualModeUI$6;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/manual/ManualModeUI$6;-><init>(Lcom/meizu/media/camera/manual/ManualModeUI;)V

    invoke-virtual {p0, v1, v2}, Lcom/meizu/media/camera/manual/ManualModeUI;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 546
    const-class v1, Lcom/meizu/media/camera/ui/TouchAutoFocusUI;

    new-instance v2, Lcom/meizu/media/camera/manual/ManualModeUI$7;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/manual/ManualModeUI$7;-><init>(Lcom/meizu/media/camera/manual/ManualModeUI;)V

    invoke-virtual {p0, v1, v2}, Lcom/meizu/media/camera/manual/ManualModeUI;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 555
    const-class v1, Lcom/meizu/media/camera/ui/Viewfinder;

    new-instance v2, Lcom/meizu/media/camera/manual/ManualModeUI$8;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/manual/ManualModeUI$8;-><init>(Lcom/meizu/media/camera/manual/ManualModeUI;)V

    invoke-virtual {p0, v1, v2}, Lcom/meizu/media/camera/manual/ManualModeUI;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 576
    const-class v1, Lcom/meizu/media/camera/ui/OptionsPanel;

    new-instance v2, Lcom/meizu/media/camera/manual/ManualModeUI$9;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/manual/ManualModeUI$9;-><init>(Lcom/meizu/media/camera/manual/ManualModeUI;)V

    invoke-virtual {p0, v1, v2}, Lcom/meizu/media/camera/manual/ManualModeUI;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 601
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/meizu/media/camera/manual/ManualModeUI$10;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/manual/ManualModeUI$10;-><init>(Lcom/meizu/media/camera/manual/ManualModeUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 611
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_CONTENT_VIEW:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/meizu/media/camera/manual/ManualModeUI$11;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/manual/ManualModeUI$11;-><init>(Lcom/meizu/media/camera/manual/ManualModeUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 622
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/meizu/media/camera/manual/ManualModeUI$12;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/manual/ManualModeUI$12;-><init>(Lcom/meizu/media/camera/manual/ManualModeUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 644
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_SELF_TIMER_STARTED:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/meizu/media/camera/manual/ManualModeUI$13;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/manual/ManualModeUI$13;-><init>(Lcom/meizu/media/camera/manual/ManualModeUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 667
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_READY_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/meizu/media/camera/manual/ManualModeUI$14;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/manual/ManualModeUI$14;-><init>(Lcom/meizu/media/camera/manual/ManualModeUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 683
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_CAPTURING_RAW_PHOTO:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/meizu/media/camera/manual/ManualModeUI$15;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/manual/ManualModeUI$15;-><init>(Lcom/meizu/media/camera/manual/ManualModeUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 696
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/meizu/media/camera/manual/ManualModeUI$16;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/manual/ManualModeUI$16;-><init>(Lcom/meizu/media/camera/manual/ManualModeUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 721
    sget-object v1, Lcom/meizu/media/camera/OPCameraActivity;->EVENT_PREPARE_ADVANCED_SETTING_ACTIVITY_EXTRA_BUNDLE:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/meizu/media/camera/manual/ManualModeUI$17;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/manual/ManualModeUI$17;-><init>(Lcom/meizu/media/camera/manual/ManualModeUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 742
    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->EVENT_SHUTTER:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/meizu/media/camera/manual/ManualModeUI$18;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/manual/ManualModeUI$18;-><init>(Lcom/meizu/media/camera/manual/ManualModeUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 776
    new-instance v1, Lcom/oneplus/base/Settings;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Lcom/oneplus/base/Settings;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_Settings:Lcom/oneplus/base/Settings;

    .line 777
    return-void
.end method

.method protected onMoreButtonClicked()V
    .locals 4

    .prologue
    .line 469
    invoke-virtual {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->isCaptureUIEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 490
    :goto_0
    return-void

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_ControlsContainer:Landroid/widget/LinearLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 474
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_ControlsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/manual/ManualModeUI;->INTERPOLATOR_DECELERATE:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/meizu/media/camera/manual/ManualModeUI$1;

    invoke-direct {v1, p0}, Lcom/meizu/media/camera/manual/ManualModeUI$1;-><init>(Lcom/meizu/media/camera/manual/ManualModeUI;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method protected onRelease()V
    .locals 1

    .prologue
    .line 805
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_Settings:Lcom/oneplus/base/Settings;

    if-eqz v0, :cond_0

    .line 806
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_Settings:Lcom/oneplus/base/Settings;

    invoke-virtual {v0}, Lcom/oneplus/base/Settings;->release()V

    .line 809
    :cond_0
    invoke-super {p0}, Lcom/meizu/media/camera/ModeUI;->onRelease()V

    .line 810
    return-void
.end method

.method protected onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V
    .locals 1
    .param p1, "prevRotation"    # Lcom/oneplus/base/Rotation;
    .param p2, "newRotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    .line 817
    invoke-super {p0, p1, p2}, Lcom/meizu/media/camera/ModeUI;->onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 820
    invoke-virtual {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->isEntered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 821
    invoke-direct {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->updateKnobItemsSelfRotation()V

    .line 822
    :cond_0
    return-void
.end method

.method public onRotationStateChanged(Lcom/meizu/media/camera/manual/KnobView$RotationState;)V
    .locals 2
    .param p1, "state"    # Lcom/meizu/media/camera/manual/KnobView$RotationState;

    .prologue
    .line 830
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->TAG:Ljava/lang/String;

    const-string v1, "onRotationStateChanged() - State: "

    invoke-static {v0, v1, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 832
    sget-object v0, Lcom/meizu/media/camera/manual/ManualModeUI$25;->$SwitchMap$com$oneplus$camera$manual$KnobView$RotationState:[I

    invoke-virtual {p1}, Lcom/meizu/media/camera/manual/KnobView$RotationState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 841
    :goto_0
    return-void

    .line 835
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/manual/ManualModeUI;->setFloatingTextViewVisibility(Z)V

    goto :goto_0

    .line 838
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/manual/ManualModeUI;->setFloatingTextViewVisibility(Z)V

    goto :goto_0

    .line 832
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSelectedKnobItemChanged(Lcom/meizu/media/camera/manual/KnobItemInfo;Lcom/meizu/media/camera/manual/KnobItemInfo;)V
    .locals 8
    .param p1, "oldItem"    # Lcom/meizu/media/camera/manual/KnobItemInfo;
    .param p2, "newItem"    # Lcom/meizu/media/camera/manual/KnobItemInfo;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 849
    sget-object v0, Lcom/meizu/media/camera/manual/ManualModeUI$25;->$SwitchMap$com$oneplus$camera$manual$ControlType:[I

    iget-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeUI;->m_ControlType:Lcom/meizu/media/camera/manual/ControlType;

    invoke-virtual {v1}, Lcom/meizu/media/camera/manual/ControlType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 867
    :goto_0
    iget-object v0, p2, Lcom/meizu/media/camera/manual/KnobItemInfo;->text:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/manual/ManualModeUI;->setFloatingText(Ljava/lang/String;)V

    .line 870
    iget-object v0, p2, Lcom/meizu/media/camera/manual/KnobItemInfo;->text:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/manual/ManualModeUI;->setControlItemText(Ljava/lang/String;)V

    .line 871
    return-void

    .line 852
    :pswitch_0
    invoke-virtual {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->getController()Lcom/meizu/media/camera/ModeController;

    move-result-object v0

    const/16 v1, 0x7559

    iget-wide v6, p2, Lcom/meizu/media/camera/manual/KnobItemInfo;->value:D

    double-to-int v2, v6

    invoke-static/range {v0 .. v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;Z)Z

    goto :goto_0

    .line 856
    :pswitch_1
    invoke-virtual {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->getController()Lcom/meizu/media/camera/ModeController;

    move-result-object v0

    const/16 v1, 0x755a

    iget-wide v6, p2, Lcom/meizu/media/camera/manual/KnobItemInfo;->value:D

    double-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move v2, v3

    invoke-static/range {v0 .. v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;Z)Z

    goto :goto_0

    .line 859
    :pswitch_2
    invoke-virtual {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->getController()Lcom/meizu/media/camera/ModeController;

    move-result-object v0

    const/16 v1, 0x755b

    iget-wide v6, p2, Lcom/meizu/media/camera/manual/KnobItemInfo;->value:D

    double-to-float v2, v6

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    move v2, v3

    invoke-static/range {v0 .. v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;Z)Z

    goto :goto_0

    .line 862
    :pswitch_3
    invoke-virtual {p0}, Lcom/meizu/media/camera/manual/ManualModeUI;->getController()Lcom/meizu/media/camera/ModeController;

    move-result-object v0

    const/16 v1, 0x755c

    iget-wide v6, p2, Lcom/meizu/media/camera/manual/KnobItemInfo;->value:D

    double-to-int v2, v6

    invoke-static/range {v0 .. v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;Z)Z

    goto :goto_0

    .line 849
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
