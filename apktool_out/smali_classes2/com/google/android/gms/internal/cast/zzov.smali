.class public final Lcom/google/android/gms/internal/cast/zzov;
.super Lcom/google/android/gms/internal/cast/zztp;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzuy;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/cast/zzov;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:I

.field private zzg:Lcom/google/android/gms/internal/cast/zztu;

.field private zzh:Lcom/google/android/gms/internal/cast/zztu;

.field private zzi:Lcom/google/android/gms/internal/cast/zztx;

.field private zzj:Lcom/google/android/gms/internal/cast/zztx;

.field private zzk:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/zzov;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzov;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/cast/zzov;->zzb:Lcom/google/android/gms/internal/cast/zzov;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/cast/zzov;

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
    invoke-static {}, Lcom/google/android/gms/internal/cast/zztp;->zzy()Lcom/google/android/gms/internal/cast/zztu;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzov;->zzg:Lcom/google/android/gms/internal/cast/zztu;

    .line 9
    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/cast/zztp;->zzy()Lcom/google/android/gms/internal/cast/zztu;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzov;->zzh:Lcom/google/android/gms/internal/cast/zztu;

    .line 15
    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/cast/zztp;->zzA()Lcom/google/android/gms/internal/cast/zztx;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzov;->zzi:Lcom/google/android/gms/internal/cast/zztx;

    .line 21
    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/cast/zztp;->zzA()Lcom/google/android/gms/internal/cast/zztx;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzov;->zzj:Lcom/google/android/gms/internal/cast/zztx;

    .line 27
    .line 28
    return-void
.end method

.method public static synthetic zza()Lcom/google/android/gms/internal/cast/zzov;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/cast/zzov;->zzb:Lcom/google/android/gms/internal/cast/zzov;

    return-object v0
.end method


# virtual methods
.method public final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

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
    sget-object p1, Lcom/google/android/gms/internal/cast/zzov;->zzb:Lcom/google/android/gms/internal/cast/zzov;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/cast/zzou;

    .line 24
    .line 25
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/cast/zzou;-><init>(Lcom/google/android/gms/internal/cast/zzms;)V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/cast/zzov;

    .line 30
    .line 31
    invoke-direct {p1}, Lcom/google/android/gms/internal/cast/zzov;-><init>()V

    .line 32
    .line 33
    .line 34
    return-object p1

    .line 35
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/cast/zziz;->zza()Lcom/google/android/gms/internal/cast/zztt;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzin;->zza()Lcom/google/android/gms/internal/cast/zztt;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const/16 v4, 0xa

    .line 44
    .line 45
    new-array v4, v4, [Ljava/lang/Object;

    .line 46
    .line 47
    const-string v5, "zzd"

    .line 48
    .line 49
    const/4 v6, 0x0

    .line 50
    aput-object v5, v4, v6

    .line 51
    .line 52
    const-string v5, "zze"

    .line 53
    .line 54
    aput-object v5, v4, p2

    .line 55
    .line 56
    const-string p2, "zzf"

    .line 57
    .line 58
    aput-object p2, v4, v2

    .line 59
    .line 60
    aput-object p1, v4, v1

    .line 61
    .line 62
    const-string p1, "zzg"

    .line 63
    .line 64
    aput-object p1, v4, v0

    .line 65
    .line 66
    const-string p1, "zzh"

    .line 67
    .line 68
    aput-object p1, v4, p3

    .line 69
    .line 70
    const-string p1, "zzi"

    .line 71
    .line 72
    const/4 p2, 0x6

    .line 73
    aput-object p1, v4, p2

    .line 74
    .line 75
    const-string p1, "zzj"

    .line 76
    .line 77
    const/4 p2, 0x7

    .line 78
    aput-object p1, v4, p2

    .line 79
    .line 80
    const-string p1, "zzk"

    .line 81
    .line 82
    const/16 p2, 0x8

    .line 83
    .line 84
    aput-object p1, v4, p2

    .line 85
    .line 86
    const/16 p1, 0x9

    .line 87
    .line 88
    aput-object v3, v4, p1

    .line 89
    .line 90
    sget-object p1, Lcom/google/android/gms/internal/cast/zzov;->zzb:Lcom/google/android/gms/internal/cast/zzov;

    .line 91
    .line 92
    const-string p2, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0004\u0000\u0001\u1004\u0000\u0002\u180c\u0001\u0003\u0016\u0004\u0016\u0005\u001a\u0006\u001a\u0007\u180c\u0002"

    .line 93
    .line 94
    invoke-static {p1, p2, v4}, Lcom/google/android/gms/internal/cast/zztp;->zzE(Lcom/google/android/gms/internal/cast/zzux;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    return-object p1

    .line 99
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    return-object p1
.end method
