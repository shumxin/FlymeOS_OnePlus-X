.class Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable$1;
.super Ljava/lang/Object;
.source "FocusExposureIndicatorImpl.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable$1;->this$0:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable$1;->this$0:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;

    invoke-virtual {v0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->invalidateSelf()V

    .line 143
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .prologue
    .line 136
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable$1;->this$0:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;

    invoke-virtual {v0, p2, p3, p4}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 137
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable$1;->this$0:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;

    invoke-virtual {v0, p2}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$FocusExposureRegionDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 131
    return-void
.end method
