.class final Lcom/android/server/AlarmManagerService$FilterStats;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FilterStats"
.end annotation


# instance fields
.field aggregateTime:J

.field count:I

.field countWhenScreenOff:I

.field delayCount:I

.field delayState:Z

.field final mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

.field final mTag:Ljava/lang/String;

.field nesting:I

.field numWakeup:I

.field numWakeupWhenScreenoff:I

.field startTime:J

.field wakeupCountStartTime:J


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService$BroadcastStats;Ljava/lang/String;)V
    .locals 0
    .param p1, "broadcastStats"    # Lcom/android/server/AlarmManagerService$BroadcastStats;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 623
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 624
    iput-object p2, p0, Lcom/android/server/AlarmManagerService$FilterStats;->mTag:Ljava/lang/String;

    .line 625
    return-void
.end method
