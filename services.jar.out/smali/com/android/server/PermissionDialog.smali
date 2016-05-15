.class public Lcom/android/server/PermissionDialog;
.super Lcom/android/server/BasePermissionDialog;
.source "PermissionDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PermissionDialog$UpdateRunnable;
    }
.end annotation


# static fields
.field static final ACTION_ALLOWED:I = 0x2

.field static final ACTION_IGNORED:I = 0x4

.field static final ACTION_IGNORED_TIMEOUT:I = 0x8

.field static final DISMISS_TIMEOUT:J = 0x3a98L

.field private static final TAG:Ljava/lang/String; = "PermissionDialog"

.field private static sCountDown:I


# instance fields
.field private mChoice:Landroid/widget/CheckBox;

.field private final mCode:I

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field final mOpLabels:[Ljava/lang/CharSequence;

.field private final mPackageName:Ljava/lang/String;

.field private final mService:Lcom/android/server/AppOpsService;

.field private mTimer:Ljava/util/Timer;

.field private mToastMsg:Ljava/lang/String;

.field private mUid:I

.field private mView:Landroid/view/View;

.field private uiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/16 v0, 0xf

    sput v0, Lcom/android/server/PermissionDialog;->sCountDown:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/AppOpsService;Landroid/os/Handler;IILjava/lang/String;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/AppOpsService;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "code"    # I
    .param p5, "uid"    # I
    .param p6, "packageName"    # Ljava/lang/String;

    .prologue
    const v8, 0x1040556

    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/BasePermissionDialog;-><init>(Landroid/content/Context;)V

    .line 66
    new-instance v4, Ljava/util/Timer;

    invoke-direct {v4}, Ljava/util/Timer;-><init>()V

    iput-object v4, p0, Lcom/android/server/PermissionDialog;->mTimer:Ljava/util/Timer;

    .line 196
    new-instance v4, Lcom/android/server/PermissionDialog$2;

    invoke-direct {v4, p0}, Lcom/android/server/PermissionDialog$2;-><init>(Lcom/android/server/PermissionDialog;)V

    iput-object v4, p0, Lcom/android/server/PermissionDialog;->mHandler:Landroid/os/Handler;

    .line 80
    iput-object p3, p0, Lcom/android/server/PermissionDialog;->uiHandler:Landroid/os/Handler;

    .line 83
    iput-object p1, p0, Lcom/android/server/PermissionDialog;->mContext:Landroid/content/Context;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 86
    .local v2, "res":Landroid/content/res/Resources;
    iput-object p2, p0, Lcom/android/server/PermissionDialog;->mService:Lcom/android/server/AppOpsService;

    .line 87
    iput p4, p0, Lcom/android/server/PermissionDialog;->mCode:I

    .line 88
    iput-object p6, p0, Lcom/android/server/PermissionDialog;->mPackageName:Ljava/lang/String;

    .line 89
    iput p5, p0, Lcom/android/server/PermissionDialog;->mUid:I

    .line 90
    const v4, 0x107004d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/PermissionDialog;->mOpLabels:[Ljava/lang/CharSequence;

    .line 93
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/PermissionDialog;->setCancelable(Z)V

    .line 95
    const/4 v4, -0x1

    const v5, 0x1040555

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/PermissionDialog;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/server/PermissionDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 100
    const/4 v4, -0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/server/PermissionDialog;->sCountDown:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/PermissionDialog;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/server/PermissionDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 103
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/PermissionDialog;->mToastMsg:Ljava/lang/String;

    .line 105
    const v4, 0x10406c3

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/PermissionDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/server/PermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 107
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission info: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/PermissionDialog;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/PermissionDialog;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 108
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v4, v4, 0x110

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 110
    invoke-virtual {p0}, Lcom/android/server/PermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/server/PermissionDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x109008b

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/PermissionDialog;->mView:Landroid/view/View;

    .line 115
    iget-object v4, p0, Lcom/android/server/PermissionDialog;->mView:Landroid/view/View;

    const v5, 0x1020351

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 117
    .local v3, "tv":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/server/PermissionDialog;->mView:Landroid/view/View;

    const v5, 0x1020353

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/android/server/PermissionDialog;->mChoice:Landroid/widget/CheckBox;

    .line 122
    iget-object v4, p0, Lcom/android/server/PermissionDialog;->mChoice:Landroid/widget/CheckBox;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 125
    iget-object v4, p0, Lcom/android/server/PermissionDialog;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/PermissionDialog;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/android/server/PermissionDialog;->mPackageName:Ljava/lang/String;

    .line 128
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/PermissionDialog;->mOpLabels:[Ljava/lang/CharSequence;

    iget v6, p0, Lcom/android/server/PermissionDialog;->mCode:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v4, p0, Lcom/android/server/PermissionDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/android/server/PermissionDialog;->setView(Landroid/view/View;)V

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/PermissionDialog;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PermissionDialog;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/server/PermissionDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/PermissionDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PermissionDialog;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/server/PermissionDialog;->mToastMsg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 44
    sget v0, Lcom/android/server/PermissionDialog;->sCountDown:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/PermissionDialog;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PermissionDialog;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/server/PermissionDialog;->uiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/PermissionDialog;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PermissionDialog;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/server/PermissionDialog;->mChoice:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/PermissionDialog;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PermissionDialog;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/server/PermissionDialog;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/PermissionDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PermissionDialog;

    .prologue
    .line 44
    iget v0, p0, Lcom/android/server/PermissionDialog;->mCode:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/PermissionDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PermissionDialog;

    .prologue
    .line 44
    iget v0, p0, Lcom/android/server/PermissionDialog;->mUid:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/PermissionDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PermissionDialog;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/server/PermissionDialog;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/PermissionDialog;)Lcom/android/server/AppOpsService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PermissionDialog;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/server/PermissionDialog;->mService:Lcom/android/server/AppOpsService;

    return-object v0
.end method

.method private getAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v4, p0, Lcom/android/server/PermissionDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 136
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/16 v4, 0x2200

    :try_start_0
    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 142
    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 145
    :cond_0
    :goto_0
    return-object v3

    .line 139
    :catch_0
    move-exception v1

    .line 140
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method


# virtual methods
.method public updateText()V
    .locals 7

    .prologue
    const-wide/16 v2, 0x3e8

    .line 180
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/android/server/PermissionDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    .line 181
    .local v6, "button":Landroid/widget/Button;
    if-eqz v6, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/server/PermissionDialog;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/PermissionDialog$1;

    invoke-direct {v1, p0, v6}, Lcom/android/server/PermissionDialog$1;-><init>(Lcom/android/server/PermissionDialog;Landroid/widget/Button;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 192
    :cond_0
    return-void
.end method
