.class public Lcom/android/server/am/TaskPersister;
.super Ljava/lang/Object;
.source "TaskPersister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/TaskPersister$OtherDeviceTask;,
        Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;,
        Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;,
        Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;,
        Lcom/android/server/am/TaskPersister$WriteQueueItem;
    }
.end annotation


# static fields
.field static final DEBUG_PERSISTER:Z = false

.field static final DEBUG_RESTORER:Z = false

.field private static final FLUSH_QUEUE:J = -0x1L

.field private static final IMAGES_DIRNAME:Ljava/lang/String; = "recent_images"

.field static final IMAGE_EXTENSION:Ljava/lang/String; = ".png"

.field private static final INTER_WRITE_DELAY_MS:J = 0x1f4L

.field private static final MAX_INSTALL_WAIT_TIME:J = 0x5265c00L

.field private static final MAX_WRITE_QUEUE_LENGTH:I = 0x6

.field private static final PRE_TASK_DELAY_MS:J = 0xbb8L

.field private static final RECENTS_FILENAME:Ljava/lang/String; = "_task"

.field private static final RESTORED_TASKS_DIRNAME:Ljava/lang/String; = "restored_recent_tasks"

.field static final TAG:Ljava/lang/String; = "TaskPersister"

.field private static final TAG_TASK:Ljava/lang/String; = "task"

.field private static final TASKS_DIRNAME:Ljava/lang/String; = "recent_tasks"

.field private static final TASK_EXTENSION:Ljava/lang/String; = ".xml"

.field static sImagesDir:Ljava/io/File;

.field static sRestoredTasksDir:Ljava/io/File;

.field static sTasksDir:Ljava/io/File;


# instance fields
.field private mExpiredTasksCleanupTime:J

.field private final mLazyTaskWriterThread:Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;

.field private mNextWriteTime:J

.field private mOtherDeviceTasksMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/TaskPersister$OtherDeviceTask;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mPackageUidMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field mWriteQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskPersister$WriteQueueItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/io/File;Lcom/android/server/am/ActivityStackSupervisor;)V
    .locals 3
    .param p1, "systemDir"    # Ljava/io/File;
    .param p2, "stackSupervisor"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    .line 133
    new-instance v0, Landroid/util/ArrayMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/TaskPersister;->mOtherDeviceTasksMap:Landroid/util/ArrayMap;

    .line 141
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/am/TaskPersister;->mExpiredTasksCleanupTime:J

    .line 144
    new-instance v0, Ljava/io/File;

    const-string v1, "recent_tasks"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/TaskPersister;->sTasksDir:Ljava/io/File;

    .line 145
    sget-object v0, Lcom/android/server/am/TaskPersister;->sTasksDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    sget-object v0, Lcom/android/server/am/TaskPersister;->sTasksDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    const-string v0, "TaskPersister"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure creating tasks directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/am/TaskPersister;->sTasksDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "recent_images"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/TaskPersister;->sImagesDir:Ljava/io/File;

    .line 153
    sget-object v0, Lcom/android/server/am/TaskPersister;->sImagesDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    sget-object v0, Lcom/android/server/am/TaskPersister;->sImagesDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    const-string v0, "TaskPersister"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure creating images directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/am/TaskPersister;->sImagesDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v1, "restored_recent_tasks"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/TaskPersister;->sRestoredTasksDir:Ljava/io/File;

    .line 162
    iput-object p2, p0, Lcom/android/server/am/TaskPersister;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 163
    iget-object v0, p2, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, Lcom/android/server/am/TaskPersister;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 165
    new-instance v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;

    const-string v1, "LazyTaskWriterThread"

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;-><init>(Lcom/android/server/am/TaskPersister;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/TaskPersister;->mLazyTaskWriterThread:Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;

    .line 166
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/TaskPersister;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/am/TaskPersister;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/TaskPersister;Landroid/util/ArraySet;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/TaskPersister;
    .param p1, "x1"    # Landroid/util/ArraySet;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/server/am/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/TaskPersister;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/TaskPersister;

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/server/am/TaskPersister;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/TaskPersister;
    .param p1, "x1"    # J

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/android/server/am/TaskPersister;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/TaskPersister;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/server/am/TaskPersister;->removeExpiredTasksIfNeeded()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/TaskPersister;Lcom/android/server/am/TaskRecord;)Ljava/io/StringWriter;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/TaskPersister;
    .param p1, "x1"    # Lcom/android/server/am/TaskRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/server/am/TaskPersister;->saveToXml(Lcom/android/server/am/TaskRecord;)Ljava/io/StringWriter;

    move-result-object v0

    return-object v0
.end method

.method private addOtherDeviceTasksToRecentsLocked()V
    .locals 3

    .prologue
    .line 672
    iget-object v2, p0, Lcom/android/server/am/TaskPersister;->mOtherDeviceTasksMap:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 673
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/TaskPersister;->mOtherDeviceTasksMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 674
    iget-object v1, p0, Lcom/android/server/am/TaskPersister;->mOtherDeviceTasksMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/am/TaskPersister;->addOtherDeviceTasksToRecentsLocked(Ljava/lang/String;)V

    .line 673
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 676
    :cond_0
    monitor-exit v2

    .line 677
    return-void

    .line 676
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private canAddOtherDeviceTaskChain(Ljava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/TaskPersister$OtherDeviceTask;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "chain":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskPersister$OtherDeviceTask;>;"
    const/4 v7, 0x0

    .line 859
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 860
    .local v5, "validComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 861
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_6

    .line 863
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskPersister$OtherDeviceTask;

    .line 865
    .local v4, "task":Lcom/android/server/am/TaskPersister$OtherDeviceTask;
    iget-object v6, v4, Lcom/android/server/am/TaskPersister$OtherDeviceTask;->mFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    move v6, v7

    .line 902
    .end local v4    # "task":Lcom/android/server/am/TaskPersister$OtherDeviceTask;
    :goto_1
    return v6

    .line 872
    .restart local v4    # "task":Lcom/android/server/am/TaskPersister$OtherDeviceTask;
    :cond_0
    iget-object v6, v4, Lcom/android/server/am/TaskPersister$OtherDeviceTask;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/am/TaskPersister;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    move v6, v7

    .line 873
    goto :goto_1

    .line 876
    :cond_1
    iget-object v6, v4, Lcom/android/server/am/TaskPersister$OtherDeviceTask;->mLaunchPackages:Landroid/util/ArraySet;

    if-eqz v6, :cond_3

    .line 877
    iget-object v6, v4, Lcom/android/server/am/TaskPersister$OtherDeviceTask;->mLaunchPackages:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "j":I
    :goto_2
    if-ltz v2, :cond_3

    .line 878
    iget-object v6, v4, Lcom/android/server/am/TaskPersister$OtherDeviceTask;->mLaunchPackages:Landroid/util/ArraySet;

    invoke-virtual {v6, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/server/am/TaskPersister;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    move v6, v7

    .line 879
    goto :goto_1

    .line 877
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 884
    .end local v2    # "j":I
    :cond_3
    iget-object v6, v4, Lcom/android/server/am/TaskPersister$OtherDeviceTask;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 861
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 891
    :cond_4
    :try_start_0
    iget-object v6, v4, Lcom/android/server/am/TaskPersister$OtherDeviceTask;->mComponentName:Landroid/content/ComponentName;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v3, v6, v8, v9}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    if-nez v6, :cond_5

    move v6, v7

    .line 893
    goto :goto_1

    .line 895
    :cond_5
    iget-object v6, v4, Lcom/android/server/am/TaskPersister$OtherDeviceTask;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 896
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    move v6, v7

    .line 898
    goto :goto_1

    .line 902
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "task":Lcom/android/server/am/TaskPersister$OtherDeviceTask;
    :cond_6
    const/4 v6, 0x1

    goto :goto_1
.end method

.method private createTaskRecordLocked(Lcom/android/server/am/TaskPersister$OtherDeviceTask;)Lcom/android/server/am/TaskRecord;
    .locals 14
    .param p1, "other"    # Lcom/android/server/am/TaskPersister$OtherDeviceTask;

    .prologue
    .line 778
    iget-object v3, p1, Lcom/android/server/am/TaskPersister$OtherDeviceTask;->mFile:Ljava/io/File;

    .line 779
    .local v3, "file":Ljava/io/File;
    const/4 v7, 0x0

    .line 780
    .local v7, "reader":Ljava/io/BufferedReader;
    const/4 v9, 0x0

    .line 784
    .local v9, "task":Lcom/android/server/am/TaskRecord;
    :try_start_0
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/FileReader;

    invoke-direct {v11, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 785
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .local v8, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 786
    .local v5, "in":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 790
    :goto_0
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .local v2, "event":I
    const/4 v11, 0x1

    if-eq v2, v11, :cond_5

    const/4 v11, 0x3

    if-eq v2, v11, :cond_5

    .line 791
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 792
    .local v6, "name":Ljava/lang/String;
    const/4 v11, 0x2

    if-ne v2, v11, :cond_3

    .line 794
    const-string v11, "task"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 796
    iget-object v11, p0, Lcom/android/server/am/TaskPersister;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v12, p0, Lcom/android/server/am/TaskPersister;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v12}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskId()I

    move-result v12

    invoke-static {v5, v11, v12}, Lcom/android/server/am/TaskRecord;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/am/ActivityStackSupervisor;I)Lcom/android/server/am/TaskRecord;

    move-result-object v9

    .line 801
    if-eqz v9, :cond_2

    .line 802
    const/4 v11, 0x1

    iput-boolean v11, v9, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    .line 803
    const/4 v11, 0x1

    iput-boolean v11, v9, Lcom/android/server/am/TaskRecord;->inRecents:Z

    .line 805
    const/4 v11, 0x0

    iput v11, v9, Lcom/android/server/am/TaskRecord;->userId:I

    .line 807
    const/4 v11, -0x1

    iput v11, v9, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    .line 808
    const/4 v11, -0x1

    iput v11, v9, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    .line 809
    const/4 v11, -0x1

    iput v11, v9, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    .line 811
    iget-object v11, p0, Lcom/android/server/am/TaskPersister;->mPackageUidMap:Landroid/util/ArrayMap;

    iget-object v12, v9, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 812
    .local v10, "uid":Ljava/lang/Integer;
    if-nez v10, :cond_0

    .line 814
    const-string v11, "TaskPersister"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Can\'t find uid for task="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " in mPackageUidMap="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/am/TaskPersister;->mPackageUidMap:Landroid/util/ArrayMap;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 816
    const/4 v11, 0x0

    .line 846
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v7, v8

    .line 849
    .end local v2    # "event":I
    .end local v5    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .end local v10    # "uid":Ljava/lang/Integer;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :goto_1
    return-object v11

    .line 818
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "event":I
    .restart local v5    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "uid":Ljava/lang/Integer;
    :cond_0
    :try_start_2
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, v9, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    iput v11, v9, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    .line 819
    iget-object v11, v9, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v4, v11, -0x1

    .local v4, "i":I
    :goto_2
    if-ltz v4, :cond_3

    .line 820
    iget-object v11, v9, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 821
    .local v0, "activity":Lcom/android/server/am/ActivityRecord;
    iget-object v11, p0, Lcom/android/server/am/TaskPersister;->mPackageUidMap:Landroid/util/ArrayMap;

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "uid":Ljava/lang/Integer;
    check-cast v10, Ljava/lang/Integer;

    .line 822
    .restart local v10    # "uid":Ljava/lang/Integer;
    if-nez v10, :cond_1

    .line 824
    const-string v11, "TaskPersister"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Can\'t find uid for activity="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " in mPackageUidMap="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/am/TaskPersister;->mPackageUidMap:Landroid/util/ArrayMap;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 826
    const/4 v11, 0x0

    .line 846
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v7, v8

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    goto :goto_1

    .line 828
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :cond_1
    :try_start_3
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    .line 819
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 832
    .end local v0    # "activity":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "i":I
    .end local v10    # "uid":Ljava/lang/Integer;
    :cond_2
    const-string v11, "TaskPersister"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to create task for backed-up file="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-direct {p0, v3}, Lcom/android/server/am/TaskPersister;->fileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    :cond_3
    :goto_3
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 842
    .end local v2    # "event":I
    .end local v5    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "name":Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v7, v8

    .line 843
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :goto_4
    :try_start_4
    const-string v11, "TaskPersister"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to parse "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ". Error "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 844
    const-string v11, "TaskPersister"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failing file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-direct {p0, v3}, Lcom/android/server/am/TaskPersister;->fileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 846
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .end local v1    # "e":Ljava/lang/Exception;
    :goto_5
    move-object v11, v9

    .line 849
    goto/16 :goto_1

    .line 836
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "event":I
    .restart local v5    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :cond_4
    :try_start_5
    const-string v11, "TaskPersister"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "createTaskRecordLocked Unknown xml event="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " name="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 846
    .end local v2    # "event":I
    .end local v5    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v11

    move-object v7, v8

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :goto_6
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v11

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "event":I
    .restart local v5    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :cond_5
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v7, v8

    .line 847
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    goto :goto_5

    .line 846
    .end local v2    # "event":I
    .end local v5    # "in":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_1
    move-exception v11

    goto :goto_6

    .line 842
    :catch_1
    move-exception v1

    goto :goto_4
.end method

.method private fileToString(Ljava/io/File;)Ljava/lang/String;
    .locals 8
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 324
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    .line 326
    .local v2, "newline":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 327
    .local v3, "reader":Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v5, v6

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 329
    .local v4, "sb":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 330
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 334
    .end local v1    # "line":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v0

    .line 335
    .local v0, "ioe":Ljava/io/IOException;
    const-string v5, "TaskPersister"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t read file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/4 v5, 0x0

    .end local v0    # "ioe":Ljava/io/IOException;
    :goto_1
    return-object v5

    .line 332
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 333
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_1
.end method

.method private isPackageInstalled(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 910
    iget-object v4, p0, Lcom/android/server/am/TaskPersister;->mPackageUidMap:Landroid/util/ArrayMap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/am/TaskPersister;->mPackageUidMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 927
    :goto_0
    return v2

    .line 914
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, p1, v5}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v1

    .line 916
    .local v1, "uid":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    move v2, v3

    .line 918
    goto :goto_0

    .line 920
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/TaskPersister;->mPackageUidMap:Landroid/util/ArrayMap;

    if-nez v4, :cond_2

    .line 921
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/TaskPersister;->mPackageUidMap:Landroid/util/ArrayMap;

    .line 923
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/TaskPersister;->mPackageUidMap:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 925
    .end local v1    # "uid":I
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    move v2, v3

    .line 927
    goto :goto_0
.end method

.method private readOtherDeviceTasksFromDisk()V
    .locals 22

    .prologue
    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mOtherDeviceTasksMap:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 516
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mOtherDeviceTasksMap:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->clear()V

    .line 517
    const-wide v20, 0x7fffffffffffffffL

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/TaskPersister;->mExpiredTasksCleanupTime:J

    .line 520
    sget-object v17, Lcom/android/server/am/TaskPersister;->sRestoredTasksDir:Ljava/io/File;

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_0

    sget-object v17, Lcom/android/server/am/TaskPersister;->sRestoredTasksDir:Ljava/io/File;

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    .local v12, "taskFiles":[Ljava/io/File;
    if-nez v12, :cond_1

    .line 523
    .end local v12    # "taskFiles":[Ljava/io/File;
    :cond_0
    monitor-exit v18

    .line 583
    :goto_0
    return-void

    .line 526
    .restart local v12    # "taskFiles":[Ljava/io/File;
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 527
    .local v6, "earliestMtime":J
    new-instance v16, Landroid/util/SparseArray;

    array-length v0, v12

    move/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Landroid/util/SparseArray;-><init>(I)V

    .line 531
    .local v16, "tasksByAffiliateIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/android/server/am/TaskPersister$OtherDeviceTask;>;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    array-length v0, v12

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_5

    .line 532
    aget-object v11, v12, v8

    .line 536
    .local v11, "taskFile":Ljava/io/File;
    invoke-static {v11}, Lcom/android/server/am/TaskPersister$OtherDeviceTask;->createFromFile(Ljava/io/File;)Lcom/android/server/am/TaskPersister$OtherDeviceTask;

    move-result-object v10

    .line 538
    .local v10, "task":Lcom/android/server/am/TaskPersister$OtherDeviceTask;
    if-nez v10, :cond_3

    .line 543
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 531
    :cond_2
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 547
    :cond_3
    iget v0, v10, Lcom/android/server/am/TaskPersister$OtherDeviceTask;->mAffiliatedTaskId:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 548
    .local v13, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskPersister$OtherDeviceTask;>;"
    if-nez v13, :cond_4

    .line 549
    new-instance v13, Ljava/util/ArrayList;

    .end local v13    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskPersister$OtherDeviceTask;>;"
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 550
    .restart local v13    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskPersister$OtherDeviceTask;>;"
    iget v0, v10, Lcom/android/server/am/TaskPersister$OtherDeviceTask;->mAffiliatedTaskId:I

    move/from16 v17, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 552
    :cond_4
    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v14

    .line 554
    .local v14, "taskMtime":J
    cmp-long v17, v6, v14

    if-lez v17, :cond_2

    .line 555
    move-wide v6, v14

    goto :goto_2

    .line 559
    .end local v10    # "task":Lcom/android/server/am/TaskPersister$OtherDeviceTask;
    .end local v11    # "taskFile":Ljava/io/File;
    .end local v13    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskPersister$OtherDeviceTask;>;"
    .end local v14    # "taskMtime":J
    :cond_5
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->size()I

    move-result v17

    if-lez v17, :cond_8

    .line 562
    const/4 v8, 0x0

    :goto_3
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_7

    .line 563
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 564
    .local v4, "chain":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskPersister$OtherDeviceTask;>;"
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 566
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/am/TaskPersister$OtherDeviceTask;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$OtherDeviceTask;->mComponentName:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 568
    .local v9, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mOtherDeviceTasksMap:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 569
    .local v5, "chains":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/server/am/TaskPersister$OtherDeviceTask;>;>;"
    if-nez v5, :cond_6

    .line 570
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "chains":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/server/am/TaskPersister$OtherDeviceTask;>;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 571
    .restart local v5    # "chains":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/server/am/TaskPersister$OtherDeviceTask;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mOtherDeviceTasksMap:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    :cond_6
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 577
    .end local v4    # "chain":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskPersister$OtherDeviceTask;>;"
    .end local v5    # "chains":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/server/am/TaskPersister$OtherDeviceTask;>;>;"
    .end local v9    # "packageName":Ljava/lang/String;
    :cond_7
    const-wide/32 v20, 0x5265c00

    add-long v20, v20, v6

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/TaskPersister;->mExpiredTasksCleanupTime:J

    .line 582
    :cond_8
    monitor-exit v18

    goto/16 :goto_0

    .end local v6    # "earliestMtime":J
    .end local v8    # "i":I
    .end local v12    # "taskFiles":[Ljava/io/File;
    .end local v16    # "tasksByAffiliateIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/android/server/am/TaskPersister$OtherDeviceTask;>;>;"
    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v17
.end method

.method public static removeAllTasksRecordForReboot()V
    .locals 7

    .prologue
    .line 1201
    sget-object v5, Lcom/android/server/am/TaskPersister;->sTasksDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 1202
    .local v4, "xmlFiles":[Ljava/io/File;
    if-nez v4, :cond_1

    .line 1203
    const-string v5, "TaskPersister"

    const-string v6, "No recent task record to remove."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    :cond_0
    :goto_0
    return-void

    .line 1206
    :cond_1
    const/4 v2, 0x0

    .local v2, "fileNdx":I
    :goto_1
    array-length v5, v4

    if-ge v2, v5, :cond_2

    .line 1208
    :try_start_0
    aget-object v1, v4, v2

    .line 1209
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1206
    .end local v1    # "file":Ljava/io/File;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1210
    :catch_0
    move-exception v0

    .line 1211
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "TaskPersister"

    const-string v6, "Fail to get or delete recent task xml file."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1215
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    sget-object v5, Lcom/android/server/am/TaskPersister;->sImagesDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 1216
    .local v3, "imageFiles":[Ljava/io/File;
    if-nez v3, :cond_3

    .line 1217
    const-string v5, "TaskPersister"

    const-string v6, "No recent task image to remove."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1220
    :cond_3
    const/4 v2, 0x0

    :goto_3
    array-length v5, v3

    if-ge v2, v5, :cond_0

    .line 1222
    :try_start_1
    aget-object v1, v3, v2

    .line 1223
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1220
    .end local v1    # "file":Ljava/io/File;
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1224
    :catch_1
    move-exception v0

    .line 1225
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v5, "TaskPersister"

    const-string v6, "Fail to get or delete recent task image file."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private removeExpiredTasksIfNeeded()V
    .locals 24

    .prologue
    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mOtherDeviceTasksMap:Landroid/util/ArrayMap;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 591
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 592
    .local v14, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mOtherDeviceTasksMap:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v12

    .line 593
    .local v12, "noMoreTasks":Z
    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/TaskPersister;->mExpiredTasksCleanupTime:J

    move-wide/from16 v22, v0

    cmp-long v20, v14, v22

    if-gez v20, :cond_2

    .line 594
    :cond_0
    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mPackageUidMap:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 596
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/TaskPersister;->mPackageUidMap:Landroid/util/ArrayMap;

    .line 598
    :cond_1
    monitor-exit v21

    .line 655
    :goto_0
    return-void

    .line 601
    :cond_2
    move-wide v6, v14

    .line 602
    .local v6, "earliestNonExpiredMtime":J
    const-wide v22, 0x7fffffffffffffffL

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/TaskPersister;->mExpiredTasksCleanupTime:J

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mOtherDeviceTasksMap:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/ArrayMap;->size()I

    move-result v20

    add-int/lit8 v9, v20, -0x1

    .local v9, "i":I
    :goto_1
    if-ltz v9, :cond_a

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mOtherDeviceTasksMap:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 609
    .local v5, "chains":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/server/am/TaskPersister$OtherDeviceTask;>;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v20

    add-int/lit8 v10, v20, -0x1

    .local v10, "j":I
    :goto_2
    if-ltz v10, :cond_8

    .line 611
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 612
    .local v4, "chain":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskPersister$OtherDeviceTask;>;"
    const/16 v16, 0x1

    .line 613
    .local v16, "removeChain":Z
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v20

    add-int/lit8 v11, v20, -0x1

    .local v11, "k":I
    :goto_3
    if-ltz v11, :cond_5

    .line 614
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/am/TaskPersister$OtherDeviceTask;

    .line 615
    .local v17, "task":Lcom/android/server/am/TaskPersister$OtherDeviceTask;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$OtherDeviceTask;->mFile:Ljava/io/File;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->lastModified()J

    move-result-wide v18

    .line 616
    .local v18, "taskLastModified":J
    const-wide/32 v22, 0x5265c00

    add-long v22, v22, v18

    cmp-long v20, v22, v14

    if-lez v20, :cond_4

    .line 619
    cmp-long v20, v6, v18

    if-lez v20, :cond_3

    .line 620
    move-wide/from16 v6, v18

    .line 622
    :cond_3
    const/16 v16, 0x0

    .line 613
    :cond_4
    add-int/lit8 v11, v11, -0x1

    goto :goto_3

    .line 625
    .end local v17    # "task":Lcom/android/server/am/TaskPersister$OtherDeviceTask;
    .end local v18    # "taskLastModified":J
    :cond_5
    if-eqz v16, :cond_7

    .line 626
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v20

    add-int/lit8 v11, v20, -0x1

    :goto_4
    if-ltz v11, :cond_6

    .line 627
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/am/TaskPersister$OtherDeviceTask;

    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/android/server/am/TaskPersister$OtherDeviceTask;->mFile:Ljava/io/File;

    .line 631
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 626
    add-int/lit8 v11, v11, -0x1

    goto :goto_4

    .line 633
    .end local v8    # "file":Ljava/io/File;
    :cond_6
    invoke-interface {v5, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 609
    :cond_7
    add-int/lit8 v10, v10, -0x1

    goto :goto_2

    .line 636
    .end local v4    # "chain":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskPersister$OtherDeviceTask;>;"
    .end local v11    # "k":I
    .end local v16    # "removeChain":Z
    :cond_8
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_9

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mOtherDeviceTasksMap:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 638
    .local v13, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mOtherDeviceTasksMap:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 606
    .end local v13    # "packageName":Ljava/lang/String;
    :cond_9
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_1

    .line 645
    .end local v5    # "chains":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/server/am/TaskPersister$OtherDeviceTask;>;>;"
    .end local v10    # "j":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mOtherDeviceTasksMap:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_b

    .line 646
    const-wide/32 v22, 0x5265c00

    add-long v22, v22, v6

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/TaskPersister;->mExpiredTasksCleanupTime:J

    .line 654
    :goto_5
    monitor-exit v21

    goto/16 :goto_0

    .end local v6    # "earliestNonExpiredMtime":J
    .end local v9    # "i":I
    .end local v12    # "noMoreTasks":Z
    .end local v14    # "now":J
    :catchall_0
    move-exception v20

    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v20

    .line 652
    .restart local v6    # "earliestNonExpiredMtime":J
    .restart local v9    # "i":I
    .restart local v12    # "noMoreTasks":Z
    .restart local v14    # "now":J
    :cond_b
    const/16 v20, 0x0

    :try_start_1
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/TaskPersister;->mPackageUidMap:Landroid/util/ArrayMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5
.end method

.method private removeObsoleteFiles(Landroid/util/ArraySet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 490
    .local p1, "persistentTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    sget-object v0, Lcom/android/server/am/TaskPersister;->sTasksDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/am/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;[Ljava/io/File;)V

    .line 491
    sget-object v0, Lcom/android/server/am/TaskPersister;->sImagesDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/am/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;[Ljava/io/File;)V

    .line 492
    return-void
.end method

.method private static removeObsoleteFiles(Landroid/util/ArraySet;[Ljava/io/File;)V
    .locals 9
    .param p1, "files"    # [Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Integer;",
            ">;[",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .line 454
    .local p0, "persistentTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    if-nez p1, :cond_1

    .line 455
    const-string v6, "TaskPersister"

    const-string v7, "File error accessing recents directory (too many files open?)."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_0
    return-void

    .line 458
    :cond_1
    const/4 v2, 0x0

    .local v2, "fileNdx":I
    :goto_0
    array-length v6, p1

    if-ge v2, v6, :cond_0

    .line 459
    aget-object v1, p1, v2

    .line 460
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 461
    .local v3, "filename":Ljava/lang/String;
    const/16 v6, 0x5f

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 462
    .local v5, "taskIdEnd":I
    if-lez v5, :cond_2

    .line 465
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 472
    .local v4, "taskId":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 483
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 458
    .end local v4    # "taskId":I
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 467
    :catch_0
    move-exception v0

    .line 468
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "TaskPersister"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removeObsoleteFile: Can\'t parse file="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method private removeThumbnails(Lcom/android/server/am/TaskRecord;)V
    .locals 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 173
    iget v3, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, "taskString":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "queueNdx":I
    :goto_0
    if-ltz v1, :cond_1

    .line 175
    iget-object v3, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskPersister$WriteQueueItem;

    .line 176
    .local v0, "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    instance-of v3, v0, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    .end local v0    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    iget-object v3, v0, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mFilename:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 180
    iget-object v3, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 174
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 183
    :cond_1
    return-void
.end method

.method static restoreImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/TaskPersister;->sImagesDir:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private saveToXml(Lcom/android/server/am/TaskRecord;)Ljava/io/StringWriter;
    .locals 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 303
    new-instance v1, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v1}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 304
    .local v1, "xmlSerializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 305
    .local v0, "stringWriter":Ljava/io/StringWriter;
    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 311
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 313
    const-string v2, "task"

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 314
    invoke-virtual {p1, v1}, Lcom/android/server/am/TaskRecord;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 315
    const-string v2, "task"

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 317
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 318
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 320
    return-object v0
.end method

.method private taskIdToTask(ILjava/util/ArrayList;)Lcom/android/server/am/TaskRecord;
    .locals 6
    .param p1, "taskId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;)",
            "Lcom/android/server/am/TaskRecord;"
        }
    .end annotation

    .prologue
    .local p2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v2, 0x0

    .line 341
    if-gez p1, :cond_1

    move-object v0, v2

    .line 351
    :cond_0
    :goto_0
    return-object v0

    .line 344
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "taskNdx":I
    :goto_1
    if-ltz v1, :cond_2

    .line 345
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    .line 346
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    iget v3, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v3, p1, :cond_0

    .line 344
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 350
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    const-string v3, "TaskPersister"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restore affiliation error looking for taskId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 351
    goto :goto_0
.end method

.method private yieldIfQueueTooDeep()V
    .locals 6

    .prologue
    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, "stall":Z
    monitor-enter p0

    .line 188
    :try_start_0
    iget-wide v2, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 189
    const/4 v0, 0x1

    .line 191
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    if-eqz v0, :cond_1

    .line 193
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 195
    :cond_1
    return-void

    .line 191
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method addOtherDeviceTasksToRecentsLocked(Ljava/lang/String;)V
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 684
    iget-object v10, p0, Lcom/android/server/am/TaskPersister;->mOtherDeviceTasksMap:Landroid/util/ArrayMap;

    monitor-enter v10

    .line 685
    :try_start_0
    iget-object v9, p0, Lcom/android/server/am/TaskPersister;->mOtherDeviceTasksMap:Landroid/util/ArrayMap;

    invoke-virtual {v9, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 686
    .local v1, "chains":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/server/am/TaskPersister$OtherDeviceTask;>;>;"
    if-nez v1, :cond_0

    .line 687
    monitor-exit v10

    .line 771
    :goto_0
    return-void

    .line 690
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_8

    .line 691
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 692
    .local v0, "chain":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskPersister$OtherDeviceTask;>;"
    invoke-direct {p0, v0}, Lcom/android/server/am/TaskPersister;->canAddOtherDeviceTaskChain(Ljava/util/List;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 690
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 699
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 700
    .local v8, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskRecord;>;"
    const/4 v5, 0x0

    .line 701
    .local v5, "prev":Lcom/android/server/am/TaskRecord;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    .local v3, "j":I
    :goto_3
    if-ltz v3, :cond_3

    .line 702
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/TaskPersister$OtherDeviceTask;

    invoke-direct {p0, v9}, Lcom/android/server/am/TaskPersister;->createTaskRecordLocked(Lcom/android/server/am/TaskPersister$OtherDeviceTask;)Lcom/android/server/am/TaskRecord;

    move-result-object v7

    .line 703
    .local v7, "task":Lcom/android/server/am/TaskRecord;
    if-nez v7, :cond_4

    .line 729
    .end local v7    # "task":Lcom/android/server/am/TaskRecord;
    :cond_3
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    if-ne v9, v11, :cond_6

    .line 735
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v9

    iget-object v11, p0, Lcom/android/server/am/TaskPersister;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int v6, v9, v11

    .line 738
    .local v6, "spaceLeft":I
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lt v6, v9, :cond_6

    .line 739
    iget-object v9, p0, Lcom/android/server/am/TaskPersister;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/server/am/TaskPersister;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v9, v11, v8}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 740
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v4, v9, -0x1

    .local v4, "k":I
    :goto_4
    if-ltz v4, :cond_6

    .line 742
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/TaskRecord;

    const/4 v11, 0x0

    invoke-virtual {p0, v9, v11}, Lcom/android/server/am/TaskPersister;->wakeup(Lcom/android/server/am/TaskRecord;Z)V

    .line 740
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 712
    .end local v4    # "k":I
    .end local v6    # "spaceLeft":I
    .restart local v7    # "task":Lcom/android/server/am/TaskRecord;
    :cond_4
    if-nez v5, :cond_5

    .line 713
    const/4 v9, 0x0

    iput-object v9, v7, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    .line 714
    const/4 v9, -0x1

    iput v9, v7, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    .line 715
    iget v9, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    iput v9, v7, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    .line 723
    :goto_5
    move-object v5, v7

    .line 724
    const/4 v9, 0x0

    invoke-interface {v8, v9, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 701
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 717
    :cond_5
    iput-object v7, v5, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    .line 718
    iget v9, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    iput v9, v5, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    .line 719
    iget v9, v5, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iput v9, v7, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    .line 720
    iput-object v5, v7, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    .line 721
    iget v9, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    iput v9, v7, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    goto :goto_5

    .line 770
    .end local v0    # "chain":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskPersister$OtherDeviceTask;>;"
    .end local v1    # "chains":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/server/am/TaskPersister$OtherDeviceTask;>;>;"
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v5    # "prev":Lcom/android/server/am/TaskRecord;
    .end local v7    # "task":Lcom/android/server/am/TaskRecord;
    .end local v8    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskRecord;>;"
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 758
    .restart local v0    # "chain":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskPersister$OtherDeviceTask;>;"
    .restart local v1    # "chains":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/server/am/TaskPersister$OtherDeviceTask;>;>;"
    .restart local v2    # "i":I
    .restart local v3    # "j":I
    .restart local v5    # "prev":Lcom/android/server/am/TaskRecord;
    .restart local v8    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskRecord;>;"
    :cond_6
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    :goto_6
    if-ltz v3, :cond_7

    .line 759
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/TaskPersister$OtherDeviceTask;

    iget-object v9, v9, Lcom/android/server/am/TaskPersister$OtherDeviceTask;->mFile:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 758
    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    .line 761
    :cond_7
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 762
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 765
    iget-object v9, p0, Lcom/android/server/am/TaskPersister;->mOtherDeviceTasksMap:Landroid/util/ArrayMap;

    invoke-virtual {v9, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 770
    .end local v0    # "chain":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskPersister$OtherDeviceTask;>;"
    .end local v3    # "j":I
    .end local v5    # "prev":Lcom/android/server/am/TaskRecord;
    .end local v8    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskRecord;>;"
    :cond_8
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method flush()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 234
    monitor-enter p0

    .line 235
    const-wide/16 v0, -0x1

    :try_start_0
    iput-wide v0, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    .line 236
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    :goto_0
    :try_start_2
    iget-wide v0, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 243
    monitor-exit p0

    .line 244
    return-void

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 240
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method getImageFromWriteQueue(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 287
    monitor-enter p0

    .line 288
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "queueNdx":I
    :goto_0
    if-ltz v3, :cond_1

    .line 289
    iget-object v4, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskPersister$WriteQueueItem;

    .line 290
    .local v2, "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    instance-of v4, v2, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    if-eqz v4, :cond_0

    .line 291
    move-object v0, v2

    check-cast v0, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    move-object v1, v0

    .line 292
    .local v1, "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    iget-object v4, v1, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mFilename:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 293
    iget-object v4, v1, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;

    monitor-exit p0

    .line 297
    .end local v1    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    .end local v2    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    :goto_1
    return-object v4

    .line 288
    .restart local v2    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 297
    .end local v2    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    :cond_1
    const/4 v4, 0x0

    monitor-exit p0

    goto :goto_1

    .line 298
    .end local v3    # "queueNdx":I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 279
    invoke-virtual {p0, p1}, Lcom/android/server/am/TaskPersister;->getImageFromWriteQueue(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 280
    .local v0, "icon":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 283
    .end local v0    # "icon":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .restart local v0    # "icon":Landroid/graphics/Bitmap;
    :cond_0
    invoke-static {p1}, Lcom/android/server/am/TaskPersister;->restoreImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method removeFromPackageCache(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 661
    iget-object v1, p0, Lcom/android/server/am/TaskPersister;->mOtherDeviceTasksMap:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 662
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/TaskPersister;->mPackageUidMap:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/android/server/am/TaskPersister;->mPackageUidMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    :cond_0
    monitor-exit v1

    .line 666
    return-void

    .line 665
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method restoreTasksFromOtherDeviceLocked()V
    .locals 0

    .prologue
    .line 503
    invoke-direct {p0}, Lcom/android/server/am/TaskPersister;->readOtherDeviceTasksFromDisk()V

    .line 504
    invoke-direct {p0}, Lcom/android/server/am/TaskPersister;->addOtherDeviceTasksToRecentsLocked()V

    .line 505
    return-void
.end method

.method restoreTasksLocked()Ljava/util/ArrayList;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 355
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 356
    .local v15, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 358
    .local v10, "recoveredTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    sget-object v17, Lcom/android/server/am/TaskPersister;->sTasksDir:Ljava/io/File;

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    .line 359
    .local v9, "recentFiles":[Ljava/io/File;
    if-nez v9, :cond_0

    .line 360
    const-string v17, "TaskPersister"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unable to list files from "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/android/server/am/TaskPersister;->sTasksDir:Ljava/io/File;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    .end local v15    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :goto_0
    return-object v15

    .line 364
    .restart local v15    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_0
    const/4 v14, 0x0

    .local v14, "taskNdx":I
    :goto_1
    array-length v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v14, v0, :cond_7

    .line 365
    aget-object v12, v9, v14

    .line 367
    .local v12, "taskFile":Ljava/io/File;
    const/4 v7, 0x0

    .line 368
    .local v7, "reader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 370
    .local v2, "deleteFile":Z
    :try_start_0
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/FileReader;

    move-object/from16 v0, v17

    invoke-direct {v0, v12}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 371
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .local v8, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 372
    .local v5, "in":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 375
    :goto_2
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, "event":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v4, v0, :cond_6

    const/16 v17, 0x3

    move/from16 v0, v17

    if-eq v4, v0, :cond_6

    .line 377
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 378
    .local v6, "name":Ljava/lang/String;
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v4, v0, :cond_1

    .line 381
    const-string v17, "task"

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v5, v0}, Lcom/android/server/am/TaskRecord;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/TaskRecord;

    move-result-object v11

    .line 386
    .local v11, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v11, :cond_3

    .line 387
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v11, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    .line 392
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    iget v13, v11, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 394
    .local v13, "taskId":I
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/android/server/am/ActivityStackSupervisor;->setNextTaskId(I)V

    .line 405
    .end local v11    # "task":Lcom/android/server/am/TaskRecord;
    .end local v13    # "taskId":I
    :cond_1
    :goto_3
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 407
    .end local v4    # "event":I
    .end local v5    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "name":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v7, v8

    .line 408
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :goto_4
    :try_start_2
    const-string v17, "TaskPersister"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unable to parse "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ". Error "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 409
    const-string v17, "TaskPersister"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Failing file: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/am/TaskPersister;->fileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 410
    const/4 v2, 0x1

    .line 412
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 413
    if-eqz v2, :cond_2

    .line 415
    const-string v17, "TaskPersister"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Deleting file="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 364
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_5
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 397
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "event":I
    .restart local v5    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v11    # "task":Lcom/android/server/am/TaskRecord;
    :cond_3
    :try_start_3
    const-string v17, "TaskPersister"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unable to restore taskFile="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/am/TaskPersister;->fileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    .line 412
    .end local v4    # "event":I
    .end local v5    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "name":Ljava/lang/String;
    .end local v11    # "task":Lcom/android/server/am/TaskRecord;
    :catchall_0
    move-exception v17

    move-object v7, v8

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :goto_6
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 413
    if-eqz v2, :cond_4

    .line 415
    const-string v18, "TaskPersister"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Deleting file="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    :cond_4
    throw v17

    .line 401
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "event":I
    .restart local v5    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :cond_5
    :try_start_4
    const-string v17, "TaskPersister"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "restoreTasksLocked Unknown xml event="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " name="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    .line 412
    .end local v6    # "name":Ljava/lang/String;
    :cond_6
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 413
    if-eqz v2, :cond_9

    .line 415
    const-string v17, "TaskPersister"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Deleting file="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    move-object v7, v8

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_5

    .line 422
    .end local v2    # "deleteFile":Z
    .end local v4    # "event":I
    .end local v5    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .end local v12    # "taskFile":Ljava/io/File;
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/am/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;)V

    .line 426
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v17

    add-int/lit8 v14, v17, -0x1

    :goto_7
    if-ltz v14, :cond_8

    .line 427
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/TaskRecord;

    .line 428
    .restart local v11    # "task":Lcom/android/server/am/TaskRecord;
    iget v0, v11, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v15}, Lcom/android/server/am/TaskPersister;->taskIdToTask(ILjava/util/ArrayList;)Lcom/android/server/am/TaskRecord;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 429
    iget v0, v11, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v15}, Lcom/android/server/am/TaskPersister;->taskIdToTask(ILjava/util/ArrayList;)Lcom/android/server/am/TaskRecord;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 426
    add-int/lit8 v14, v14, -0x1

    goto :goto_7

    .line 432
    .end local v11    # "task":Lcom/android/server/am/TaskRecord;
    :cond_8
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Lcom/android/server/am/TaskRecord;

    move-object/from16 v16, v0

    .line 433
    .local v16, "tasksArray":[Lcom/android/server/am/TaskRecord;
    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 434
    new-instance v17, Lcom/android/server/am/TaskPersister$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/TaskPersister$1;-><init>(Lcom/android/server/am/TaskPersister;)V

    invoke-static/range {v16 .. v17}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 448
    new-instance v15, Ljava/util/ArrayList;

    .end local v15    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 412
    .end local v16    # "tasksArray":[Lcom/android/server/am/TaskRecord;
    .restart local v2    # "deleteFile":Z
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v12    # "taskFile":Ljava/io/File;
    .restart local v15    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :catchall_1
    move-exception v17

    goto/16 :goto_6

    .line 407
    :catch_1
    move-exception v3

    goto/16 :goto_4

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "event":I
    .restart local v5    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :cond_9
    move-object v7, v8

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_5
.end method

.method saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 10
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 247
    monitor-enter p0

    .line 249
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "queueNdx":I
    :goto_0
    if-ltz v4, :cond_0

    .line 250
    iget-object v5, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskPersister$WriteQueueItem;

    .line 251
    .local v3, "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    instance-of v5, v3, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    if-eqz v5, :cond_3

    .line 252
    move-object v0, v3

    check-cast v0, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    move-object v2, v0

    .line 253
    .local v2, "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    iget-object v5, v2, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mFilename:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 255
    iput-object p1, v2, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;

    .line 260
    .end local v2    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    .end local v3    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    :cond_0
    if-gez v4, :cond_1

    .line 261
    iget-object v5, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    invoke-direct {v6, p2, p1}, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    :cond_1
    iget-object v5, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x6

    if-le v5, v6, :cond_4

    .line 264
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    .line 271
    :cond_2
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 272
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    invoke-direct {p0}, Lcom/android/server/am/TaskPersister;->yieldIfQueueTooDeep()V

    .line 275
    return-void

    .line 249
    .restart local v3    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 265
    .end local v3    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    :cond_4
    :try_start_1
    iget-wide v6, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_2

    .line 266
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0xbb8

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    goto :goto_1

    .line 272
    .end local v4    # "queueNdx":I
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method startPersisting()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/server/am/TaskPersister;->mLazyTaskWriterThread:Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;

    invoke-virtual {v0}, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->start()V

    .line 170
    return-void
.end method

.method wakeup(Lcom/android/server/am/TaskRecord;Z)V
    .locals 6
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "flush"    # Z

    .prologue
    .line 198
    monitor-enter p0

    .line 199
    if-eqz p1, :cond_5

    .line 201
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "queueNdx":I
    :goto_0
    if-ltz v1, :cond_0

    .line 202
    iget-object v2, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskPersister$WriteQueueItem;

    .line 203
    .local v0, "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    instance-of v2, v0, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;

    if-eqz v2, :cond_4

    check-cast v0, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;

    .end local v0    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    iget-object v2, v0, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;->mTask:Lcom/android/server/am/TaskRecord;

    if-ne v2, p1, :cond_4

    .line 205
    iget-boolean v2, p1, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-nez v2, :cond_0

    .line 207
    invoke-direct {p0, p1}, Lcom/android/server/am/TaskPersister;->removeThumbnails(Lcom/android/server/am/TaskRecord;)V

    .line 212
    :cond_0
    if-gez v1, :cond_1

    iget-boolean v2, p1, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    if-eqz v2, :cond_1

    .line 213
    iget-object v2, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;

    invoke-direct {v3, p1}, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;-><init>(Lcom/android/server/am/TaskRecord;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    .end local v1    # "queueNdx":I
    :cond_1
    :goto_1
    if-nez p2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x6

    if-le v2, v3, :cond_6

    .line 220
    :cond_2
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    .line 227
    :cond_3
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 228
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    invoke-direct {p0}, Lcom/android/server/am/TaskPersister;->yieldIfQueueTooDeep()V

    .line 231
    return-void

    .line 201
    .restart local v1    # "queueNdx":I
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 217
    .end local v1    # "queueNdx":I
    :cond_5
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/am/TaskPersister$WriteQueueItem;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/am/TaskPersister$WriteQueueItem;-><init>(Lcom/android/server/am/TaskPersister$1;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 228
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 221
    :cond_6
    :try_start_2
    iget-wide v2, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 222
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0xbb8

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method
