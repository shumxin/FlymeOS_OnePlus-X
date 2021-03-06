.class final Lcom/meizu/media/camera/AppTrackerImpl;
.super Lcom/meizu/media/camera/CameraComponent;
.source "AppTrackerImpl.java"


# static fields
.field public static final APP_TRACKER_CAMERA_CAPTURE:I = 0x0

.field public static final APP_TRACKER_CAMERA_CAPTURE_MANUAL:I = 0x1

.field public static final APP_TRACKER_CAMERA_CAPTURE_PANORAMA:I = 0x3

.field public static final APP_TRACKER_CAMERA_LAUNCH:I = 0x2

.field public static final APP_TRACKER_CAMERA_SWITCH_CAPTURE_MODE:I = 0x4

.field private static final ONEPLUS_ODM_APP_TRACKER:Ljava/lang/String; = "net.oneplus.odm.insight.tracker.AppTracker"

.field private static final ONEPLUS_ODM_APP_TRACKER_ONEVENT_METHOD:Ljava/lang/String; = "onEvent"


# instance fields
.field private m_AppTracker:Ljava/lang/Object;

.field private m_BurstCount:Ljava/lang/Integer;

.field private m_Camera:Lcom/meizu/media/camera/Camera;

.field private m_CameraActivity:Lcom/meizu/media/camera/CameraActivity;

.field private m_CameraPreviewGrid:Lcom/meizu/media/camera/ui/CameraPreviewGrid;

.field private m_CaptureModeManager:Lcom/meizu/media/camera/capturemode/CaptureModeManager;

.field private m_CaptureModeSwitcher:Lcom/meizu/media/camera/ui/CaptureModeSwitcher;

.field private m_ExposureController:Lcom/meizu/media/camera/ExposureController;

.field private m_FlashController:Lcom/meizu/media/camera/FlashController;

.field private m_FocusExposureIndicator:Lcom/meizu/media/camera/ui/FocusExposureIndicator;

.field private m_PanoramaUI:Lcom/meizu/media/camera/panorama/PanoramaUI;

.field private m_SceneManager:Lcom/meizu/media/camera/scene/SceneManager;

.field private m_Settings:Lcom/oneplus/base/Settings;

.field private m_TrackOnEvent:Ljava/lang/reflect/Method;

.field private m_TrackerData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_ZoomController:Lcom/meizu/media/camera/ZoomController;


# direct methods
.method public constructor <init>(Lcom/meizu/media/camera/CameraActivity;)V
    .locals 3
    .param p1, "cameraActivity"    # Lcom/meizu/media/camera/CameraActivity;

    .prologue
    const/4 v2, 0x0

    .line 70
    const-string v0, "App Tracker"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/meizu/media/camera/CameraComponent;-><init>(Ljava/lang/String;Lcom/meizu/media/camera/CameraActivity;Z)V

    .line 50
    iput-object v2, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_AppTracker:Ljava/lang/Object;

    .line 51
    iput-object v2, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_TrackOnEvent:Ljava/lang/reflect/Method;

    .line 65
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_BurstCount:Ljava/lang/Integer;

    .line 71
    return-void
.end method

.method static synthetic access$002(Lcom/meizu/media/camera/AppTrackerImpl;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/AppTrackerImpl;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_BurstCount:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/meizu/media/camera/AppTrackerImpl;)Lcom/meizu/media/camera/capturemode/CaptureModeManager;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/AppTrackerImpl;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_CaptureModeManager:Lcom/meizu/media/camera/capturemode/CaptureModeManager;

    return-object v0
.end method

.method private getDuration(Ljava/lang/Long;)Ljava/lang/String;
    .locals 4
    .param p1, "recordingTime"    # Ljava/lang/Long;

    .prologue
    .line 330
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 331
    const-string v0, "0s"

    .line 349
    :goto_0
    return-object v0

    .line 333
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0xa

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 334
    const-string v0, "<= 10s"

    goto :goto_0

    .line 336
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1e

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 337
    const-string v0, "11s~30s"

    goto :goto_0

    .line 339
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3c

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    .line 340
    const-string v0, "30s~60s"

    goto :goto_0

    .line 342
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-gtz v0, :cond_4

    .line 343
    const-string v0, "61s~300s"

    goto :goto_0

    .line 345
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x258

    cmp-long v0, v0, v2

    if-gtz v0, :cond_5

    .line 346
    const-string v0, "301s~600s"

    goto :goto_0

    .line 349
    :cond_5
    const-string v0, "> 600s"

    goto :goto_0
.end method

.method private getPanoramaLastResult(I)Ljava/lang/String;
    .locals 1
    .param p1, "result"    # I

    .prologue
    .line 313
    sparse-switch p1, :sswitch_data_0

    .line 324
    const-string v0, "UNKNOWN_ERROR"

    :goto_0
    return-object v0

    .line 316
    :sswitch_0
    const-string v0, "SUCCESS"

    goto :goto_0

    .line 318
    :sswitch_1
    const-string v0, "BIG_DISPLACEMENT"

    goto :goto_0

    .line 320
    :sswitch_2
    const-string v0, "WRONG_DIRECTION"

    goto :goto_0

    .line 322
    :sswitch_3
    const-string v0, "MOVE_TOO_FAST"

    goto :goto_0

    .line 313
    :sswitch_data_0
    .sparse-switch
        -0xc -> :sswitch_1
        -0xb -> :sswitch_3
        -0xa -> :sswitch_2
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private trackerCameraCapture()Z
    .locals 4

    .prologue
    .line 203
    iget-object v0, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_CameraActivity:Lcom/meizu/media/camera/CameraActivity;

    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/Settings;

    iput-object v0, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_Settings:Lcom/oneplus/base/Settings;

    .line 204
    iget-object v0, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_CameraActivity:Lcom/meizu/media/camera/CameraActivity;

    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/Camera;

    iput-object v0, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_Camera:Lcom/meizu/media/camera/Camera;

    .line 205
    iget-object v0, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_ExposureController:Lcom/meizu/media/camera/ExposureController;

    if-nez v0, :cond_0

    .line 206
    const-class v0, Lcom/meizu/media/camera/ExposureController;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/AppTrackerImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/ExposureController;

    iput-object v0, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_ExposureController:Lcom/meizu/media/camera/ExposureController;

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_Camera:Lcom/meizu/media/camera/Camera;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_SceneManager:Lcom/meizu/media/camera/scene/SceneManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_FlashController:Lcom/meizu/media/camera/FlashController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_ZoomController:Lcom/meizu/media/camera/ZoomController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_CaptureModeManager:Lcom/meizu/media/camera/capturemode/CaptureModeManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_Settings:Lcom/oneplus/base/Settings;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_ExposureController:Lcom/meizu/media/camera/ExposureController;

    if-nez v0, :cond_2

    .line 210
    :cond_1
    const/4 v0, 0x0

    .line 248
    :goto_0
    return v0

    .line 214
    :cond_2
    iget-object v1, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_TrackerData:Ljava/util/Map;

    const-string v2, "CaptureMode"

    iget-object v0, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_CaptureModeManager:Lcom/meizu/media/camera/capturemode/CaptureModeManager;

    sget-object v3, Lcom/meizu/media/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/meizu/media/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/capturemode/CaptureMode;

    sget-object v3, Lcom/meizu/media/camera/capturemode/CaptureMode;->PROP_ID:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/meizu/media/camera/capturemode/CaptureMode;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v1, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_TrackerData:Ljava/util/Map;

    const-string v2, "MediaType"

    iget-object v0, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_CameraActivity:Lcom/meizu/media/camera/CameraActivity;

    sget-object v3, Lcom/meizu/media/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v3}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/media/MediaType;

    invoke-virtual {v0}, Lcom/meizu/media/camera/media/MediaType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v1, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_TrackerData:Ljava/util/Map;

    const-string v2, "CameraLensFacing"

    iget-object v0, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_Camera:Lcom/meizu/media/camera/Camera;

    sget-object v3, Lcom/meizu/media/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/meizu/media/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/Camera$LensFacing;

    invoke-virtual {v0}, Lcom/meizu/media/camera/Camera$LensFacing;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v1, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_TrackerData:Ljava/util/Map;

    const-string v2, "Scene"

    iget-object v0, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_SceneManager:Lcom/meizu/media/camera/scene/SceneManager;

    sget-object v3, Lcom/meizu/media/camera/scene/SceneManager;->PROP_SCENE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/meizu/media/camera/scene/SceneManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/scene/Scene;

    sget-object v3, Lcom/meizu/media/camera/BasicMode;->PROP_ID:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/meizu/media/camera/scene/Scene;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v1, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_TrackerData:Ljava/util/Map;

    const-string v2, "SelfTimer"

    iget-object v0, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_CameraActivity:Lcom/meizu/media/camera/CameraActivity;

    sget-object v3, Lcom/meizu/media/camera/CameraActivity;->PROP_SELF_TIMER_INTERVAL:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v3}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v1, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_TrackerData:Ljava/util/Map;

    const-string v2, "DigitalZoom"

    iget-object v0, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_ZoomController:Lcom/meizu/media/camera/ZoomController;

    sget-object v3, Lcom/meizu/media/camera/ZoomController;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/meizu/media/camera/ZoomController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v1, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_TrackerData:Ljava/util/Map;

    const-string v2, "FlashMode"

    iget-object v0, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_FlashController:Lcom/meizu/media/camera/FlashController;

    sget-object v3, Lcom/meizu/media/camera/FlashController;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/meizu/media/camera/FlashController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/FlashMode;

    invoke-virtual {v0}, Lcom/meizu/media/camera/FlashMode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v1, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_TrackerData:Ljava/util/Map;

    const-string v2, "ExposureCompensation"

    iget-object v0, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_ExposureController:Lcom/meizu/media/camera/ExposureController;

    sget-object v3, Lcom/meizu/media/camera/ExposureController;->PROP_EXPOSURE_COMPENSATION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/meizu/media/camera/ExposureController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object v1, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_TrackerData:Ljava/util/Map;

    const-string v2, "PictureSize"

    iget-object v0, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_Camera:Lcom/meizu/media/camera/Camera;

    sget-object v3, Lcom/meizu/media/camera/Camera;->PROP_PICTURE_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/meizu/media/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object v1, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_TrackerData:Ljava/util/Map;

    const-string v2, "VideoSize"

    iget-object v0, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_Camera:Lcom/meizu/media/camera/Camera;

    sget-object v3, Lcom/meizu/media/camera/Camera;->PROP_VIDEO_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/meizu/media/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v0, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_TrackerData:Ljava/util/Map;

    const-string v1, "PictureCount"

    iget-object v2, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_BurstCount:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object v1, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_TrackerData:Ljava/util/Map;

    const-string v2, "Duration"

    iget-object v0, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_CameraActivity:Lcom/meizu/media/camera/CameraActivity;

    sget-object v3, Lcom/meizu/media/camera/CameraActivity;->PROP_ELAPSED_RECORDING_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v3}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/AppTrackerImpl;->getDuration(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object v1, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_TrackerData:Ljava/util/Map;

    const-string v2, "IsBurst"

    iget-object v0, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_CameraActivity:Lcom/meizu/media/camera/CameraActivity;

    sget-object v3, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_BURST_PHOTO_ON_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v3}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v1, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_TrackerData:Ljava/util/Map;

    const-string v2, "IsVideoSnapshot"

    iget-object v0, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_CameraActivity:Lcom/meizu/media/camera/CameraActivity;

    sget-object v3, Lcom/meizu/media/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v3}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/meizu/media/camera/media/MediaType;->VIDEO:Lcom/meizu/media/camera/media/MediaType;

    if-ne v0, v3, :cond_3

    const-string v0, "True"

    :goto_1
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v1, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_TrackerData:Ljava/util/Map;

    const-string v2, "IsGridOn"

    iget-object v0, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_Settings:Lcom/oneplus/base/Settings;

    const-string v3, "Grid.IsVisible"

    invoke-virtual {v0, v3}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "True"

    :goto_2
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v1, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_TrackerData:Ljava/util/Map;

    const-string v2, "IsLocationOn"

    iget-object v0, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_Settings:Lcom/oneplus/base/Settings;

    const-string v3, "Location.Save"

    invoke-virtual {v0, v3}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "True"

    :goto_3
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-object v1, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_TrackerData:Ljava/util/Map;

    const-string v2, "IsShutterSoundOn"

    iget-object v0, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_Settings:Lcom/oneplus/base/Settings;

    const-string v3, "ShutterSound"

    invoke-virtual {v0, v3}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "True"

    :goto_4
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 240
    :cond_3
    const-string v0, "False"

    goto :goto_1

    .line 242
    :cond_4
    const-string v0, "False"

    goto :goto_2

    .line 244
    :cond_5
    const-string v0, "False"

    goto :goto_3

    .line 246
    :cond_6
    const-string v0, "False"

    goto :goto_4
.end method

.method private trackerCameraCaptureManual()Z
    .locals 4

    .prologue
    .line 262
    iget-object v0, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_CameraActivity:Lcom/meizu/media/camera/CameraActivity;

    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/Camera;

    iput-object v0, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_Camera:Lcom/meizu/media/camera/Camera;

    .line 263
    iget-object v0, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_FocusExposureIndicator:Lcom/meizu/media/camera/ui/FocusExposureIndicator;

    if-nez v0, :cond_0

    .line 264
    const-class v0, Lcom/meizu/media/camera/ui/FocusExposureIndicator;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/AppTrackerImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/ui/FocusExposureIndicator;

    iput-object v0, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_FocusExposureIndicator:Lcom/meizu/media/camera/ui/FocusExposureIndicator;

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_Camera:Lcom/meizu/media/camera/Camera;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_FocusExposureIndicator:Lcom/meizu/media/camera/ui/FocusExposureIndicator;

    if-nez v0, :cond_2

    .line 267
    :cond_1
    const/4 v0, 0x0

    .line 277
    :goto_0
    return v0

    .line 270
    :cond_2
    iget-object v1, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_TrackerData:Ljava/util/Map;

    const-string v2, "ISO"

    iget-object v0, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_Camera:Lcom/meizu/media/camera/Camera;

    sget-object v3, Lcom/meizu/media/camera/Camera;->PROP_ISO:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/meizu/media/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    const-string v0, "Auto"

    :goto_1
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object v1, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_TrackerData:Ljava/util/Map;

    const-string v2, "WhiteBalance"

    iget-object v0, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_Camera:Lcom/meizu/media/camera/Camera;

    sget-object v3, Lcom/meizu/media/camera/Camera;->PROP_AWB_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/meizu/media/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    iget-object v1, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_TrackerData:Ljava/util/Map;

    const-string v2, "Focus"

    iget-object v0, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_Camera:Lcom/meizu/media/camera/Camera;

    sget-object v3, Lcom/meizu/media/camera/Camera;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/meizu/media/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/meizu/media/camera/FocusMode;->MANUAL:Lcom/meizu/media/camera/FocusMode;

    if-eq v0, v3, :cond_4

    const-string v0, "Auto"

    :goto_2
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    iget-object v1, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_TrackerData:Ljava/util/Map;

    const-string v2, "IsAeAfSeparated"

    iget-object v0, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_FocusExposureIndicator:Lcom/meizu/media/camera/ui/FocusExposureIndicator;

    sget-object v3, Lcom/meizu/media/camera/ui/FocusExposureIndicator;->PROP_IS_FOCUS_EXPOSURE_SEPARATED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/meizu/media/camera/ui/FocusExposureIndicator;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const/4 v0, 0x1

    goto :goto_0

    .line 270
    :cond_3
    iget-object v0, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_Camera:Lcom/meizu/media/camera/Camera;

    sget-object v3, Lcom/meizu/media/camera/Camera;->PROP_ISO:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/meizu/media/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 274
    :cond_4
    const-string v0, "Manual"

    goto :goto_2
.end method

.method private trackerCameraCapturePanorama()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 283
    iget-object v0, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_PanoramaUI:Lcom/meizu/media/camera/panorama/PanoramaUI;

    if-nez v0, :cond_0

    .line 284
    const-class v0, Lcom/meizu/media/camera/panorama/PanoramaUI;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/AppTrackerImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/panorama/PanoramaUI;

    iput-object v0, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_PanoramaUI:Lcom/meizu/media/camera/panorama/PanoramaUI;

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_PanoramaUI:Lcom/meizu/media/camera/panorama/PanoramaUI;

    if-nez v0, :cond_1

    move v0, v1

    .line 294
    :goto_0
    return v0

    .line 289
    :cond_1
    iget-object v2, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_TrackerData:Ljava/util/Map;

    const-string v3, "Result"

    iget-object v0, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_PanoramaUI:Lcom/meizu/media/camera/panorama/PanoramaUI;

    sget-object v4, Lcom/meizu/media/camera/panorama/PanoramaUI;->PROP_LAST_FRAME_ADD_RESULT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v4}, Lcom/meizu/media/camera/panorama/PanoramaUI;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/AppTrackerImpl;->getPanoramaLastResult(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    iget-object v2, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_TrackerData:Ljava/util/Map;

    const-string v3, "IsStoppedByUser"

    iget-object v0, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_PanoramaUI:Lcom/meizu/media/camera/panorama/PanoramaUI;

    sget-object v4, Lcom/meizu/media/camera/panorama/PanoramaUI;->PROP_IS_STOPPED_BY_USER:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v4}, Lcom/meizu/media/camera/panorama/PanoramaUI;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget-object v2, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_TrackerData:Ljava/util/Map;

    const-string v3, "CapturedLength"

    iget-object v0, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_PanoramaUI:Lcom/meizu/media/camera/panorama/PanoramaUI;

    sget-object v4, Lcom/meizu/media/camera/panorama/PanoramaUI;->PROP_PANORAMA_CAPTURE_LENGTH:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v4}, Lcom/meizu/media/camera/panorama/PanoramaUI;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x3

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private trackerCameraLaunch()Z
    .locals 3

    .prologue
    .line 255
    iget-object v0, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_TrackerData:Ljava/util/Map;

    const-string v1, "StartMode"

    iget-object v2, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_CameraActivity:Lcom/meizu/media/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/meizu/media/camera/CameraActivity;->getStartMode()Lcom/meizu/media/camera/StartMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/media/camera/StartMode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const/4 v0, 0x1

    return v0
.end method

.method private trackerCameraSwitchCaptureMode()Z
    .locals 4

    .prologue
    .line 300
    iget-object v0, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_CaptureModeSwitcher:Lcom/meizu/media/camera/ui/CaptureModeSwitcher;

    if-nez v0, :cond_0

    .line 302
    const-class v0, Lcom/meizu/media/camera/ui/CaptureModeSwitcher;

    invoke-virtual {p0, v0}, Lcom/meizu/media/camera/AppTrackerImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/ui/CaptureModeSwitcher;

    iput-object v0, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_CaptureModeSwitcher:Lcom/meizu/media/camera/ui/CaptureModeSwitcher;

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_CaptureModeSwitcher:Lcom/meizu/media/camera/ui/CaptureModeSwitcher;

    if-nez v0, :cond_1

    .line 305
    const/4 v0, 0x0

    .line 308
    :goto_0
    return v0

    .line 307
    :cond_1
    iget-object v1, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_TrackerData:Ljava/util/Map;

    const-string v2, "Camera.SwitchCaptureMode"

    iget-object v0, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_CaptureModeSwitcher:Lcom/meizu/media/camera/ui/CaptureModeSwitcher;

    sget-object v3, Lcom/meizu/media/camera/ui/CaptureModeSwitcher;->PROP_SWITCH_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v3}, Lcom/meizu/media/camera/ui/CaptureModeSwitcher;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;

    invoke-virtual {v0}, Lcom/meizu/media/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onEvent(I)V
    .locals 8
    .param p1, "action"    # I

    .prologue
    .line 153
    iget-object v3, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_AppTracker:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_TrackOnEvent:Ljava/lang/reflect/Method;

    if-nez v3, :cond_1

    .line 154
    :cond_0
    iget-object v3, p0, Lcom/meizu/media/camera/AppTrackerImpl;->TAG:Ljava/lang/String;

    const-string v4, "onEvent failed"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-object v3, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_TrackerData:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 159
    const/4 v2, 0x0

    .line 160
    .local v2, "trackerAction":Ljava/lang/String;
    const/4 v1, 0x0

    .line 162
    .local v1, "isSaved":Z
    packed-switch p1, :pswitch_data_0

    .line 188
    :goto_1
    if-eqz v1, :cond_2

    if-nez v2, :cond_3

    .line 189
    :cond_2
    iget-object v3, p0, Lcom/meizu/media/camera/AppTrackerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tracker onEvent failed, aciton :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", trackerAction :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :pswitch_0
    const-string v2, "Camera.Capture"

    .line 166
    invoke-direct {p0}, Lcom/meizu/media/camera/AppTrackerImpl;->trackerCameraCapture()Z

    move-result v1

    .line 167
    goto :goto_1

    .line 169
    :pswitch_1
    const-string v2, "Camera.Capture.Manua"

    .line 170
    invoke-direct {p0}, Lcom/meizu/media/camera/AppTrackerImpl;->trackerCameraCaptureManual()Z

    move-result v1

    .line 171
    goto :goto_1

    .line 173
    :pswitch_2
    const-string v2, "Camera.Launch"

    .line 174
    invoke-direct {p0}, Lcom/meizu/media/camera/AppTrackerImpl;->trackerCameraLaunch()Z

    move-result v1

    .line 175
    goto :goto_1

    .line 177
    :pswitch_3
    const-string v2, "Camera.Capture.Panorama"

    .line 178
    invoke-direct {p0}, Lcom/meizu/media/camera/AppTrackerImpl;->trackerCameraCapturePanorama()Z

    move-result v1

    .line 179
    goto :goto_1

    .line 181
    :pswitch_4
    const-string v2, "Camera.SwitchCaptureMode"

    .line 182
    invoke-direct {p0}, Lcom/meizu/media/camera/AppTrackerImpl;->trackerCameraSwitchCaptureMode()Z

    move-result v1

    .line 183
    goto :goto_1

    .line 194
    :cond_3
    :try_start_0
    iget-object v3, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_TrackOnEvent:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_AppTracker:Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_TrackerData:Ljava/util/Map;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 162
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onInitialize()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 78
    :try_start_0
    const-string v3, "net.oneplus.odm.insight.tracker.AppTracker"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 79
    .local v0, "appTrackerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 80
    .local v1, "appTrackerContructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const-string v3, "onEvent"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/util/Map;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_TrackOnEvent:Ljava/lang/reflect/Method;

    .line 81
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/meizu/media/camera/AppTrackerImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_AppTracker:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_TrackerData:Ljava/util/Map;

    .line 90
    invoke-virtual {p0}, Lcom/meizu/media/camera/AppTrackerImpl;->getCameraActivity()Lcom/meizu/media/camera/CameraActivity;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_CameraActivity:Lcom/meizu/media/camera/CameraActivity;

    .line 91
    const-class v3, Lcom/meizu/media/camera/capturemode/CaptureModeManager;

    invoke-virtual {p0, v3}, Lcom/meizu/media/camera/AppTrackerImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v3

    check-cast v3, Lcom/meizu/media/camera/capturemode/CaptureModeManager;

    iput-object v3, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_CaptureModeManager:Lcom/meizu/media/camera/capturemode/CaptureModeManager;

    .line 92
    const-class v3, Lcom/meizu/media/camera/ui/CameraPreviewGrid;

    invoke-virtual {p0, v3}, Lcom/meizu/media/camera/AppTrackerImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v3

    check-cast v3, Lcom/meizu/media/camera/ui/CameraPreviewGrid;

    iput-object v3, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_CameraPreviewGrid:Lcom/meizu/media/camera/ui/CameraPreviewGrid;

    .line 93
    iget-object v3, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_CameraActivity:Lcom/meizu/media/camera/CameraActivity;

    sget-object v4, Lcom/meizu/media/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/base/Settings;

    iput-object v3, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_Settings:Lcom/oneplus/base/Settings;

    .line 94
    const-class v3, Lcom/meizu/media/camera/scene/SceneManager;

    invoke-virtual {p0, v3}, Lcom/meizu/media/camera/AppTrackerImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v3

    check-cast v3, Lcom/meizu/media/camera/scene/SceneManager;

    iput-object v3, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_SceneManager:Lcom/meizu/media/camera/scene/SceneManager;

    .line 95
    const-class v3, Lcom/meizu/media/camera/ZoomController;

    invoke-virtual {p0, v3}, Lcom/meizu/media/camera/AppTrackerImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v3

    check-cast v3, Lcom/meizu/media/camera/ZoomController;

    iput-object v3, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_ZoomController:Lcom/meizu/media/camera/ZoomController;

    .line 96
    const-class v3, Lcom/meizu/media/camera/FlashController;

    invoke-virtual {p0, v3}, Lcom/meizu/media/camera/AppTrackerImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v3

    check-cast v3, Lcom/meizu/media/camera/FlashController;

    iput-object v3, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_FlashController:Lcom/meizu/media/camera/FlashController;

    .line 97
    const-class v3, Lcom/meizu/media/camera/ExposureController;

    invoke-virtual {p0, v3}, Lcom/meizu/media/camera/AppTrackerImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v3

    check-cast v3, Lcom/meizu/media/camera/ExposureController;

    iput-object v3, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_ExposureController:Lcom/meizu/media/camera/ExposureController;

    .line 99
    iget-object v3, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_CameraActivity:Lcom/meizu/media/camera/CameraActivity;

    sget-object v4, Lcom/meizu/media/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v5, Lcom/meizu/media/camera/AppTrackerImpl$1;

    invoke-direct {v5, p0}, Lcom/meizu/media/camera/AppTrackerImpl$1;-><init>(Lcom/meizu/media/camera/AppTrackerImpl;)V

    invoke-virtual {v3, v4, v5}, Lcom/meizu/media/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 120
    iget-object v3, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_CameraActivity:Lcom/meizu/media/camera/CameraActivity;

    sget-object v4, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_LAUNCHING:Lcom/oneplus/base/PropertyKey;

    new-instance v5, Lcom/meizu/media/camera/AppTrackerImpl$2;

    invoke-direct {v5, p0}, Lcom/meizu/media/camera/AppTrackerImpl$2;-><init>(Lcom/meizu/media/camera/AppTrackerImpl;)V

    invoke-virtual {v3, v4, v5}, Lcom/meizu/media/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 132
    iget-object v3, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_CameraActivity:Lcom/meizu/media/camera/CameraActivity;

    sget-object v4, Lcom/meizu/media/camera/CameraActivity;->EVENT_BURST_PHOTO_RECEIVED:Lcom/oneplus/base/EventKey;

    new-instance v5, Lcom/meizu/media/camera/AppTrackerImpl$3;

    invoke-direct {v5, p0}, Lcom/meizu/media/camera/AppTrackerImpl$3;-><init>(Lcom/meizu/media/camera/AppTrackerImpl;)V

    invoke-virtual {v3, v4, v5}, Lcom/meizu/media/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 141
    iget-object v3, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_CaptureModeManager:Lcom/meizu/media/camera/capturemode/CaptureModeManager;

    sget-object v4, Lcom/meizu/media/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    new-instance v5, Lcom/meizu/media/camera/AppTrackerImpl$4;

    invoke-direct {v5, p0}, Lcom/meizu/media/camera/AppTrackerImpl$4;-><init>(Lcom/meizu/media/camera/AppTrackerImpl;)V

    invoke-interface {v3, v4, v5}, Lcom/meizu/media/camera/capturemode/CaptureModeManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 149
    .end local v0    # "appTrackerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "appTrackerContructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v2

    .line 83
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    iput-object v7, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_AppTracker:Ljava/lang/Object;

    .line 85
    iput-object v7, p0, Lcom/meizu/media/camera/AppTrackerImpl;->m_TrackOnEvent:Ljava/lang/reflect/Method;

    goto :goto_0
.end method
