.class final Lcom/android/internal/policy/impl/UcGlobalActions$RebootAction;
.super Lcom/android/internal/policy/impl/UcGlobalActions$SinglePressAction;
.source "UcGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/UcGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RebootAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/UcGlobalActions;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/UcGlobalActions;)V
    .locals 2

    .prologue
    .line 504
    iput-object p1, p0, Lcom/android/internal/policy/impl/UcGlobalActions$RebootAction;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    .line 505
    const v0, 0x108037b

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/UcGlobalActions$SinglePressAction;-><init>(ILjava/lang/CharSequence;)V

    .line 507
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/UcGlobalActions;Lcom/android/internal/policy/impl/UcGlobalActions$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;
    .param p2, "x1"    # Lcom/android/internal/policy/impl/UcGlobalActions$1;

    .prologue
    .line 503
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/UcGlobalActions$RebootAction;-><init>(Lcom/android/internal/policy/impl/UcGlobalActions;)V

    return-void
.end method


# virtual methods
.method public onPress()V
    .locals 5

    .prologue
    .line 522
    :try_start_0
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 524
    .local v1, "pm":Landroid/os/IPowerManager;
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    .end local v1    # "pm":Landroid/os/IPowerManager;
    :goto_0
    return-void

    .line 525
    :catch_0
    move-exception v0

    .line 526
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "UcGlobalActions"

    const-string v3, "PowerManager service died!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 516
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 511
    const/4 v0, 0x1

    return v0
.end method
