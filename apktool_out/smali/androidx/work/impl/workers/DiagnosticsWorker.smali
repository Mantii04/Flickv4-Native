.class public final Landroidx/work/impl/workers/DiagnosticsWorker;
.super Landroidx/work/Worker;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "parameters"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public doWork()LB1/q;
    .locals 9

    .line 1
    invoke-virtual {p0}, LB1/r;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, LC1/G;->getInstance(Landroid/content/Context;)LC1/G;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "getInstance(applicationContext)"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, LC1/G;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "workManager.workDatabase"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->workSpecDao()LK1/F;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->workNameDao()LK1/t;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->workTagDao()LK1/Y;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->systemIdInfoDao()LK1/l;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 40
    .line 41
    .line 42
    move-result-wide v4

    .line 43
    sget-object v6, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 44
    .line 45
    const-wide/16 v7, 0x1

    .line 46
    .line 47
    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 48
    .line 49
    .line 50
    move-result-wide v6

    .line 51
    sub-long/2addr v4, v6

    .line 52
    check-cast v1, LK1/U;

    .line 53
    .line 54
    invoke-virtual {v1, v4, v5}, LK1/U;->getRecentlyCompletedWork(J)Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v1}, LK1/U;->getRunningWork()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    const/16 v6, 0xc8

    .line 63
    .line 64
    invoke-virtual {v1, v6}, LK1/U;->getAllEligibleWorkSpecsForScheduling(I)Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    move-object v6, v4

    .line 69
    check-cast v6, Ljava/util/Collection;

    .line 70
    .line 71
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    if-nez v6, :cond_0

    .line 76
    .line 77
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    invoke-static {}, LO1/b;->access$getTAG$p()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    const-string v8, "Recently completed work:\n\n"

    .line 86
    .line 87
    invoke-virtual {v6, v7, v8}, LB1/t;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    invoke-static {}, LO1/b;->access$getTAG$p()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    invoke-static {v2, v3, v0, v4}, LO1/b;->access$workSpecRows(LK1/t;LK1/Y;LK1/l;Ljava/util/List;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-virtual {v6, v7, v4}, LB1/t;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :cond_0
    move-object v4, v5

    .line 106
    check-cast v4, Ljava/util/Collection;

    .line 107
    .line 108
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-nez v4, :cond_1

    .line 113
    .line 114
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    invoke-static {}, LO1/b;->access$getTAG$p()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    const-string v7, "Running work:\n\n"

    .line 123
    .line 124
    invoke-virtual {v4, v6, v7}, LB1/t;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    invoke-static {}, LO1/b;->access$getTAG$p()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    invoke-static {v2, v3, v0, v5}, LO1/b;->access$workSpecRows(LK1/t;LK1/Y;LK1/l;Ljava/util/List;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    invoke-virtual {v4, v6, v5}, LB1/t;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    :cond_1
    move-object v4, v1

    .line 143
    check-cast v4, Ljava/util/Collection;

    .line 144
    .line 145
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    if-nez v4, :cond_2

    .line 150
    .line 151
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    invoke-static {}, LO1/b;->access$getTAG$p()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    const-string v6, "Enqueued work:\n\n"

    .line 160
    .line 161
    invoke-virtual {v4, v5, v6}, LB1/t;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    invoke-static {}, LO1/b;->access$getTAG$p()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    invoke-static {v2, v3, v0, v1}, LO1/b;->access$workSpecRows(LK1/t;LK1/Y;LK1/l;Ljava/util/List;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {v4, v5, v0}, LB1/t;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    :cond_2
    invoke-static {}, LB1/q;->success()LB1/q;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    const-string v1, "success()"

    .line 184
    .line 185
    invoke-static {v0, v1}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    return-object v0
.end method
