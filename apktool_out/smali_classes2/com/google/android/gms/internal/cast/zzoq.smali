.class public final Lcom/google/android/gms/internal/cast/zzoq;
.super Lcom/google/android/gms/internal/cast/zztp;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzuy;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/cast/zzoq;


# instance fields
.field private zzd:I

.field private zze:Z

.field private zzf:I

.field private zzg:I

.field private zzh:I

.field private zzi:Lcom/google/android/gms/internal/cast/zzpn;

.field private zzj:I

.field private zzk:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/zzoq;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzoq;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/cast/zzoq;->zzb:Lcom/google/android/gms/internal/cast/zzoq;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/cast/zzoq;

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

.method public static synthetic zza()Lcom/google/android/gms/internal/cast/zzoq;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/cast/zzoq;->zzb:Lcom/google/android/gms/internal/cast/zzoq;

    return-object v0
.end method


# virtual methods
.method public final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

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
    sget-object p1, Lcom/google/android/gms/internal/cast/zzoq;->zzb:Lcom/google/android/gms/internal/cast/zzoq;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/cast/zzop;

    .line 24
    .line 25
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/cast/zzop;-><init>(Lcom/google/android/gms/internal/cast/zzms;)V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/cast/zzoq;

    .line 30
    .line 31
    invoke-direct {p1}, Lcom/google/android/gms/internal/cast/zzoq;-><init>()V

    .line 32
    .line 33
    .line 34
    return-object p1

    .line 35
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzin;->zza()Lcom/google/android/gms/internal/cast/zztt;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzit;->zza()Lcom/google/android/gms/internal/cast/zztt;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzhg;->zza()Lcom/google/android/gms/internal/cast/zztt;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-static {}, Lcom/google/android/gms/internal/cast/zziq;->zza()Lcom/google/android/gms/internal/cast/zztt;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    const/16 v6, 0xc

    .line 52
    .line 53
    new-array v6, v6, [Ljava/lang/Object;

    .line 54
    .line 55
    const-string v7, "zzd"

    .line 56
    .line 57
    const/4 v8, 0x0

    .line 58
    aput-object v7, v6, v8

    .line 59
    .line 60
    const-string v7, "zze"

    .line 61
    .line 62
    aput-object v7, v6, p2

    .line 63
    .line 64
    const-string p2, "zzf"

    .line 65
    .line 66
    aput-object p2, v6, v2

    .line 67
    .line 68
    aput-object p1, v6, v1

    .line 69
    .line 70
    const-string p1, "zzg"

    .line 71
    .line 72
    aput-object p1, v6, v0

    .line 73
    .line 74
    aput-object v3, v6, p3

    .line 75
    .line 76
    const-string p1, "zzh"

    .line 77
    .line 78
    const/4 p2, 0x6

    .line 79
    aput-object p1, v6, p2

    .line 80
    .line 81
    const/4 p1, 0x7

    .line 82
    aput-object v4, v6, p1

    .line 83
    .line 84
    const-string p1, "zzi"

    .line 85
    .line 86
    const/16 p2, 0x8

    .line 87
    .line 88
    aput-object p1, v6, p2

    .line 89
    .line 90
    const-string p1, "zzj"

    .line 91
    .line 92
    const/16 p2, 0x9

    .line 93
    .line 94
    aput-object p1, v6, p2

    .line 95
    .line 96
    const/16 p1, 0xa

    .line 97
    .line 98
    aput-object v5, v6, p1

    .line 99
    .line 100
    const-string p1, "zzk"

    .line 101
    .line 102
    const/16 p2, 0xb

    .line 103
    .line 104
    aput-object p1, v6, p2

    .line 105
    .line 106
    sget-object p1, Lcom/google/android/gms/internal/cast/zzoq;->zzb:Lcom/google/android/gms/internal/cast/zzoq;

    .line 107
    .line 108
    const-string p2, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u1007\u0000\u0002\u180c\u0001\u0003\u180c\u0002\u0004\u180c\u0003\u0005\u1009\u0004\u0006\u180c\u0005\u0007\u1007\u0006"

    .line 109
    .line 110
    invoke-static {p1, p2, v6}, Lcom/google/android/gms/internal/cast/zztp;->zzE(Lcom/google/android/gms/internal/cast/zzux;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    return-object p1

    .line 115
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    return-object p1
.end method
