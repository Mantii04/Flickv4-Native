.class public final Lcom/google/android/gms/internal/cast/zzqv;
.super Lcom/google/android/gms/internal/cast/zztp;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzuy;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/cast/zzqv;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:I

.field private zzg:Lcom/google/android/gms/internal/cast/zztx;

.field private zzh:Lcom/google/android/gms/internal/cast/zztx;

.field private zzi:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/zzqv;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzqv;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/cast/zzqv;->zzb:Lcom/google/android/gms/internal/cast/zzqv;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/cast/zzqv;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/cast/zztp;->zzH(Ljava/lang/Class;Lcom/google/android/gms/internal/cast/zztp;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zztp;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/cast/zztp;->zzA()Lcom/google/android/gms/internal/cast/zztx;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzqv;->zzg:Lcom/google/android/gms/internal/cast/zztx;

    .line 9
    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/cast/zztp;->zzA()Lcom/google/android/gms/internal/cast/zztx;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzqv;->zzh:Lcom/google/android/gms/internal/cast/zztx;

    .line 15
    .line 16
    return-void
.end method

.method public static synthetic zza()Lcom/google/android/gms/internal/cast/zzqv;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/cast/zzqv;->zzb:Lcom/google/android/gms/internal/cast/zzqv;

    return-object v0
.end method


# virtual methods
.method public final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

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
    sget-object p1, Lcom/google/android/gms/internal/cast/zzqv;->zzb:Lcom/google/android/gms/internal/cast/zzqv;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/cast/zzqu;

    .line 24
    .line 25
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/cast/zzqu;-><init>(Lcom/google/android/gms/internal/cast/zzms;)V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/cast/zzqv;

    .line 30
    .line 31
    invoke-direct {p1}, Lcom/google/android/gms/internal/cast/zzqv;-><init>()V

    .line 32
    .line 33
    .line 34
    return-object p1

    .line 35
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzlz;->zza()Lcom/google/android/gms/internal/cast/zztt;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzmc;->zza()Lcom/google/android/gms/internal/cast/zztt;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzin;->zza()Lcom/google/android/gms/internal/cast/zztt;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    const/16 v5, 0xb

    .line 48
    .line 49
    new-array v5, v5, [Ljava/lang/Object;

    .line 50
    .line 51
    const-string v6, "zzd"

    .line 52
    .line 53
    const/4 v7, 0x0

    .line 54
    aput-object v6, v5, v7

    .line 55
    .line 56
    const-string v6, "zze"

    .line 57
    .line 58
    aput-object v6, v5, p2

    .line 59
    .line 60
    aput-object p1, v5, v2

    .line 61
    .line 62
    const-string p1, "zzf"

    .line 63
    .line 64
    aput-object p1, v5, v1

    .line 65
    .line 66
    aput-object v3, v5, v0

    .line 67
    .line 68
    const-string p1, "zzg"

    .line 69
    .line 70
    aput-object p1, v5, p3

    .line 71
    .line 72
    const-class p1, Lcom/google/android/gms/internal/cast/zzok;

    .line 73
    .line 74
    const/4 p2, 0x6

    .line 75
    aput-object p1, v5, p2

    .line 76
    .line 77
    const-string p2, "zzh"

    .line 78
    .line 79
    const/4 p3, 0x7

    .line 80
    aput-object p2, v5, p3

    .line 81
    .line 82
    const/16 p2, 0x8

    .line 83
    .line 84
    aput-object p1, v5, p2

    .line 85
    .line 86
    const-string p1, "zzi"

    .line 87
    .line 88
    const/16 p2, 0x9

    .line 89
    .line 90
    aput-object p1, v5, p2

    .line 91
    .line 92
    const/16 p1, 0xa

    .line 93
    .line 94
    aput-object v4, v5, p1

    .line 95
    .line 96
    sget-object p1, Lcom/google/android/gms/internal/cast/zzqv;->zzb:Lcom/google/android/gms/internal/cast/zzqv;

    .line 97
    .line 98
    const-string p2, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0002\u0000\u0001\u180c\u0000\u0002\u180c\u0001\u0003\u001b\u0004\u001b\u0005\u180c\u0002"

    .line 99
    .line 100
    invoke-static {p1, p2, v5}, Lcom/google/android/gms/internal/cast/zztp;->zzE(Lcom/google/android/gms/internal/cast/zzux;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    return-object p1

    .line 105
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    return-object p1
.end method
