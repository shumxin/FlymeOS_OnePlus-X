.class final Lcom/oneplus/camera/CameraActivity$SettingsHandle;
.super Lcom/oneplus/base/Handle;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsHandle"
.end annotation


# instance fields
.field public final settings:Lcom/oneplus/base/Settings;

.field final synthetic this$0:Lcom/oneplus/camera/CameraActivity;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/base/Settings;)V
    .locals 1
    .param p2, "settings"    # Lcom/oneplus/base/Settings;

    .prologue
    .line 608
    iput-object p1, p0, Lcom/oneplus/camera/CameraActivity$SettingsHandle;->this$0:Lcom/oneplus/camera/CameraActivity;

    .line 609
    const-string v0, "Settings"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 610
    iput-object p2, p0, Lcom/oneplus/camera/CameraActivity$SettingsHandle;->settings:Lcom/oneplus/base/Settings;

    .line 611
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 616
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity$SettingsHandle;->this$0:Lcom/oneplus/camera/CameraActivity;

    # invokes: Lcom/oneplus/camera/CameraActivity;->restoreSettings(Lcom/oneplus/camera/CameraActivity$SettingsHandle;)V
    invoke-static {v0, p0}, Lcom/oneplus/camera/CameraActivity;->access$500(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/CameraActivity$SettingsHandle;)V

    .line 617
    return-void
.end method
