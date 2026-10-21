.class final Lcom/google/android/gms/cast/internal/zzt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/cast/internal/zzw;

.field public final synthetic e:Lcom/google/android/gms/cast/internal/zza;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/internal/zzw;Lcom/google/android/gms/cast/internal/zza;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzt;->b:Lcom/google/android/gms/cast/internal/zzw;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/cast/internal/zzt;->e:Lcom/google/android/gms/cast/internal/zza;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    sget-object v2, Lcom/google/android/gms/cast/internal/zzw;->x:Lcom/google/android/gms/cast/internal/Logger;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/cast/internal/zzt;->e:Lcom/google/android/gms/cast/internal/zza;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/cast/internal/zza;->zza()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v3, p0, Lcom/google/android/gms/cast/internal/zzt;->b:Lcom/google/android/gms/cast/internal/zzw;

    .line 12
    .line 13
    iget-object v4, v3, Lcom/google/android/gms/cast/internal/zzw;->h:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v2, v4}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-nez v4, :cond_0

    .line 20
    .line 21
    iput-object v2, v3, Lcom/google/android/gms/cast/internal/zzw;->h:Ljava/lang/String;

    .line 22
    .line 23
    move v2, v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v2, v1

    .line 26
    :goto_0
    sget-object v4, Lcom/google/android/gms/cast/internal/zzw;->x:Lcom/google/android/gms/cast/internal/Logger;

    .line 27
    .line 28
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    iget-boolean v6, v3, Lcom/google/android/gms/cast/internal/zzw;->j:Z

    .line 33
    .line 34
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    const/4 v7, 0x2

    .line 39
    new-array v7, v7, [Ljava/lang/Object;

    .line 40
    .line 41
    aput-object v5, v7, v1

    .line 42
    .line 43
    aput-object v6, v7, v0

    .line 44
    .line 45
    const-string v0, "hasChanged=%b, mFirstApplicationStatusUpdate=%b"

    .line 46
    .line 47
    invoke-virtual {v4, v0, v7}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, v3, Lcom/google/android/gms/cast/internal/zzw;->c:Lcom/google/android/gms/cast/Cast$Listener;

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    if-nez v2, :cond_1

    .line 55
    .line 56
    iget-boolean v2, v3, Lcom/google/android/gms/cast/internal/zzw;->j:Z

    .line 57
    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/cast/Cast$Listener;->onApplicationStatusChanged()V

    .line 61
    .line 62
    .line 63
    :cond_2
    iput-boolean v1, v3, Lcom/google/android/gms/cast/internal/zzw;->j:Z

    .line 64
    .line 65
    return-void
.end method
