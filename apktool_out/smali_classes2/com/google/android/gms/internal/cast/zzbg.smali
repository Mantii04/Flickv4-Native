.class public final Lcom/google/android/gms/internal/cast/zzbg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public zza:Lf1/X;

.field private final zzb:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzbg;->zzb:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zza()Lf1/X;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbg;->zza:Lf1/X;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbg;->zzb:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0}, Lf1/X;->getInstance(Landroid/content/Context;)Lf1/X;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzbg;->zza:Lf1/X;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbg;->zza:Lf1/X;

    .line 14
    .line 15
    return-object v0
.end method

.method public final zzb(Lf1/M;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzbg;->zza()Lf1/X;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lf1/X;->removeCallback(Lf1/M;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
