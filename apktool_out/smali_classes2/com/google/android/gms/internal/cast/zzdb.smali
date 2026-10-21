.class public final synthetic Lcom/google/android/gms/internal/cast/zzdb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/cast/zzdd;

.field public final synthetic zzb:Lcom/google/android/gms/internal/cast/zzcz;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/cast/zzdd;Lcom/google/android/gms/internal/cast/zzcz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdb;->zza:Lcom/google/android/gms/internal/cast/zzdd;

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzdb;->zzb:Lcom/google/android/gms/internal/cast/zzcz;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdb;->zza:Lcom/google/android/gms/internal/cast/zzdd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzdd;->zze()Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdb;->zzb:Lcom/google/android/gms/internal/cast/zzcz;

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/google/android/gms/internal/cast/zzcz;->zza()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
