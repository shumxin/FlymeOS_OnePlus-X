.class public Lcom/meizu/media/camera/CameraIdEventArgs;
.super Lcom/oneplus/base/EventArgs;
.source "CameraIdEventArgs.java"


# instance fields
.field private final m_CameraId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/oneplus/base/EventArgs;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/meizu/media/camera/CameraIdEventArgs;->m_CameraId:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public final getCameraId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/meizu/media/camera/CameraIdEventArgs;->m_CameraId:Ljava/lang/String;

    return-object v0
.end method
