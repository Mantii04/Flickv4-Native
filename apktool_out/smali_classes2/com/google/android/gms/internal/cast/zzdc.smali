.class final Lcom/google/android/gms/internal/cast/zzdc;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/cast/zzdd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cast/zzdd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdc;->zza:Lcom/google/android/gms/internal/cast/zzdd;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 0

    return-void
.end method

.method public final onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdc;->zza:Lcom/google/android/gms/internal/cast/zzdd;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/cast/zzdd;->zzb(Lcom/google/android/gms/internal/cast/zzdd;Landroid/net/Network;Landroid/net/LinkProperties;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdc;->zza:Lcom/google/android/gms/internal/cast/zzdd;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/cast/zzdd;->zzd(Lcom/google/android/gms/internal/cast/zzdd;Landroid/net/Network;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onUnavailable()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdc;->zza:Lcom/google/android/gms/internal/cast/zzdd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzdd;->zzc(Lcom/google/android/gms/internal/cast/zzdd;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
