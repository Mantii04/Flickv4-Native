.class public final synthetic Lcom/google/android/gms/cast/zzbo;
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

    iput-object p1, p0, Lcom/google/android/gms/cast/zzbo;->b:Lcom/google/android/gms/cast/zzbs;

    iput p2, p0, Lcom/google/android/gms/cast/zzbo;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/zzbo;->b:Lcom/google/android/gms/cast/zzbs;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/cast/zzbo;->e:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    iget-object v1, v0, Lcom/google/android/gms/cast/zzbs;->a:Lcom/google/android/gms/cast/zzbt;

    .line 9
    .line 10
    const/4 v3, 0x2

    .line 11
    iput v3, v1, Lcom/google/android/gms/cast/zzbt;->E:I

    .line 12
    .line 13
    iput-boolean v2, v1, Lcom/google/android/gms/cast/zzbt;->l:Z

    .line 14
    .line 15
    iput-boolean v2, v1, Lcom/google/android/gms/cast/zzbt;->m:Z

    .line 16
    .line 17
    iget-object v3, v1, Lcom/google/android/gms/cast/zzbt;->D:Ljava/util/List;

    .line 18
    .line 19
    monitor-enter v3

    .line 20
    :try_start_0
    iget-object v0, v0, Lcom/google/android/gms/cast/zzbs;->a:Lcom/google/android/gms/cast/zzbt;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/google/android/gms/cast/zzbt;->D:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lcom/google/android/gms/cast/zzq;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/google/android/gms/cast/zzq;->zza()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    monitor-exit v3

    .line 47
    return-void

    .line 48
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw v0

    .line 50
    :cond_1
    iget-object v3, v0, Lcom/google/android/gms/cast/zzbs;->a:Lcom/google/android/gms/cast/zzbt;

    .line 51
    .line 52
    iput v2, v3, Lcom/google/android/gms/cast/zzbt;->E:I

    .line 53
    .line 54
    iget-object v2, v3, Lcom/google/android/gms/cast/zzbt;->D:Ljava/util/List;

    .line 55
    .line 56
    monitor-enter v2

    .line 57
    :try_start_1
    iget-object v3, v0, Lcom/google/android/gms/cast/zzbs;->a:Lcom/google/android/gms/cast/zzbt;

    .line 58
    .line 59
    iget-object v3, v3, Lcom/google/android/gms/cast/zzbt;->D:Ljava/util/List;

    .line 60
    .line 61
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_2

    .line 70
    .line 71
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    check-cast v4, Lcom/google/android/gms/cast/zzq;

    .line 76
    .line 77
    invoke-virtual {v4, v1}, Lcom/google/android/gms/cast/zzq;->zzb(I)V

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :catchall_1
    move-exception v0

    .line 82
    goto :goto_3

    .line 83
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 84
    iget-object v0, v0, Lcom/google/android/gms/cast/zzbs;->a:Lcom/google/android/gms/cast/zzbt;

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/google/android/gms/cast/zzbt;->c()V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :goto_3
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 91
    throw v0
.end method
