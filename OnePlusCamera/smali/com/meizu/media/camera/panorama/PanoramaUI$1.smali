.class Lcom/meizu/media/camera/panorama/PanoramaUI$1;
.super Ljava/lang/Object;
.source "PanoramaUI.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/panorama/PanoramaUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/panorama/PanoramaUI;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/panorama/PanoramaUI;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/meizu/media/camera/panorama/PanoramaUI$1;->this$0:Lcom/meizu/media/camera/panorama/PanoramaUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 195
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/meizu/media/camera/panorama/PanoramaUI$1;->this$0:Lcom/meizu/media/camera/panorama/PanoramaUI;

    # invokes: Lcom/meizu/media/camera/panorama/PanoramaUI;->onSensorChanged(Landroid/hardware/SensorEvent;)V
    invoke-static {v0, p1}, Lcom/meizu/media/camera/panorama/PanoramaUI;->access$000(Lcom/meizu/media/camera/panorama/PanoramaUI;Landroid/hardware/SensorEvent;)V

    .line 191
    return-void
.end method
