.class public final synthetic Lcom/google/android/gms/internal/cast/zzba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/cast/zzbb;

.field public final synthetic zzb:Lf1/U;

.field public final synthetic zzc:Lf1/U;

.field public final synthetic zzd:Landroidx/concurrent/futures/j;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/cast/zzbb;Lf1/U;Lf1/U;Landroidx/concurrent/futures/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzba;->zza:Lcom/google/android/gms/internal/cast/zzbb;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzba;->zzb:Lf1/U;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/cast/zzba;->zzc:Lf1/U;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/cast/zzba;->zzd:Landroidx/concurrent/futures/j;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzba;->zza:Lcom/google/android/gms/internal/cast/zzbb;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzba;->zzb:Lf1/U;

    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzba;->zzc:Lf1/U;

    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzba;->zzd:Landroidx/concurrent/futures/j;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/cast/zzbb;->zzb(Lf1/U;Lf1/U;Landroidx/concurrent/futures/j;)V

    return-void
.end method
