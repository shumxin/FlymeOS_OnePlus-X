.class Lcom/android/server/usage/UserUsageStatsService;
.super Ljava/lang/Object;
.source "UserUsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final ONE_MINUTE:J = 0xea60L

.field private static final TAG:Ljava/lang/String; = "UsageStatsService"

.field private static TimeChanged:J = 0x0L

.field private static final sConfigStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner",
            "<",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation
.end field

.field private static final sDateFormat:Ljava/text/SimpleDateFormat;

.field private static final sDateFormatFlags:I = 0x20015

.field private static final sUsageStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner",
            "<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private delayRoll:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private final mCurrentStats:[Lcom/android/server/usage/IntervalStats;

.field private final mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

.field private final mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

.field private mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

.field private final mLogPrefix:Ljava/lang/String;

.field private mStatsChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->sDateFormat:Ljava/text/SimpleDateFormat;

    .line 76
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/usage/UserUsageStatsService;->TimeChanged:J

    .line 209
    new-instance v0, Lcom/android/server/usage/UserUsageStatsService$1;

    invoke-direct {v0}, Lcom/android/server/usage/UserUsageStatsService$1;-><init>()V

    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->sUsageStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    .line 226
    new-instance v0, Lcom/android/server/usage/UserUsageStatsService$2;

    invoke-direct {v0}, Lcom/android/server/usage/UserUsageStatsService$2;-><init>()V

    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->sConfigStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILjava/io/File;Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "usageStatsDir"    # Ljava/io/File;
    .param p4, "listener"    # Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    .line 616
    new-instance v0, Lcom/android/server/usage/UserUsageStatsService$5;

    invoke-direct {v0, p0}, Lcom/android/server/usage/UserUsageStatsService$5;-><init>(Lcom/android/server/usage/UserUsageStatsService;)V

    iput-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mHandler:Landroid/os/Handler;

    .line 619
    new-instance v0, Lcom/android/server/usage/UserUsageStatsService$6;

    invoke-direct {v0, p0}, Lcom/android/server/usage/UserUsageStatsService$6;-><init>(Lcom/android/server/usage/UserUsageStatsService;)V

    iput-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->delayRoll:Ljava/lang/Runnable;

    .line 85
    iput-object p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mContext:Landroid/content/Context;

    .line 86
    new-instance v0, Lcom/android/server/usage/UnixCalendar;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lcom/android/server/usage/UnixCalendar;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    .line 87
    new-instance v0, Lcom/android/server/usage/UsageStatsDatabase;

    invoke-direct {v0, p3}, Lcom/android/server/usage/UsageStatsDatabase;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    .line 88
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/usage/IntervalStats;

    iput-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    .line 89
    iput-object p4, p0, Lcom/android/server/usage/UserUsageStatsService;->mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    .line 91
    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .prologue
    .line 53
    sget-wide v0, Lcom/android/server/usage/UserUsageStatsService;->TimeChanged:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/android/server/usage/UserUsageStatsService;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usage/UserUsageStatsService;
    .param p1, "x1"    # J

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/server/usage/UserUsageStatsService;->rolloverStats(J)V

    return-void
.end method

.method private static eventToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "eventType"    # I

    .prologue
    .line 592
    packed-switch p0, :pswitch_data_0

    .line 606
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 594
    :pswitch_0
    const-string v0, "NONE"

    goto :goto_0

    .line 596
    :pswitch_1
    const-string v0, "MOVE_TO_BACKGROUND"

    goto :goto_0

    .line 598
    :pswitch_2
    const-string v0, "MOVE_TO_FOREGROUND"

    goto :goto_0

    .line 600
    :pswitch_3
    const-string v0, "END_OF_DAY"

    goto :goto_0

    .line 602
    :pswitch_4
    const-string v0, "CONTINUE_PREVIOUS_DAY"

    goto :goto_0

    .line 604
    :pswitch_5
    const-string v0, "CONFIGURATION_CHANGE"

    goto :goto_0

    .line 592
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private formatDateTime(JZ)Ljava/lang/String;
    .locals 3
    .param p1, "dateTime"    # J
    .param p3, "pretty"    # Z

    .prologue
    .line 504
    if-eqz p3, :cond_0

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mContext:Landroid/content/Context;

    const v2, 0x20015

    invoke-static {v1, p1, p2, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 507
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private formatElapsedTime(JZ)Ljava/lang/String;
    .locals 5
    .param p1, "elapsedTime"    # J
    .param p3, "pretty"    # Z

    .prologue
    .line 511
    if-eqz p3, :cond_0

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 514
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static intervalToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "interval"    # I

    .prologue
    .line 577
    packed-switch p0, :pswitch_data_0

    .line 587
    const-string v0, "?"

    :goto_0
    return-object v0

    .line 579
    :pswitch_0
    const-string v0, "daily"

    goto :goto_0

    .line 581
    :pswitch_1
    const-string v0, "weekly"

    goto :goto_0

    .line 583
    :pswitch_2
    const-string v0, "monthly"

    goto :goto_0

    .line 585
    :pswitch_3
    const-string v0, "yearly"

    goto :goto_0

    .line 577
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private loadActiveStats(JZ)V
    .locals 11
    .param p1, "currentTimeMillis"    # J
    .param p3, "force"    # Z

    .prologue
    .line 434
    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    .line 435
    .local v1, "tempCal":Lcom/android/server/usage/UnixCalendar;
    const/4 v0, 0x0

    .local v0, "intervalType":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v4, v4

    if-ge v0, v4, :cond_3

    .line 436
    invoke-virtual {v1, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 437
    invoke-static {v1, v0}, Lcom/android/server/usage/UnixCalendar;->truncateTo(Lcom/android/server/usage/UnixCalendar;I)V

    .line 439
    if-nez p3, :cond_1

    iget-object v4, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v4, v4, v0

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v4, v4, v0

    iget-wide v4, v4, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-virtual {v1}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 435
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 446
    :cond_1
    iget-object v4, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v4, v0}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStatsBeginTime(I)J

    move-result-wide v2

    .line 447
    .local v2, "lastBeginTime":J
    invoke-virtual {v1}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-ltz v4, :cond_2

    .line 453
    iget-object v4, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    iget-object v5, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v5, v0}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v5

    aput-object v5, v4, v0

    .line 458
    :goto_2
    iget-object v4, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v4, v4, v0

    if-nez v4, :cond_0

    .line 465
    iget-object v4, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    new-instance v5, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v5}, Lcom/android/server/usage/IntervalStats;-><init>()V

    aput-object v5, v4, v0

    .line 466
    iget-object v4, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v4, v4, v0

    invoke-virtual {v1}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 467
    iget-object v4, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v4, v4, v0

    iput-wide p1, v4, Lcom/android/server/usage/IntervalStats;->endTime:J

    goto :goto_1

    .line 455
    :cond_2
    iget-object v4, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    const/4 v5, 0x0

    aput-object v5, v4, v0

    goto :goto_2

    .line 470
    .end local v2    # "lastBeginTime":J
    :cond_3
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    .line 471
    iget-object v4, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 472
    iget-object v4, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/usage/UnixCalendar;->addDays(I)V

    .line 473
    iget-object v4, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v4}, Lcom/android/server/usage/UnixCalendar;->truncateToDay()V

    .line 474
    const-string v4, "UsageStatsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Rollover scheduled @ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/server/usage/UserUsageStatsService;->sDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v7, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v7}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    return-void
.end method

.method private notifyStatsChanged()V
    .locals 1

    .prologue
    .line 424
    iget-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    if-nez v0, :cond_0

    .line 425
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    .line 426
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    invoke-interface {v0}, Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;->onStatsUpdated()V

    .line 428
    :cond_0
    return-void
.end method

.method private queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;
    .locals 12
    .param p1, "intervalType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(IJJ",
            "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p6, "combiner":Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;, "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner<TT;>;"
    const/4 v10, 0x0

    .line 250
    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    .line 251
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    move-wide/from16 v0, p4

    invoke-virtual {v2, p2, p3, v0, v1}, Lcom/android/server/usage/UsageStatsDatabase;->findBestFitBucket(JJ)I

    move-result p1

    .line 252
    if-gez p1, :cond_0

    .line 255
    const/4 p1, 0x0

    .line 259
    :cond_0
    if-ltz p1, :cond_1

    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v2, v2

    if-lt p1, v2, :cond_2

    .line 311
    :cond_1
    :goto_0
    return-object v10

    .line 266
    :cond_2
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v9, v2, p1

    .line 273
    .local v9, "currentStats":Lcom/android/server/usage/IntervalStats;
    iget-wide v2, v9, Lcom/android/server/usage/IntervalStats;->endTime:J

    cmp-long v2, p2, v2

    if-gez v2, :cond_1

    .line 285
    iget-wide v2, v9, Lcom/android/server/usage/IntervalStats;->beginTime:J

    move-wide/from16 v0, p4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 288
    .local v6, "truncatedEndTime":J
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    move v3, p1

    move-wide v4, p2

    move-object/from16 v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/usage/UsageStatsDatabase;->queryUsageStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object v10

    .line 297
    .local v10, "results":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-wide v2, v9, Lcom/android/server/usage/IntervalStats;->endTime:J

    cmp-long v2, p2, v2

    if-gez v2, :cond_1

    iget-wide v2, v9, Lcom/android/server/usage/IntervalStats;->beginTime:J

    cmp-long v2, p4, v2

    if-lez v2, :cond_1

    .line 302
    if-nez v10, :cond_3

    .line 303
    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "results":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 305
    .restart local v10    # "results":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_3
    const/4 v2, 0x1

    move-object/from16 v0, p6

    invoke-interface {v0, v9, v2, v10}, Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;->combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)V

    goto :goto_0
.end method

.method private rolloverStats(J)V
    .locals 29
    .param p1, "currentTimeMillis"    # J

    .prologue
    .line 378
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    .line 379
    .local v18, "startTime":J
    const-string v21, "UsageStatsService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "Rolling over usage stats"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    move-object/from16 v21, v0

    const/16 v24, 0x0

    aget-object v21, v21, v24

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v17, v0

    .line 385
    .local v17, "previousConfig":Landroid/content/res/Configuration;
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 386
    .local v10, "continuePreviousDay":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    .local v6, "arr$":[Lcom/android/server/usage/IntervalStats;
    array-length v13, v6

    .local v13, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_0
    if-ge v12, v13, :cond_3

    aget-object v20, v6, v12

    .line 387
    .local v20, "stat":Lcom/android/server/usage/IntervalStats;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/util/ArrayMap;->size()I

    move-result v15

    .line 388
    .local v15, "pkgCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v15, :cond_2

    .line 389
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/usage/UsageStats;

    .line 390
    .local v16, "pkgStats":Landroid/app/usage/UsageStats;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/app/usage/UsageStats;->mLastEvent:I

    move/from16 v21, v0

    const/16 v24, 0x1

    move/from16 v0, v21

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/app/usage/UsageStats;->mLastEvent:I

    move/from16 v21, v0

    const/16 v24, 0x4

    move/from16 v0, v21

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    .line 392
    :cond_0
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 393
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v24

    const-wide/16 v26, 0x1

    sub-long v24, v24, v26

    const/16 v26, 0x3

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-wide/from16 v2, v24

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;JI)V

    .line 395
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->notifyStatsChanged()V

    .line 388
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 399
    .end local v16    # "pkgStats":Landroid/app/usage/UsageStats;
    :cond_2
    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v24

    const-wide/16 v26, 0x1

    sub-long v24, v24, v26

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    .line 386
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 402
    .end local v11    # "i":I
    .end local v15    # "pkgCount":I
    .end local v20    # "stat":Lcom/android/server/usage/IntervalStats;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/usage/UsageStatsDatabase;->prune(J)V

    .line 404
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/usage/UserUsageStatsService;->loadActiveStats(JZ)V

    .line 406
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v7

    .line 407
    .local v7, "continueCount":I
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_2
    if-ge v11, v7, :cond_5

    .line 408
    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 409
    .local v14, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    move-object/from16 v21, v0

    const/16 v24, 0x0

    aget-object v21, v21, v24

    move-object/from16 v0, v21

    iget-wide v8, v0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 410
    .local v8, "beginTime":J
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v13, v6

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v13, :cond_4

    aget-object v20, v6, v12

    .line 411
    .restart local v20    # "stat":Lcom/android/server/usage/IntervalStats;
    const/16 v21, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v14, v8, v9, v1}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;JI)V

    .line 412
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    .line 413
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->notifyStatsChanged()V

    .line 410
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 407
    .end local v20    # "stat":Lcom/android/server/usage/IntervalStats;
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 416
    .end local v8    # "beginTime":J
    .end local v14    # "name":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    .line 418
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    sub-long v22, v24, v18

    .line 419
    .local v22, "totalTime":J
    const-string v21, "UsageStatsService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "Rolling over usage stats complete. Took "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " milliseconds"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    return-void
.end method


# virtual methods
.method checkin(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    new-instance v1, Lcom/android/server/usage/UserUsageStatsService$4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/usage/UserUsageStatsService$4;-><init>(Lcom/android/server/usage/UserUsageStatsService;Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v1}, Lcom/android/server/usage/UsageStatsDatabase;->checkinDailyFiles(Lcom/android/server/usage/UsageStatsDatabase$CheckinAction;)Z

    .line 491
    return-void
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 3
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 495
    const/4 v0, 0x0

    .local v0, "interval":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 496
    const-string v1, "In-memory "

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 497
    invoke-static {v0}, Lcom/android/server/usage/UserUsageStatsService;->intervalToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 498
    const-string v1, " stats"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 499
    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/usage/UserUsageStatsService;->printIntervalStats(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;Z)V

    .line 495
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 501
    :cond_0
    return-void
.end method

.method init(J)V
    .locals 19
    .param p1, "currentTimeMillis"    # J

    .prologue
    .line 94
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    move-wide/from16 v0, p1

    invoke-virtual {v12, v0, v1}, Lcom/android/server/usage/UsageStatsDatabase;->init(J)V

    .line 96
    const/4 v8, 0x0

    .line 97
    .local v8, "nullCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v12, v12

    if-ge v5, v12, :cond_1

    .line 98
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v13, v5}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v13

    aput-object v13, v12, v5

    .line 99
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v12, v12, v5

    if-nez v12, :cond_0

    .line 102
    add-int/lit8 v8, v8, 0x1

    .line 97
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 106
    :cond_1
    if-lez v8, :cond_5

    .line 107
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v12, v12

    if-eq v8, v12, :cond_2

    .line 110
    const-string v12, "UsageStatsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "Some stats have no latest available"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_2
    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2, v12}, Lcom/android/server/usage/UserUsageStatsService;->loadActiveStats(JZ)V

    .line 132
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    .local v4, "arr$":[Lcom/android/server/usage/IntervalStats;
    array-length v7, v4

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_2
    if-ge v6, v7, :cond_7

    aget-object v11, v4, v6

    .line 133
    .local v11, "stat":Lcom/android/server/usage/IntervalStats;
    iget-object v12, v11, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v9

    .line 134
    .local v9, "pkgCount":I
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v9, :cond_6

    .line 135
    iget-object v12, v11, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v12, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/usage/UsageStats;

    .line 136
    .local v10, "pkgStats":Landroid/app/usage/UsageStats;
    iget v12, v10, Landroid/app/usage/UsageStats;->mLastEvent:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_3

    iget v12, v10, Landroid/app/usage/UsageStats;->mLastEvent:I

    const/4 v13, 0x4

    if-ne v12, v13, :cond_4

    .line 138
    :cond_3
    iget-object v12, v10, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    iget-wide v14, v11, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J

    const/4 v13, 0x3

    invoke-virtual {v11, v12, v14, v15, v13}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;JI)V

    .line 140
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->notifyStatsChanged()V

    .line 134
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 122
    .end local v4    # "arr$":[Lcom/android/server/usage/IntervalStats;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v9    # "pkgCount":I
    .end local v10    # "pkgStats":Landroid/app/usage/UsageStats;
    .end local v11    # "stat":Lcom/android/server/usage/IntervalStats;
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    iget-wide v14, v13, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-virtual {v12, v14, v15}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 124
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/server/usage/UnixCalendar;->addDays(I)V

    .line 125
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v12}, Lcom/android/server/usage/UnixCalendar;->truncateToDay()V

    .line 126
    const-string v12, "UsageStatsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "Rollover scheduled @ "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/android/server/usage/UserUsageStatsService;->sDateFormat:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v15}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v14}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 144
    .restart local v4    # "arr$":[Lcom/android/server/usage/IntervalStats;
    .restart local v6    # "i$":I
    .restart local v7    # "len$":I
    .restart local v9    # "pkgCount":I
    .restart local v11    # "stat":Lcom/android/server/usage/IntervalStats;
    :cond_6
    const/4 v12, 0x0

    iget-wide v14, v11, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J

    invoke-virtual {v11, v12, v14, v15}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    .line 132
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 146
    .end local v9    # "pkgCount":I
    .end local v11    # "stat":Lcom/android/server/usage/IntervalStats;
    :cond_7
    return-void
.end method

.method onTimeChanged(JJ)V
    .locals 5
    .param p1, "oldTime"    # J
    .param p3, "newTime"    # J

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    .line 150
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    sub-long v2, p3, p1

    invoke-virtual {v0, v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->onTimeChanged(J)V

    .line 151
    const/4 v0, 0x1

    invoke-direct {p0, p3, p4, v0}, Lcom/android/server/usage/UserUsageStatsService;->loadActiveStats(JZ)V

    .line 152
    return-void
.end method

.method persistActiveStats()V
    .locals 5

    .prologue
    .line 364
    iget-boolean v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    if-eqz v2, :cond_1

    .line 365
    const-string v2, "UsageStatsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Flushing usage stats to disk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 368
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v3, v3, v1

    invoke-virtual {v2, v1, v3}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V

    .line 367
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 370
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-void

    .line 371
    .restart local v1    # "i":I
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "UsageStatsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Failed to persist active stats"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method printIntervalStats(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;Z)V
    .locals 20
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "stats"    # Lcom/android/server/usage/IntervalStats;
    .param p3, "prettyDates"    # Z

    .prologue
    .line 518
    if-eqz p3, :cond_0

    .line 519
    const-string v18, "timeRange"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/usage/UserUsageStatsService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/android/server/usage/IntervalStats;->endTime:J

    const v8, 0x20015

    invoke-static/range {v3 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 525
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 526
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 527
    const-string v3, "packages"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 528
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 529
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    move-object/from16 v16, v0

    .line 530
    .local v16, "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    invoke-virtual/range {v16 .. v16}, Landroid/util/ArrayMap;->size()I

    move-result v15

    .line 531
    .local v15, "pkgCount":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    if-ge v14, v15, :cond_1

    .line 532
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/usage/UsageStats;

    .line 533
    .local v17, "usageStats":Landroid/app/usage/UsageStats;
    const-string v3, "package"

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 534
    const-string v3, "totalTime"

    move-object/from16 v0, v17

    iget-wide v4, v0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v4, v5, v1}, Lcom/android/server/usage/UserUsageStatsService;->formatElapsedTime(JZ)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 535
    const-string v3, "lastTime"

    move-object/from16 v0, v17

    iget-wide v4, v0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v4, v5, v1}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 536
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 531
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 522
    .end local v14    # "i":I
    .end local v15    # "pkgCount":I
    .end local v16    # "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .end local v17    # "usageStats":Landroid/app/usage/UsageStats;
    :cond_0
    const-string v3, "beginTime"

    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 523
    const-string v3, "endTime"

    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/android/server/usage/IntervalStats;->endTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 538
    .restart local v14    # "i":I
    .restart local v15    # "pkgCount":I
    .restart local v16    # "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 540
    const-string v3, "configurations"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 541
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 542
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    .line 544
    .local v10, "configStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/Configuration;Landroid/app/usage/ConfigurationStats;>;"
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v9

    .line 545
    .local v9, "configCount":I
    const/4 v14, 0x0

    :goto_2
    if-ge v14, v9, :cond_2

    .line 546
    invoke-virtual {v10, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/ConfigurationStats;

    .line 547
    .local v2, "config":Landroid/app/usage/ConfigurationStats;
    const-string v3, "config"

    iget-object v4, v2, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {v4}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 548
    const-string v3, "totalTime"

    iget-wide v4, v2, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v4, v5, v1}, Lcom/android/server/usage/UserUsageStatsService;->formatElapsedTime(JZ)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 549
    const-string v3, "lastTime"

    iget-wide v4, v2, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v4, v5, v1}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 550
    const-string v3, "count"

    iget v4, v2, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 551
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 545
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 553
    .end local v2    # "config":Landroid/app/usage/ConfigurationStats;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 555
    const-string v3, "events"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 556
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 557
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    .line 558
    .local v13, "events":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/app/usage/UsageEvents$Event;>;"
    if-eqz v13, :cond_5

    invoke-virtual {v13}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v12

    .line 559
    .local v12, "eventCount":I
    :goto_3
    const/4 v14, 0x0

    :goto_4
    if-ge v14, v12, :cond_6

    .line 560
    invoke-virtual {v13, v14}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/usage/UsageEvents$Event;

    .line 561
    .local v11, "event":Landroid/app/usage/UsageEvents$Event;
    const-string v3, "time"

    iget-wide v4, v11, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v4, v5, v1}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 562
    const-string v3, "type"

    iget v4, v11, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-static {v4}, Lcom/android/server/usage/UserUsageStatsService;->eventToString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 563
    const-string v3, "package"

    iget-object v4, v11, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 564
    iget-object v3, v11, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 565
    const-string v3, "class"

    iget-object v4, v11, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 567
    :cond_3
    iget-object v3, v11, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v3, :cond_4

    .line 568
    const-string v3, "config"

    iget-object v4, v11, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {v4}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 570
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 559
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 558
    .end local v11    # "event":Landroid/app/usage/UsageEvents$Event;
    .end local v12    # "eventCount":I
    :cond_5
    const/4 v12, 0x0

    goto :goto_3

    .line 572
    .restart local v12    # "eventCount":I
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 573
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 574
    return-void
.end method

.method queryConfigurationStats(IJJ)Ljava/util/List;
    .locals 8
    .param p1, "bucketType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    sget-object v6, Lcom/android/server/usage/UserUsageStatsService;->sConfigStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method queryEvents(JJ)Landroid/app/usage/UsageEvents;
    .locals 17
    .param p1, "beginTime"    # J
    .param p3, "endTime"    # J

    .prologue
    .line 323
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 324
    .local v6, "names":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v9, 0x0

    new-instance v0, Lcom/android/server/usage/UserUsageStatsService$3;

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usage/UserUsageStatsService$3;-><init>(Lcom/android/server/usage/UserUsageStatsService;JJLandroid/util/ArraySet;)V

    move-object/from16 v8, p0

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    move-object v14, v0

    invoke-direct/range {v8 .. v14}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object v7

    .line 354
    .local v7, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageEvents$Event;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    :cond_0
    const/4 v0, 0x0

    .line 360
    :goto_0
    return-object v0

    .line 358
    :cond_1
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Ljava/lang/String;

    .line 359
    .local v15, "table":[Ljava/lang/String;
    invoke-static {v15}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 360
    new-instance v0, Landroid/app/usage/UsageEvents;

    invoke-direct {v0, v7, v15}, Landroid/app/usage/UsageEvents;-><init>(Ljava/util/List;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method queryUsageStats(IJJ)Ljava/util/List;
    .locals 8
    .param p1, "bucketType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 315
    sget-object v6, Lcom/android/server/usage/UserUsageStatsService;->sUsageStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method reportEvent(Landroid/app/usage/UsageEvents$Event;)V
    .locals 11
    .param p1, "event"    # Landroid/app/usage/UsageEvents$Event;

    .prologue
    const/4 v10, 0x5

    .line 166
    iget-wide v6, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-object v8, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v8}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    .line 172
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/app/IActivityManager;->testIsSystemReady()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 173
    iget-wide v6, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    sput-wide v6, Lcom/android/server/usage/UserUsageStatsService;->TimeChanged:J

    .line 174
    invoke-static {}, Lcom/android/server/pm/OppoPackageManagerHelper;->sendDataClearBroadcast()V

    .line 175
    iget-object v6, p0, Lcom/android/server/usage/UserUsageStatsService;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/usage/UserUsageStatsService;->delayRoll:Ljava/lang/Runnable;

    const-wide/32 v8, 0xea60

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 182
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    const/4 v7, 0x0

    aget-object v1, v6, v7

    .line 184
    .local v1, "currentDailyStats":Lcom/android/server/usage/IntervalStats;
    iget-object v4, p1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 185
    .local v4, "newFullConfig":Landroid/content/res/Configuration;
    iget v6, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    if-ne v6, v10, :cond_1

    iget-object v6, v1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    if-eqz v6, :cond_1

    .line 188
    iget-object v6, v1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    invoke-static {v6, v4}, Landroid/content/res/Configuration;->generateDelta(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v6

    iput-object v6, p1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 193
    :cond_1
    iget-object v6, v1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    if-nez v6, :cond_2

    .line 194
    new-instance v6, Landroid/app/usage/TimeSparseArray;

    invoke-direct {v6}, Landroid/app/usage/TimeSparseArray;-><init>()V

    iput-object v6, v1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    .line 196
    :cond_2
    iget-object v6, v1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    iget-wide v8, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {v6, v8, v9, p1}, Landroid/app/usage/TimeSparseArray;->put(JLjava/lang/Object;)V

    .line 198
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    .local v0, "arr$":[Lcom/android/server/usage/IntervalStats;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_5

    aget-object v5, v0, v2

    .line 199
    .local v5, "stats":Lcom/android/server/usage/IntervalStats;
    iget v6, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    if-ne v6, v10, :cond_4

    .line 200
    iget-wide v6, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {v5, v4, v6, v7}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    .line 198
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 177
    .end local v0    # "arr$":[Lcom/android/server/usage/IntervalStats;
    .end local v1    # "currentDailyStats":Lcom/android/server/usage/IntervalStats;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "newFullConfig":Landroid/content/res/Configuration;
    .end local v5    # "stats":Lcom/android/server/usage/IntervalStats;
    :cond_3
    iget-wide v6, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-direct {p0, v6, v7}, Lcom/android/server/usage/UserUsageStatsService;->rolloverStats(J)V

    goto :goto_0

    .line 202
    .restart local v0    # "arr$":[Lcom/android/server/usage/IntervalStats;
    .restart local v1    # "currentDailyStats":Lcom/android/server/usage/IntervalStats;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "newFullConfig":Landroid/content/res/Configuration;
    .restart local v5    # "stats":Lcom/android/server/usage/IntervalStats;
    :cond_4
    iget-object v6, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget-wide v8, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget v7, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-virtual {v5, v6, v8, v9, v7}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;JI)V

    goto :goto_2

    .line 206
    .end local v5    # "stats":Lcom/android/server/usage/IntervalStats;
    :cond_5
    invoke-direct {p0}, Lcom/android/server/usage/UserUsageStatsService;->notifyStatsChanged()V

    .line 207
    return-void
.end method
