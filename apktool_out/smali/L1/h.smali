.class public final LL1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final m:Ljava/lang/String;

.field public static final n:J


# instance fields
.field public final b:Landroid/content/Context;

.field public final e:LC1/G;

.field public final f:LL1/q;

.field public j:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "ForceStopRunnable"

    .line 2
    .line 3
    invoke-static {v0}, LB1/t;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, LL1/h;->m:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 10
    .line 11
    const-wide/16 v1, 0xe42

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    sput-wide v0, LL1/h;->n:J

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LC1/G;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, LL1/h;->b:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, LL1/h;->e:LC1/G;

    .line 11
    .line 12
    invoke-virtual {p2}, LC1/G;->getPreferenceUtils()LL1/q;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, LL1/h;->f:LL1/q;

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput p1, p0, LL1/h;->j:I

    .line 20
    .line 21
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 5

    .line 1
    const-string v0, "alarm"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/AlarmManager;

    .line 8
    .line 9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v2, 0x1f

    .line 12
    .line 13
    if-lt v1, v2, :cond_0

    .line 14
    .line 15
    const/high16 v1, 0xa000000

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/high16 v1, 0x8000000

    .line 19
    .line 20
    :goto_0
    new-instance v2, Landroid/content/Intent;

    .line 21
    .line 22
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v3, Landroid/content/ComponentName;

    .line 26
    .line 27
    const-class v4, Landroidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver;

    .line 28
    .line 29
    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    const-string v3, "ACTION_FORCE_STOP_RESCHEDULE"

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    const/4 v3, -0x1

    .line 41
    invoke-static {p0, v3, v2, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide v1

    .line 49
    sget-wide v3, LL1/h;->n:J

    .line 50
    .line 51
    add-long/2addr v1, v3

    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    const/4 v3, 0x0

    .line 55
    invoke-virtual {v0, v3, v1, v2, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    return-void
.end method


# virtual methods
.method public cleanUp()Z
    .locals 11

    .line 1
    iget-object v0, p0, LL1/h;->b:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, LL1/h;->e:LC1/G;

    .line 4
    .line 5
    invoke-static {v0, v1}, LF1/b;->reconcileJobs(Landroid/content/Context;LC1/G;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {v1}, LC1/G;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->workSpecDao()LK1/F;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->workProgressDao()LK1/x;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 22
    .line 23
    .line 24
    :try_start_0
    check-cast v2, LK1/U;

    .line 25
    .line 26
    invoke-virtual {v2}, LK1/U;->getRunningWork()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    const/4 v5, 0x0

    .line 31
    const/4 v6, 0x1

    .line 32
    if-eqz v4, :cond_0

    .line 33
    .line 34
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    if-nez v7, :cond_0

    .line 39
    .line 40
    move v7, v6

    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    goto :goto_3

    .line 44
    :cond_0
    move v7, v5

    .line 45
    :goto_0
    if-eqz v7, :cond_1

    .line 46
    .line 47
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    if-eqz v8, :cond_1

    .line 56
    .line 57
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    check-cast v8, LK1/E;

    .line 62
    .line 63
    sget-object v9, Landroidx/work/WorkInfo$State;->b:Landroidx/work/WorkInfo$State;

    .line 64
    .line 65
    iget-object v10, v8, LK1/E;->a:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v2, v9, v10}, LK1/U;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    iget-object v8, v8, LK1/E;->a:Ljava/lang/String;

    .line 71
    .line 72
    const-wide/16 v9, -0x1

    .line 73
    .line 74
    invoke-virtual {v2, v8, v9, v10}, LK1/U;->markWorkSpecScheduled(Ljava/lang/String;J)I

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    check-cast v3, LK1/B;

    .line 79
    .line 80
    invoke-virtual {v3}, LK1/B;->deleteAll()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 87
    .line 88
    .line 89
    if-nez v7, :cond_3

    .line 90
    .line 91
    if-eqz v0, :cond_2

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_2
    return v5

    .line 95
    :cond_3
    :goto_2
    return v6

    .line 96
    :goto_3
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 97
    .line 98
    .line 99
    throw v0
.end method

.method public forceStopRunnable()V
    .locals 4

    .line 1
    invoke-virtual {p0}, LL1/h;->cleanUp()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, LL1/h;->shouldRescheduleWorkers()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sget-object v2, LL1/h;->m:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v3, p0, LL1/h;->e:LC1/G;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "Rescheduling Workers."

    .line 20
    .line 21
    invoke-virtual {v0, v2, v1}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, LC1/G;->rescheduleEligibleWork()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, LC1/G;->getPreferenceUtils()LL1/q;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, v1}, LL1/q;->setNeedsReschedule(Z)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    invoke-virtual {p0}, LL1/h;->isForceStopped()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v1, "Application was force-stopped, rescheduling."

    .line 47
    .line 48
    invoke-virtual {v0, v2, v1}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, LC1/G;->rescheduleEligibleWork()V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, LL1/h;->f:LL1/q;

    .line 55
    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 57
    .line 58
    .line 59
    move-result-wide v1

    .line 60
    invoke-virtual {v0, v1, v2}, LL1/q;->setLastForceStopEventMillis(J)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_1
    if-eqz v0, :cond_2

    .line 65
    .line 66
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const-string v1, "Found unfinished work, scheduling it."

    .line 71
    .line 72
    invoke-virtual {v0, v2, v1}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3}, LC1/G;->getConfiguration()LB1/c;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v3}, LC1/G;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v3}, LC1/G;->getSchedulers()Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-static {v0, v1, v2}, LC1/u;->schedule(LB1/c;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 88
    .line 89
    .line 90
    :cond_2
    return-void
.end method

.method public isForceStopped()Z
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClassVerificationFailure"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LL1/h;->b:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v3, 0x1f

    .line 7
    .line 8
    if-lt v2, v3, :cond_0

    .line 9
    .line 10
    const/high16 v3, 0x22000000

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/high16 v3, 0x20000000

    .line 14
    .line 15
    :goto_0
    new-instance v4, Landroid/content/Intent;

    .line 16
    .line 17
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v5, Landroid/content/ComponentName;

    .line 21
    .line 22
    const-class v6, Landroidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver;

    .line 23
    .line 24
    invoke-direct {v5, v0, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    const-string v5, "ACTION_FORCE_STOP_RESCHEDULE"

    .line 31
    .line 32
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    const/4 v5, -0x1

    .line 36
    invoke-static {v0, v5, v4, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const/16 v4, 0x1e

    .line 41
    .line 42
    const/4 v5, 0x0

    .line 43
    if-lt v2, v4, :cond_3

    .line 44
    .line 45
    if-eqz v3, :cond_1

    .line 46
    .line 47
    invoke-virtual {v3}, Landroid/app/PendingIntent;->cancel()V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :catch_0
    move-exception v0

    .line 52
    goto :goto_3

    .line 53
    :catch_1
    move-exception v0

    .line 54
    goto :goto_3

    .line 55
    :cond_1
    :goto_1
    const-string v2, "activity"

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Landroid/app/ActivityManager;

    .line 62
    .line 63
    invoke-static {v0}, LL1/g;->p(Landroid/app/ActivityManager;)Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-nez v2, :cond_4

    .line 74
    .line 75
    iget-object v2, p0, LL1/h;->f:LL1/q;

    .line 76
    .line 77
    invoke-virtual {v2}, LL1/q;->getLastForceStopEventMillis()J

    .line 78
    .line 79
    .line 80
    move-result-wide v2

    .line 81
    move v4, v5

    .line 82
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    if-ge v4, v6, :cond_4

    .line 87
    .line 88
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    invoke-static {v6}, LL1/g;->g(Ljava/lang/Object;)Landroid/app/ApplicationExitInfo;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    invoke-static {v6}, LL1/g;->c(Landroid/app/ApplicationExitInfo;)I

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    const/16 v8, 0xa

    .line 101
    .line 102
    if-ne v7, v8, :cond_2

    .line 103
    .line 104
    invoke-static {v6}, LL1/g;->e(Landroid/app/ApplicationExitInfo;)J

    .line 105
    .line 106
    .line 107
    move-result-wide v6

    .line 108
    cmp-long v6, v6, v2

    .line 109
    .line 110
    if-ltz v6, :cond_2

    .line 111
    .line 112
    return v1

    .line 113
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_3
    if-nez v3, :cond_4

    .line 117
    .line 118
    invoke-static {v0}, LL1/h;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .line 120
    .line 121
    return v1

    .line 122
    :cond_4
    return v5

    .line 123
    :goto_3
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    sget-object v3, LL1/h;->m:Ljava/lang/String;

    .line 128
    .line 129
    const-string v4, "Ignoring exception"

    .line 130
    .line 131
    invoke-virtual {v2, v3, v4, v0}, LB1/t;->warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    .line 133
    .line 134
    return v1
.end method

.method public multiProcessChecks()Z
    .locals 5

    .line 1
    iget-object v0, p0, LL1/h;->e:LC1/G;

    .line 2
    .line 3
    invoke-virtual {v0}, LC1/G;->getConfiguration()LB1/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, LB1/c;->getDefaultProcessName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    sget-object v2, LL1/h;->m:Ljava/lang/String;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "The default process name was not specified."

    .line 24
    .line 25
    invoke-virtual {v0, v2, v1}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    return v0

    .line 30
    :cond_0
    iget-object v1, p0, LL1/h;->b:Landroid/content/Context;

    .line 31
    .line 32
    invoke-static {v1, v0}, LL1/r;->isDefaultProcess(Landroid/content/Context;LB1/c;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v4, "Is default app process = "

    .line 43
    .line 44
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v1, v2, v3}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return v0
.end method

.method public run()V
    .locals 10

    .line 1
    sget-object v0, LL1/h;->m:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, LL1/h;->e:LC1/G;

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0}, LL1/h;->multiProcessChecks()Z

    .line 6
    .line 7
    .line 8
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, LC1/G;->onForceStopRunnableCompleted()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    :goto_0
    :try_start_1
    iget-object v2, p0, LL1/h;->b:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v2}, LC1/A;->migrateDatabase(Landroid/content/Context;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    .line 19
    .line 20
    :try_start_2
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const-string v3, "Performing cleanup operations."

    .line 25
    .line 26
    invoke-virtual {v2, v0, v3}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    .line 28
    .line 29
    :try_start_3
    invoke-virtual {p0}, LL1/h;->forceStopRunnable()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/database/sqlite/SQLiteTableLockedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteAccessPermException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 30
    .line 31
    .line 32
    goto/16 :goto_2

    .line 33
    .line 34
    :catchall_0
    move-exception v0

    .line 35
    goto/16 :goto_3

    .line 36
    .line 37
    :catch_0
    move-exception v2

    .line 38
    goto :goto_1

    .line 39
    :catch_1
    move-exception v2

    .line 40
    goto :goto_1

    .line 41
    :catch_2
    move-exception v2

    .line 42
    goto :goto_1

    .line 43
    :catch_3
    move-exception v2

    .line 44
    goto :goto_1

    .line 45
    :catch_4
    move-exception v2

    .line 46
    goto :goto_1

    .line 47
    :catch_5
    move-exception v2

    .line 48
    goto :goto_1

    .line 49
    :catch_6
    move-exception v2

    .line 50
    :goto_1
    :try_start_4
    iget v3, p0, LL1/h;->j:I

    .line 51
    .line 52
    add-int/lit8 v3, v3, 0x1

    .line 53
    .line 54
    iput v3, p0, LL1/h;->j:I

    .line 55
    .line 56
    const/4 v4, 0x3

    .line 57
    if-lt v3, v4, :cond_2

    .line 58
    .line 59
    const-string v3, "The file system on the device is in a bad state. WorkManager cannot access the app\'s internal data store."

    .line 60
    .line 61
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v4, v0, v3, v2}, LB1/t;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 69
    .line 70
    invoke-direct {v4, v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, LC1/G;->getConfiguration()LB1/c;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v2}, LB1/c;->getInitializationExceptionHandler()LL/a;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    if-eqz v2, :cond_1

    .line 82
    .line 83
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    const-string v5, "Routing exception to the specified exception handler"

    .line 88
    .line 89
    invoke-virtual {v3, v0, v5, v4}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    .line 91
    .line 92
    invoke-interface {v2, v4}, LL/a;->accept(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_1
    throw v4

    .line 97
    :cond_2
    int-to-long v3, v3

    .line 98
    const-wide/16 v5, 0x12c

    .line 99
    .line 100
    mul-long/2addr v3, v5

    .line 101
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    new-instance v8, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string v9, "Retrying after "

    .line 111
    .line 112
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-virtual {v7, v0, v3, v2}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    .line 124
    .line 125
    iget v2, p0, LL1/h;->j:I

    .line 126
    .line 127
    int-to-long v2, v2

    .line 128
    mul-long/2addr v2, v5

    .line 129
    invoke-virtual {p0, v2, v3}, LL1/h;->sleep(J)V

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :catch_7
    move-exception v2

    .line 134
    const-string v3, "Unexpected SQLite exception during migrations"

    .line 135
    .line 136
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-virtual {v4, v0, v3}, LB1/t;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 144
    .line 145
    invoke-direct {v0, v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, LC1/G;->getConfiguration()LB1/c;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-virtual {v2}, LB1/c;->getInitializationExceptionHandler()LL/a;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    if-eqz v2, :cond_3

    .line 157
    .line 158
    invoke-interface {v2, v0}, LL/a;->accept(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 159
    .line 160
    .line 161
    :goto_2
    invoke-virtual {v1}, LC1/G;->onForceStopRunnableCompleted()V

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :cond_3
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 166
    :goto_3
    invoke-virtual {v1}, LC1/G;->onForceStopRunnableCompleted()V

    .line 167
    .line 168
    .line 169
    throw v0
.end method

.method public shouldRescheduleWorkers()Z
    .locals 1

    .line 1
    iget-object v0, p0, LL1/h;->e:LC1/G;

    .line 2
    .line 3
    invoke-virtual {v0}, LC1/G;->getPreferenceUtils()LL1/q;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, LL1/q;->getNeedsReschedule()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public sleep(J)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    :catch_0
    return-void
.end method
