.class final Lcom/google/android/gms/internal/cast/zzup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzvj;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/cast/zzuv;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/cast/zzuv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/cast/zzun;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzun;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzup;->zza:Lcom/google/android/gms/internal/cast/zzuv;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/cast/zzuo;

    .line 3
    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/cast/zztl;->zza()Lcom/google/android/gms/internal/cast/zztl;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    :try_start_0
    const-string v3, "com.google.protobuf.DescriptorMessageInfoFactory"

    .line 9
    .line 10
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    const-string v4, "getInstance"

    .line 15
    .line 16
    new-array v5, v0, [Ljava/lang/Class;

    .line 17
    .line 18
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    new-array v4, v0, [Ljava/lang/Object;

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lcom/google/android/gms/internal/cast/zzuv;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    sget-object v3, Lcom/google/android/gms/internal/cast/zzup;->zza:Lcom/google/android/gms/internal/cast/zzuv;

    .line 33
    .line 34
    :goto_0
    const/4 v4, 0x2

    .line 35
    new-array v4, v4, [Lcom/google/android/gms/internal/cast/zzuv;

    .line 36
    .line 37
    aput-object v2, v4, v0

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    aput-object v3, v4, v0

    .line 41
    .line 42
    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/cast/zzuo;-><init>([Lcom/google/android/gms/internal/cast/zzuv;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    .line 47
    .line 48
    sget-object v0, Lcom/google/android/gms/internal/cast/zzty;->zzd:[B

    .line 49
    .line 50
    iput-object v1, p0, Lcom/google/android/gms/internal/cast/zzup;->zzb:Lcom/google/android/gms/internal/cast/zzuv;

    .line 51
    .line 52
    return-void
.end method

.method private static zzb(Lcom/google/android/gms/internal/cast/zzuu;)Z
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/cast/zzuu;->zzc()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    add-int/lit8 p0, p0, -0x1

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    if-eq p0, v0, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method


# virtual methods
.method public final zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/cast/zzvi;
    .locals 8

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzvk;->zzp(Ljava/lang/Class;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzup;->zzb:Lcom/google/android/gms/internal/cast/zzuv;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/cast/zzuv;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/cast/zzuu;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-interface {v2}, Lcom/google/android/gms/internal/cast/zzuu;->zzb()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const-class v1, Lcom/google/android/gms/internal/cast/zztp;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzvk;->zzn()Lcom/google/android/gms/internal/cast/zzvz;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzth;->zzb()Lcom/google/android/gms/internal/cast/zztf;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-interface {v2}, Lcom/google/android/gms/internal/cast/zzuu;->zza()Lcom/google/android/gms/internal/cast/zzux;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzvb;->zzi(Lcom/google/android/gms/internal/cast/zzvz;Lcom/google/android/gms/internal/cast/zztf;Lcom/google/android/gms/internal/cast/zzux;)Lcom/google/android/gms/internal/cast/zzvb;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1

    .line 41
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzvk;->zzm()Lcom/google/android/gms/internal/cast/zzvz;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzth;->zza()Lcom/google/android/gms/internal/cast/zztf;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-interface {v2}, Lcom/google/android/gms/internal/cast/zzuu;->zza()Lcom/google/android/gms/internal/cast/zzux;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzvb;->zzi(Lcom/google/android/gms/internal/cast/zzvz;Lcom/google/android/gms/internal/cast/zztf;Lcom/google/android/gms/internal/cast/zzux;)Lcom/google/android/gms/internal/cast/zzvb;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    return-object p1

    .line 58
    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    invoke-static {v2}, Lcom/google/android/gms/internal/cast/zzup;->zzb(Lcom/google/android/gms/internal/cast/zzuu;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzvd;->zzb()Lcom/google/android/gms/internal/cast/zzvc;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzul;->zzd()Lcom/google/android/gms/internal/cast/zzul;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzvk;->zzn()Lcom/google/android/gms/internal/cast/zzvz;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzth;->zzb()Lcom/google/android/gms/internal/cast/zztf;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzut;->zzb()Lcom/google/android/gms/internal/cast/zzus;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    move-object v1, p1

    .line 91
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/cast/zzva;->zzi(Ljava/lang/Class;Lcom/google/android/gms/internal/cast/zzuu;Lcom/google/android/gms/internal/cast/zzvc;Lcom/google/android/gms/internal/cast/zzul;Lcom/google/android/gms/internal/cast/zzvz;Lcom/google/android/gms/internal/cast/zztf;Lcom/google/android/gms/internal/cast/zzus;)Lcom/google/android/gms/internal/cast/zzva;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    return-object p1

    .line 96
    :cond_2
    move-object v1, p1

    .line 97
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzvd;->zzb()Lcom/google/android/gms/internal/cast/zzvc;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzul;->zzd()Lcom/google/android/gms/internal/cast/zzul;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzvk;->zzn()Lcom/google/android/gms/internal/cast/zzvz;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    const/4 v6, 0x0

    .line 110
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzut;->zzb()Lcom/google/android/gms/internal/cast/zzus;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/cast/zzva;->zzi(Ljava/lang/Class;Lcom/google/android/gms/internal/cast/zzuu;Lcom/google/android/gms/internal/cast/zzvc;Lcom/google/android/gms/internal/cast/zzul;Lcom/google/android/gms/internal/cast/zzvz;Lcom/google/android/gms/internal/cast/zztf;Lcom/google/android/gms/internal/cast/zzus;)Lcom/google/android/gms/internal/cast/zzva;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    return-object p1

    .line 119
    :cond_3
    move-object v1, p1

    .line 120
    invoke-static {v2}, Lcom/google/android/gms/internal/cast/zzup;->zzb(Lcom/google/android/gms/internal/cast/zzuu;)Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    if-eqz p1, :cond_4

    .line 125
    .line 126
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzvd;->zza()Lcom/google/android/gms/internal/cast/zzvc;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzul;->zzc()Lcom/google/android/gms/internal/cast/zzul;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzvk;->zzm()Lcom/google/android/gms/internal/cast/zzvz;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzth;->zza()Lcom/google/android/gms/internal/cast/zztf;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzut;->zza()Lcom/google/android/gms/internal/cast/zzus;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/cast/zzva;->zzi(Ljava/lang/Class;Lcom/google/android/gms/internal/cast/zzuu;Lcom/google/android/gms/internal/cast/zzvc;Lcom/google/android/gms/internal/cast/zzul;Lcom/google/android/gms/internal/cast/zzvz;Lcom/google/android/gms/internal/cast/zztf;Lcom/google/android/gms/internal/cast/zzus;)Lcom/google/android/gms/internal/cast/zzva;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    return-object p1

    .line 151
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzvd;->zza()Lcom/google/android/gms/internal/cast/zzvc;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzul;->zzc()Lcom/google/android/gms/internal/cast/zzul;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzvk;->zzm()Lcom/google/android/gms/internal/cast/zzvz;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    const/4 v6, 0x0

    .line 164
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzut;->zza()Lcom/google/android/gms/internal/cast/zzus;

    .line 165
    .line 166
    .line 167
    move-result-object v7

    .line 168
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/cast/zzva;->zzi(Ljava/lang/Class;Lcom/google/android/gms/internal/cast/zzuu;Lcom/google/android/gms/internal/cast/zzvc;Lcom/google/android/gms/internal/cast/zzul;Lcom/google/android/gms/internal/cast/zzvz;Lcom/google/android/gms/internal/cast/zztf;Lcom/google/android/gms/internal/cast/zzus;)Lcom/google/android/gms/internal/cast/zzva;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    return-object p1
.end method
