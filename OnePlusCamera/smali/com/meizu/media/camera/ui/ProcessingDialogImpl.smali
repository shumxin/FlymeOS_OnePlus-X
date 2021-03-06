.class final Lcom/meizu/media/camera/ui/ProcessingDialogImpl;
.super Lcom/meizu/media/camera/UIComponent;
.source "ProcessingDialogImpl.java"

# interfaces
.implements Lcom/meizu/media/camera/ui/ProcessingDialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/media/camera/ui/ProcessingDialogImpl$DialogHandle;
    }
.end annotation


# instance fields
.field private m_BaseView:Landroid/view/View;

.field private m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

.field private m_Container:Lcom/meizu/media/camera/widget/RotateRelativeLayout;

.field private final m_ContainerRotationCallback:Lcom/meizu/media/camera/UIComponent$ViewRotationCallback;

.field private final m_DialogHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/media/camera/ui/ProcessingDialogImpl$DialogHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_IconDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private m_MessageTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/CameraActivity;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/meizu/media/camera/CameraActivity;

    .prologue
    .line 65
    const-string v0, "Processing dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/meizu/media/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/meizu/media/camera/CameraActivity;Z)V

    .line 29
    new-instance v0, Lcom/meizu/media/camera/ui/ProcessingDialogImpl$1;

    invoke-direct {v0, p0}, Lcom/meizu/media/camera/ui/ProcessingDialogImpl$1;-><init>(Lcom/meizu/media/camera/ui/ProcessingDialogImpl;)V

    iput-object v0, p0, Lcom/meizu/media/camera/ui/ProcessingDialogImpl;->m_ContainerRotationCallback:Lcom/meizu/media/camera/UIComponent$ViewRotationCallback;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/media/camera/ui/ProcessingDialogImpl;->m_DialogHandles:Ljava/util/List;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/media/camera/ui/ProcessingDialogImpl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/ProcessingDialogImpl;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/meizu/media/camera/ui/ProcessingDialogImpl;->m_DialogHandles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/media/camera/ui/ProcessingDialogImpl;)Lcom/meizu/media/camera/widget/RotateRelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/ProcessingDialogImpl;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/meizu/media/camera/ui/ProcessingDialogImpl;->m_Container:Lcom/meizu/media/camera/widget/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/media/camera/ui/ProcessingDialogImpl;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/ProcessingDialogImpl;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/meizu/media/camera/ui/ProcessingDialogImpl;->setViewVisibility(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/media/camera/ui/ProcessingDialogImpl;Lcom/meizu/media/camera/ui/ProcessingDialogImpl$DialogHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/ui/ProcessingDialogImpl;
    .param p1, "x1"    # Lcom/meizu/media/camera/ui/ProcessingDialogImpl$DialogHandle;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/ui/ProcessingDialogImpl;->closeProcessingDialog(Lcom/meizu/media/camera/ui/ProcessingDialogImpl$DialogHandle;)V

    return-void
.end method

.method private closeProcessingDialog(Lcom/meizu/media/camera/ui/ProcessingDialogImpl$DialogHandle;)V
    .locals 3
    .param p1, "handle"    # Lcom/meizu/media/camera/ui/ProcessingDialogImpl$DialogHandle;

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/ProcessingDialogImpl;->verifyAccess()V

    .line 74
    iget-object v1, p0, Lcom/meizu/media/camera/ui/ProcessingDialogImpl;->m_DialogHandles:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/oneplus/util/ListUtils;->isLastObject(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v0

    .line 75
    .local v0, "isLast":Z
    iget-object v1, p0, Lcom/meizu/media/camera/ui/ProcessingDialogImpl;->m_DialogHandles:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    if-eqz v0, :cond_0

    .line 81
    iget-object v1, p0, Lcom/meizu/media/camera/ui/ProcessingDialogImpl;->m_DialogHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    iget-object v1, p0, Lcom/meizu/media/camera/ui/ProcessingDialogImpl;->m_BaseView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/meizu/media/camera/ui/ProcessingDialogImpl;->setViewVisibility(Landroid/view/View;Z)V

    .line 84
    iget-object v1, p0, Lcom/meizu/media/camera/ui/ProcessingDialogImpl;->m_IconDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 85
    iget-object v1, p0, Lcom/meizu/media/camera/ui/ProcessingDialogImpl;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/media/camera/ui/ProcessingDialogImpl;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 88
    :cond_2
    iget-object v1, p0, Lcom/meizu/media/camera/ui/ProcessingDialogImpl;->m_DialogHandles:Ljava/util/List;

    iget-object v2, p0, Lcom/meizu/media/camera/ui/ProcessingDialogImpl;->m_DialogHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/ui/ProcessingDialogImpl$DialogHandle;

    invoke-direct {p0, v1}, Lcom/meizu/media/camera/ui/ProcessingDialogImpl;->showProcessingDialog(Lcom/meizu/media/camera/ui/ProcessingDialogImpl$DialogHandle;)V

    goto :goto_0
.end method

.method private showProcessingDialog(Lcom/meizu/media/camera/ui/ProcessingDialogImpl$DialogHandle;)V
    .locals 6
    .param p1, "handle"    # Lcom/meizu/media/camera/ui/ProcessingDialogImpl$DialogHandle;

    .prologue
    const/4 v4, -0x1

    .line 128
    iget-object v2, p0, Lcom/meizu/media/camera/ui/ProcessingDialogImpl;->m_Container:Lcom/meizu/media/camera/widget/RotateRelativeLayout;

    if-nez v2, :cond_2

    .line 130
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/ProcessingDialogImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v0

    .line 131
    .local v0, "activity":Lcom/meizu/media/camera/CameraActivity;
    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_CONTENT_VIEW:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 132
    .local v1, "contentView":Landroid/view/View;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    .line 134
    iget-object v2, p0, Lcom/meizu/media/camera/ui/ProcessingDialogImpl;->TAG:Ljava/lang/String;

    const-string v3, "showProcessingDialog() - Content view is not a ViewGroup"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .end local v0    # "activity":Lcom/meizu/media/camera/CameraActivity;
    .end local v1    # "contentView":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 137
    .restart local v0    # "activity":Lcom/meizu/media/camera/CameraActivity;
    .restart local v1    # "contentView":Landroid/view/View;
    :cond_1
    const v2, 0x7f03001e

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/media/camera/ui/ProcessingDialogImpl;->m_BaseView:Landroid/view/View;

    .line 138
    iget-object v2, p0, Lcom/meizu/media/camera/ui/ProcessingDialogImpl;->m_BaseView:Landroid/view/View;

    const v3, 0x7f0b0076

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/media/camera/widget/RotateRelativeLayout;

    iput-object v2, p0, Lcom/meizu/media/camera/ui/ProcessingDialogImpl;->m_Container:Lcom/meizu/media/camera/widget/RotateRelativeLayout;

    .line 139
    iget-object v2, p0, Lcom/meizu/media/camera/ui/ProcessingDialogImpl;->m_Container:Lcom/meizu/media/camera/widget/RotateRelativeLayout;

    new-instance v3, Lcom/meizu/media/camera/ui/ProcessingDialogImpl$2;

    invoke-direct {v3, p0}, Lcom/meizu/media/camera/ui/ProcessingDialogImpl$2;-><init>(Lcom/meizu/media/camera/ui/ProcessingDialogImpl;)V

    invoke-virtual {v2, v3}, Lcom/meizu/media/camera/widget/RotateRelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 147
    iget-object v2, p0, Lcom/meizu/media/camera/ui/ProcessingDialogImpl;->m_Container:Lcom/meizu/media/camera/widget/RotateRelativeLayout;

    const v3, 0x7f0b0078

    invoke-virtual {v2, v3}, Lcom/meizu/media/camera/widget/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/meizu/media/camera/ui/ProcessingDialogImpl;->m_MessageTextView:Landroid/widget/TextView;

    .line 148
    iget-object v2, p0, Lcom/meizu/media/camera/ui/ProcessingDialogImpl;->m_Container:Lcom/meizu/media/camera/widget/RotateRelativeLayout;

    const v3, 0x7f0b0077

    invoke-virtual {v2, v3}, Lcom/meizu/media/camera/widget/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v2, p0, Lcom/meizu/media/camera/ui/ProcessingDialogImpl;->m_IconDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 149
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "contentView":Landroid/view/View;
    iget-object v2, p0, Lcom/meizu/media/camera/ui/ProcessingDialogImpl;->m_BaseView:Landroid/view/View;

    invoke-virtual {v1, v2, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 153
    .end local v0    # "activity":Lcom/meizu/media/camera/CameraActivity;
    :cond_2
    iget-object v3, p0, Lcom/meizu/media/camera/ui/ProcessingDialogImpl;->m_MessageTextView:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/meizu/media/camera/ui/ProcessingDialogImpl$DialogHandle;->message:Ljava/lang/CharSequence;

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/ProcessingDialogImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v2

    const v4, 0x7f090027

    invoke-virtual {v2, v4}, Lcom/meizu/media/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v2, p0, Lcom/meizu/media/camera/ui/ProcessingDialogImpl;->m_Container:Lcom/meizu/media/camera/widget/RotateRelativeLayout;

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v2, v4, v5}, Lcom/meizu/media/camera/ui/ProcessingDialogImpl;->rotateLayout(Lcom/meizu/media/camera/widget/RotateRelativeLayout;J)V

    .line 159
    iget-object v2, p0, Lcom/meizu/media/camera/ui/ProcessingDialogImpl;->m_BaseView:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/meizu/media/camera/ui/ProcessingDialogImpl;->setViewVisibility(Landroid/view/View;Z)V

    .line 160
    iget-object v2, p0, Lcom/meizu/media/camera/ui/ProcessingDialogImpl;->m_IconDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 163
    iget-object v2, p0, Lcom/meizu/media/camera/ui/ProcessingDialogImpl;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/ProcessingDialogImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v2

    const-string v3, "ProcessingDialog"

    invoke-virtual {v2, v3}, Lcom/meizu/media/camera/CameraActivity;->disableCaptureUI(Ljava/lang/String;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/media/camera/ui/ProcessingDialogImpl;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    goto/16 :goto_0

    .line 153
    :cond_3
    iget-object v2, p1, Lcom/meizu/media/camera/ui/ProcessingDialogImpl$DialogHandle;->message:Ljava/lang/CharSequence;

    goto :goto_1
.end method


# virtual methods
.method protected onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V
    .locals 4
    .param p1, "prevRotation"    # Lcom/oneplus/base/Rotation;
    .param p2, "newRotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    .line 97
    invoke-super {p0, p1, p2}, Lcom/meizu/media/camera/UIComponent;->onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 98
    iget-object v0, p0, Lcom/meizu/media/camera/ui/ProcessingDialogImpl;->m_BaseView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/media/camera/ui/ProcessingDialogImpl;->m_BaseView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/meizu/media/camera/ui/ProcessingDialogImpl;->m_Container:Lcom/meizu/media/camera/widget/RotateRelativeLayout;

    iget-object v1, p0, Lcom/meizu/media/camera/ui/ProcessingDialogImpl;->m_ContainerRotationCallback:Lcom/meizu/media/camera/UIComponent$ViewRotationCallback;

    invoke-virtual {p0, v0, v1}, Lcom/meizu/media/camera/ui/ProcessingDialogImpl;->rotateLayout(Lcom/meizu/media/camera/widget/RotateRelativeLayout;Lcom/meizu/media/camera/UIComponent$ViewRotationCallback;)V

    .line 102
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/ui/ProcessingDialogImpl;->m_Container:Lcom/meizu/media/camera/widget/RotateRelativeLayout;

    const-wide/16 v2, 0x0

    iget-object v1, p0, Lcom/meizu/media/camera/ui/ProcessingDialogImpl;->m_ContainerRotationCallback:Lcom/meizu/media/camera/UIComponent$ViewRotationCallback;

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/meizu/media/camera/ui/ProcessingDialogImpl;->rotateLayout(Lcom/meizu/media/camera/widget/RotateRelativeLayout;JLcom/meizu/media/camera/UIComponent$ViewRotationCallback;)V

    goto :goto_0
.end method

.method public showProcessingDialog(Ljava/lang/CharSequence;I)Lcom/oneplus/base/Handle;
    .locals 2
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "flags"    # I

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/meizu/media/camera/ui/ProcessingDialogImpl;->verifyAccess()V

    .line 111
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/meizu/media/camera/ui/ProcessingDialogImpl;->isRunningOrInitializing(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    const/4 v0, 0x0

    .line 120
    :goto_0
    return-object v0

    .line 115
    :cond_0
    new-instance v0, Lcom/meizu/media/camera/ui/ProcessingDialogImpl$DialogHandle;

    invoke-direct {v0, p0, p1}, Lcom/meizu/media/camera/ui/ProcessingDialogImpl$DialogHandle;-><init>(Lcom/meizu/media/camera/ui/ProcessingDialogImpl;Ljava/lang/CharSequence;)V

    .line 116
    .local v0, "handle":Lcom/meizu/media/camera/ui/ProcessingDialogImpl$DialogHandle;
    iget-object v1, p0, Lcom/meizu/media/camera/ui/ProcessingDialogImpl;->m_DialogHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-direct {p0, v0}, Lcom/meizu/media/camera/ui/ProcessingDialogImpl;->showProcessingDialog(Lcom/meizu/media/camera/ui/ProcessingDialogImpl$DialogHandle;)V

    goto :goto_0
.end method
