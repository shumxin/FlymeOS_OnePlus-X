.class public Lcom/android/server/wm/WindowAnimator;
.super Ljava/lang/Object;
.source "WindowAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    }
.end annotation


# static fields
.field static final KEYGUARD_ANIMATING_IN:I = 0x1

.field static final KEYGUARD_ANIMATING_OUT:I = 0x3

.field private static final KEYGUARD_ANIM_TIMEOUT_MS:J = 0x3e8L

.field static final KEYGUARD_NOT_SHOWN:I = 0x0

.field static final KEYGUARD_SHOWN:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WindowAnimator"


# instance fields
.field mAboveUniverseLayer:I

.field private mAnimTransactionSequence:I

.field mAnimating:Z

.field final mAnimationRunnable:Ljava/lang/Runnable;

.field mBulkUpdateParams:I

.field final mContext:Landroid/content/Context;

.field mCurrentTime:J

.field mDisplayContentsAnimators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;",
            ">;"
        }
    .end annotation
.end field

.field mForceHiding:I

.field mInitialized:Z

.field mKeyguardGoingAway:Z

.field mKeyguardGoingAwayDisableWindowAnimations:Z

.field mKeyguardGoingAwayToNotificationShade:Z

.field mLastWindowFreezeSource:Ljava/lang/Object;

.field final mPolicy:Landroid/view/WindowManagerPolicy;

.field mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

.field mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 81
    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    .line 82
    iput v2, p0, Lcom/android/server/wm/WindowAnimator;->mAboveUniverseLayer:I

    .line 84
    iput v2, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 87
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    .line 90
    iput-boolean v2, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    .line 104
    iput v2, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    .line 117
    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 118
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mContext:Landroid/content/Context;

    .line 119
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 121
    new-instance v0, Lcom/android/server/wm/WindowAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowAnimator$1;-><init>(Lcom/android/server/wm/WindowAnimator;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationRunnable:Ljava/lang/Runnable;

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/WindowAnimator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/WindowAnimator;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/server/wm/WindowAnimator;->animateLocked()V

    return-void
.end method

.method private animateLocked()V
    .locals 24

    .prologue
    .line 664
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    move/from16 v19, v0

    if-nez v19, :cond_1

    .line 788
    :cond_0
    :goto_0
    return-void

    .line 668
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    .line 669
    const/16 v19, 0x8

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 670
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v17, v0

    .line 671
    .local v17, "wasAnimating":Z
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 672
    sget-boolean v19, Lcom/android/server/wm/WindowManagerService;->DEBUG_WINDOW_TRACE:Z

    if-eqz v19, :cond_2

    .line 673
    const-string v19, "WindowAnimator"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "!!! animate: entry time="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :cond_2
    sget-boolean v19, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-eqz v19, :cond_3

    const-string v19, "WindowAnimator"

    const-string v20, ">>> OPEN TRANSACTION animateLocked"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :cond_3
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 679
    invoke-static {}, Landroid/view/SurfaceControl;->setAnimationTransaction()V

    .line 681
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    move-result v14

    .line 682
    .local v14, "numDisplays":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v14, :cond_a

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 684
    .local v7, "displayId":I
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/wm/WindowAnimator;->updateAppWindowsLocked(I)V

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 687
    .local v5, "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v0, v5, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    move-object/from16 v16, v0

    .line 689
    .local v16, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v16, :cond_4

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 690
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ScreenRotationAnimation;->stepAnimationLocked(J)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 691
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 710
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/wm/WindowAnimator;->updateWindowsLocked(I)V

    .line 711
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/wm/WindowAnimator;->updateWallpaperLocked(I)V

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v18

    .line 714
    .local v18, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    .line 715
    .local v4, "N":I
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_3
    if-ge v13, v4, :cond_9

    .line 716
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/server/wm/WindowStateAnimator;->prepareSurfaceLocked(Z)V

    .line 715
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 693
    .end local v4    # "N":I
    .end local v13    # "j":I
    .end local v18    # "windows":Lcom/android/server/wm/WindowList;
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 694
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 695
    const/16 v19, 0x0

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    if-nez v7, :cond_4

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lcom/android/server/wm/AccessibilityController;->onRotationChangedLocked(Lcom/android/server/wm/DisplayContent;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 749
    .end local v5    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v7    # "displayId":I
    .end local v12    # "i":I
    .end local v14    # "numDisplays":I
    .end local v16    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    :catch_0
    move-exception v10

    .line 750
    .local v10, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string v19, "WindowAnimator"

    const-string v20, "Unhandled exception in Window Manager"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 752
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 753
    sget-boolean v19, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-eqz v19, :cond_6

    const-string v19, "WindowAnimator"

    const-string v20, "<<< CLOSE TRANSACTION animateLocked"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    .end local v10    # "e":Ljava/lang/RuntimeException;
    :cond_6
    :goto_4
    const/4 v11, 0x0

    .line 758
    .local v11, "hasPendingLayoutChanges":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    move-result v14

    .line 759
    .restart local v14    # "numDisplays":I
    const/4 v8, 0x0

    .local v8, "displayNdx":I
    :goto_5
    if-ge v8, v14, :cond_11

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/DisplayContent;

    .line 761
    .local v6, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v15

    .line 762
    .local v15, "pendingChanges":I
    and-int/lit8 v19, v15, 0x4

    if-eqz v19, :cond_7

    .line 763
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 765
    :cond_7
    if-eqz v15, :cond_8

    .line 766
    const/4 v11, 0x1

    .line 759
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 682
    .end local v6    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v8    # "displayNdx":I
    .end local v11    # "hasPendingLayoutChanges":Z
    .end local v15    # "pendingChanges":I
    .restart local v4    # "N":I
    .restart local v5    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .restart local v7    # "displayId":I
    .restart local v12    # "i":I
    .restart local v13    # "j":I
    .restart local v16    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    .restart local v18    # "windows":Lcom/android/server/wm/WindowList;
    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 720
    .end local v4    # "N":I
    .end local v5    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v7    # "displayId":I
    .end local v13    # "j":I
    .end local v16    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    .end local v18    # "windows":Lcom/android/server/wm/WindowList;
    :cond_a
    const/4 v12, 0x0

    :goto_6
    if-ge v12, v14, :cond_d

    .line 721
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 723
    .restart local v7    # "displayId":I
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/wm/WindowAnimator;->testTokenMayBeDrawnLocked(I)V

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    move-object/from16 v16, v0

    .line 727
    .restart local v16    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v16, :cond_b

    .line 728
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/ScreenRotationAnimation;->updateSurfacesInTransaction()V

    .line 731
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/DisplayContent;->animateDimLayers()Z

    move-result v20

    or-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    if-nez v7, :cond_c

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/AccessibilityController;->drawMagnifiedRegionBorderIfNeededLocked()V

    .line 720
    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 740
    .end local v7    # "displayId":I
    .end local v16    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v19, v0

    if-eqz v19, :cond_e

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 744
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowManagerService;->setFocusedStackLayer()V

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    move-object/from16 v19, v0

    if-eqz v19, :cond_f

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/Watermark;->drawIfNeeded()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 752
    :cond_f
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 753
    sget-boolean v19, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-eqz v19, :cond_6

    const-string v19, "WindowAnimator"

    const-string v20, "<<< CLOSE TRANSACTION animateLocked"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 752
    .end local v12    # "i":I
    .end local v14    # "numDisplays":I
    :catchall_0
    move-exception v19

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 753
    sget-boolean v20, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-eqz v20, :cond_10

    const-string v20, "WindowAnimator"

    const-string v21, "<<< CLOSE TRANSACTION animateLocked"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    throw v19

    .line 770
    .restart local v8    # "displayNdx":I
    .restart local v11    # "hasPendingLayoutChanges":Z
    .restart local v14    # "numDisplays":I
    :cond_11
    const/4 v9, 0x0

    .line 771
    .local v9, "doRequest":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v19, v0

    if-eqz v19, :cond_12

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowManagerService;->copyAnimToLayoutParamsLocked()Z

    move-result v9

    .line 775
    :cond_12
    if-nez v11, :cond_13

    if-eqz v9, :cond_14

    .line 776
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowManagerService;->requestTraversalLocked()V

    .line 779
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v19, v0

    if-nez v19, :cond_15

    if-eqz v17, :cond_15

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowManagerService;->requestTraversalLocked()V

    .line 782
    :cond_15
    sget-boolean v19, Lcom/android/server/wm/WindowManagerService;->DEBUG_WINDOW_TRACE:Z

    if-eqz v19, :cond_0

    .line 783
    const-string v19, "WindowAnimator"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "!!! animate: exit mAnimating="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " mBulkUpdateParams="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " mPendingLayoutChanges(DEFAULT_DISPLAY)="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method static bulkUpdateParamsToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "bulkUpdateParams"    # I

    .prologue
    .line 791
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 792
    .local v0, "builder":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    .line 793
    const-string v1, " UPDATE_ROTATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    .line 796
    const-string v1, " WALLPAPER_MAY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    .line 799
    const-string v1, " FORCE_HIDING_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3

    .line 802
    const-string v1, " ORIENTATION_CHANGE_COMPLETE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    :cond_3
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_4

    .line 805
    const-string v1, " TURN_ON_SCREEN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private forceHidingToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    iget v0, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    packed-switch v0, :pswitch_data_0

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KEYGUARD STATE UNKNOWN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 108
    :pswitch_0
    const-string v0, "KEYGUARD_NOT_SHOWN"

    goto :goto_0

    .line 109
    :pswitch_1
    const-string v0, "KEYGUARD_ANIMATING_IN"

    goto :goto_0

    .line 110
    :pswitch_2
    const-string v0, "KEYGUARD_SHOWN"

    goto :goto_0

    .line 111
    :pswitch_3
    const-string v0, "KEYGUARD_ANIMATING_OUT"

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .locals 2
    .param p1, "displayId"    # I

    .prologue
    .line 894
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 895
    .local v0, "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    if-nez v0, :cond_0

    .line 896
    new-instance v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .end local v0    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;-><init>(Lcom/android/server/wm/WindowAnimator;Lcom/android/server/wm/WindowAnimator$1;)V

    .line 897
    .restart local v0    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 899
    :cond_0
    return-object v0
.end method

.method private shouldForceHide(Lcom/android/server/wm/WindowState;)Z
    .locals 9
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 225
    iget-object v7, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v7, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 226
    .local v2, "imeTarget":Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v8, 0x80000

    and-int/2addr v7, v8

    if-eqz v7, :cond_6

    move v3, v5

    .line 229
    .local v3, "showImeOverKeyguard":Z
    :goto_0
    iget-object v7, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy;->getWinShowWhenLockedLw()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 230
    .local v4, "winShowWhenLocked":Lcom/android/server/wm/WindowState;
    if-nez v4, :cond_7

    const/4 v0, 0x0

    .line 232
    .local v0, "appShowWhenLocked":Lcom/android/server/wm/AppWindowToken;
    :goto_1
    iget-boolean v7, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v7, :cond_0

    if-ne v2, p1, :cond_1

    :cond_0
    if-nez v3, :cond_8

    :cond_1
    if-eqz v0, :cond_2

    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eq v0, v7, :cond_8

    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v7, v7, 0x100

    if-nez v7, :cond_8

    :cond_2
    move v1, v5

    .line 237
    .local v1, "hideWhenLocked":Z
    :goto_2
    iget v7, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    if-ne v7, v5, :cond_3

    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    move-result v7

    if-eqz v7, :cond_4

    if-nez v1, :cond_4

    :cond_3
    iget v7, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    if-eqz v1, :cond_5

    :cond_4
    move v6, v5

    :cond_5
    return v6

    .end local v0    # "appShowWhenLocked":Lcom/android/server/wm/AppWindowToken;
    .end local v1    # "hideWhenLocked":Z
    .end local v3    # "showImeOverKeyguard":Z
    .end local v4    # "winShowWhenLocked":Lcom/android/server/wm/WindowState;
    :cond_6
    move v3, v6

    .line 226
    goto :goto_0

    .line 230
    .restart local v3    # "showImeOverKeyguard":Z
    .restart local v4    # "winShowWhenLocked":Lcom/android/server/wm/WindowState;
    :cond_7
    iget-object v0, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    goto :goto_1

    .restart local v0    # "appShowWhenLocked":Lcom/android/server/wm/AppWindowToken;
    :cond_8
    move v1, v6

    .line 232
    goto :goto_2
.end method

.method private testTokenMayBeDrawnLocked(I)V
    .locals 12
    .param p1, "displayId"    # I

    .prologue
    .line 620
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getTasks()Ljava/util/ArrayList;

    move-result-object v5

    .line 621
    .local v5, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 622
    .local v2, "numTasks":I
    const/4 v4, 0x0

    .local v4, "taskNdx":I
    :goto_0
    if-ge v4, v2, :cond_4

    .line 623
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/Task;

    iget-object v7, v9, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 624
    .local v7, "tokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v7}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v3

    .line 625
    .local v3, "numTokens":I
    const/4 v6, 0x0

    .local v6, "tokenNdx":I
    :goto_1
    if-ge v6, v3, :cond_3

    .line 626
    invoke-virtual {v7, v6}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/AppWindowToken;

    .line 627
    .local v8, "wtoken":Lcom/android/server/wm/AppWindowToken;
    iget-object v1, v8, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 628
    .local v1, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    iget-boolean v0, v8, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 629
    .local v0, "allDrawn":Z
    iget-boolean v9, v1, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    if-eq v0, v9, :cond_1

    .line 630
    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    .line 631
    if-eqz v0, :cond_1

    .line 634
    iget-boolean v9, v1, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    if-eqz v9, :cond_2

    .line 635
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    .line 636
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v9, v8, v10, v11}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    .line 637
    sget-boolean v9, Lcom/android/server/wm/WindowManagerService;->DEBUG_ORIENTATION:Z

    if-eqz v9, :cond_0

    const-string v9, "WindowAnimator"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Setting mOrientationChangeComplete=true because wtoken "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " numInteresting="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v8, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " numDrawn="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v8, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_0
    const/4 v9, 0x4

    const-string v10, "testTokenMayBeDrawnLocked: freezingScreen"

    invoke-virtual {p0, v1, v9, v10}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;)V

    .line 625
    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 646
    :cond_2
    const/16 v9, 0x8

    const-string v10, "testTokenMayBeDrawnLocked"

    invoke-virtual {p0, v1, v9, v10}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;)V

    .line 651
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 652
    iget-boolean v9, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    move-result v10

    or-int/2addr v9, v10

    iput-boolean v9, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    goto :goto_2

    .line 622
    .end local v0    # "allDrawn":Z
    .end local v1    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v8    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 659
    .end local v3    # "numTokens":I
    .end local v6    # "tokenNdx":I
    .end local v7    # "tokens":Lcom/android/server/wm/AppTokenList;
    :cond_4
    return-void
.end method

.method private updateAppWindowsLocked(I)V
    .locals 17
    .param p1, "displayId"    # I

    .prologue
    .line 182
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/wm/DisplayContent;->getStacks()Ljava/util/ArrayList;

    move-result-object v8

    .line 183
    .local v8, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskStack;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v7, v14, -0x1

    .local v7, "stackNdx":I
    :goto_0
    if-ltz v7, :cond_9

    .line 184
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/TaskStack;

    .line 185
    .local v6, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v6}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v10

    .line 186
    .local v10, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v9, v14, -0x1

    .local v9, "taskNdx":I
    :goto_1
    if-ltz v9, :cond_4

    .line 187
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/Task;

    iget-object v12, v14, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 188
    .local v12, "tokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v12}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v14

    add-int/lit8 v11, v14, -0x1

    .local v11, "tokenNdx":I
    :goto_2
    if-ltz v11, :cond_3

    .line 189
    invoke-virtual {v12, v11}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v14, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 190
    .local v3, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    iget-object v14, v3, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v14, :cond_1

    iget-object v14, v3, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    sget-object v15, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    if-eq v14, v15, :cond_1

    const/4 v13, 0x1

    .line 192
    .local v13, "wasAnimating":Z
    :goto_3
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-virtual {v3, v14, v15}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimationLocked(J)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 193
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 188
    :cond_0
    :goto_4
    add-int/lit8 v11, v11, -0x1

    goto :goto_2

    .line 190
    .end local v13    # "wasAnimating":Z
    :cond_1
    const/4 v13, 0x0

    goto :goto_3

    .line 194
    .restart local v13    # "wasAnimating":Z
    :cond_2
    if-eqz v13, :cond_0

    .line 196
    const/4 v14, 0x4

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "appToken "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v3, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " done"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14, v15}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;)V

    .line 199
    sget-boolean v14, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v14, :cond_0

    const-string v14, "WindowAnimator"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "updateWindowsApps...: done animating "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v3, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 186
    .end local v3    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v13    # "wasAnimating":Z
    :cond_3
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_1

    .line 205
    .end local v11    # "tokenNdx":I
    .end local v12    # "tokens":Lcom/android/server/wm/AppTokenList;
    :cond_4
    iget-object v4, v6, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 206
    .local v4, "exitingAppTokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v4}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v2

    .line 207
    .local v2, "NEAT":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_5
    if-ge v5, v2, :cond_8

    .line 208
    invoke-virtual {v4, v5}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v14, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 209
    .restart local v3    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    iget-object v14, v3, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v14, :cond_6

    iget-object v14, v3, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    sget-object v15, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    if-eq v14, v15, :cond_6

    const/4 v13, 0x1

    .line 211
    .restart local v13    # "wasAnimating":Z
    :goto_6
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-virtual {v3, v14, v15}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimationLocked(J)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 212
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 207
    :cond_5
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 209
    .end local v13    # "wasAnimating":Z
    :cond_6
    const/4 v13, 0x0

    goto :goto_6

    .line 213
    .restart local v13    # "wasAnimating":Z
    :cond_7
    if-eqz v13, :cond_5

    .line 215
    const/4 v14, 0x4

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "exiting appToken "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v3, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " done"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14, v15}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;)V

    .line 217
    sget-boolean v14, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v14, :cond_5

    const-string v14, "WindowAnimator"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "updateWindowsApps...: done animating exiting "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v3, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 183
    .end local v3    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v13    # "wasAnimating":Z
    :cond_8
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_0

    .line 222
    .end local v2    # "NEAT":I
    .end local v4    # "exitingAppTokens":Lcom/android/server/wm/AppTokenList;
    .end local v5    # "i":I
    .end local v6    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v9    # "taskNdx":I
    .end local v10    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    :cond_9
    return-void
.end method

.method private updateWallpaperLocked(I)V
    .locals 12
    .param p1, "displayId"    # I

    .prologue
    const/high16 v10, 0x100000

    .line 551
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->resetAnimationBackgroundAnimator()V

    .line 553
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9, p1}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v8

    .line 554
    .local v8, "windows":Lcom/android/server/wm/WindowList;
    const/4 v2, 0x0

    .line 556
    .local v2, "detachedWallpaper":Lcom/android/server/wm/WindowState;
    invoke-virtual {v8}, Lcom/android/server/wm/WindowList;->size()I

    move-result v9

    add-int/lit8 v4, v9, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_6

    .line 557
    invoke-virtual {v8, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 558
    .local v6, "win":Lcom/android/server/wm/WindowState;
    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 559
    .local v7, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    iget-object v9, v7, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v9, :cond_1

    .line 556
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 563
    :cond_1
    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 568
    .local v3, "flags":I
    iget-boolean v9, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-eqz v9, :cond_4

    .line 569
    iget-object v9, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v9, :cond_3

    .line 570
    and-int v9, v3, v10

    if-eqz v9, :cond_2

    iget-object v9, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v9}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 572
    move-object v2, v6

    .line 574
    :cond_2
    iget-object v9, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v9}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v1

    .line 575
    .local v1, "color":I
    if-eqz v1, :cond_3

    .line 576
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v5

    .line 577
    .local v5, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v5, :cond_3

    .line 578
    invoke-virtual {v5, v7, v1}, Lcom/android/server/wm/TaskStack;->setAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;I)V

    .line 582
    .end local v1    # "color":I
    .end local v5    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_3
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 588
    :cond_4
    iget-object v0, v7, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 589
    .local v0, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    if-eqz v0, :cond_0

    iget-object v9, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v9, :cond_0

    iget-boolean v9, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-eqz v9, :cond_0

    .line 591
    and-int v9, v3, v10

    if-eqz v9, :cond_5

    iget-object v9, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v9}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 593
    move-object v2, v6

    .line 596
    :cond_5
    iget-object v9, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v9}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v1

    .line 597
    .restart local v1    # "color":I
    if-eqz v1, :cond_0

    .line 598
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v5

    .line 599
    .restart local v5    # "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v5, :cond_0

    .line 600
    invoke-virtual {v5, v7, v1}, Lcom/android/server/wm/TaskStack;->setAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;I)V

    goto :goto_1

    .line 606
    .end local v0    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v1    # "color":I
    .end local v3    # "flags":I
    .end local v5    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v6    # "win":Lcom/android/server/wm/WindowState;
    .end local v7    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_6
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-eq v9, v2, :cond_8

    .line 607
    sget-boolean v9, Lcom/android/server/wm/WindowManagerService;->DEBUG_WALLPAPER:Z

    if-eqz v9, :cond_7

    const-string v9, "WindowAnimator"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Detached wallpaper changed from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_7
    iput-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 611
    iget v9, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 613
    :cond_8
    return-void
.end method

.method private updateWindowsLocked(I)V
    .locals 30
    .param p1, "displayId"    # I
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->CHANGE_CODE:Landroid/annotation/OppoHook$OppoHookType;
        note = "YuHao@Plf.DesktopApp.Keyguard add for ColorOS Keyguard"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 246
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v24

    .line 250
    .local v24, "windows":Lcom/android/server/wm/WindowList;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    move/from16 v25, v0

    if-eqz v25, :cond_2

    .line 251
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/WindowList;->size()I

    move-result v25

    add-int/lit8 v12, v25, -0x1

    .local v12, "i":I
    :goto_0
    if-ltz v12, :cond_2

    .line 252
    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/wm/WindowState;

    .line 253
    .local v22, "win":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v25, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v26, v0

    invoke-interface/range {v25 .. v26}, Landroid/view/WindowManagerPolicy;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v25

    if-nez v25, :cond_0

    .line 251
    add-int/lit8 v12, v12, -0x1

    goto :goto_0

    .line 256
    :cond_0
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v23, v0

    .line 257
    .local v23, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v25, v0

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0x400

    move/from16 v25, v0

    if-eqz v25, :cond_14

    .line 258
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    move/from16 v25, v0

    if-nez v25, :cond_2

    .line 259
    sget-boolean v25, Lcom/android/server/wm/WindowManagerService;->DEBUG_KEYGUARD:Z

    if-eqz v25, :cond_1

    const-string v25, "WindowAnimator"

    const-string v26, "updateWindowsLocked: creating delay animation"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_1
    new-instance v25, Landroid/view/animation/AlphaAnimation;

    const/high16 v26, 0x3f800000    # 1.0f

    const/high16 v27, 0x3f800000    # 1.0f

    invoke-direct/range {v25 .. v27}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    .line 264
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v25, v0

    const-wide/16 v26, 0x3e8

    invoke-virtual/range {v25 .. v27}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 265
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    .line 266
    const-wide/16 v26, -0x1

    move-wide/from16 v0, v26

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartTime:J

    .line 278
    .end local v12    # "i":I
    .end local v22    # "win":Lcom/android/server/wm/WindowState;
    .end local v23    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_2
    :goto_1
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    .line 280
    const/16 v20, 0x0

    .line 281
    .local v20, "wallpaperInUnForceHiding":Z
    const/16 v16, 0x0

    .line 282
    .local v16, "startingInUnForceHiding":Z
    const/16 v17, 0x0

    .line 283
    .local v17, "unForceHiding":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    const/16 v19, 0x0

    .line 284
    .local v19, "wallpaper":Lcom/android/server/wm/WindowState;
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/WindowList;->size()I

    move-result v25

    add-int/lit8 v12, v25, -0x1

    .restart local v12    # "i":I
    :goto_2
    if-ltz v12, :cond_2e

    .line 285
    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/wm/WindowState;

    .line 286
    .restart local v22    # "win":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v23, v0

    .line 287
    .restart local v23    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v11, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 292
    .local v11, "flags":I
    const/4 v13, 0x0

    .line 296
    .local v13, "needToFinishAnim":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v25, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v8

    .line 297
    .local v8, "canBeForceHidden":Z
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowAnimator;->shouldForceHide(Lcom/android/server/wm/WindowState;)Z

    move-result v15

    .line 298
    .local v15, "shouldBeForceHidden":Z
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v25, v0

    if-eqz v25, :cond_2c

    .line 299
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWasAnimating:Z

    move/from16 v21, v0

    .line 300
    .local v21, "wasAnimating":Z
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v26, v0

    move-object/from16 v0, v23

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowStateAnimator;->stepAnimationLocked(J)Z

    move-result v14

    .line 301
    .local v14, "nowAnimating":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v25, v0

    or-int v25, v25, v14

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 303
    sget-boolean v25, Lcom/android/server/wm/WindowManagerService;->DEBUG_WALLPAPER:Z

    if-eqz v25, :cond_3

    .line 304
    const-string v25, "WindowAnimator"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ": wasAnimating="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", nowAnimating="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_3
    if-nez v21, :cond_5

    if-nez v14, :cond_5

    .line 312
    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->checkAnimationExitError(Z)Z

    move-result v13

    .line 313
    sget-boolean v25, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v25, :cond_4

    const-string v25, "WindowAnimator"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "updateWindowsLocked:needToFinishAnim = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_4
    sget-boolean v25, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v25, :cond_5

    const-string v25, "WindowAnimator"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "updateWindowsLocked, this win need to finish anim, win:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_5
    if-eqz v21, :cond_6

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    move/from16 v25, v0

    if-nez v25, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 319
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v25, v0

    or-int/lit8 v25, v25, 0x2

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 320
    const/16 v25, 0x0

    const/16 v26, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 322
    sget-boolean v25, Lcom/android/server/wm/WindowManagerService;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v25, :cond_6

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v25, v0

    const-string v26, "updateWindowsAndWallpaperLocked 2"

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v27

    invoke-virtual/range {v25 .. v27}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 334
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v25, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v26, v0

    invoke-interface/range {v25 .. v26}, Landroid/view/WindowManagerPolicy;->isForceHiding(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v25

    if-nez v25, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->isForceHiding(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v25

    if-eqz v25, :cond_1a

    .line 336
    :cond_7
    if-nez v21, :cond_16

    if-eqz v14, :cond_16

    .line 337
    sget-boolean v25, Lcom/android/server/wm/WindowManagerService;->DEBUG_KEYGUARD:Z

    if-nez v25, :cond_8

    sget-boolean v25, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-nez v25, :cond_8

    sget-boolean v25, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v25, :cond_9

    .line 338
    :cond_8
    const-string v25, "WindowAnimator"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Animation started that could impact force hide: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v25, v0

    or-int/lit8 v25, v25, 0x4

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 341
    const/16 v25, 0x4

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 343
    sget-boolean v25, Lcom/android/server/wm/WindowManagerService;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v25, :cond_a

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v25, v0

    const-string v26, "updateWindowsAndWallpaperLocked 3"

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v27

    invoke-virtual/range {v25 .. v27}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 347
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 354
    :cond_b
    :goto_3
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v25

    if-eqz v25, :cond_c

    .line 355
    if-eqz v14, :cond_18

    .line 356
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    move/from16 v25, v0

    if-eqz v25, :cond_17

    .line 357
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    .line 365
    :cond_c
    :goto_4
    sget-boolean v25, Lcom/android/server/wm/WindowManagerService;->DEBUG_KEYGUARD:Z

    if-nez v25, :cond_d

    sget-boolean v25, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v25, :cond_e

    :cond_d
    const-string v25, "WindowAnimator"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Force hide "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowAnimator;->forceHidingToString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " hasSurface="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " policyVis="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " destroying="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " attHidden="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " vis="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " hidden="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->hidden:Z

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " anim="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    .end local v14    # "nowAnimating":Z
    .end local v21    # "wasAnimating":Z
    :cond_e
    :goto_5
    move-object/from16 v0, v22

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 466
    .local v7, "atoken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    move/from16 v25, v0

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_10

    .line 467
    if-eqz v7, :cond_f

    iget-boolean v0, v7, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    move/from16 v25, v0

    if-eqz v25, :cond_10

    .line 468
    :cond_f
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/WindowStateAnimator;->performShowLocked()Z

    move-result v25

    if-eqz v25, :cond_10

    .line 469
    const/16 v25, 0x8

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 471
    sget-boolean v25, Lcom/android/server/wm/WindowManagerService;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v25, :cond_10

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v25, v0

    const-string v26, "updateWindowsAndWallpaperLocked 5"

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v27

    invoke-virtual/range {v25 .. v27}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 478
    :cond_10
    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 479
    .local v5, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    if-eqz v5, :cond_12

    iget-object v0, v5, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    move-object/from16 v25, v0

    if-eqz v25, :cond_12

    .line 480
    iget v0, v5, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransactionSeq:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_11

    .line 481
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    move/from16 v25, v0

    move/from16 v0, v25

    iput v0, v5, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransactionSeq:I

    .line 482
    const/16 v25, 0x0

    move/from16 v0, v25

    iput v0, v5, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    .line 484
    :cond_11
    iget v0, v5, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    move/from16 v25, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_12

    .line 485
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v25, v0

    move/from16 v0, v25

    iput v0, v5, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    .line 488
    :cond_12
    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    move/from16 v25, v0

    if-eqz v25, :cond_13

    .line 489
    move-object/from16 v19, v22

    .line 284
    .end local v5    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v7    # "atoken":Lcom/android/server/wm/AppWindowToken;
    :cond_13
    :goto_6
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_2

    .line 269
    .end local v8    # "canBeForceHidden":Z
    .end local v11    # "flags":I
    .end local v13    # "needToFinishAnim":Z
    .end local v15    # "shouldBeForceHidden":Z
    .end local v16    # "startingInUnForceHiding":Z
    .end local v17    # "unForceHiding":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    .end local v19    # "wallpaper":Lcom/android/server/wm/WindowState;
    .end local v20    # "wallpaperInUnForceHiding":Z
    :cond_14
    sget-boolean v25, Lcom/android/server/wm/WindowManagerService;->DEBUG_KEYGUARD:Z

    if-eqz v25, :cond_15

    const-string v25, "WindowAnimator"

    const-string v26, "updateWindowsLocked: StatusBar is no longer keyguard"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_15
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    .line 272
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/WindowStateAnimator;->clearAnimation()V

    goto/16 :goto_1

    .line 348
    .restart local v8    # "canBeForceHidden":Z
    .restart local v11    # "flags":I
    .restart local v13    # "needToFinishAnim":Z
    .restart local v14    # "nowAnimating":Z
    .restart local v15    # "shouldBeForceHidden":Z
    .restart local v16    # "startingInUnForceHiding":Z
    .restart local v17    # "unForceHiding":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    .restart local v19    # "wallpaper":Lcom/android/server/wm/WindowState;
    .restart local v20    # "wallpaperInUnForceHiding":Z
    .restart local v21    # "wasAnimating":Z
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    move/from16 v25, v0

    if-eqz v25, :cond_b

    if-nez v14, :cond_b

    .line 350
    const-string v25, "WindowAnimator"

    const-string v26, "Timeout waiting for animation to startup"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v25, v0

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    invoke-interface/range {v25 .. v29}, Landroid/view/WindowManagerPolicy;->startKeyguardExitAnimation(JJ)V

    .line 352
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    goto/16 :goto_3

    .line 359
    :cond_17
    const/16 v25, 0x3

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    goto/16 :goto_4

    .line 362
    :cond_18
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v25

    if-eqz v25, :cond_19

    const/16 v25, 0x2

    :goto_7
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    goto/16 :goto_4

    :cond_19
    const/16 v25, 0x0

    goto :goto_7

    .line 374
    :cond_1a
    if-eqz v8, :cond_e

    .line 375
    if-eqz v15, :cond_1f

    .line 376
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v25

    if-nez v25, :cond_1c

    .line 381
    if-eqz v13, :cond_13

    .line 382
    sget-boolean v25, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v25, :cond_1b

    const-string v25, "WindowAnimator"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "updateWindowsLocked: the win was aleady hidden but need to finish anim. win:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_1b
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/WindowStateAnimator;->finishExitInner()V

    goto/16 :goto_6

    .line 388
    :cond_1c
    sget-boolean v25, Lcom/android/server/wm/WindowManagerService;->DEBUG_KEYGUARD:Z

    if-nez v25, :cond_1d

    sget-boolean v25, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v25, :cond_1e

    :cond_1d
    const-string v25, "WindowAnimator"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Now policy hidden: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_1e
    :goto_8
    const/high16 v25, 0x100000

    and-int v25, v25, v11

    if-eqz v25, :cond_e

    .line 444
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v25, v0

    or-int/lit8 v25, v25, 0x2

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 445
    const/16 v25, 0x0

    const/16 v26, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 447
    sget-boolean v25, Lcom/android/server/wm/WindowManagerService;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v25, :cond_e

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v25, v0

    const-string v26, "updateWindowsAndWallpaperLocked 4"

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v27

    invoke-virtual/range {v25 .. v27}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 391
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v25, v0

    if-eqz v25, :cond_21

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    move/from16 v25, v0

    if-nez v25, :cond_21

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowState;->hasDrawnLw()Z

    move-result v25

    if-eqz v25, :cond_21

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v25, v0

    if-nez v25, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    move/from16 v25, v0

    if-eqz v25, :cond_21

    const/4 v6, 0x1

    .line 399
    .local v6, "applyExistingExitAnimation":Z
    :goto_9
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    move-result v25

    if-nez v25, :cond_20

    if-eqz v6, :cond_13

    .line 402
    :cond_20
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v18

    .line 403
    .local v18, "visibleNow":Z
    if-nez v18, :cond_22

    .line 405
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    goto/16 :goto_6

    .line 391
    .end local v6    # "applyExistingExitAnimation":Z
    .end local v18    # "visibleNow":Z
    :cond_21
    const/4 v6, 0x0

    goto :goto_9

    .line 408
    .restart local v6    # "applyExistingExitAnimation":Z
    .restart local v18    # "visibleNow":Z
    :cond_22
    sget-boolean v25, Lcom/android/server/wm/WindowManagerService;->DEBUG_KEYGUARD:Z

    if-nez v25, :cond_23

    sget-boolean v25, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v25, :cond_24

    :cond_23
    const-string v25, "WindowAnimator"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Now policy shown: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_24
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, 0x4

    if-eqz v25, :cond_2a

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v25, v0

    if-nez v25, :cond_2a

    .line 412
    if-nez v17, :cond_25

    .line 413
    new-instance v17, Ljava/util/ArrayList;

    .end local v17    # "unForceHiding":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 415
    .restart local v17    # "unForceHiding":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    :cond_25
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    const/high16 v25, 0x100000

    and-int v25, v25, v11

    if-eqz v25, :cond_26

    .line 417
    const/16 v20, 0x1

    .line 419
    :cond_26
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v25, v0

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_27

    .line 420
    const/16 v16, 0x1

    .line 433
    :cond_27
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v9, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 434
    .local v9, "currentFocus":Lcom/android/server/wm/WindowState;
    if-eqz v9, :cond_28

    iget v0, v9, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v25, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_1e

    .line 438
    :cond_28
    sget-boolean v25, Lcom/android/server/wm/WindowManagerService;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v25, :cond_29

    const-string v25, "WindowAnimator"

    const-string v26, "updateWindowsLocked: setting mFocusMayChange true"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    goto/16 :goto_8

    .line 422
    .end local v9    # "currentFocus":Lcom/android/server/wm/WindowState;
    :cond_2a
    if-eqz v6, :cond_27

    .line 425
    sget-boolean v25, Lcom/android/server/wm/WindowManagerService;->DEBUG_KEYGUARD:Z

    if-eqz v25, :cond_2b

    const-string v25, "WindowAnimator"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Applying existing Keyguard exit animation to new window: win="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAwayToNotificationShade:Z

    move/from16 v27, v0

    invoke-interface/range {v25 .. v27}, Landroid/view/WindowManagerPolicy;->createForceHideEnterAnimation(ZZ)Landroid/view/animation/Animation;

    move-result-object v4

    .line 430
    .local v4, "a":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v26

    move-object/from16 v0, v23

    move-wide/from16 v1, v26

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;J)V

    .line 431
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    goto/16 :goto_a

    .line 457
    .end local v4    # "a":Landroid/view/animation/Animation;
    .end local v6    # "applyExistingExitAnimation":Z
    .end local v14    # "nowAnimating":Z
    .end local v18    # "visibleNow":Z
    .end local v21    # "wasAnimating":Z
    :cond_2c
    if-eqz v8, :cond_e

    .line 458
    if-eqz v15, :cond_2d

    .line 459
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    goto/16 :goto_5

    .line 461
    :cond_2d
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    goto/16 :goto_5

    .line 496
    .end local v8    # "canBeForceHidden":Z
    .end local v11    # "flags":I
    .end local v13    # "needToFinishAnim":Z
    .end local v15    # "shouldBeForceHidden":Z
    .end local v22    # "win":Lcom/android/server/wm/WindowState;
    .end local v23    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_2e
    if-eqz v17, :cond_35

    .line 497
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAwayDisableWindowAnimations:Z

    move/from16 v25, v0

    if-nez v25, :cond_32

    .line 498
    const/4 v10, 0x1

    .line 499
    .local v10, "first":Z
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v25

    add-int/lit8 v12, v25, -0x1

    :goto_b
    if-ltz v12, :cond_33

    .line 500
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/wm/WindowStateAnimator;

    .line 501
    .restart local v23    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v26, v0

    if-eqz v20, :cond_31

    if-nez v16, :cond_31

    const/16 v25, 0x1

    :goto_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAwayToNotificationShade:Z

    move/from16 v27, v0

    move-object/from16 v0, v26

    move/from16 v1, v25

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->createForceHideEnterAnimation(ZZ)Landroid/view/animation/Animation;

    move-result-object v4

    .line 504
    .restart local v4    # "a":Landroid/view/animation/Animation;
    if-eqz v4, :cond_30

    .line 505
    sget-boolean v25, Lcom/android/server/wm/WindowManagerService;->DEBUG_KEYGUARD:Z

    if-eqz v25, :cond_2f

    const-string v25, "WindowAnimator"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Starting keyguard exit animation on window "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_2f
    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    .line 508
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    .line 509
    if-eqz v10, :cond_30

    .line 510
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 512
    const/4 v10, 0x0

    .line 499
    :cond_30
    add-int/lit8 v12, v12, -0x1

    goto :goto_b

    .line 501
    .end local v4    # "a":Landroid/view/animation/Animation;
    :cond_31
    const/16 v25, 0x0

    goto :goto_c

    .line 516
    .end local v10    # "first":Z
    .end local v23    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_32
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    move/from16 v25, v0

    if-eqz v25, :cond_33

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    invoke-interface/range {v25 .. v29}, Landroid/view/WindowManagerPolicy;->startKeyguardExitAnimation(JJ)V

    .line 518
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    .line 523
    :cond_33
    if-nez v20, :cond_35

    if-eqz v19, :cond_35

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAwayDisableWindowAnimations:Z

    move/from16 v25, v0

    if-nez v25, :cond_35

    .line 525
    sget-boolean v25, Lcom/android/server/wm/WindowManagerService;->DEBUG_KEYGUARD:Z

    if-eqz v25, :cond_34

    const-string v25, "WindowAnimator"

    const-string v26, "updateWindowsLocked: wallpaper animating away"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAwayToNotificationShade:Z

    move/from16 v26, v0

    invoke-interface/range {v25 .. v26}, Landroid/view/WindowManagerPolicy;->createForceHideWallpaperExitAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v4

    .line 528
    .restart local v4    # "a":Landroid/view/animation/Animation;
    if-eqz v4, :cond_35

    .line 529
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    .line 534
    .end local v4    # "a":Landroid/view/animation/Animation;
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v25, v0

    if-eqz v25, :cond_36

    .line 536
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    move/from16 v25, v0

    if-eqz v25, :cond_37

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v28

    add-long v26, v26, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v28

    invoke-interface/range {v25 .. v29}, Landroid/view/WindowManagerPolicy;->startKeyguardExitAnimation(JJ)V

    .line 540
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    .line 548
    :cond_36
    :goto_d
    return-void

    .line 541
    :cond_37
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v28

    sub-long v26, v26, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v28

    cmp-long v25, v26, v28

    if-lez v25, :cond_36

    .line 544
    sget-boolean v25, Lcom/android/server/wm/WindowManagerService;->DEBUG_KEYGUARD:Z

    if-eqz v25, :cond_38

    const-string v25, "WindowAnimator"

    const-string v26, "Done with Keyguard exit animations."

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_38
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    goto :goto_d
.end method


# virtual methods
.method addDisplayLocked(I)V
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 135
    if-nez p1, :cond_0

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    .line 138
    :cond_0
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .prologue
    .line 811
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 812
    .local v4, "subPrefix":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 814
    .local v5, "subSubPrefix":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v2, v8, :cond_3

    .line 815
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "DisplayContentsAnimator #"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 816
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 817
    const-string v8, ":"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 818
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 819
    .local v1, "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v7

    .line 821
    .local v7, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v7}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 822
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v0, :cond_0

    .line 823
    invoke-virtual {v7, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    iget-object v6, v8, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 824
    .local v6, "wanim":Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "Window #"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 825
    const-string v8, ": "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 822
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 827
    .end local v6    # "wanim":Lcom/android/server/wm/WindowStateAnimator;
    :cond_0
    iget-object v8, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v8, :cond_2

    .line 828
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mScreenRotationAnimation:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 829
    iget-object v8, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v8, v5, p1}, Lcom/android/server/wm/ScreenRotationAnimation;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 814
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 830
    :cond_2
    if-eqz p3, :cond_1

    .line 831
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "no ScreenRotationAnimation "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 835
    .end local v0    # "N":I
    .end local v1    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v3    # "j":I
    .end local v7    # "windows":Lcom/android/server/wm/WindowList;
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 837
    if-eqz p3, :cond_4

    .line 838
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mAnimTransactionSequence="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 839
    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 840
    const-string v8, " mForceHiding="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/WindowAnimator;->forceHidingToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 841
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mCurrentTime="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 842
    iget-wide v8, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-static {v8, v9}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 844
    :cond_4
    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    if-eqz v8, :cond_5

    .line 845
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mBulkUpdateParams=0x"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 846
    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 847
    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    invoke-static {v8}, Lcom/android/server/wm/WindowAnimator;->bulkUpdateParamsToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 849
    :cond_5
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v8, :cond_6

    .line 850
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mWindowDetachedWallpaper="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 851
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 853
    :cond_6
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v8, :cond_7

    .line 854
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mUniverseBackground="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 855
    const-string v8, " mAboveUniverseLayer="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mAboveUniverseLayer:I

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(I)V

    .line 857
    :cond_7
    return-void
.end method

.method getPendingLayoutChanges(I)I
    .locals 3
    .param p1, "displayId"    # I

    .prologue
    const/4 v1, 0x0

    .line 860
    if-gez p1, :cond_1

    .line 864
    :cond_0
    :goto_0
    return v1

    .line 863
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 864
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    goto :goto_0
.end method

.method getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    .line 909
    if-gez p1, :cond_0

    .line 910
    const/4 v0, 0x0

    .line 912
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    goto :goto_0
.end method

.method hideWallpapersLocked(Lcom/android/server/wm/WindowState;)V
    .locals 14
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 153
    iget-object v10, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v10, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 154
    .local v7, "wallpaperTarget":Lcom/android/server/wm/WindowState;
    iget-object v10, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v10, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 155
    .local v2, "lowerWallpaperTarget":Lcom/android/server/wm/WindowState;
    iget-object v10, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v10, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 157
    .local v8, "wallpaperTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowToken;>;"
    if-ne v7, p1, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    if-nez v7, :cond_5

    .line 158
    :cond_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 159
    .local v3, "numTokens":I
    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_5

    .line 160
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowToken;

    .line 161
    .local v5, "token":Lcom/android/server/wm/WindowToken;
    iget-object v10, v5, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    .line 162
    .local v4, "numWindows":I
    add-int/lit8 v1, v4, -0x1

    .local v1, "j":I
    :goto_1
    if-ltz v1, :cond_3

    .line 163
    iget-object v10, v5, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v10, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 164
    .local v6, "wallpaper":Lcom/android/server/wm/WindowState;
    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 165
    .local v9, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    iget-boolean v10, v9, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-nez v10, :cond_2

    .line 166
    invoke-virtual {v9}, Lcom/android/server/wm/WindowStateAnimator;->hide()V

    .line 167
    iget-object v10, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v11, 0x0

    invoke-virtual {v10, v6, v11}, Lcom/android/server/wm/WindowManagerService;->dispatchWallpaperVisibility(Lcom/android/server/wm/WindowState;Z)V

    .line 168
    const/4 v10, 0x0

    const/4 v11, 0x4

    invoke-virtual {p0, v10, v11}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 162
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 172
    .end local v6    # "wallpaper":Lcom/android/server/wm/WindowState;
    .end local v9    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_3
    sget-boolean v10, Lcom/android/server/wm/WindowManagerService;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v10, :cond_4

    iget-boolean v10, v5, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-nez v10, :cond_4

    const-string v10, "WindowAnimator"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Hiding wallpaper "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " target="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " lower="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x5

    const-string v13, "  "

    invoke-static {v12, v13}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_4
    const/4 v10, 0x1

    iput-boolean v10, v5, Lcom/android/server/wm/WindowToken;->hidden:Z

    .line 159
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 179
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v3    # "numTokens":I
    .end local v4    # "numWindows":I
    .end local v5    # "token":Lcom/android/server/wm/WindowToken;
    :cond_5
    return-void
.end method

.method removeDisplayLocked(I)V
    .locals 2
    .param p1, "displayId"    # I

    .prologue
    .line 141
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 142
    .local v0, "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    if-eqz v0, :cond_0

    .line 143
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 145
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 150
    return-void
.end method

.method setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;)V
    .locals 6
    .param p1, "appAnimator"    # Lcom/android/server/wm/AppWindowAnimator;
    .param p2, "changes"    # I
    .param p3, "s"    # Ljava/lang/String;

    .prologue
    .line 878
    new-instance v1, Landroid/util/SparseIntArray;

    const/4 v4, 0x2

    invoke-direct {v1, v4}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 879
    .local v1, "displays":Landroid/util/SparseIntArray;
    iget-object v4, p1, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v4, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 880
    .local v3, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 881
    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v0

    .line 882
    .local v0, "displayId":I
    if-ltz v0, :cond_1

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-gez v4, :cond_1

    .line 883
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 884
    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v4, :cond_0

    .line 885
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v5

    invoke-virtual {v4, p3, v5}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 888
    :cond_0
    invoke-virtual {v1, v0, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 880
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 891
    .end local v0    # "displayId":I
    :cond_2
    return-void
.end method

.method setPendingLayoutChanges(II)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "changes"    # I

    .prologue
    .line 868
    if-ltz p1, :cond_0

    .line 869
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 870
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_0

    .line 871
    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v1, p2

    iput v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 874
    .end local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_0
    return-void
.end method

.method setScreenRotationAnimationLocked(ILcom/android/server/wm/ScreenRotationAnimation;)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "animation"    # Lcom/android/server/wm/ScreenRotationAnimation;

    .prologue
    .line 903
    if-ltz p1, :cond_0

    .line 904
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iput-object p2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 906
    :cond_0
    return-void
.end method
