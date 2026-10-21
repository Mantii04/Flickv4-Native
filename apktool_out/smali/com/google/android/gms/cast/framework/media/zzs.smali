.class public final Lcom/google/android/gms/cast/framework/media/zzs;
.super Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/gms/cast/framework/media/MediaQueue;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/media/MediaQueue;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzs;->a:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStatusUpdated()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzs;->a:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->c:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaStatus;->zzd()Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaStatus;->zzb()J

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    move-wide v4, v2

    .line 26
    :goto_1
    iget-wide v6, v0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->b:J

    .line 27
    .line 28
    cmp-long v1, v4, v6

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    iput-wide v4, v0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->b:J

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzl()V

    .line 35
    .line 36
    .line 37
    iget-wide v4, v0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->b:J

    .line 38
    .line 39
    cmp-long v1, v4, v2

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzo()V

    .line 44
    .line 45
    .line 46
    :cond_2
    return-void
.end method

.method public final zzb([I)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/cast/internal/CastUtils;->zzd([I)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzs;->a:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->d:Ljava/util/List;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->e()V

    .line 17
    .line 18
    .line 19
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->f:Landroid/util/LruCache;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/util/LruCache;->evictAll()V

    .line 22
    .line 23
    .line 24
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->g:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 27
    .line 28
    .line 29
    iput-object p1, v0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->d:Ljava/util/List;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->b(Lcom/google/android/gms/cast/framework/media/MediaQueue;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->d()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->c()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final zzc([II)V
    .locals 3

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Lcom/google/android/gms/cast/framework/media/zzs;->a:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    .line 4
    .line 5
    iget-object p2, p2, Lcom/google/android/gms/cast/framework/media/MediaQueue;->d:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzs;->a:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->e:Landroid/util/SparseIntArray;

    .line 15
    .line 16
    const/4 v1, -0x1

    .line 17
    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-ne p2, v1, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzs;->a:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzo()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    :goto_0
    array-length v0, p1

    .line 30
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/zzs;->a:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->e()V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/zzs;->a:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    .line 36
    .line 37
    iget-object v1, v1, Lcom/google/android/gms/cast/framework/media/MediaQueue;->d:Ljava/util/List;

    .line 38
    .line 39
    invoke-static {p1}, Lcom/google/android/gms/cast/internal/CastUtils;->zzd([I)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-interface {v1, p2, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzs;->a:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->b(Lcom/google/android/gms/cast/framework/media/MediaQueue;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzs;->a:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    .line 52
    .line 53
    iget-object v1, p1, Lcom/google/android/gms/cast/framework/media/MediaQueue;->m:Ljava/util/Set;

    .line 54
    .line 55
    monitor-enter v1

    .line 56
    :try_start_0
    iget-object p1, p1, Lcom/google/android/gms/cast/framework/media/MediaQueue;->m:Ljava/util/Set;

    .line 57
    .line 58
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_2

    .line 67
    .line 68
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Lcom/google/android/gms/cast/framework/media/MediaQueue$Callback;

    .line 73
    .line 74
    invoke-virtual {v2, p2, v0}, Lcom/google/android/gms/cast/framework/media/MediaQueue$Callback;->itemsInsertedInRange(II)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :catchall_0
    move-exception p1

    .line 79
    goto :goto_2

    .line 80
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzs;->a:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->c()V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    throw p1
.end method

.method public final zzd([Lcom/google/android/gms/cast/MediaQueueItem;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/zzs;->a:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    .line 7
    .line 8
    iget-object v2, v1, Lcom/google/android/gms/cast/framework/media/MediaQueue;->g:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    array-length v3, p1

    .line 15
    iget-object v4, v1, Lcom/google/android/gms/cast/framework/media/MediaQueue;->e:Landroid/util/SparseIntArray;

    .line 16
    .line 17
    const/4 v5, -0x1

    .line 18
    if-ge v2, v3, :cond_1

    .line 19
    .line 20
    aget-object v3, p1, v2

    .line 21
    .line 22
    invoke-virtual {v3}, Lcom/google/android/gms/cast/MediaQueueItem;->getItemId()I

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    iget-object v7, v1, Lcom/google/android/gms/cast/framework/media/MediaQueue;->f:Landroid/util/LruCache;

    .line 27
    .line 28
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v8

    .line 32
    invoke-virtual {v7, v8, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4, v6, v5}, Landroid/util/SparseIntArray;->get(II)I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-ne v3, v5, :cond_0

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzo()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    iget-object p1, v1, Lcom/google/android/gms/cast/framework/media/MediaQueue;->g:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_3

    .line 66
    .line 67
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Ljava/lang/Integer;

    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->get(II)I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-eq v3, v5, :cond_2

    .line 82
    .line 83
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 92
    .line 93
    .line 94
    new-instance p1, Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 97
    .line 98
    .line 99
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->e()V

    .line 103
    .line 104
    .line 105
    invoke-static {p1}, Lcom/google/android/gms/cast/internal/CastUtils;->zzf(Ljava/util/Collection;)[I

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-static {v1, p1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->a(Lcom/google/android/gms/cast/framework/media/MediaQueue;[I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->c()V

    .line 113
    .line 114
    .line 115
    return-void
.end method

.method public final zze([I)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    array-length v2, p1

    .line 8
    if-ge v1, v2, :cond_1

    .line 9
    .line 10
    aget v2, p1, v1

    .line 11
    .line 12
    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/zzs;->a:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    .line 13
    .line 14
    iget-object v3, v3, Lcom/google/android/gms/cast/framework/media/MediaQueue;->f:Landroid/util/LruCache;

    .line 15
    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {v3, v4}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/zzs;->a:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    .line 24
    .line 25
    iget-object v3, v3, Lcom/google/android/gms/cast/framework/media/MediaQueue;->e:Landroid/util/SparseIntArray;

    .line 26
    .line 27
    const/4 v4, -0x1

    .line 28
    invoke-virtual {v3, v2, v4}, Landroid/util/SparseIntArray;->get(II)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-ne v3, v4, :cond_0

    .line 33
    .line 34
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzs;->a:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzo()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/zzs;->a:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    .line 41
    .line 42
    iget-object v4, v4, Lcom/google/android/gms/cast/framework/media/MediaQueue;->e:Landroid/util/SparseIntArray;

    .line 43
    .line 44
    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 45
    .line 46
    .line 47
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    add-int/lit8 v1, v1, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    return-void

    .line 64
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/zzs;->a:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->e()V

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/zzs;->a:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    .line 73
    .line 74
    iget-object v1, v1, Lcom/google/android/gms/cast/framework/media/MediaQueue;->d:Ljava/util/List;

    .line 75
    .line 76
    invoke-static {p1}, Lcom/google/android/gms/cast/internal/CastUtils;->zzd([I)Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-interface {v1, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzs;->a:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    .line 84
    .line 85
    invoke-static {p1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->b(Lcom/google/android/gms/cast/framework/media/MediaQueue;)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzs;->a:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    .line 89
    .line 90
    invoke-static {v0}, Lcom/google/android/gms/cast/internal/CastUtils;->zzf(Ljava/util/Collection;)[I

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iget-object v1, p1, Lcom/google/android/gms/cast/framework/media/MediaQueue;->m:Ljava/util/Set;

    .line 95
    .line 96
    monitor-enter v1

    .line 97
    :try_start_0
    iget-object p1, p1, Lcom/google/android/gms/cast/framework/media/MediaQueue;->m:Ljava/util/Set;

    .line 98
    .line 99
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    if-eqz v2, :cond_3

    .line 108
    .line 109
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    check-cast v2, Lcom/google/android/gms/cast/framework/media/MediaQueue$Callback;

    .line 114
    .line 115
    invoke-virtual {v2, v0}, Lcom/google/android/gms/cast/framework/media/MediaQueue$Callback;->itemsRemovedAtIndexes([I)V

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :catchall_0
    move-exception p1

    .line 120
    goto :goto_2

    .line 121
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzs;->a:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    .line 123
    .line 124
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->c()V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    throw p1
.end method

.method public final zzf(Ljava/util/List;Ljava/util/List;I)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    iget-object p3, p0, Lcom/google/android/gms/cast/framework/media/zzs;->a:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    .line 10
    .line 11
    iget-object p3, p3, Lcom/google/android/gms/cast/framework/media/MediaQueue;->d:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x0

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    iget-object p3, p0, Lcom/google/android/gms/cast/framework/media/zzs;->a:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    .line 26
    .line 27
    iget-object p3, p3, Lcom/google/android/gms/cast/framework/media/MediaQueue;->a:Lcom/google/android/gms/cast/internal/Logger;

    .line 28
    .line 29
    new-array v2, v3, [Ljava/lang/Object;

    .line 30
    .line 31
    const-string v3, "Received a Queue Reordered message with an empty reordered items IDs list."

    .line 32
    .line 33
    invoke-virtual {p3, v3, v2}, Lcom/google/android/gms/cast/internal/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    move p3, v1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/zzs;->a:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    .line 39
    .line 40
    iget-object v2, v2, Lcom/google/android/gms/cast/framework/media/MediaQueue;->e:Landroid/util/SparseIntArray;

    .line 41
    .line 42
    invoke-virtual {v2, p3, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 43
    .line 44
    .line 45
    move-result p3

    .line 46
    if-ne p3, v1, :cond_2

    .line 47
    .line 48
    iget-object p3, p0, Lcom/google/android/gms/cast/framework/media/zzs;->a:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    .line 49
    .line 50
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Ljava/lang/Integer;

    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    iget-object p3, p3, Lcom/google/android/gms/cast/framework/media/MediaQueue;->e:Landroid/util/SparseIntArray;

    .line 61
    .line 62
    invoke-virtual {p3, v2, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 63
    .line 64
    .line 65
    move-result p3

    .line 66
    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_4

    .line 75
    .line 76
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    check-cast v2, Ljava/lang/Integer;

    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/zzs;->a:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    .line 87
    .line 88
    iget-object v3, v3, Lcom/google/android/gms/cast/framework/media/MediaQueue;->e:Landroid/util/SparseIntArray;

    .line 89
    .line 90
    invoke-virtual {v3, v2, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-ne v2, v1, :cond_3

    .line 95
    .line 96
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzs;->a:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzo()V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/cast/framework/media/zzs;->a:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    .line 111
    .line 112
    invoke-virtual {p2}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->e()V

    .line 113
    .line 114
    .line 115
    iget-object p2, p0, Lcom/google/android/gms/cast/framework/media/zzs;->a:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    .line 116
    .line 117
    iput-object p1, p2, Lcom/google/android/gms/cast/framework/media/MediaQueue;->d:Ljava/util/List;

    .line 118
    .line 119
    invoke-static {p2}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->b(Lcom/google/android/gms/cast/framework/media/MediaQueue;)V

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzs;->a:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    .line 123
    .line 124
    iget-object p2, p1, Lcom/google/android/gms/cast/framework/media/MediaQueue;->m:Ljava/util/Set;

    .line 125
    .line 126
    monitor-enter p2

    .line 127
    :try_start_0
    iget-object p1, p1, Lcom/google/android/gms/cast/framework/media/MediaQueue;->m:Ljava/util/Set;

    .line 128
    .line 129
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-eqz v1, :cond_5

    .line 138
    .line 139
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    check-cast v1, Lcom/google/android/gms/cast/framework/media/MediaQueue$Callback;

    .line 144
    .line 145
    invoke-virtual {v1, v0, p3}, Lcom/google/android/gms/cast/framework/media/MediaQueue$Callback;->itemsReorderedAtIndexes(Ljava/util/List;I)V

    .line 146
    .line 147
    .line 148
    goto :goto_2

    .line 149
    :catchall_0
    move-exception p1

    .line 150
    goto :goto_3

    .line 151
    :cond_5
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzs;->a:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    .line 153
    .line 154
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->c()V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :goto_3
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    throw p1
.end method

.method public final zzg([I)V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    array-length v2, p1

    .line 8
    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/zzs;->a:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    .line 9
    .line 10
    if-ge v1, v2, :cond_1

    .line 11
    .line 12
    aget v2, p1, v1

    .line 13
    .line 14
    iget-object v4, v3, Lcom/google/android/gms/cast/framework/media/MediaQueue;->f:Landroid/util/LruCache;

    .line 15
    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    invoke-virtual {v4, v5}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    iget-object v4, v3, Lcom/google/android/gms/cast/framework/media/MediaQueue;->e:Landroid/util/SparseIntArray;

    .line 24
    .line 25
    const/4 v5, -0x1

    .line 26
    invoke-virtual {v4, v2, v5}, Landroid/util/SparseIntArray;->get(II)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-ne v2, v5, :cond_0

    .line 31
    .line 32
    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzo()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->e()V

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Lcom/google/android/gms/cast/internal/CastUtils;->zzf(Ljava/util/Collection;)[I

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {v3, p1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->a(Lcom/google/android/gms/cast/framework/media/MediaQueue;[I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->c()V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final zzh()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzs;->a:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzo()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
