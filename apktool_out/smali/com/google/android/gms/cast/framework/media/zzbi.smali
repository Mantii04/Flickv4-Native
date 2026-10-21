.class final Lcom/google/android/gms/cast/framework/media/zzbi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/cast/internal/zzas;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/cast/framework/media/zzbk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/media/zzbk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzbi;->a:Lcom/google/android/gms/cast/framework/media/zzbk;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;JILjava/lang/Object;JJ)V
    .locals 12

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/zzbi;->a:Lcom/google/android/gms/cast/framework/media/zzbk;

    .line 2
    .line 3
    :try_start_0
    new-instance v0, Lcom/google/android/gms/cast/framework/media/zzbl;

    .line 4
    .line 5
    new-instance v2, Lcom/google/android/gms/common/api/Status;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 6
    .line 7
    move/from16 v7, p4

    .line 8
    .line 9
    :try_start_1
    invoke-direct {v2, v7}, Lcom/google/android/gms/common/api/Status;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 10
    .line 11
    .line 12
    move-object/from16 v3, p5

    .line 13
    .line 14
    instance-of v4, v3, Lcom/google/android/gms/cast/internal/zzap;

    .line 15
    .line 16
    const/4 v5, 0x1

    .line 17
    if-eq v5, v4, :cond_0

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    :cond_0
    if-eqz v3, :cond_1

    .line 21
    .line 22
    :try_start_2
    move-object v4, v3

    .line 23
    check-cast v4, Lcom/google/android/gms/cast/internal/zzap;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 29
    .line 30
    check-cast v3, Lcom/google/android/gms/cast/internal/zzap;

    .line 31
    .line 32
    :cond_2
    invoke-direct {v0, v2}, Lcom/google/android/gms/cast/framework/media/zzbl;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_2

    .line 39
    :catch_1
    move-exception v0

    .line 40
    move/from16 v7, p4

    .line 41
    .line 42
    :goto_1
    sget-object v2, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->l:Lcom/google/android/gms/cast/internal/Logger;

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    new-array v3, v3, [Ljava/lang/Object;

    .line 46
    .line 47
    const-string v4, "Result already set when calling onRequestCompleted"

    .line 48
    .line 49
    invoke-virtual {v2, v0, v4, v3}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :goto_2
    iget-object v0, v1, Lcom/google/android/gms/cast/framework/media/zzbk;->c:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 53
    .line 54
    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_3

    .line 65
    .line 66
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    move-object v3, v1

    .line 71
    check-cast v3, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;

    .line 72
    .line 73
    move-object v4, p1

    .line 74
    move-wide v5, p2

    .line 75
    move-wide/from16 v8, p6

    .line 76
    .line 77
    move-wide/from16 v10, p8

    .line 78
    .line 79
    invoke-virtual/range {v3 .. v11}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;->zza(Ljava/lang/String;JIJJ)V

    .line 80
    .line 81
    .line 82
    move/from16 v7, p4

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_3
    return-void
.end method

.method public final zzb(Ljava/lang/String;JJJ)V
    .locals 11

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/zzbi;->a:Lcom/google/android/gms/cast/framework/media/zzbk;

    .line 2
    .line 3
    :try_start_0
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 4
    .line 5
    const/16 v2, 0x837

    .line 6
    .line 7
    invoke-direct {v0, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Lcom/google/android/gms/cast/framework/media/zzbj;

    .line 11
    .line 12
    invoke-direct {v2, v0}, Lcom/google/android/gms/cast/framework/media/zzbj;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    sget-object v2, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->l:Lcom/google/android/gms/cast/internal/Logger;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    new-array v3, v3, [Ljava/lang/Object;

    .line 24
    .line 25
    const-string v4, "Result already set when calling onRequestReplaced"

    .line 26
    .line 27
    invoke-virtual {v2, v0, v4, v3}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    iget-object v0, v1, Lcom/google/android/gms/cast/framework/media/zzbk;->c:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    move-object v2, v1

    .line 49
    check-cast v2, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;

    .line 50
    .line 51
    const/16 v6, 0x837

    .line 52
    .line 53
    move-object v3, p1

    .line 54
    move-wide v4, p2

    .line 55
    move-wide v7, p4

    .line 56
    move-wide/from16 v9, p6

    .line 57
    .line 58
    invoke-virtual/range {v2 .. v10}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;->zza(Ljava/lang/String;JIJJ)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_0
    return-void
.end method
