.class public final Lcom/google/android/gms/cast/framework/media/internal/zzb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/gms/cast/framework/media/ImageHints;

.field public c:Landroid/net/Uri;

.field public d:Lcom/google/android/gms/cast/framework/media/internal/zzf;

.field public e:Z

.field public f:Lcom/google/android/gms/cast/framework/media/internal/zza;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/framework/media/ImageHints;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/cast/framework/media/ImageHints;-><init>(III)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/framework/media/internal/zzb;-><init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/media/ImageHints;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/media/ImageHints;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzb;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzb;->b:Lcom/google/android/gms/cast/framework/media/ImageHints;

    new-instance p1, Lcom/google/android/gms/cast/framework/media/internal/zzc;

    invoke-direct {p1}, Lcom/google/android/gms/cast/framework/media/internal/zzc;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/internal/zzb;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzb;->d:Lcom/google/android/gms/cast/framework/media/internal/zzf;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 8
    .line 9
    .line 10
    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzb;->d:Lcom/google/android/gms/cast/framework/media/internal/zzf;

    .line 11
    .line 12
    :cond_0
    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzb;->c:Landroid/net/Uri;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzb;->e:Z

    .line 16
    .line 17
    return-void
.end method

.method public final zza()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/internal/zzb;->a()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzb;->f:Lcom/google/android/gms/cast/framework/media/internal/zza;

    .line 6
    .line 7
    return-void
.end method

.method public final zzb(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzb;->e:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzb;->f:Lcom/google/android/gms/cast/framework/media/internal/zza;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/google/android/gms/cast/framework/media/internal/zza;->zza(Landroid/graphics/Bitmap;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzb;->d:Lcom/google/android/gms/cast/framework/media/internal/zzf;

    .line 13
    .line 14
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/cast/framework/media/internal/zza;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzb;->f:Lcom/google/android/gms/cast/framework/media/internal/zza;

    return-void
.end method

.method public final zzd(Landroid/net/Uri;)Z
    .locals 13

    .line 1
    const/4 v11, 0x0

    .line 2
    const/4 v12, 0x1

    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/internal/zzb;->a()V

    .line 6
    .line 7
    .line 8
    return v12

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzb;->c:Landroid/net/Uri;

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_3

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/internal/zzb;->a()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzb;->c:Landroid/net/Uri;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzb;->b:Lcom/google/android/gms/cast/framework/media/ImageHints;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/ImageHints;->getWidthInPixels()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/ImageHints;->getHeightInPixels()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/ImageHints;->getWidthInPixels()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/ImageHints;->getHeightInPixels()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    new-instance v0, Lcom/google/android/gms/cast/framework/media/internal/zzf;

    .line 46
    .line 47
    const-wide/32 v5, 0x200000

    .line 48
    .line 49
    .line 50
    const/4 v7, 0x5

    .line 51
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzb;->a:Landroid/content/Context;

    .line 52
    .line 53
    const/4 v4, 0x0

    .line 54
    const/16 v8, 0x14d

    .line 55
    .line 56
    const/16 v9, 0x2710

    .line 57
    .line 58
    move-object v10, p0

    .line 59
    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/cast/framework/media/internal/zzf;-><init>(Landroid/content/Context;IIZJIIILcom/google/android/gms/cast/framework/media/internal/zzb;)V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzb;->d:Lcom/google/android/gms/cast/framework/media/internal/zzf;

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    :goto_0
    new-instance v0, Lcom/google/android/gms/cast/framework/media/internal/zzf;

    .line 66
    .line 67
    const-wide/32 v5, 0x200000

    .line 68
    .line 69
    .line 70
    const/4 v7, 0x5

    .line 71
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzb;->a:Landroid/content/Context;

    .line 72
    .line 73
    const/4 v2, 0x0

    .line 74
    const/4 v3, 0x0

    .line 75
    const/4 v4, 0x0

    .line 76
    const/16 v8, 0x14d

    .line 77
    .line 78
    const/16 v9, 0x2710

    .line 79
    .line 80
    move-object v10, p0

    .line 81
    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/cast/framework/media/internal/zzf;-><init>(Landroid/content/Context;IIZJIIILcom/google/android/gms/cast/framework/media/internal/zzb;)V

    .line 82
    .line 83
    .line 84
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzb;->d:Lcom/google/android/gms/cast/framework/media/internal/zzf;

    .line 85
    .line 86
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzb;->d:Lcom/google/android/gms/cast/framework/media/internal/zzf;

    .line 87
    .line 88
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Lcom/google/android/gms/cast/framework/media/internal/zzf;

    .line 93
    .line 94
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzb;->c:Landroid/net/Uri;

    .line 95
    .line 96
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    check-cast v1, Landroid/net/Uri;

    .line 101
    .line 102
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 103
    .line 104
    new-array v3, v12, [Landroid/net/Uri;

    .line 105
    .line 106
    aput-object v1, v3, v11

    .line 107
    .line 108
    invoke-virtual {v0, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 109
    .line 110
    .line 111
    return v11

    .line 112
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzb;->e:Z

    .line 113
    .line 114
    if-eqz v0, :cond_4

    .line 115
    .line 116
    return v12

    .line 117
    :cond_4
    return v11
.end method
