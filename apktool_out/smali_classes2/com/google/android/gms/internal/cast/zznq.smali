.class public final Lcom/google/android/gms/internal/cast/zznq;
.super Lcom/google/android/gms/internal/cast/zztp;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzuy;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/cast/zznq;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:I

.field private zzg:I

.field private zzh:I

.field private zzi:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/zznq;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zznq;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/cast/zznq;->zzb:Lcom/google/android/gms/internal/cast/zznq;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/cast/zznq;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/cast/zztp;->zzH(Ljava/lang/Class;Lcom/google/android/gms/internal/cast/zztp;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zztp;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/cast/zznp;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/zznq;->zzb:Lcom/google/android/gms/internal/cast/zznq;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zztp;->zzv()Lcom/google/android/gms/internal/cast/zztm;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/cast/zznp;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic zzc()Lcom/google/android/gms/internal/cast/zznq;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/cast/zznq;->zzb:Lcom/google/android/gms/internal/cast/zznq;

    return-object v0
.end method

.method public static synthetic zzd(Lcom/google/android/gms/internal/cast/zznq;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/cast/zznq;->zzd:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/cast/zznq;->zzd:I

    iput p1, p0, Lcom/google/android/gms/internal/cast/zznq;->zzf:I

    return-void
.end method

.method public static synthetic zze(Lcom/google/android/gms/internal/cast/zznq;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/cast/zznq;->zzd:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/cast/zznq;->zzd:I

    iput p1, p0, Lcom/google/android/gms/internal/cast/zznq;->zzg:I

    return-void
.end method

.method public static synthetic zzf(Lcom/google/android/gms/internal/cast/zznq;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/cast/zznq;->zzd:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/cast/zznq;->zzd:I

    iput p1, p0, Lcom/google/android/gms/internal/cast/zznq;->zzh:I

    return-void
.end method

.method public static synthetic zzg(Lcom/google/android/gms/internal/cast/zznq;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/cast/zznq;->zzd:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/cast/zznq;->zzd:I

    iput p1, p0, Lcom/google/android/gms/internal/cast/zznq;->zzi:I

    return-void
.end method

.method public static synthetic zzh(Lcom/google/android/gms/internal/cast/zznq;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/cast/zznq;->zze:I

    iget p1, p0, Lcom/google/android/gms/internal/cast/zznq;->zzd:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/cast/zznq;->zzd:I

    return-void
.end method


# virtual methods
.method public final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    const/4 p2, 0x1

    .line 2
    const/4 p3, 0x5

    .line 3
    const/4 v0, 0x4

    .line 4
    const/4 v1, 0x3

    .line 5
    const/4 v2, 0x2

    .line 6
    add-int/lit8 p1, p1, -0x1

    .line 7
    .line 8
    if-eqz p1, :cond_4

    .line 9
    .line 10
    if-eq p1, v2, :cond_3

    .line 11
    .line 12
    if-eq p1, v1, :cond_2

    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    if-eq p1, v0, :cond_1

    .line 16
    .line 17
    if-eq p1, p3, :cond_0

    .line 18
    .line 19
    return-object p2

    .line 20
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/cast/zznq;->zzb:Lcom/google/android/gms/internal/cast/zznq;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/cast/zznp;

    .line 24
    .line 25
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/cast/zznp;-><init>(Lcom/google/android/gms/internal/cast/zzms;)V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/cast/zznq;

    .line 30
    .line 31
    invoke-direct {p1}, Lcom/google/android/gms/internal/cast/zznq;-><init>()V

    .line 32
    .line 33
    .line 34
    return-object p1

    .line 35
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzle;->zza()Lcom/google/android/gms/internal/cast/zztt;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const/4 v3, 0x7

    .line 40
    new-array v3, v3, [Ljava/lang/Object;

    .line 41
    .line 42
    const-string v4, "zzd"

    .line 43
    .line 44
    const/4 v5, 0x0

    .line 45
    aput-object v4, v3, v5

    .line 46
    .line 47
    const-string v4, "zze"

    .line 48
    .line 49
    aput-object v4, v3, p2

    .line 50
    .line 51
    aput-object p1, v3, v2

    .line 52
    .line 53
    const-string p1, "zzf"

    .line 54
    .line 55
    aput-object p1, v3, v1

    .line 56
    .line 57
    const-string p1, "zzg"

    .line 58
    .line 59
    aput-object p1, v3, v0

    .line 60
    .line 61
    const-string p1, "zzh"

    .line 62
    .line 63
    aput-object p1, v3, p3

    .line 64
    .line 65
    const-string p1, "zzi"

    .line 66
    .line 67
    const/4 p2, 0x6

    .line 68
    aput-object p1, v3, p2

    .line 69
    .line 70
    sget-object p1, Lcom/google/android/gms/internal/cast/zznq;->zzb:Lcom/google/android/gms/internal/cast/zznq;

    .line 71
    .line 72
    const-string p2, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u1004\u0001\u0003\u1004\u0002\u0004\u1004\u0003\u0005\u1004\u0004"

    .line 73
    .line 74
    invoke-static {p1, p2, v3}, Lcom/google/android/gms/internal/cast/zztp;->zzE(Lcom/google/android/gms/internal/cast/zzux;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    return-object p1

    .line 79
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    return-object p1
.end method
