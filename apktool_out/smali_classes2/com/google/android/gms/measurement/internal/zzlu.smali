.class final Lcom/google/android/gms/measurement/internal/zzlu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic j:Ljava/lang/String;

.field public final synthetic m:Lcom/google/android/gms/measurement/internal/zzn;

.field public final synthetic n:Z

.field public final synthetic p:Lcom/google/android/gms/measurement/internal/zzla;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzla;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzn;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzlu;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzlu;->e:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzlu;->f:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzlu;->j:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzlu;->m:Lcom/google/android/gms/measurement/internal/zzn;

    .line 13
    .line 14
    iput-boolean p7, p0, Lcom/google/android/gms/measurement/internal/zzlu;->n:Z

    .line 15
    .line 16
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlu;->p:Lcom/google/android/gms/measurement/internal/zzla;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlu;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlu;->p:Lcom/google/android/gms/measurement/internal/zzla;

    .line 5
    .line 6
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzla;->d:Lcom/google/android/gms/measurement/internal/zzfq;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzla;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "(legacy) Failed to get user properties; not connected to service"

    .line 19
    .line 20
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzlu;->e:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzlu;->f:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzlu;->j:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlu;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 34
    .line 35
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 38
    .line 39
    .line 40
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlu;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 43
    .line 44
    .line 45
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception v1

    .line 48
    goto :goto_4

    .line 49
    :catchall_1
    move-exception v1

    .line 50
    goto :goto_3

    .line 51
    :catch_0
    move-exception v1

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlu;->e:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlu;->m:Lcom/google/android/gms/measurement/internal/zzn;

    .line 62
    .line 63
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlu;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 67
    .line 68
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzlu;->f:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzlu;->j:Ljava/lang/String;

    .line 71
    .line 72
    iget-boolean v5, p0, Lcom/google/android/gms/measurement/internal/zzlu;->n:Z

    .line 73
    .line 74
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzlu;->m:Lcom/google/android/gms/measurement/internal/zzn;

    .line 75
    .line 76
    invoke-interface {v2, v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/measurement/internal/zzn;)Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlu;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 85
    .line 86
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzlu;->e:Ljava/lang/String;

    .line 87
    .line 88
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzlu;->f:Ljava/lang/String;

    .line 89
    .line 90
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzlu;->j:Ljava/lang/String;

    .line 91
    .line 92
    iget-boolean v6, p0, Lcom/google/android/gms/measurement/internal/zzlu;->n:Z

    .line 93
    .line 94
    invoke-interface {v2, v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlu;->p:Lcom/google/android/gms/measurement/internal/zzla;

    .line 102
    .line 103
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzla;->f()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 104
    .line 105
    .line 106
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlu;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :goto_1
    :try_start_4
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlu;->p:Lcom/google/android/gms/measurement/internal/zzla;

    .line 113
    .line 114
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzla;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    const-string v3, "(legacy) Failed to get user properties; remote exception"

    .line 123
    .line 124
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzlu;->e:Ljava/lang/String;

    .line 125
    .line 126
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzlu;->f:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlu;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 136
    .line 137
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 138
    .line 139
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 140
    .line 141
    .line 142
    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlu;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 143
    .line 144
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 145
    .line 146
    .line 147
    :goto_2
    monitor-exit v0

    .line 148
    return-void

    .line 149
    :goto_3
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlu;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 150
    .line 151
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 152
    .line 153
    .line 154
    throw v1

    .line 155
    :goto_4
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 156
    throw v1
.end method
