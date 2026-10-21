.class abstract Lcom/google/android/gms/internal/cast/zzul;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/cast/zzul;

.field private static final zzb:Lcom/google/android/gms/internal/cast/zzul;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/zzuh;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzuh;-><init>(Lcom/google/android/gms/internal/cast/zzug;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/google/android/gms/internal/cast/zzul;->zza:Lcom/google/android/gms/internal/cast/zzul;

    .line 8
    .line 9
    new-instance v0, Lcom/google/android/gms/internal/cast/zzuj;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzuj;-><init>(Lcom/google/android/gms/internal/cast/zzui;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/google/android/gms/internal/cast/zzul;->zzb:Lcom/google/android/gms/internal/cast/zzul;

    .line 15
    .line 16
    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/cast/zzuk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/cast/zzul;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/cast/zzul;->zza:Lcom/google/android/gms/internal/cast/zzul;

    return-object v0
.end method

.method public static zzd()Lcom/google/android/gms/internal/cast/zzul;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/cast/zzul;->zzb:Lcom/google/android/gms/internal/cast/zzul;

    return-object v0
.end method


# virtual methods
.method public abstract zza(Ljava/lang/Object;J)V
.end method

.method public abstract zzb(Ljava/lang/Object;Ljava/lang/Object;J)V
.end method
