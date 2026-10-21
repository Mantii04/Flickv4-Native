.class public final LE1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG1/c;
.implements LL1/E;


# static fields
.field public static final v:Ljava/lang/String;


# instance fields
.field public final b:Landroid/content/Context;

.field public final e:I

.field public final f:LK1/r;

.field public final j:LE1/m;

.field public final m:LG1/e;

.field public final n:Ljava/lang/Object;

.field public p:I

.field public final q:LN1/a;

.field public final r:Ljava/util/concurrent/Executor;

.field public s:Landroid/os/PowerManager$WakeLock;

.field public t:Z

.field public final u:LC1/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "DelayMetCommandHandler"

    .line 2
    .line 3
    invoke-static {v0}, LB1/t;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, LE1/h;->v:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILE1/m;LC1/v;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LE1/h;->b:Landroid/content/Context;

    .line 5
    .line 6
    iput p2, p0, LE1/h;->e:I

    .line 7
    .line 8
    iput-object p3, p0, LE1/h;->j:LE1/m;

    .line 9
    .line 10
    invoke-virtual {p4}, LC1/v;->getId()LK1/r;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, LE1/h;->f:LK1/r;

    .line 15
    .line 16
    iput-object p4, p0, LE1/h;->u:LC1/v;

    .line 17
    .line 18
    iget-object p1, p3, LE1/m;->m:LC1/G;

    .line 19
    .line 20
    invoke-virtual {p1}, LC1/G;->getTrackers()LI1/p;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object p2, p3, LE1/m;->e:LN1/c;

    .line 25
    .line 26
    check-cast p2, LN1/e;

    .line 27
    .line 28
    invoke-virtual {p2}, LN1/e;->getSerialTaskExecutor()LN1/a;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    iput-object p3, p0, LE1/h;->q:LN1/a;

    .line 33
    .line 34
    invoke-virtual {p2}, LN1/e;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    iput-object p2, p0, LE1/h;->r:Ljava/util/concurrent/Executor;

    .line 39
    .line 40
    new-instance p2, LG1/e;

    .line 41
    .line 42
    invoke-direct {p2, p1, p0}, LG1/e;-><init>(LI1/p;LG1/c;)V

    .line 43
    .line 44
    .line 45
    iput-object p2, p0, LE1/h;->m:LG1/e;

    .line 46
    .line 47
    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, LE1/h;->t:Z

    .line 49
    .line 50
    iput p1, p0, LE1/h;->p:I

    .line 51
    .line 52
    new-instance p1, Ljava/lang/Object;

    .line 53
    .line 54
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, LE1/h;->n:Ljava/lang/Object;

    .line 58
    .line 59
    return-void
.end method

.method public static a(LE1/h;)V
    .locals 10

    .line 1
    iget-object v0, p0, LE1/h;->f:LK1/r;

    .line 2
    .line 3
    invoke-virtual {v0}, LK1/r;->getWorkSpecId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v2, p0, LE1/h;->p:I

    .line 8
    .line 9
    sget-object v3, LE1/h;->v:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v4, 0x2

    .line 12
    if-ge v2, v4, :cond_1

    .line 13
    .line 14
    iput v4, p0, LE1/h;->p:I

    .line 15
    .line 16
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    new-instance v4, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v5, "Stopping work for WorkSpec "

    .line 23
    .line 24
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {v2, v3, v4}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v2, Landroid/content/Intent;

    .line 38
    .line 39
    iget-object v4, p0, LE1/h;->b:Landroid/content/Context;

    .line 40
    .line 41
    const-class v5, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    .line 42
    .line 43
    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    .line 45
    .line 46
    const-string v6, "ACTION_STOP_WORK"

    .line 47
    .line 48
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    invoke-static {v2, v0}, LE1/c;->d(Landroid/content/Intent;LK1/r;)V

    .line 52
    .line 53
    .line 54
    new-instance v6, LE1/j;

    .line 55
    .line 56
    iget-object v7, p0, LE1/h;->j:LE1/m;

    .line 57
    .line 58
    iget v8, p0, LE1/h;->e:I

    .line 59
    .line 60
    invoke-direct {v6, v8, v7, v2}, LE1/j;-><init>(ILE1/m;Landroid/content/Intent;)V

    .line 61
    .line 62
    .line 63
    iget-object p0, p0, LE1/h;->r:Ljava/util/concurrent/Executor;

    .line 64
    .line 65
    invoke-interface {p0, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 66
    .line 67
    .line 68
    iget-object v2, v7, LE1/m;->j:LC1/r;

    .line 69
    .line 70
    invoke-virtual {v0}, LK1/r;->getWorkSpecId()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    invoke-virtual {v2, v6}, LC1/r;->isEnqueued(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_0

    .line 79
    .line 80
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    new-instance v6, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v9, "WorkSpec "

    .line 87
    .line 88
    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v1, " needs to be rescheduled"

    .line 95
    .line 96
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v2, v3, v1}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    new-instance v1, Landroid/content/Intent;

    .line 107
    .line 108
    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    .line 110
    .line 111
    const-string v2, "ACTION_SCHEDULE_WORK"

    .line 112
    .line 113
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    .line 115
    .line 116
    invoke-static {v1, v0}, LE1/c;->d(Landroid/content/Intent;LK1/r;)V

    .line 117
    .line 118
    .line 119
    new-instance v0, LE1/j;

    .line 120
    .line 121
    invoke-direct {v0, v8, v7, v1}, LE1/j;-><init>(ILE1/m;Landroid/content/Intent;)V

    .line 122
    .line 123
    .line 124
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :cond_0
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    const-string v2, "Processor does not have WorkSpec "

    .line 135
    .line 136
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v1, ". No need to reschedule"

    .line 143
    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {p0, v3, v0}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :cond_1
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    const-string v2, "Already stopped work for "

    .line 162
    .line 163
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {p0, v3, v0}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 5

    .line 1
    const-string v0, "Releasing wakelock "

    .line 2
    .line 3
    iget-object v1, p0, LE1/h;->n:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, LE1/h;->m:LG1/e;

    .line 7
    .line 8
    invoke-virtual {v2}, LG1/e;->reset()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, LE1/h;->j:LE1/m;

    .line 12
    .line 13
    iget-object v2, v2, LE1/m;->f:LL1/G;

    .line 14
    .line 15
    iget-object v3, p0, LE1/h;->f:LK1/r;

    .line 16
    .line 17
    invoke-virtual {v2, v3}, LL1/G;->stopTimer(LK1/r;)V

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, LE1/h;->s:Landroid/os/PowerManager$WakeLock;

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    sget-object v3, LE1/h;->v:Ljava/lang/String;

    .line 35
    .line 36
    new-instance v4, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, LE1/h;->s:Landroid/os/PowerManager$WakeLock;

    .line 42
    .line 43
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v0, "for WorkSpec "

    .line 47
    .line 48
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, LE1/h;->f:LK1/r;

    .line 52
    .line 53
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v2, v3, v0}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, LE1/h;->s:Landroid/os/PowerManager$WakeLock;

    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    .line 70
    goto :goto_1

    .line 71
    :cond_0
    :goto_0
    monitor-exit v1

    .line 72
    return-void

    .line 73
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    throw v0
.end method

.method public final c()V
    .locals 6

    .line 1
    iget-object v0, p0, LE1/h;->f:LK1/r;

    .line 2
    .line 3
    invoke-virtual {v0}, LK1/r;->getWorkSpecId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, " ("

    .line 8
    .line 9
    invoke-static {v0, v1}, LA/i;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget v2, p0, LE1/h;->e:I

    .line 14
    .line 15
    const-string v3, ")"

    .line 16
    .line 17
    invoke-static {v1, v2, v3}, LA/i;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, LE1/h;->b:Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {v2, v1}, LL1/x;->newWakeLock(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iput-object v1, p0, LE1/h;->s:Landroid/os/PowerManager$WakeLock;

    .line 28
    .line 29
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v3, "Acquiring wakelock "

    .line 36
    .line 37
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v3, p0, LE1/h;->s:Landroid/os/PowerManager$WakeLock;

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v3, "for WorkSpec "

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    sget-object v3, LE1/h;->v:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v1, v3, v2}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, LE1/h;->s:Landroid/os/PowerManager$WakeLock;

    .line 63
    .line 64
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, LE1/h;->j:LE1/m;

    .line 68
    .line 69
    iget-object v1, v1, LE1/m;->m:LC1/G;

    .line 70
    .line 71
    invoke-virtual {v1}, LC1/G;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->workSpecDao()LK1/F;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, LK1/U;

    .line 80
    .line 81
    invoke-virtual {v1, v0}, LK1/U;->getWorkSpec(Ljava/lang/String;)LK1/E;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    if-nez v1, :cond_0

    .line 86
    .line 87
    new-instance v0, LE1/g;

    .line 88
    .line 89
    const/4 v1, 0x0

    .line 90
    invoke-direct {v0, p0, v1}, LE1/g;-><init>(LE1/h;I)V

    .line 91
    .line 92
    .line 93
    iget-object v1, p0, LE1/h;->q:LN1/a;

    .line 94
    .line 95
    check-cast v1, LL1/t;

    .line 96
    .line 97
    invoke-virtual {v1, v0}, LL1/t;->execute(Ljava/lang/Runnable;)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_0
    invoke-virtual {v1}, LK1/E;->hasConstraints()Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    iput-boolean v2, p0, LE1/h;->t:Z

    .line 106
    .line 107
    if-nez v2, :cond_1

    .line 108
    .line 109
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    new-instance v4, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string v5, "No constraints for "

    .line 116
    .line 117
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {v2, v3, v0}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {p0, v0}, LE1/h;->onAllConstraintsMet(Ljava/util/List;)V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :cond_1
    iget-object v0, p0, LE1/h;->m:LG1/e;

    .line 139
    .line 140
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v0, v1}, LG1/e;->replace(Ljava/lang/Iterable;)V

    .line 145
    .line 146
    .line 147
    return-void
.end method

.method public final d(Z)V
    .locals 7

    .line 1
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "onExecuted "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, LE1/h;->f:LK1/r;

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v3, ", "

    .line 18
    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    sget-object v3, LE1/h;->v:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v3, v1}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, LE1/h;->b()V

    .line 35
    .line 36
    .line 37
    const-class v0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    .line 38
    .line 39
    iget v1, p0, LE1/h;->e:I

    .line 40
    .line 41
    iget-object v3, p0, LE1/h;->j:LE1/m;

    .line 42
    .line 43
    iget-object v4, p0, LE1/h;->r:Ljava/util/concurrent/Executor;

    .line 44
    .line 45
    iget-object v5, p0, LE1/h;->b:Landroid/content/Context;

    .line 46
    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    new-instance p1, Landroid/content/Intent;

    .line 50
    .line 51
    invoke-direct {p1, v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .line 53
    .line 54
    const-string v6, "ACTION_SCHEDULE_WORK"

    .line 55
    .line 56
    invoke-virtual {p1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    .line 58
    .line 59
    invoke-static {p1, v2}, LE1/c;->d(Landroid/content/Intent;LK1/r;)V

    .line 60
    .line 61
    .line 62
    new-instance v2, LE1/j;

    .line 63
    .line 64
    invoke-direct {v2, v1, v3, p1}, LE1/j;-><init>(ILE1/m;Landroid/content/Intent;)V

    .line 65
    .line 66
    .line 67
    invoke-interface {v4, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 68
    .line 69
    .line 70
    :cond_0
    iget-boolean p1, p0, LE1/h;->t:Z

    .line 71
    .line 72
    if-eqz p1, :cond_1

    .line 73
    .line 74
    new-instance p1, Landroid/content/Intent;

    .line 75
    .line 76
    invoke-direct {p1, v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    .line 78
    .line 79
    const-string v0, "ACTION_CONSTRAINTS_CHANGED"

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    new-instance v0, LE1/j;

    .line 85
    .line 86
    invoke-direct {v0, v1, v3, p1}, LE1/j;-><init>(ILE1/m;Landroid/content/Intent;)V

    .line 87
    .line 88
    .line 89
    invoke-interface {v4, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 90
    .line 91
    .line 92
    :cond_1
    return-void
.end method

.method public onAllConstraintsMet(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LK1/E;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, LK1/E;

    .line 16
    .line 17
    invoke-static {v0}, LK1/V;->generationalId(LK1/E;)LK1/r;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, LE1/h;->f:LK1/r;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, LK1/r;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    new-instance p1, LE1/g;

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    invoke-direct {p1, p0, v0}, LE1/g;-><init>(LE1/h;I)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, LE1/h;->q:LN1/a;

    .line 36
    .line 37
    check-cast v0, LL1/t;

    .line 38
    .line 39
    invoke-virtual {v0, p1}, LL1/t;->execute(Ljava/lang/Runnable;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method public onAllConstraintsNotMet(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LK1/E;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance p1, LE1/g;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p1, p0, v0}, LE1/g;-><init>(LE1/h;I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, LE1/h;->q:LN1/a;

    .line 8
    .line 9
    check-cast v0, LL1/t;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, LL1/t;->execute(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onTimeLimitExceeded(LK1/r;)V
    .locals 3

    .line 1
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "Exceeded time limits on execution for "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    sget-object v1, LE1/h;->v:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v1, p1}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance p1, LE1/g;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-direct {p1, p0, v0}, LE1/g;-><init>(LE1/h;I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, LE1/h;->q:LN1/a;

    .line 31
    .line 32
    check-cast v0, LL1/t;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, LL1/t;->execute(Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
