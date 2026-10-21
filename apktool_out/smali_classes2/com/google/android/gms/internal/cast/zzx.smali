.class final Lcom/google/android/gms/internal/cast/zzx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic zzc:I

.field private static final zzd:Lcom/google/android/gms/cast/internal/Logger;

.field private static final zze:Ljava/lang/String;

.field private static zzf:J


# instance fields
.field zza:Lcom/google/android/gms/cast/framework/CastSession;

.field public zzb:Ljava/lang/Integer;

.field private final zzg:Lcom/google/android/gms/internal/cast/zzfc;

.field private final zzh:Ljava/util/List;

.field private final zzi:Ljava/util/List;

.field private final zzj:Ljava/util/List;

.field private final zzk:Ljava/util/Map;

.field private final zzl:Lcom/google/android/gms/internal/cast/zzg;

.field private final zzm:Ljava/lang/String;

.field private final zzn:J

.field private final zzo:J

.field private zzp:Ljava/lang/String;

.field private zzq:Ljava/lang/String;

.field private zzr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    const-string v1, "SessionFlowSummary"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/android/gms/internal/cast/zzx;->zzd:Lcom/google/android/gms/cast/internal/Logger;

    .line 9
    .line 10
    const-string v0, "21.4.0"

    .line 11
    .line 12
    sput-object v0, Lcom/google/android/gms/internal/cast/zzx;->zze:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    sput-wide v0, Lcom/google/android/gms/internal/cast/zzx;->zzf:J

    .line 19
    .line 20
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/cast/zzg;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/android/gms/internal/cast/zzw;->zza:Lcom/google/android/gms/internal/cast/zzw;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzff;->zza(Lcom/google/android/gms/internal/cast/zzfc;)Lcom/google/android/gms/internal/cast/zzfc;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzx;->zzg:Lcom/google/android/gms/internal/cast/zzfc;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzx;->zzh:Ljava/util/List;

    .line 22
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzx;->zzi:Ljava/util/List;

    .line 33
    .line 34
    new-instance v0, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzx;->zzj:Ljava/util/List;

    .line 44
    .line 45
    new-instance v0, Ljava/util/HashMap;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzx;->zzk:Ljava/util/Map;

    .line 55
    .line 56
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzx;->zzl:Lcom/google/android/gms/internal/cast/zzg;

    .line 57
    .line 58
    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzx;->zzm:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 65
    .line 66
    .line 67
    move-result-wide p1

    .line 68
    iput-wide p1, p0, Lcom/google/android/gms/internal/cast/zzx;->zzn:J

    .line 69
    .line 70
    sget-wide p1, Lcom/google/android/gms/internal/cast/zzx;->zzf:J

    .line 71
    .line 72
    const-wide/16 v0, 0x1

    .line 73
    .line 74
    add-long/2addr v0, p1

    .line 75
    sput-wide v0, Lcom/google/android/gms/internal/cast/zzx;->zzf:J

    .line 76
    .line 77
    iput-wide p1, p0, Lcom/google/android/gms/internal/cast/zzx;->zzo:J

    .line 78
    .line 79
    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/cast/zzg;Ljava/lang/String;)Lcom/google/android/gms/internal/cast/zzx;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/zzx;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/cast/zzx;-><init>(Lcom/google/android/gms/internal/cast/zzg;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/cast/zzq;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/cast/zzx;->zzn:J

    .line 2
    .line 3
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzq;->zzb(J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzx;->zzj:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/cast/zzz;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/cast/zzx;->zzn:J

    .line 2
    .line 3
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzz;->zzb(J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzx;->zzh:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/cast/zzab;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/cast/zzx;->zzn:J

    .line 2
    .line 3
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzab;->zzb(J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzx;->zzi:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final zze()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzx;->zza:Lcom/google/android/gms/cast/framework/CastSession;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/framework/CastSession;->zzj(Lcom/google/android/gms/cast/framework/zzs;)V

    .line 8
    .line 9
    .line 10
    iput-object v2, p0, Lcom/google/android/gms/internal/cast/zzx;->zza:Lcom/google/android/gms/cast/framework/CastSession;

    .line 11
    .line 12
    :cond_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/cast/zzx;->zzo:J

    .line 13
    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzno;->zzc()Lcom/google/android/gms/internal/cast/zznn;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/cast/zznn;->zzm(J)Lcom/google/android/gms/internal/cast/zznn;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzx;->zzq:Ljava/lang/String;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/cast/zznn;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/cast/zznn;

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzx;->zzr:Ljava/lang/String;

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/cast/zznn;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/cast/zznn;

    .line 33
    .line 34
    .line 35
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzne;->zza()Lcom/google/android/gms/internal/cast/zznd;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    sget-object v2, Lcom/google/android/gms/internal/cast/zzx;->zze:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/cast/zznd;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/cast/zznd;

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzx;->zzm:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/cast/zznd;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/cast/zznd;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/zztm;->zzq()Lcom/google/android/gms/internal/cast/zztp;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Lcom/google/android/gms/internal/cast/zzne;

    .line 54
    .line 55
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/cast/zznn;->zzb(Lcom/google/android/gms/internal/cast/zzne;)Lcom/google/android/gms/internal/cast/zznn;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzx;->zzg:Lcom/google/android/gms/internal/cast/zzfc;

    .line 59
    .line 60
    invoke-static {}, Lcom/google/android/gms/internal/cast/zznu;->zza()Lcom/google/android/gms/internal/cast/zznt;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-interface {v1}, Lcom/google/android/gms/internal/cast/zzfc;->zza()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    if-eqz v1, :cond_3

    .line 69
    .line 70
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzok;->zza()Lcom/google/android/gms/internal/cast/zzoj;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    check-cast v1, Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/cast/zzoj;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/cast/zzoj;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4}, Lcom/google/android/gms/internal/cast/zztm;->zzq()Lcom/google/android/gms/internal/cast/zztp;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Lcom/google/android/gms/internal/cast/zzok;

    .line 84
    .line 85
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/cast/zznt;->zze(Lcom/google/android/gms/internal/cast/zzok;)Lcom/google/android/gms/internal/cast/zznt;

    .line 86
    .line 87
    .line 88
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzx;->zzp:Ljava/lang/String;

    .line 89
    .line 90
    if-eqz v1, :cond_4

    .line 91
    .line 92
    :try_start_0
    const-string v4, "-"

    .line 93
    .line 94
    const-string v5, ""

    .line 95
    .line 96
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    const/16 v6, 0x10

    .line 105
    .line 106
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    new-instance v5, Ljava/math/BigInteger;

    .line 115
    .line 116
    invoke-direct {v5, v4, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v5}, Ljava/math/BigInteger;->longValue()J

    .line 120
    .line 121
    .line 122
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    goto :goto_0

    .line 124
    :catch_0
    move-exception v4

    .line 125
    sget-object v5, Lcom/google/android/gms/internal/cast/zzx;->zzd:Lcom/google/android/gms/cast/internal/Logger;

    .line 126
    .line 127
    const/4 v6, 0x1

    .line 128
    new-array v6, v6, [Ljava/lang/Object;

    .line 129
    .line 130
    aput-object v1, v6, v0

    .line 131
    .line 132
    const-string v0, "receiverSessionId %s is not valid for hash"

    .line 133
    .line 134
    invoke-virtual {v5, v4, v0, v6}, Lcom/google/android/gms/cast/internal/Logger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    const-wide/16 v0, 0x0

    .line 138
    .line 139
    :goto_0
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/cast/zznt;->zzf(J)Lcom/google/android/gms/internal/cast/zznt;

    .line 140
    .line 141
    .line 142
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzx;->zzh:Ljava/util/List;

    .line 143
    .line 144
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-nez v0, :cond_6

    .line 149
    .line 150
    new-instance v0, Ljava/util/ArrayList;

    .line 151
    .line 152
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .line 154
    .line 155
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzx;->zzh:Ljava/util/List;

    .line 156
    .line 157
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    if-eqz v4, :cond_5

    .line 166
    .line 167
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    check-cast v4, Lcom/google/android/gms/internal/cast/zzz;

    .line 172
    .line 173
    invoke-virtual {v4}, Lcom/google/android/gms/internal/cast/zzz;->zza()Lcom/google/android/gms/internal/cast/zzns;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_5
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/cast/zznt;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/cast/zznt;

    .line 182
    .line 183
    .line 184
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzx;->zzi:Ljava/util/List;

    .line 185
    .line 186
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-nez v0, :cond_8

    .line 191
    .line 192
    new-instance v0, Ljava/util/ArrayList;

    .line 193
    .line 194
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .line 196
    .line 197
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzx;->zzi:Ljava/util/List;

    .line 198
    .line 199
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 204
    .line 205
    .line 206
    move-result v4

    .line 207
    if-eqz v4, :cond_7

    .line 208
    .line 209
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    check-cast v4, Lcom/google/android/gms/internal/cast/zzab;

    .line 214
    .line 215
    invoke-virtual {v4}, Lcom/google/android/gms/internal/cast/zzab;->zza()Lcom/google/android/gms/internal/cast/zzny;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    goto :goto_2

    .line 223
    :cond_7
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/cast/zznt;->zzc(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/cast/zznt;

    .line 224
    .line 225
    .line 226
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzx;->zzj:Ljava/util/List;

    .line 227
    .line 228
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    if-nez v0, :cond_a

    .line 233
    .line 234
    new-instance v0, Ljava/util/ArrayList;

    .line 235
    .line 236
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .line 238
    .line 239
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzx;->zzj:Ljava/util/List;

    .line 240
    .line 241
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 246
    .line 247
    .line 248
    move-result v4

    .line 249
    if-eqz v4, :cond_9

    .line 250
    .line 251
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    check-cast v4, Lcom/google/android/gms/internal/cast/zzq;

    .line 256
    .line 257
    invoke-virtual {v4}, Lcom/google/android/gms/internal/cast/zzq;->zza()Lcom/google/android/gms/internal/cast/zznq;

    .line 258
    .line 259
    .line 260
    move-result-object v4

    .line 261
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    goto :goto_3

    .line 265
    :cond_9
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/cast/zznt;->zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/cast/zznt;

    .line 266
    .line 267
    .line 268
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzx;->zzk:Ljava/util/Map;

    .line 269
    .line 270
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    if-nez v0, :cond_c

    .line 275
    .line 276
    new-instance v0, Ljava/util/ArrayList;

    .line 277
    .line 278
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .line 280
    .line 281
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzx;->zzk:Ljava/util/Map;

    .line 282
    .line 283
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 292
    .line 293
    .line 294
    move-result v4

    .line 295
    if-eqz v4, :cond_b

    .line 296
    .line 297
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v4

    .line 301
    check-cast v4, Lcom/google/android/gms/internal/cast/zzad;

    .line 302
    .line 303
    invoke-virtual {v4}, Lcom/google/android/gms/internal/cast/zzad;->zza()Lcom/google/android/gms/internal/cast/zznw;

    .line 304
    .line 305
    .line 306
    move-result-object v4

    .line 307
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    goto :goto_4

    .line 311
    :cond_b
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/cast/zznt;->zzd(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/cast/zznt;

    .line 312
    .line 313
    .line 314
    :cond_c
    invoke-virtual {v2}, Lcom/google/android/gms/internal/cast/zztm;->zzq()Lcom/google/android/gms/internal/cast/zztp;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    check-cast v0, Lcom/google/android/gms/internal/cast/zznu;

    .line 319
    .line 320
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/cast/zznn;->zzl(Lcom/google/android/gms/internal/cast/zznu;)Lcom/google/android/gms/internal/cast/zznn;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v3}, Lcom/google/android/gms/internal/cast/zztm;->zzq()Lcom/google/android/gms/internal/cast/zztp;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    check-cast v0, Lcom/google/android/gms/internal/cast/zzno;

    .line 328
    .line 329
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzx;->zzl:Lcom/google/android/gms/internal/cast/zzg;

    .line 330
    .line 331
    const/16 v2, 0xe9

    .line 332
    .line 333
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/cast/zzg;->zze(Lcom/google/android/gms/internal/cast/zzno;I)V

    .line 334
    .line 335
    .line 336
    return-void
.end method

.method public final zzf(Lcom/google/android/gms/cast/framework/CastSession;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzx;->zzh(I)V

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/CastSession;->getCastDevice()Lcom/google/android/gms/cast/CastDevice;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    const/4 p1, 0x3

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzx;->zzh(I)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzx;->zza:Lcom/google/android/gms/cast/framework/CastSession;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzx;->zzq:Ljava/lang/String;

    .line 22
    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/cast/CastDevice;->zzc()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iput-object v1, p0, Lcom/google/android/gms/internal/cast/zzx;->zzq:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/cast/CastDevice;->getModelName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzx;->zzr:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/Session;->zzm()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzx;->zzb:Ljava/lang/Integer;

    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/cast/CastDevice;->zzc()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-nez p1, :cond_3

    .line 57
    .line 58
    const/4 p1, 0x5

    .line 59
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzx;->zzh(I)V

    .line 60
    .line 61
    .line 62
    :cond_3
    return-void
.end method

.method public final zzg(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzx;->zzp:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzx;->zzp:Ljava/lang/String;

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    const/4 p1, 0x4

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzx;->zzh(I)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public final zzh(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzx;->zzk:Ljava/util/Map;

    .line 2
    .line 3
    add-int/lit8 v1, p1, -0x1

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/google/android/gms/internal/cast/zzad;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Lcom/google/android/gms/internal/cast/zzac;

    .line 18
    .line 19
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/cast/zzac;-><init>(I)V

    .line 20
    .line 21
    .line 22
    new-instance p1, Lcom/google/android/gms/internal/cast/zzad;

    .line 23
    .line 24
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/cast/zzad;-><init>(Lcom/google/android/gms/internal/cast/zzac;)V

    .line 25
    .line 26
    .line 27
    iget-wide v2, p0, Lcom/google/android/gms/internal/cast/zzx;->zzn:J

    .line 28
    .line 29
    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/cast/zzad;->zzc(J)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzx;->zzk:Ljava/util/Map;

    .line 33
    .line 34
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzad;->zzb()V

    .line 39
    .line 40
    .line 41
    return-void
.end method
