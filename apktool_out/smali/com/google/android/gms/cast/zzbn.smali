.class public final synthetic Lcom/google/android/gms/cast/zzbn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/cast/zzbs;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/cast/zzbs;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/zzbn;->b:Lcom/google/android/gms/cast/zzbs;

    iput p2, p0, Lcom/google/android/gms/cast/zzbn;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/zzbn;->b:Lcom/google/android/gms/cast/zzbs;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/cast/zzbs;->a:Lcom/google/android/gms/cast/zzbt;

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    iput v2, v1, Lcom/google/android/gms/cast/zzbt;->w:I

    .line 7
    .line 8
    iput v2, v1, Lcom/google/android/gms/cast/zzbt;->x:I

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    iput-object v2, v1, Lcom/google/android/gms/cast/zzbt;->s:Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 12
    .line 13
    iput-object v2, v1, Lcom/google/android/gms/cast/zzbt;->t:Ljava/lang/String;

    .line 14
    .line 15
    const-wide/16 v3, 0x0

    .line 16
    .line 17
    iput-wide v3, v1, Lcom/google/android/gms/cast/zzbt;->u:D

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/cast/zzbt;->e()V

    .line 20
    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    iput-boolean v3, v1, Lcom/google/android/gms/cast/zzbt;->v:Z

    .line 24
    .line 25
    iput-object v2, v1, Lcom/google/android/gms/cast/zzbt;->y:Lcom/google/android/gms/cast/zzav;

    .line 26
    .line 27
    iget-object v1, v0, Lcom/google/android/gms/cast/zzbs;->a:Lcom/google/android/gms/cast/zzbt;

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    iput v2, v1, Lcom/google/android/gms/cast/zzbt;->E:I

    .line 31
    .line 32
    iget v2, p0, Lcom/google/android/gms/cast/zzbn;->e:I

    .line 33
    .line 34
    iget-object v1, v1, Lcom/google/android/gms/cast/zzbt;->D:Ljava/util/List;

    .line 35
    .line 36
    monitor-enter v1

    .line 37
    :try_start_0
    iget-object v3, v0, Lcom/google/android/gms/cast/zzbs;->a:Lcom/google/android/gms/cast/zzbt;

    .line 38
    .line 39
    iget-object v3, v3, Lcom/google/android/gms/cast/zzbt;->D:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_0

    .line 50
    .line 51
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    check-cast v4, Lcom/google/android/gms/cast/zzq;

    .line 56
    .line 57
    invoke-virtual {v4, v2}, Lcom/google/android/gms/cast/zzq;->zzd(I)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    goto :goto_1

    .line 63
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    iget-object v1, v0, Lcom/google/android/gms/cast/zzbs;->a:Lcom/google/android/gms/cast/zzbt;

    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/google/android/gms/cast/zzbt;->c()V

    .line 67
    .line 68
    .line 69
    iget-object v0, v0, Lcom/google/android/gms/cast/zzbs;->a:Lcom/google/android/gms/cast/zzbt;

    .line 70
    .line 71
    iget-object v1, v0, Lcom/google/android/gms/cast/zzbt;->j:Lcom/google/android/gms/cast/zzbs;

    .line 72
    .line 73
    const-string v2, "castDeviceControllerListenerKey"

    .line 74
    .line 75
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/GoogleApi;->registerListener(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/ListenerHolder;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->getListenerKey()Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const-string v2, "Key must not be null"

    .line 84
    .line 85
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    .line 90
    .line 91
    const/16 v2, 0x20df

    .line 92
    .line 93
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/GoogleApi;->doUnregisterEventListener(Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;I)Lcom/google/android/gms/tasks/Task;

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    throw v0
.end method
