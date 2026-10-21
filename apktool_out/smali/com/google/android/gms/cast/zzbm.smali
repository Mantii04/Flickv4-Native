.class public final synthetic Lcom/google/android/gms/cast/zzbm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/cast/zzbs;

.field public final synthetic e:Lcom/google/android/gms/cast/internal/zza;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/cast/zzbs;Lcom/google/android/gms/cast/internal/zza;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/zzbm;->b:Lcom/google/android/gms/cast/zzbs;

    iput-object p2, p0, Lcom/google/android/gms/cast/zzbm;->e:Lcom/google/android/gms/cast/internal/zza;

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
    iget-object v2, p0, Lcom/google/android/gms/cast/zzbm;->b:Lcom/google/android/gms/cast/zzbs;

    .line 4
    .line 5
    iget-object v2, v2, Lcom/google/android/gms/cast/zzbs;->a:Lcom/google/android/gms/cast/zzbt;

    .line 6
    .line 7
    sget-object v3, Lcom/google/android/gms/cast/zzbt;->F:Lcom/google/android/gms/cast/internal/Logger;

    .line 8
    .line 9
    iget-object v3, p0, Lcom/google/android/gms/cast/zzbm;->e:Lcom/google/android/gms/cast/internal/zza;

    .line 10
    .line 11
    invoke-virtual {v3}, Lcom/google/android/gms/cast/internal/zza;->zza()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    iget-object v4, v2, Lcom/google/android/gms/cast/zzbt;->t:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v3, v4}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-nez v4, :cond_0

    .line 22
    .line 23
    iput-object v3, v2, Lcom/google/android/gms/cast/zzbt;->t:Ljava/lang/String;

    .line 24
    .line 25
    move v3, v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v3, v1

    .line 28
    :goto_0
    sget-object v4, Lcom/google/android/gms/cast/zzbt;->F:Lcom/google/android/gms/cast/internal/Logger;

    .line 29
    .line 30
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    iget-boolean v6, v2, Lcom/google/android/gms/cast/zzbt;->m:Z

    .line 35
    .line 36
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    const/4 v7, 0x2

    .line 41
    new-array v7, v7, [Ljava/lang/Object;

    .line 42
    .line 43
    aput-object v5, v7, v1

    .line 44
    .line 45
    aput-object v6, v7, v0

    .line 46
    .line 47
    const-string v0, "hasChanged=%b, mFirstApplicationStatusUpdate=%b"

    .line 48
    .line 49
    invoke-virtual {v4, v0, v7}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, v2, Lcom/google/android/gms/cast/zzbt;->C:Lcom/google/android/gms/cast/Cast$Listener;

    .line 53
    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    if-nez v3, :cond_1

    .line 57
    .line 58
    iget-boolean v3, v2, Lcom/google/android/gms/cast/zzbt;->m:Z

    .line 59
    .line 60
    if-eqz v3, :cond_2

    .line 61
    .line 62
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/cast/Cast$Listener;->onApplicationStatusChanged()V

    .line 63
    .line 64
    .line 65
    :cond_2
    iput-boolean v1, v2, Lcom/google/android/gms/cast/zzbt;->m:Z

    .line 66
    .line 67
    return-void
.end method
