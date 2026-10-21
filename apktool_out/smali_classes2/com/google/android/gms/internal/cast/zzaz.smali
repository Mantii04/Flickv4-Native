.class public final synthetic Lcom/google/android/gms/internal/cast/zzaz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/concurrent/futures/k;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/cast/zzbb;

.field public final synthetic zzb:Lf1/U;

.field public final synthetic zzc:Lf1/U;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/cast/zzbb;Lf1/U;Lf1/U;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzaz;->zza:Lcom/google/android/gms/internal/cast/zzbb;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzaz;->zzb:Lf1/U;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/cast/zzaz;->zzc:Lf1/U;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/j;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzaz;->zza:Lcom/google/android/gms/internal/cast/zzbb;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzaz;->zzb:Lf1/U;

    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzaz;->zzc:Lf1/U;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/cast/zzbb;->zza(Lf1/U;Lf1/U;Landroidx/concurrent/futures/j;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
