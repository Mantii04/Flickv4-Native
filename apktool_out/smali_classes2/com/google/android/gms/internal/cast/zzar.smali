.class final Lcom/google/android/gms/internal/cast/zzar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzg;


# instance fields
.field final synthetic zza:Landroid/app/Activity;

.field final synthetic zzb:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;

.field final synthetic zzc:Lcom/google/android/gms/internal/cast/zzas;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cast/zzas;Landroid/app/Activity;Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzar;->zzc:Lcom/google/android/gms/internal/cast/zzas;

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzar;->zza:Landroid/app/Activity;

    iput-object p3, p0, Lcom/google/android/gms/internal/cast/zzar;->zzb:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzar;->zzc:Lcom/google/android/gms/internal/cast/zzas;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzas;->zzc(Lcom/google/android/gms/internal/cast/zzas;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzar;->zza:Landroid/app/Activity;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/google/android/gms/cast/framework/zzbf;->zza(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzar;->zzb:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzar;->zza:Landroid/app/Activity;

    .line 18
    .line 19
    new-instance v2, Lcom/google/android/gms/internal/cast/zzaq;

    .line 20
    .line 21
    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/cast/zzaq;-><init>(Lcom/google/android/gms/internal/cast/zzar;Landroid/app/Activity;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->zzh(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final zzb()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzar;->zzc:Lcom/google/android/gms/internal/cast/zzas;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzas;->zzc(Lcom/google/android/gms/internal/cast/zzas;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzar;->zza:Landroid/app/Activity;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/google/android/gms/cast/framework/zzbf;->zza(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzar;->zzb:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzar;->zza:Landroid/app/Activity;

    .line 18
    .line 19
    new-instance v2, Lcom/google/android/gms/internal/cast/zzap;

    .line 20
    .line 21
    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/cast/zzap;-><init>(Lcom/google/android/gms/internal/cast/zzar;Landroid/app/Activity;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->zzg(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
