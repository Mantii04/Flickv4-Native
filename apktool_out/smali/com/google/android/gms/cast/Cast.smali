.class public final Lcom/google/android/gms/cast/Cast;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/Cast$CastOptions;,
        Lcom/google/android/gms/cast/Cast$CastApi;,
        Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;,
        Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;,
        Lcom/google/android/gms/cast/Cast$Listener;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/gms/common/api/Api;

.field public static final b:Lcom/google/android/gms/cast/zzm;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/zze;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/cast/zze;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/android/gms/common/api/Api;

    .line 7
    .line 8
    const-string v2, "Cast.API"

    .line 9
    .line 10
    sget-object v3, Lcom/google/android/gms/cast/internal/zzak;->a:Lcom/google/android/gms/common/api/Api$ClientKey;

    .line 11
    .line 12
    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$ClientKey;)V

    .line 13
    .line 14
    .line 15
    sput-object v1, Lcom/google/android/gms/cast/Cast;->a:Lcom/google/android/gms/common/api/Api;

    .line 16
    .line 17
    new-instance v0, Lcom/google/android/gms/cast/zzm;

    .line 18
    .line 19
    invoke-direct {v0}, Lcom/google/android/gms/cast/zzm;-><init>()V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/google/android/gms/cast/Cast;->b:Lcom/google/android/gms/cast/zzm;

    .line 23
    .line 24
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/cast/Cast$CastOptions;)Lcom/google/android/gms/cast/zzr;
    .locals 1
    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/zzbt;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/cast/zzbt;-><init>(Landroid/content/Context;Lcom/google/android/gms/cast/Cast$CastOptions;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
