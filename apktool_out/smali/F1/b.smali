.class public final LF1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC1/t;


# static fields
.field public static final m:Ljava/lang/String;


# instance fields
.field public final b:Landroid/content/Context;

.field public final e:Landroid/app/job/JobScheduler;

.field public final f:LC1/G;

.field public final j:LF1/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "SystemJobScheduler"

    .line 2
    .line 3
    invoke-static {v0}, LB1/t;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, LF1/b;->m:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LC1/G;)V
    .locals 2

    .line 1
    const-string v0, "jobscheduler"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    new-instance v1, LF1/a;

    invoke-direct {v1, p1}, LF1/a;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-direct {p0, p1, p2, v0, v1}, LF1/b;-><init>(Landroid/content/Context;LC1/G;Landroid/app/job/JobScheduler;LF1/a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LC1/G;Landroid/app/job/JobScheduler;LF1/a;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, LF1/b;->b:Landroid/content/Context;

    .line 6
    iput-object p2, p0, LF1/b;->f:LC1/G;

    .line 7
    iput-object p3, p0, LF1/b;->e:Landroid/app/job/JobScheduler;

    .line 8
    iput-object p4, p0, LF1/b;->j:LF1/a;

    return-void
.end method

.method public static a(Landroid/app/job/JobScheduler;I)V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->cancel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catchall_0
    move-exception p0

    .line 6
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 v2, 0x1

    .line 19
    new-array v2, v2, [Ljava/lang/Object;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    aput-object p1, v2, v3

    .line 23
    .line 24
    const-string p1, "Exception while trying to cancel job (%d)"

    .line 25
    .line 26
    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    sget-object v1, LF1/b;->m:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, v1, p1, p0}, LB1/t;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public static b(Landroid/content/Context;Landroid/app/job/JobScheduler;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2

    .line 1
    invoke-static {p0, p1}, LF1/b;->c(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/app/job/JobInfo;

    .line 30
    .line 31
    invoke-static {v0}, LF1/b;->d(Landroid/app/job/JobInfo;)LK1/r;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-virtual {v1}, LK1/r;->getWorkSpecId()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    return-object p1
.end method

.method public static c(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    .line 3
    .line 4
    .line 5
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    goto :goto_0

    .line 7
    :catchall_0
    move-exception p1

    .line 8
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    sget-object v2, LF1/b;->m:Ljava/lang/String;

    .line 13
    .line 14
    const-string v3, "getAllPendingJobs() is not reliable on this device."

    .line 15
    .line 16
    invoke-virtual {v1, v2, v3, p1}, LB1/t;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    move-object p1, v0

    .line 20
    :goto_0
    if-nez p1, :cond_0

    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    .line 31
    .line 32
    new-instance v1, Landroid/content/ComponentName;

    .line 33
    .line 34
    const-class v2, Landroidx/work/impl/background/systemjob/SystemJobService;

    .line 35
    .line 36
    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Landroid/app/job/JobInfo;

    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_1

    .line 64
    .line 65
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    return-object v0
.end method

.method public static cancelAll(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "jobscheduler"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/job/JobScheduler;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {p0, v0}, LF1/b;->c(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Landroid/app/job/JobInfo;

    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-static {v0, v1}, LF1/b;->a(Landroid/app/job/JobScheduler;I)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    return-void
.end method

.method public static d(Landroid/app/job/JobInfo;)LK1/r;
    .locals 3

    .line 1
    const-string v0, "EXTRA_WORK_SPEC_ID"

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const-string v1, "EXTRA_WORK_SPEC_GENERATION"

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {p0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    new-instance v2, LK1/r;

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-direct {v2, p0, v1}, LK1/r;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    return-object v2

    .line 32
    :catch_0
    :cond_0
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method

.method public static reconcileJobs(Landroid/content/Context;LC1/G;)Z
    .locals 6

    .line 1
    const-string v0, "jobscheduler"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/job/JobScheduler;

    .line 8
    .line 9
    invoke-static {p0, v0}, LF1/b;->c(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p1}, LC1/G;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->systemIdInfoDao()LK1/l;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, LK1/p;

    .line 22
    .line 23
    invoke-virtual {v1}, LK1/p;->getWorkSpecIds()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/4 v2, 0x0

    .line 28
    if-eqz p0, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v3, v2

    .line 36
    :goto_0
    new-instance v4, Ljava/util/HashSet;

    .line 37
    .line 38
    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 39
    .line 40
    .line 41
    if-eqz p0, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-nez v3, :cond_2

    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_2

    .line 58
    .line 59
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    check-cast v3, Landroid/app/job/JobInfo;

    .line 64
    .line 65
    invoke-static {v3}, LF1/b;->d(Landroid/app/job/JobInfo;)LK1/r;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    if-eqz v5, :cond_1

    .line 70
    .line 71
    invoke-virtual {v5}, LK1/r;->getWorkSpecId()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getId()I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    invoke-static {v0, v3}, LF1/b;->a(Landroid/app/job/JobScheduler;I)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_4

    .line 96
    .line 97
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-nez v0, :cond_3

    .line 108
    .line 109
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    sget-object v0, LF1/b;->m:Ljava/lang/String;

    .line 114
    .line 115
    const-string v2, "Reconciling jobs"

    .line 116
    .line 117
    invoke-virtual {p0, v0, v2}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const/4 v2, 0x1

    .line 121
    :cond_4
    if-eqz v2, :cond_6

    .line 122
    .line 123
    invoke-virtual {p1}, LC1/G;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 128
    .line 129
    .line 130
    :try_start_0
    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->workSpecDao()LK1/F;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-eqz v1, :cond_5

    .line 143
    .line 144
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    check-cast v1, Ljava/lang/String;

    .line 149
    .line 150
    move-object v3, p1

    .line 151
    check-cast v3, LK1/U;

    .line 152
    .line 153
    const-wide/16 v4, -0x1

    .line 154
    .line 155
    invoke-virtual {v3, v1, v4, v5}, LK1/U;->markWorkSpecScheduled(Ljava/lang/String;J)I

    .line 156
    .line 157
    .line 158
    goto :goto_2

    .line 159
    :catchall_0
    move-exception p1

    .line 160
    goto :goto_3

    .line 161
    :cond_5
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 165
    .line 166
    .line 167
    return v2

    .line 168
    :goto_3
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 169
    .line 170
    .line 171
    throw p1

    .line 172
    :cond_6
    return v2
.end method


# virtual methods
.method public cancel(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, LF1/b;->b:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, LF1/b;->e:Landroid/app/job/JobScheduler;

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, LF1/b;->b(Landroid/content/Context;Landroid/app/job/JobScheduler;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-static {v1, v2}, LF1/b;->a(Landroid/app/job/JobScheduler;I)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, p0, LF1/b;->f:LC1/G;

    .line 42
    .line 43
    invoke-virtual {v0}, LC1/G;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->systemIdInfoDao()LK1/l;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, LK1/p;

    .line 52
    .line 53
    invoke-virtual {v0, p1}, LK1/p;->removeSystemIdInfo(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void
.end method

.method public hasLimitedSchedulingSlots()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public varargs schedule([LK1/E;)V
    .locals 12

    .line 1
    iget-object v0, p0, LF1/b;->f:LC1/G;

    .line 2
    .line 3
    invoke-virtual {v0}, LC1/G;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, LL1/k;

    .line 8
    .line 9
    invoke-direct {v2, v1}, LL1/k;-><init>(Landroidx/work/impl/WorkDatabase;)V

    .line 10
    .line 11
    .line 12
    array-length v3, p1

    .line 13
    const/4 v4, 0x0

    .line 14
    move v5, v4

    .line 15
    :goto_0
    if-ge v5, v3, :cond_7

    .line 16
    .line 17
    aget-object v6, p1, v5

    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 20
    .line 21
    .line 22
    :try_start_0
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->workSpecDao()LK1/F;

    .line 23
    .line 24
    .line 25
    move-result-object v7

    .line 26
    iget-object v8, v6, LK1/E;->a:Ljava/lang/String;

    .line 27
    .line 28
    check-cast v7, LK1/U;

    .line 29
    .line 30
    invoke-virtual {v7, v8}, LK1/U;->getWorkSpec(Ljava/lang/String;)LK1/E;

    .line 31
    .line 32
    .line 33
    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    const-string v8, "Skipping scheduling "

    .line 35
    .line 36
    sget-object v9, LF1/b;->m:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v10, v6, LK1/E;->a:Ljava/lang/String;

    .line 39
    .line 40
    if-nez v7, :cond_0

    .line 41
    .line 42
    :try_start_1
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    new-instance v7, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v8, " because it\'s no longer in the DB"

    .line 58
    .line 59
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    invoke-virtual {v6, v9, v7}, LB1/t;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    .line 71
    .line 72
    :goto_1
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 73
    .line 74
    .line 75
    goto/16 :goto_4

    .line 76
    .line 77
    :catchall_0
    move-exception p1

    .line 78
    goto/16 :goto_5

    .line 79
    .line 80
    :cond_0
    :try_start_2
    iget-object v7, v7, LK1/E;->b:Landroidx/work/WorkInfo$State;

    .line 81
    .line 82
    sget-object v11, Landroidx/work/WorkInfo$State;->b:Landroidx/work/WorkInfo$State;

    .line 83
    .line 84
    if-eq v7, v11, :cond_1

    .line 85
    .line 86
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    new-instance v7, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v8, " because it is no longer enqueued"

    .line 102
    .line 103
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    invoke-virtual {v6, v9, v7}, LB1/t;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_1
    invoke-static {v6}, LK1/V;->generationalId(LK1/E;)LK1/r;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->systemIdInfoDao()LK1/l;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    check-cast v8, LK1/p;

    .line 126
    .line 127
    invoke-virtual {v8, v7}, LK1/p;->getSystemIdInfo(LK1/r;)LK1/j;

    .line 128
    .line 129
    .line 130
    move-result-object v8

    .line 131
    if-eqz v8, :cond_2

    .line 132
    .line 133
    iget v9, v8, LK1/j;->c:I

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_2
    invoke-virtual {v0}, LC1/G;->getConfiguration()LB1/c;

    .line 137
    .line 138
    .line 139
    move-result-object v9

    .line 140
    invoke-virtual {v9}, LB1/c;->getMinJobSchedulerId()I

    .line 141
    .line 142
    .line 143
    move-result v9

    .line 144
    invoke-virtual {v0}, LC1/G;->getConfiguration()LB1/c;

    .line 145
    .line 146
    .line 147
    move-result-object v11

    .line 148
    invoke-virtual {v11}, LB1/c;->getMaxJobSchedulerId()I

    .line 149
    .line 150
    .line 151
    move-result v11

    .line 152
    invoke-virtual {v2, v9, v11}, LL1/k;->nextJobSchedulerIdWithRange(II)I

    .line 153
    .line 154
    .line 155
    move-result v9

    .line 156
    :goto_2
    if-nez v8, :cond_3

    .line 157
    .line 158
    invoke-static {v7, v9}, LK1/q;->systemIdInfo(LK1/r;I)LK1/j;

    .line 159
    .line 160
    .line 161
    move-result-object v7

    .line 162
    invoke-virtual {v0}, LC1/G;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    .line 163
    .line 164
    .line 165
    move-result-object v8

    .line 166
    invoke-virtual {v8}, Landroidx/work/impl/WorkDatabase;->systemIdInfoDao()LK1/l;

    .line 167
    .line 168
    .line 169
    move-result-object v8

    .line 170
    check-cast v8, LK1/p;

    .line 171
    .line 172
    invoke-virtual {v8, v7}, LK1/p;->insertSystemIdInfo(LK1/j;)V

    .line 173
    .line 174
    .line 175
    :cond_3
    invoke-virtual {p0, v6, v9}, LF1/b;->scheduleInternal(LK1/E;I)V

    .line 176
    .line 177
    .line 178
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 179
    .line 180
    const/16 v8, 0x17

    .line 181
    .line 182
    if-ne v7, v8, :cond_6

    .line 183
    .line 184
    iget-object v7, p0, LF1/b;->b:Landroid/content/Context;

    .line 185
    .line 186
    iget-object v8, p0, LF1/b;->e:Landroid/app/job/JobScheduler;

    .line 187
    .line 188
    invoke-static {v7, v8, v10}, LF1/b;->b(Landroid/content/Context;Landroid/app/job/JobScheduler;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 189
    .line 190
    .line 191
    move-result-object v7

    .line 192
    if-eqz v7, :cond_6

    .line 193
    .line 194
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    .line 196
    .line 197
    move-result-object v8

    .line 198
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 199
    .line 200
    .line 201
    move-result v8

    .line 202
    if-ltz v8, :cond_4

    .line 203
    .line 204
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 208
    .line 209
    .line 210
    move-result v8

    .line 211
    if-nez v8, :cond_5

    .line 212
    .line 213
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v7

    .line 217
    check-cast v7, Ljava/lang/Integer;

    .line 218
    .line 219
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 220
    .line 221
    .line 222
    move-result v7

    .line 223
    goto :goto_3

    .line 224
    :cond_5
    invoke-virtual {v0}, LC1/G;->getConfiguration()LB1/c;

    .line 225
    .line 226
    .line 227
    move-result-object v7

    .line 228
    invoke-virtual {v7}, LB1/c;->getMinJobSchedulerId()I

    .line 229
    .line 230
    .line 231
    move-result v7

    .line 232
    invoke-virtual {v0}, LC1/G;->getConfiguration()LB1/c;

    .line 233
    .line 234
    .line 235
    move-result-object v8

    .line 236
    invoke-virtual {v8}, LB1/c;->getMaxJobSchedulerId()I

    .line 237
    .line 238
    .line 239
    move-result v8

    .line 240
    invoke-virtual {v2, v7, v8}, LL1/k;->nextJobSchedulerIdWithRange(II)I

    .line 241
    .line 242
    .line 243
    move-result v7

    .line 244
    :goto_3
    invoke-virtual {p0, v6, v7}, LF1/b;->scheduleInternal(LK1/E;I)V

    .line 245
    .line 246
    .line 247
    :cond_6
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 248
    .line 249
    .line 250
    goto/16 :goto_1

    .line 251
    .line 252
    :goto_4
    add-int/lit8 v5, v5, 0x1

    .line 253
    .line 254
    goto/16 :goto_0

    .line 255
    .line 256
    :goto_5
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 257
    .line 258
    .line 259
    throw p1

    .line 260
    :cond_7
    return-void
.end method

.method public scheduleInternal(LK1/E;I)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move/from16 v0, p2

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    const/4 v4, 0x2

    .line 9
    const/4 v5, 0x1

    .line 10
    iget-object v7, v1, LF1/b;->e:Landroid/app/job/JobScheduler;

    .line 11
    .line 12
    iget-object v8, v1, LF1/b;->j:LF1/a;

    .line 13
    .line 14
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget-object v9, v2, LK1/E;->j:LB1/f;

    .line 18
    .line 19
    new-instance v10, Landroid/os/PersistableBundle;

    .line 20
    .line 21
    invoke-direct {v10}, Landroid/os/PersistableBundle;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v11, "EXTRA_WORK_SPEC_ID"

    .line 25
    .line 26
    iget-object v12, v2, LK1/E;->a:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v10, v11, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v11, "EXTRA_WORK_SPEC_GENERATION"

    .line 32
    .line 33
    invoke-virtual {v2}, LK1/E;->getGeneration()I

    .line 34
    .line 35
    .line 36
    move-result v13

    .line 37
    invoke-virtual {v10, v11, v13}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    const-string v11, "EXTRA_IS_PERIODIC"

    .line 41
    .line 42
    invoke-virtual {v2}, LK1/E;->isPeriodic()Z

    .line 43
    .line 44
    .line 45
    move-result v13

    .line 46
    invoke-virtual {v10, v11, v13}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    new-instance v11, Landroid/app/job/JobInfo$Builder;

    .line 50
    .line 51
    iget-object v8, v8, LF1/a;->a:Landroid/content/ComponentName;

    .line 52
    .line 53
    invoke-direct {v11, v0, v8}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v9}, LB1/f;->requiresCharging()Z

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    invoke-virtual {v11, v8}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    invoke-virtual {v9}, LB1/f;->requiresDeviceIdle()Z

    .line 65
    .line 66
    .line 67
    move-result v11

    .line 68
    invoke-virtual {v8, v11}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    invoke-virtual {v8, v10}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    invoke-virtual {v9}, LB1/f;->getRequiredNetworkType()Landroidx/work/NetworkType;

    .line 77
    .line 78
    .line 79
    move-result-object v10

    .line 80
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 81
    .line 82
    const/16 v13, 0x1e

    .line 83
    .line 84
    const/16 v14, 0x18

    .line 85
    .line 86
    const/16 v15, 0x1a

    .line 87
    .line 88
    if-lt v11, v13, :cond_0

    .line 89
    .line 90
    sget-object v13, Landroidx/work/NetworkType;->n:Landroidx/work/NetworkType;

    .line 91
    .line 92
    if-ne v10, v13, :cond_0

    .line 93
    .line 94
    new-instance v10, Landroid/net/NetworkRequest$Builder;

    .line 95
    .line 96
    invoke-direct {v10}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 97
    .line 98
    .line 99
    const/16 v13, 0x19

    .line 100
    .line 101
    invoke-virtual {v10, v13}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 102
    .line 103
    .line 104
    move-result-object v10

    .line 105
    invoke-virtual {v10}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 106
    .line 107
    .line 108
    move-result-object v10

    .line 109
    invoke-static {v8, v10}, LB4/p;->u(Landroid/app/job/JobInfo$Builder;Landroid/net/NetworkRequest;)V

    .line 110
    .line 111
    .line 112
    move/from16 v16, v4

    .line 113
    .line 114
    move/from16 v17, v5

    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_0
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 118
    .line 119
    .line 120
    move-result v13

    .line 121
    if-eqz v13, :cond_6

    .line 122
    .line 123
    if-eq v13, v5, :cond_5

    .line 124
    .line 125
    if-eq v13, v4, :cond_4

    .line 126
    .line 127
    if-eq v13, v3, :cond_2

    .line 128
    .line 129
    move/from16 v16, v4

    .line 130
    .line 131
    const/4 v4, 0x4

    .line 132
    if-eq v13, v4, :cond_1

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_1
    if-lt v11, v15, :cond_3

    .line 136
    .line 137
    :goto_0
    move/from16 v17, v5

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_2
    move/from16 v16, v4

    .line 141
    .line 142
    if-lt v11, v14, :cond_3

    .line 143
    .line 144
    move v4, v3

    .line 145
    goto :goto_0

    .line 146
    :cond_3
    :goto_1
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    new-instance v13, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    move/from16 v17, v5

    .line 153
    .line 154
    const-string v5, "API version too low. Cannot convert network type value "

    .line 155
    .line 156
    invoke-direct {v13, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    sget-object v10, LF1/a;->b:Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {v4, v10, v5}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    :goto_2
    move/from16 v4, v17

    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_4
    move/from16 v16, v4

    .line 175
    .line 176
    goto :goto_0

    .line 177
    :cond_5
    move/from16 v16, v4

    .line 178
    .line 179
    move/from16 v17, v5

    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_6
    move/from16 v16, v4

    .line 183
    .line 184
    move/from16 v17, v5

    .line 185
    .line 186
    const/4 v4, 0x0

    .line 187
    :goto_3
    invoke-virtual {v8, v4}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 188
    .line 189
    .line 190
    :goto_4
    invoke-virtual {v9}, LB1/f;->requiresDeviceIdle()Z

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    if-nez v4, :cond_8

    .line 195
    .line 196
    iget-object v4, v2, LK1/E;->l:Landroidx/work/BackoffPolicy;

    .line 197
    .line 198
    sget-object v5, Landroidx/work/BackoffPolicy;->e:Landroidx/work/BackoffPolicy;

    .line 199
    .line 200
    if-ne v4, v5, :cond_7

    .line 201
    .line 202
    const/4 v4, 0x0

    .line 203
    :goto_5
    move-object v10, v7

    .line 204
    goto :goto_6

    .line 205
    :cond_7
    move/from16 v4, v17

    .line 206
    .line 207
    goto :goto_5

    .line 208
    :goto_6
    iget-wide v6, v2, LK1/E;->m:J

    .line 209
    .line 210
    invoke-virtual {v8, v6, v7, v4}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    .line 211
    .line 212
    .line 213
    goto :goto_7

    .line 214
    :cond_8
    move-object v10, v7

    .line 215
    :goto_7
    invoke-virtual {v2}, LK1/E;->calculateNextRunTime()J

    .line 216
    .line 217
    .line 218
    move-result-wide v6

    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 220
    .line 221
    .line 222
    move-result-wide v18

    .line 223
    sub-long v6, v6, v18

    .line 224
    .line 225
    const-wide/16 v3, 0x0

    .line 226
    .line 227
    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 228
    .line 229
    .line 230
    move-result-wide v6

    .line 231
    move-wide/from16 v18, v3

    .line 232
    .line 233
    const/16 v3, 0x1c

    .line 234
    .line 235
    if-gt v11, v3, :cond_9

    .line 236
    .line 237
    invoke-virtual {v8, v6, v7}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 238
    .line 239
    .line 240
    goto :goto_8

    .line 241
    :cond_9
    cmp-long v3, v6, v18

    .line 242
    .line 243
    if-lez v3, :cond_a

    .line 244
    .line 245
    invoke-virtual {v8, v6, v7}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 246
    .line 247
    .line 248
    goto :goto_8

    .line 249
    :cond_a
    iget-boolean v3, v2, LK1/E;->q:Z

    .line 250
    .line 251
    if-nez v3, :cond_b

    .line 252
    .line 253
    invoke-static {v8}, LB4/p;->t(Landroid/app/job/JobInfo$Builder;)V

    .line 254
    .line 255
    .line 256
    :cond_b
    :goto_8
    if-lt v11, v14, :cond_d

    .line 257
    .line 258
    invoke-virtual {v9}, LB1/f;->hasContentUriTriggers()Z

    .line 259
    .line 260
    .line 261
    move-result v3

    .line 262
    if-eqz v3, :cond_d

    .line 263
    .line 264
    invoke-virtual {v9}, LB1/f;->getContentUriTriggers()Ljava/util/Set;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 269
    .line 270
    .line 271
    move-result-object v3

    .line 272
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 273
    .line 274
    .line 275
    move-result v4

    .line 276
    if-eqz v4, :cond_c

    .line 277
    .line 278
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v4

    .line 282
    check-cast v4, LB1/e;

    .line 283
    .line 284
    invoke-virtual {v4}, LB1/e;->isTriggeredForDescendants()Z

    .line 285
    .line 286
    .line 287
    move-result v11

    .line 288
    invoke-static {}, LB4/n;->m()V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v4}, LB1/e;->getUri()Landroid/net/Uri;

    .line 292
    .line 293
    .line 294
    move-result-object v4

    .line 295
    invoke-static {v4, v11}, LB4/n;->b(Landroid/net/Uri;I)Landroid/app/job/JobInfo$TriggerContentUri;

    .line 296
    .line 297
    .line 298
    move-result-object v4

    .line 299
    invoke-static {v8, v4}, LB4/n;->p(Landroid/app/job/JobInfo$Builder;Landroid/app/job/JobInfo$TriggerContentUri;)V

    .line 300
    .line 301
    .line 302
    goto :goto_9

    .line 303
    :cond_c
    invoke-virtual {v9}, LB1/f;->getContentTriggerUpdateDelayMillis()J

    .line 304
    .line 305
    .line 306
    move-result-wide v3

    .line 307
    invoke-static {v8, v3, v4}, LB4/n;->o(Landroid/app/job/JobInfo$Builder;J)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v9}, LB1/f;->getContentTriggerMaxDelayMillis()J

    .line 311
    .line 312
    .line 313
    move-result-wide v3

    .line 314
    invoke-static {v8, v3, v4}, LB4/n;->C(Landroid/app/job/JobInfo$Builder;J)V

    .line 315
    .line 316
    .line 317
    :cond_d
    const/4 v5, 0x0

    .line 318
    invoke-virtual {v8, v5}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    .line 319
    .line 320
    .line 321
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 322
    .line 323
    if-lt v3, v15, :cond_e

    .line 324
    .line 325
    invoke-virtual {v9}, LB1/f;->requiresBatteryNotLow()Z

    .line 326
    .line 327
    .line 328
    move-result v4

    .line 329
    invoke-static {v8, v4}, LB4/o;->u(Landroid/app/job/JobInfo$Builder;Z)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v9}, LB1/f;->requiresStorageNotLow()Z

    .line 333
    .line 334
    .line 335
    move-result v4

    .line 336
    invoke-static {v8, v4}, LB4/o;->D(Landroid/app/job/JobInfo$Builder;Z)V

    .line 337
    .line 338
    .line 339
    :cond_e
    iget v4, v2, LK1/E;->k:I

    .line 340
    .line 341
    if-lez v4, :cond_f

    .line 342
    .line 343
    move/from16 v4, v17

    .line 344
    .line 345
    goto :goto_a

    .line 346
    :cond_f
    const/4 v4, 0x0

    .line 347
    :goto_a
    cmp-long v6, v6, v18

    .line 348
    .line 349
    if-lez v6, :cond_10

    .line 350
    .line 351
    move/from16 v6, v17

    .line 352
    .line 353
    goto :goto_b

    .line 354
    :cond_10
    const/4 v6, 0x0

    .line 355
    :goto_b
    const/16 v7, 0x1f

    .line 356
    .line 357
    if-lt v3, v7, :cond_11

    .line 358
    .line 359
    iget-boolean v3, v2, LK1/E;->q:Z

    .line 360
    .line 361
    if-eqz v3, :cond_11

    .line 362
    .line 363
    if-nez v4, :cond_11

    .line 364
    .line 365
    if-nez v6, :cond_11

    .line 366
    .line 367
    invoke-static {v8}, LC3/j;->k(Landroid/app/job/JobInfo$Builder;)V

    .line 368
    .line 369
    .line 370
    :cond_11
    invoke-virtual {v8}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 371
    .line 372
    .line 373
    move-result-object v3

    .line 374
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 375
    .line 376
    .line 377
    move-result-object v4

    .line 378
    new-instance v6, Ljava/lang/StringBuilder;

    .line 379
    .line 380
    const-string v7, "Scheduling work ID "

    .line 381
    .line 382
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    const-string v7, "Job ID "

    .line 389
    .line 390
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v6

    .line 400
    sget-object v7, LF1/b;->m:Ljava/lang/String;

    .line 401
    .line 402
    invoke-virtual {v4, v7, v6}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    :try_start_0
    invoke-virtual {v10, v3}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 406
    .line 407
    .line 408
    move-result v3

    .line 409
    if-nez v3, :cond_13

    .line 410
    .line 411
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 412
    .line 413
    .line 414
    move-result-object v3

    .line 415
    new-instance v4, Ljava/lang/StringBuilder;

    .line 416
    .line 417
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 418
    .line 419
    .line 420
    const-string v6, "Unable to schedule work ID "

    .line 421
    .line 422
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v4

    .line 432
    invoke-virtual {v3, v7, v4}, LB1/t;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    iget-boolean v3, v2, LK1/E;->q:Z

    .line 436
    .line 437
    if-eqz v3, :cond_13

    .line 438
    .line 439
    iget-object v3, v2, LK1/E;->r:Landroidx/work/OutOfQuotaPolicy;

    .line 440
    .line 441
    sget-object v4, Landroidx/work/OutOfQuotaPolicy;->b:Landroidx/work/OutOfQuotaPolicy;

    .line 442
    .line 443
    if-ne v3, v4, :cond_13

    .line 444
    .line 445
    const/4 v5, 0x0

    .line 446
    iput-boolean v5, v2, LK1/E;->q:Z

    .line 447
    .line 448
    new-instance v3, Ljava/lang/StringBuilder;

    .line 449
    .line 450
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 451
    .line 452
    .line 453
    const-string v4, "Scheduling a non-expedited job (work ID "

    .line 454
    .line 455
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    const-string v4, ")"

    .line 462
    .line 463
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v3

    .line 470
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 471
    .line 472
    .line 473
    move-result-object v4

    .line 474
    invoke-virtual {v4, v7, v3}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    invoke-virtual/range {p0 .. p2}, LF1/b;->scheduleInternal(LK1/E;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    .line 479
    .line 480
    return-void

    .line 481
    :catchall_0
    move-exception v0

    .line 482
    goto :goto_c

    .line 483
    :catch_0
    move-exception v0

    .line 484
    goto :goto_d

    .line 485
    :goto_c
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 486
    .line 487
    .line 488
    move-result-object v3

    .line 489
    new-instance v4, Ljava/lang/StringBuilder;

    .line 490
    .line 491
    const-string v5, "Unable to schedule "

    .line 492
    .line 493
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v2

    .line 503
    invoke-virtual {v3, v7, v2, v0}, LB1/t;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 504
    .line 505
    .line 506
    goto :goto_f

    .line 507
    :goto_d
    iget-object v2, v1, LF1/b;->b:Landroid/content/Context;

    .line 508
    .line 509
    invoke-static {v2, v10}, LF1/b;->c(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;

    .line 510
    .line 511
    .line 512
    move-result-object v2

    .line 513
    if-eqz v2, :cond_12

    .line 514
    .line 515
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 516
    .line 517
    .line 518
    move-result v2

    .line 519
    goto :goto_e

    .line 520
    :cond_12
    const/4 v2, 0x0

    .line 521
    :goto_e
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 522
    .line 523
    .line 524
    move-result-object v3

    .line 525
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 526
    .line 527
    .line 528
    move-result-object v2

    .line 529
    iget-object v4, v1, LF1/b;->f:LC1/G;

    .line 530
    .line 531
    invoke-virtual {v4}, LC1/G;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    .line 532
    .line 533
    .line 534
    move-result-object v6

    .line 535
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->workSpecDao()LK1/F;

    .line 536
    .line 537
    .line 538
    move-result-object v6

    .line 539
    check-cast v6, LK1/U;

    .line 540
    .line 541
    invoke-virtual {v6}, LK1/U;->getScheduledWork()Ljava/util/List;

    .line 542
    .line 543
    .line 544
    move-result-object v6

    .line 545
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 546
    .line 547
    .line 548
    move-result v6

    .line 549
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 550
    .line 551
    .line 552
    move-result-object v6

    .line 553
    invoke-virtual {v4}, LC1/G;->getConfiguration()LB1/c;

    .line 554
    .line 555
    .line 556
    move-result-object v8

    .line 557
    invoke-virtual {v8}, LB1/c;->getMaxSchedulerLimit()I

    .line 558
    .line 559
    .line 560
    move-result v8

    .line 561
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 562
    .line 563
    .line 564
    move-result-object v8

    .line 565
    const/4 v13, 0x3

    .line 566
    new-array v9, v13, [Ljava/lang/Object;

    .line 567
    .line 568
    const/4 v5, 0x0

    .line 569
    aput-object v2, v9, v5

    .line 570
    .line 571
    aput-object v6, v9, v17

    .line 572
    .line 573
    aput-object v8, v9, v16

    .line 574
    .line 575
    const-string v2, "JobScheduler 100 job limit exceeded.  We count %d WorkManager jobs in JobScheduler; we have %d tracked jobs in our DB; our Configuration limit is %d."

    .line 576
    .line 577
    invoke-static {v3, v2, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object v2

    .line 581
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 582
    .line 583
    .line 584
    move-result-object v3

    .line 585
    invoke-virtual {v3, v7, v2}, LB1/t;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    .line 587
    .line 588
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 589
    .line 590
    invoke-direct {v3, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 591
    .line 592
    .line 593
    invoke-virtual {v4}, LC1/G;->getConfiguration()LB1/c;

    .line 594
    .line 595
    .line 596
    move-result-object v0

    .line 597
    invoke-virtual {v0}, LB1/c;->getSchedulingExceptionHandler()LL/a;

    .line 598
    .line 599
    .line 600
    move-result-object v0

    .line 601
    if-eqz v0, :cond_14

    .line 602
    .line 603
    invoke-interface {v0, v3}, LL/a;->accept(Ljava/lang/Object;)V

    .line 604
    .line 605
    .line 606
    :cond_13
    :goto_f
    return-void

    .line 607
    :cond_14
    throw v3
.end method
