.class public final Lcom/google/android/gms/cast/internal/zzaq;
.super Lcom/google/android/gms/cast/internal/zzd;
.source "SourceFile"


# static fields
.field public static final w:Ljava/lang/String;


# instance fields
.field public e:J

.field public f:Lcom/google/android/gms/cast/MediaStatus;

.field public g:Ljava/lang/Long;

.field public h:Lcom/google/android/gms/cast/internal/zzan;

.field public i:I

.field public final j:Lcom/google/android/gms/cast/internal/zzau;

.field public final k:Lcom/google/android/gms/cast/internal/zzau;

.field public final l:Lcom/google/android/gms/cast/internal/zzau;

.field public final m:Lcom/google/android/gms/cast/internal/zzau;

.field public final n:Lcom/google/android/gms/cast/internal/zzau;

.field public final o:Lcom/google/android/gms/cast/internal/zzau;

.field public final p:Lcom/google/android/gms/cast/internal/zzau;

.field public final q:Lcom/google/android/gms/cast/internal/zzau;

.field public final r:Lcom/google/android/gms/cast/internal/zzau;

.field public final s:Lcom/google/android/gms/cast/internal/zzau;

.field public final t:Lcom/google/android/gms/cast/internal/zzau;

.field public final u:Lcom/google/android/gms/cast/internal/zzau;

.field public final v:Lcom/google/android/gms/cast/internal/zzau;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/cast/internal/CastUtils;->a:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    const-string v0, "urn:x-cast:com.google.cast.media"

    .line 4
    .line 5
    sput-object v0, Lcom/google/android/gms/cast/internal/zzaq;->w:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "MediaControlChannel"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    sget-object v3, Lcom/google/android/gms/cast/internal/zzaq;->w:Ljava/lang/String;

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/cast/internal/zzd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v1, -0x1

    .line 12
    iput v1, v0, Lcom/google/android/gms/cast/internal/zzaq;->i:I

    .line 13
    .line 14
    new-instance v1, Lcom/google/android/gms/cast/internal/zzau;

    .line 15
    .line 16
    const-wide/32 v2, 0x5265c00

    .line 17
    .line 18
    .line 19
    const-string v4, "load"

    .line 20
    .line 21
    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/cast/internal/zzau;-><init>(JLjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iput-object v1, v0, Lcom/google/android/gms/cast/internal/zzaq;->j:Lcom/google/android/gms/cast/internal/zzau;

    .line 25
    .line 26
    new-instance v4, Lcom/google/android/gms/cast/internal/zzau;

    .line 27
    .line 28
    const-string v5, "pause"

    .line 29
    .line 30
    invoke-direct {v4, v2, v3, v5}, Lcom/google/android/gms/cast/internal/zzau;-><init>(JLjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iput-object v4, v0, Lcom/google/android/gms/cast/internal/zzaq;->k:Lcom/google/android/gms/cast/internal/zzau;

    .line 34
    .line 35
    new-instance v5, Lcom/google/android/gms/cast/internal/zzau;

    .line 36
    .line 37
    const-string v6, "play"

    .line 38
    .line 39
    invoke-direct {v5, v2, v3, v6}, Lcom/google/android/gms/cast/internal/zzau;-><init>(JLjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iput-object v5, v0, Lcom/google/android/gms/cast/internal/zzaq;->l:Lcom/google/android/gms/cast/internal/zzau;

    .line 43
    .line 44
    new-instance v6, Lcom/google/android/gms/cast/internal/zzau;

    .line 45
    .line 46
    const-string v7, "stop"

    .line 47
    .line 48
    invoke-direct {v6, v2, v3, v7}, Lcom/google/android/gms/cast/internal/zzau;-><init>(JLjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    new-instance v7, Lcom/google/android/gms/cast/internal/zzau;

    .line 52
    .line 53
    const-wide/16 v8, 0x2710

    .line 54
    .line 55
    const-string v10, "seek"

    .line 56
    .line 57
    invoke-direct {v7, v8, v9, v10}, Lcom/google/android/gms/cast/internal/zzau;-><init>(JLjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iput-object v7, v0, Lcom/google/android/gms/cast/internal/zzaq;->m:Lcom/google/android/gms/cast/internal/zzau;

    .line 61
    .line 62
    new-instance v8, Lcom/google/android/gms/cast/internal/zzau;

    .line 63
    .line 64
    const-string v9, "volume"

    .line 65
    .line 66
    invoke-direct {v8, v2, v3, v9}, Lcom/google/android/gms/cast/internal/zzau;-><init>(JLjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iput-object v8, v0, Lcom/google/android/gms/cast/internal/zzaq;->n:Lcom/google/android/gms/cast/internal/zzau;

    .line 70
    .line 71
    new-instance v9, Lcom/google/android/gms/cast/internal/zzau;

    .line 72
    .line 73
    const-string v10, "mute"

    .line 74
    .line 75
    invoke-direct {v9, v2, v3, v10}, Lcom/google/android/gms/cast/internal/zzau;-><init>(JLjava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iput-object v9, v0, Lcom/google/android/gms/cast/internal/zzaq;->o:Lcom/google/android/gms/cast/internal/zzau;

    .line 79
    .line 80
    new-instance v10, Lcom/google/android/gms/cast/internal/zzau;

    .line 81
    .line 82
    const-string v11, "status"

    .line 83
    .line 84
    invoke-direct {v10, v2, v3, v11}, Lcom/google/android/gms/cast/internal/zzau;-><init>(JLjava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iput-object v10, v0, Lcom/google/android/gms/cast/internal/zzaq;->p:Lcom/google/android/gms/cast/internal/zzau;

    .line 88
    .line 89
    new-instance v11, Lcom/google/android/gms/cast/internal/zzau;

    .line 90
    .line 91
    const-string v12, "activeTracks"

    .line 92
    .line 93
    invoke-direct {v11, v2, v3, v12}, Lcom/google/android/gms/cast/internal/zzau;-><init>(JLjava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iput-object v11, v0, Lcom/google/android/gms/cast/internal/zzaq;->q:Lcom/google/android/gms/cast/internal/zzau;

    .line 97
    .line 98
    new-instance v12, Lcom/google/android/gms/cast/internal/zzau;

    .line 99
    .line 100
    const-string v13, "trackStyle"

    .line 101
    .line 102
    invoke-direct {v12, v2, v3, v13}, Lcom/google/android/gms/cast/internal/zzau;-><init>(JLjava/lang/String;)V

    .line 103
    .line 104
    .line 105
    new-instance v13, Lcom/google/android/gms/cast/internal/zzau;

    .line 106
    .line 107
    const-string v14, "queueInsert"

    .line 108
    .line 109
    invoke-direct {v13, v2, v3, v14}, Lcom/google/android/gms/cast/internal/zzau;-><init>(JLjava/lang/String;)V

    .line 110
    .line 111
    .line 112
    new-instance v14, Lcom/google/android/gms/cast/internal/zzau;

    .line 113
    .line 114
    const-string v15, "queueUpdate"

    .line 115
    .line 116
    invoke-direct {v14, v2, v3, v15}, Lcom/google/android/gms/cast/internal/zzau;-><init>(JLjava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iput-object v14, v0, Lcom/google/android/gms/cast/internal/zzaq;->r:Lcom/google/android/gms/cast/internal/zzau;

    .line 120
    .line 121
    new-instance v15, Lcom/google/android/gms/cast/internal/zzau;

    .line 122
    .line 123
    move-object/from16 p1, v14

    .line 124
    .line 125
    const-string v14, "queueRemove"

    .line 126
    .line 127
    invoke-direct {v15, v2, v3, v14}, Lcom/google/android/gms/cast/internal/zzau;-><init>(JLjava/lang/String;)V

    .line 128
    .line 129
    .line 130
    new-instance v14, Lcom/google/android/gms/cast/internal/zzau;

    .line 131
    .line 132
    move-object/from16 v16, v15

    .line 133
    .line 134
    const-string v15, "queueReorder"

    .line 135
    .line 136
    invoke-direct {v14, v2, v3, v15}, Lcom/google/android/gms/cast/internal/zzau;-><init>(JLjava/lang/String;)V

    .line 137
    .line 138
    .line 139
    new-instance v15, Lcom/google/android/gms/cast/internal/zzau;

    .line 140
    .line 141
    move-object/from16 v17, v14

    .line 142
    .line 143
    const-string v14, "queueFetchItemIds"

    .line 144
    .line 145
    invoke-direct {v15, v2, v3, v14}, Lcom/google/android/gms/cast/internal/zzau;-><init>(JLjava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iput-object v15, v0, Lcom/google/android/gms/cast/internal/zzaq;->s:Lcom/google/android/gms/cast/internal/zzau;

    .line 149
    .line 150
    new-instance v14, Lcom/google/android/gms/cast/internal/zzau;

    .line 151
    .line 152
    move-object/from16 v18, v15

    .line 153
    .line 154
    const-string v15, "queueFetchItemRange"

    .line 155
    .line 156
    invoke-direct {v14, v2, v3, v15}, Lcom/google/android/gms/cast/internal/zzau;-><init>(JLjava/lang/String;)V

    .line 157
    .line 158
    .line 159
    iput-object v14, v0, Lcom/google/android/gms/cast/internal/zzaq;->u:Lcom/google/android/gms/cast/internal/zzau;

    .line 160
    .line 161
    new-instance v15, Lcom/google/android/gms/cast/internal/zzau;

    .line 162
    .line 163
    move-object/from16 v19, v14

    .line 164
    .line 165
    const-string v14, "queueFetchItems"

    .line 166
    .line 167
    invoke-direct {v15, v2, v3, v14}, Lcom/google/android/gms/cast/internal/zzau;-><init>(JLjava/lang/String;)V

    .line 168
    .line 169
    .line 170
    iput-object v15, v0, Lcom/google/android/gms/cast/internal/zzaq;->t:Lcom/google/android/gms/cast/internal/zzau;

    .line 171
    .line 172
    new-instance v14, Lcom/google/android/gms/cast/internal/zzau;

    .line 173
    .line 174
    const-string v15, "setPlaybackRate"

    .line 175
    .line 176
    invoke-direct {v14, v2, v3, v15}, Lcom/google/android/gms/cast/internal/zzau;-><init>(JLjava/lang/String;)V

    .line 177
    .line 178
    .line 179
    new-instance v15, Lcom/google/android/gms/cast/internal/zzau;

    .line 180
    .line 181
    move-object/from16 v20, v14

    .line 182
    .line 183
    const-string v14, "skipAd"

    .line 184
    .line 185
    invoke-direct {v15, v2, v3, v14}, Lcom/google/android/gms/cast/internal/zzau;-><init>(JLjava/lang/String;)V

    .line 186
    .line 187
    .line 188
    iput-object v15, v0, Lcom/google/android/gms/cast/internal/zzaq;->v:Lcom/google/android/gms/cast/internal/zzau;

    .line 189
    .line 190
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/internal/zzd;->zzc(Lcom/google/android/gms/cast/internal/zzau;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v4}, Lcom/google/android/gms/cast/internal/zzd;->zzc(Lcom/google/android/gms/cast/internal/zzau;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, v5}, Lcom/google/android/gms/cast/internal/zzd;->zzc(Lcom/google/android/gms/cast/internal/zzau;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v6}, Lcom/google/android/gms/cast/internal/zzd;->zzc(Lcom/google/android/gms/cast/internal/zzau;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v7}, Lcom/google/android/gms/cast/internal/zzd;->zzc(Lcom/google/android/gms/cast/internal/zzau;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, v8}, Lcom/google/android/gms/cast/internal/zzd;->zzc(Lcom/google/android/gms/cast/internal/zzau;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0, v9}, Lcom/google/android/gms/cast/internal/zzd;->zzc(Lcom/google/android/gms/cast/internal/zzau;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, v10}, Lcom/google/android/gms/cast/internal/zzd;->zzc(Lcom/google/android/gms/cast/internal/zzau;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0, v11}, Lcom/google/android/gms/cast/internal/zzd;->zzc(Lcom/google/android/gms/cast/internal/zzau;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0, v12}, Lcom/google/android/gms/cast/internal/zzd;->zzc(Lcom/google/android/gms/cast/internal/zzau;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0, v13}, Lcom/google/android/gms/cast/internal/zzd;->zzc(Lcom/google/android/gms/cast/internal/zzau;)V

    .line 221
    .line 222
    .line 223
    move-object/from16 v1, p1

    .line 224
    .line 225
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/internal/zzd;->zzc(Lcom/google/android/gms/cast/internal/zzau;)V

    .line 226
    .line 227
    .line 228
    move-object/from16 v1, v16

    .line 229
    .line 230
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/internal/zzd;->zzc(Lcom/google/android/gms/cast/internal/zzau;)V

    .line 231
    .line 232
    .line 233
    move-object/from16 v1, v17

    .line 234
    .line 235
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/internal/zzd;->zzc(Lcom/google/android/gms/cast/internal/zzau;)V

    .line 236
    .line 237
    .line 238
    move-object/from16 v1, v18

    .line 239
    .line 240
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/internal/zzd;->zzc(Lcom/google/android/gms/cast/internal/zzau;)V

    .line 241
    .line 242
    .line 243
    move-object/from16 v1, v19

    .line 244
    .line 245
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/internal/zzd;->zzc(Lcom/google/android/gms/cast/internal/zzau;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/internal/zzd;->zzc(Lcom/google/android/gms/cast/internal/zzau;)V

    .line 249
    .line 250
    .line 251
    move-object/from16 v1, v20

    .line 252
    .line 253
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/internal/zzd;->zzc(Lcom/google/android/gms/cast/internal/zzau;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0, v15}, Lcom/google/android/gms/cast/internal/zzd;->zzc(Lcom/google/android/gms/cast/internal/zzau;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0}, Lcom/google/android/gms/cast/internal/zzaq;->c()V

    .line 260
    .line 261
    .line 262
    return-void
.end method

.method public static b(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/internal/zzap;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/cast/MediaError;->zza(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/MediaError;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/cast/internal/zzap;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/google/android/gms/cast/internal/zzap;-><init>()V

    .line 7
    .line 8
    .line 9
    sget-object v1, Lcom/google/android/gms/cast/internal/CastUtils;->a:Ljava/util/regex/Pattern;

    .line 10
    .line 11
    const-string v1, "customData"

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    :cond_0
    return-object v0
.end method

.method public static e(Lorg/json/JSONArray;)[I
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    new-array v0, v0, [I

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-ge v1, v2, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getInt(I)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    aput v2, v0, v1

    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    return-object v0
.end method


# virtual methods
.method public final a(JDJ)J
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/google/android/gms/cast/internal/zzaq;->e:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v4, v0, v2

    .line 11
    .line 12
    if-gez v4, :cond_0

    .line 13
    .line 14
    move-wide v0, v2

    .line 15
    :cond_0
    cmp-long v4, v0, v2

    .line 16
    .line 17
    if-nez v4, :cond_1

    .line 18
    .line 19
    return-wide p1

    .line 20
    :cond_1
    long-to-double v0, v0

    .line 21
    mul-double/2addr v0, p3

    .line 22
    double-to-long p3, v0

    .line 23
    add-long/2addr p1, p3

    .line 24
    cmp-long p3, p5, v2

    .line 25
    .line 26
    if-lez p3, :cond_2

    .line 27
    .line 28
    cmp-long p3, p1, p5

    .line 29
    .line 30
    if-lez p3, :cond_2

    .line 31
    .line 32
    return-wide p5

    .line 33
    :cond_2
    cmp-long p3, p1, v2

    .line 34
    .line 35
    if-ltz p3, :cond_3

    .line 36
    .line 37
    return-wide p1

    .line 38
    :cond_3
    return-wide v2
.end method

.method public final c()V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/google/android/gms/cast/internal/zzaq;->e:J

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/cast/internal/zzaq;->f:Lcom/google/android/gms/cast/MediaStatus;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzd;->zza()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/google/android/gms/cast/internal/zzau;

    .line 27
    .line 28
    const/16 v2, 0x7d2

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/internal/zzau;->zzc(I)Z

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method

.method public final d(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "sequenceNumber"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 p2, -0x1

    .line 10
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/google/android/gms/cast/internal/zzaq;->i:I

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const-string p1, " message is missing a sequence number."

    .line 18
    .line 19
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 p2, 0x0

    .line 24
    new-array p2, p2, [Ljava/lang/Object;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzp;->a:Lcom/google/android/gms/cast/internal/Logger;

    .line 27
    .line 28
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/cast/internal/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final zzA(Lcom/google/android/gms/cast/internal/zzas;IJ[Lcom/google/android/gms/cast/MediaQueueItem;ILjava/lang/Boolean;Ljava/lang/Integer;Lorg/json/JSONObject;)J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/cast/internal/zzao;
        }
    .end annotation

    .line 1
    move/from16 v0, p2

    .line 2
    .line 3
    move-wide/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v3, p5

    .line 6
    .line 7
    move/from16 v4, p6

    .line 8
    .line 9
    move-object/from16 v5, p7

    .line 10
    .line 11
    move-object/from16 v6, p9

    .line 12
    .line 13
    const-wide/16 v7, -0x1

    .line 14
    .line 15
    cmp-long v7, v1, v7

    .line 16
    .line 17
    if-eqz v7, :cond_1

    .line 18
    .line 19
    const-wide/16 v8, 0x0

    .line 20
    .line 21
    cmp-long v8, v1, v8

    .line 22
    .line 23
    if-ltz v8, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    const-string v0, "playPosition cannot be negative: "

    .line 29
    .line 30
    invoke-static {v0, v1, v2}, LA/i;->i(Ljava/lang/String;J)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1

    .line 38
    :cond_1
    :goto_0
    new-instance v8, Lorg/json/JSONObject;

    .line 39
    .line 40
    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzp;->zzd()J

    .line 44
    .line 45
    .line 46
    move-result-wide v9

    .line 47
    :try_start_0
    const-string v11, "requestId"

    .line 48
    .line 49
    invoke-virtual {v8, v11, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 50
    .line 51
    .line 52
    const-string v11, "type"

    .line 53
    .line 54
    const-string v12, "QUEUE_UPDATE"

    .line 55
    .line 56
    invoke-virtual {v8, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    .line 58
    .line 59
    const-string v11, "mediaSessionId"

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzaq;->zzn()J

    .line 62
    .line 63
    .line 64
    move-result-wide v12

    .line 65
    invoke-virtual {v8, v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 66
    .line 67
    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    const-string v11, "currentItemId"

    .line 71
    .line 72
    invoke-virtual {v8, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 73
    .line 74
    .line 75
    :cond_2
    if-eqz v4, :cond_3

    .line 76
    .line 77
    const-string v0, "jump"

    .line 78
    .line 79
    invoke-virtual {v8, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 80
    .line 81
    .line 82
    :cond_3
    const/4 v0, 0x0

    .line 83
    if-eqz v3, :cond_5

    .line 84
    .line 85
    array-length v4, v3

    .line 86
    if-lez v4, :cond_5

    .line 87
    .line 88
    new-instance v4, Lorg/json/JSONArray;

    .line 89
    .line 90
    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 91
    .line 92
    .line 93
    move v11, v0

    .line 94
    :goto_1
    array-length v12, v3

    .line 95
    if-ge v11, v12, :cond_4

    .line 96
    .line 97
    aget-object v12, v3, v11

    .line 98
    .line 99
    invoke-virtual {v12}, Lcom/google/android/gms/cast/MediaQueueItem;->toJson()Lorg/json/JSONObject;

    .line 100
    .line 101
    .line 102
    move-result-object v12

    .line 103
    invoke-virtual {v4, v11, v12}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 104
    .line 105
    .line 106
    add-int/lit8 v11, v11, 0x1

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_4
    const-string v3, "items"

    .line 110
    .line 111
    invoke-virtual {v8, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    .line 113
    .line 114
    :cond_5
    if-eqz v5, :cond_6

    .line 115
    .line 116
    const-string v3, "shuffle"

    .line 117
    .line 118
    invoke-virtual {v8, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    .line 120
    .line 121
    :cond_6
    invoke-static/range {p8 .. p8}, Lcom/google/android/gms/cast/internal/media/MediaCommon;->zza(Ljava/lang/Integer;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    if-eqz v3, :cond_7

    .line 126
    .line 127
    const-string v4, "repeatMode"

    .line 128
    .line 129
    invoke-virtual {v8, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    .line 131
    .line 132
    :cond_7
    if-eqz v7, :cond_8

    .line 133
    .line 134
    const-string v3, "currentTime"

    .line 135
    .line 136
    invoke-static {v1, v2}, Lcom/google/android/gms/cast/internal/CastUtils;->millisecToSec(J)D

    .line 137
    .line 138
    .line 139
    move-result-wide v1

    .line 140
    invoke-virtual {v8, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 141
    .line 142
    .line 143
    :cond_8
    if-eqz v6, :cond_9

    .line 144
    .line 145
    const-string v1, "customData"

    .line 146
    .line 147
    invoke-virtual {v8, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    .line 149
    .line 150
    :cond_9
    iget v1, p0, Lcom/google/android/gms/cast/internal/zzaq;->i:I

    .line 151
    .line 152
    const/4 v2, -0x1

    .line 153
    if-eq v1, v2, :cond_a

    .line 154
    .line 155
    const/4 v0, 0x1

    .line 156
    :cond_a
    if-eqz v0, :cond_b

    .line 157
    .line 158
    const-string v0, "sequenceNumber"

    .line 159
    .line 160
    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .line 162
    .line 163
    :catch_0
    :cond_b
    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    const/4 v1, 0x0

    .line 168
    invoke-virtual {p0, v0, v9, v10, v1}, Lcom/google/android/gms/cast/internal/zzp;->zzg(Ljava/lang/String;JLjava/lang/String;)V

    .line 169
    .line 170
    .line 171
    new-instance v0, Lcom/google/android/gms/cast/internal/zzam;

    .line 172
    .line 173
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/cast/internal/zzam;-><init>(Lcom/google/android/gms/cast/internal/zzaq;Lcom/google/android/gms/cast/internal/zzas;)V

    .line 174
    .line 175
    .line 176
    iget-object p1, p0, Lcom/google/android/gms/cast/internal/zzaq;->r:Lcom/google/android/gms/cast/internal/zzau;

    .line 177
    .line 178
    invoke-virtual {p1, v9, v10, v0}, Lcom/google/android/gms/cast/internal/zzau;->zzb(JLcom/google/android/gms/cast/internal/zzas;)V

    .line 179
    .line 180
    .line 181
    return-wide v9
.end method

.method public final zzB(Lcom/google/android/gms/cast/internal/zzas;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzp;->zzd()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    :try_start_0
    const-string v3, "requestId"

    .line 11
    .line 12
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 13
    .line 14
    .line 15
    const-string v3, "type"

    .line 16
    .line 17
    const-string v4, "GET_STATUS"

    .line 18
    .line 19
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    iget-object v3, p0, Lcom/google/android/gms/cast/internal/zzaq;->f:Lcom/google/android/gms/cast/MediaStatus;

    .line 23
    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    const-string v4, "mediaSessionId"

    .line 27
    .line 28
    invoke-virtual {v3}, Lcom/google/android/gms/cast/MediaStatus;->zzb()J

    .line 29
    .line 30
    .line 31
    move-result-wide v5

    .line 32
    invoke-virtual {v0, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    :catch_0
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/cast/internal/zzp;->zzg(Ljava/lang/String;JLjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzaq;->p:Lcom/google/android/gms/cast/internal/zzau;

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/cast/internal/zzau;->zzb(JLcom/google/android/gms/cast/internal/zzas;)V

    .line 46
    .line 47
    .line 48
    return-wide v1
.end method

.method public final zzC(Lcom/google/android/gms/cast/internal/zzas;Lcom/google/android/gms/cast/MediaSeekOptions;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/cast/internal/zzao;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzp;->zzd()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaSeekOptions;->isSeekToInfinite()Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    const-wide v3, 0x3e800000000L

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaSeekOptions;->getPosition()J

    .line 23
    .line 24
    .line 25
    move-result-wide v3

    .line 26
    :goto_0
    :try_start_0
    const-string v5, "requestId"

    .line 27
    .line 28
    invoke-virtual {v0, v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 29
    .line 30
    .line 31
    const-string v5, "type"

    .line 32
    .line 33
    const-string v6, "SEEK"

    .line 34
    .line 35
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    .line 37
    .line 38
    const-string v5, "mediaSessionId"

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzaq;->zzn()J

    .line 41
    .line 42
    .line 43
    move-result-wide v6

    .line 44
    invoke-virtual {v0, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 45
    .line 46
    .line 47
    const-string v5, "currentTime"

    .line 48
    .line 49
    invoke-static {v3, v4}, Lcom/google/android/gms/cast/internal/CastUtils;->millisecToSec(J)D

    .line 50
    .line 51
    .line 52
    move-result-wide v6

    .line 53
    invoke-virtual {v0, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaSeekOptions;->getResumeState()I

    .line 57
    .line 58
    .line 59
    move-result v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    const/4 v6, 0x1

    .line 61
    const-string v7, "resumeState"

    .line 62
    .line 63
    if-ne v5, v6, :cond_1

    .line 64
    .line 65
    :try_start_1
    const-string v5, "PLAYBACK_START"

    .line 66
    .line 67
    invoke-virtual {v0, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaSeekOptions;->getResumeState()I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    const/4 v6, 0x2

    .line 76
    if-ne v5, v6, :cond_2

    .line 77
    .line 78
    const-string v5, "PLAYBACK_PAUSE"

    .line 79
    .line 80
    invoke-virtual {v0, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    .line 82
    .line 83
    :cond_2
    :goto_1
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaSeekOptions;->getCustomData()Lorg/json/JSONObject;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    if-eqz v5, :cond_3

    .line 88
    .line 89
    const-string v5, "customData"

    .line 90
    .line 91
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaSeekOptions;->getCustomData()Lorg/json/JSONObject;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-virtual {v0, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
    .line 97
    .line 98
    :catch_0
    :cond_3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    const/4 v0, 0x0

    .line 103
    invoke-virtual {p0, p2, v1, v2, v0}, Lcom/google/android/gms/cast/internal/zzp;->zzg(Ljava/lang/String;JLjava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    iput-object p2, p0, Lcom/google/android/gms/cast/internal/zzaq;->g:Ljava/lang/Long;

    .line 111
    .line 112
    new-instance p2, Lcom/google/android/gms/cast/internal/zzal;

    .line 113
    .line 114
    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/cast/internal/zzal;-><init>(Lcom/google/android/gms/cast/internal/zzaq;Lcom/google/android/gms/cast/internal/zzas;)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lcom/google/android/gms/cast/internal/zzaq;->m:Lcom/google/android/gms/cast/internal/zzau;

    .line 118
    .line 119
    invoke-virtual {p1, v1, v2, p2}, Lcom/google/android/gms/cast/internal/zzau;->zzb(JLcom/google/android/gms/cast/internal/zzas;)V

    .line 120
    .line 121
    .line 122
    return-wide v1
.end method

.method public final zzD(Lcom/google/android/gms/cast/internal/zzas;[J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/cast/internal/zzao;
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    new-instance v0, Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzp;->zzd()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    :try_start_0
    const-string v3, "requestId"

    .line 13
    .line 14
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 15
    .line 16
    .line 17
    const-string v3, "type"

    .line 18
    .line 19
    const-string v4, "EDIT_TRACKS_INFO"

    .line 20
    .line 21
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    .line 23
    .line 24
    const-string v3, "mediaSessionId"

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzaq;->zzn()J

    .line 27
    .line 28
    .line 29
    move-result-wide v4

    .line 30
    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 31
    .line 32
    .line 33
    new-instance v3, Lorg/json/JSONArray;

    .line 34
    .line 35
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 36
    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    :goto_0
    array-length v5, p2

    .line 40
    if-ge v4, v5, :cond_0

    .line 41
    .line 42
    aget-wide v5, p2, v4

    .line 43
    .line 44
    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONArray;->put(IJ)Lorg/json/JSONArray;

    .line 45
    .line 46
    .line 47
    add-int/lit8 v4, v4, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const-string p2, "activeTrackIds"

    .line 51
    .line 52
    invoke-virtual {v0, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0, p2, v1, v2, v0}, Lcom/google/android/gms/cast/internal/zzp;->zzg(Ljava/lang/String;JLjava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object p2, p0, Lcom/google/android/gms/cast/internal/zzaq;->q:Lcom/google/android/gms/cast/internal/zzau;

    .line 64
    .line 65
    invoke-virtual {p2, v1, v2, p1}, Lcom/google/android/gms/cast/internal/zzau;->zzb(JLcom/google/android/gms/cast/internal/zzas;)V

    .line 66
    .line 67
    .line 68
    return-wide v1

    .line 69
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 70
    .line 71
    const-string p2, "trackIds cannot be null"

    .line 72
    .line 73
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p1
.end method

.method public final zzI(Lcom/google/android/gms/cast/internal/zzas;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/cast/internal/zzao;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzp;->zzd()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    :try_start_0
    const-string v3, "requestId"

    .line 11
    .line 12
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 13
    .line 14
    .line 15
    const-string v3, "type"

    .line 16
    .line 17
    const-string v4, "SKIP_AD"

    .line 18
    .line 19
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    const-string v3, "mediaSessionId"

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzaq;->zzn()J

    .line 25
    .line 26
    .line 27
    move-result-wide v4

    .line 28
    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception v3

    .line 33
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const-string v4, "Error creating SkipAd message: "

    .line 40
    .line 41
    invoke-static {v4, v3}, LA/i;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const/4 v4, 0x0

    .line 46
    new-array v4, v4, [Ljava/lang/Object;

    .line 47
    .line 48
    iget-object v5, p0, Lcom/google/android/gms/cast/internal/zzp;->a:Lcom/google/android/gms/cast/internal/Logger;

    .line 49
    .line 50
    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/cast/internal/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const/4 v3, 0x0

    .line 58
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/cast/internal/zzp;->zzg(Ljava/lang/String;JLjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzaq;->v:Lcom/google/android/gms/cast/internal/zzau;

    .line 62
    .line 63
    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/cast/internal/zzau;->zzb(JLcom/google/android/gms/cast/internal/zzas;)V

    .line 64
    .line 65
    .line 66
    return-wide v1
.end method

.method public final zzK()Lcom/google/android/gms/cast/MediaInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzaq;->f:Lcom/google/android/gms/cast/MediaStatus;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    return-object v0
.end method

.method public final zzL()Lcom/google/android/gms/cast/MediaStatus;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzaq;->f:Lcom/google/android/gms/cast/MediaStatus;

    return-object v0
.end method

.method public final zzO(Ljava/lang/String;)V
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    iget-object v5, v1, Lcom/google/android/gms/cast/internal/zzaq;->o:Lcom/google/android/gms/cast/internal/zzau;

    .line 6
    .line 7
    iget-object v6, v1, Lcom/google/android/gms/cast/internal/zzaq;->n:Lcom/google/android/gms/cast/internal/zzau;

    .line 8
    .line 9
    const-string v7, "insertBefore"

    .line 10
    .line 11
    const/4 v8, 0x1

    .line 12
    new-array v9, v8, [Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v10, 0x0

    .line 15
    aput-object v2, v9, v10

    .line 16
    .line 17
    iget-object v11, v1, Lcom/google/android/gms/cast/internal/zzp;->a:Lcom/google/android/gms/cast/internal/Logger;

    .line 18
    .line 19
    const-string v12, "message received: %s"

    .line 20
    .line 21
    invoke-virtual {v11, v12, v9}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    .line 25
    .line 26
    invoke-direct {v9, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v12, "type"

    .line 30
    .line 31
    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v12

    .line 35
    const-string v13, "requestId"

    .line 36
    .line 37
    const-wide/16 v14, -0x1

    .line 38
    .line 39
    invoke-virtual {v9, v13, v14, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 40
    .line 41
    .line 42
    move-result-wide v13

    .line 43
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    .line 44
    .line 45
    .line 46
    move-result v15
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    const/16 v16, 0x8

    .line 48
    .line 49
    const-string v0, "QUEUE_ITEMS"

    .line 50
    .line 51
    const/16 v17, 0x4

    .line 52
    .line 53
    const-string v3, "QUEUE_CHANGE"

    .line 54
    .line 55
    const-string v4, "QUEUE_ITEM_IDS"

    .line 56
    .line 57
    move/from16 v19, v8

    .line 58
    .line 59
    sparse-switch v15, :sswitch_data_0

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :sswitch_0
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v12

    .line 67
    if-eqz v12, :cond_0

    .line 68
    .line 69
    const/4 v12, 0x6

    .line 70
    goto :goto_1

    .line 71
    :sswitch_1
    const-string v15, "MEDIA_STATUS"

    .line 72
    .line 73
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v12

    .line 77
    if-eqz v12, :cond_0

    .line 78
    .line 79
    move v12, v10

    .line 80
    goto :goto_1

    .line 81
    :sswitch_2
    const-string v15, "INVALID_PLAYER_STATE"

    .line 82
    .line 83
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v12

    .line 87
    if-eqz v12, :cond_0

    .line 88
    .line 89
    move/from16 v12, v19

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :sswitch_3
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v12

    .line 96
    if-eqz v12, :cond_0

    .line 97
    .line 98
    const/4 v12, 0x7

    .line 99
    goto :goto_1

    .line 100
    :sswitch_4
    const-string v15, "ERROR"

    .line 101
    .line 102
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v12

    .line 106
    if-eqz v12, :cond_0

    .line 107
    .line 108
    const/4 v12, 0x5

    .line 109
    goto :goto_1

    .line 110
    :sswitch_5
    const-string v15, "LOAD_FAILED"

    .line 111
    .line 112
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v12

    .line 116
    if-eqz v12, :cond_0

    .line 117
    .line 118
    const/4 v12, 0x2

    .line 119
    goto :goto_1

    .line 120
    :sswitch_6
    const-string v15, "INVALID_REQUEST"

    .line 121
    .line 122
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v12

    .line 126
    if-eqz v12, :cond_0

    .line 127
    .line 128
    move/from16 v12, v17

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :sswitch_7
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v12

    .line 135
    if-eqz v12, :cond_0

    .line 136
    .line 137
    move/from16 v12, v16

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :sswitch_8
    const-string v15, "LOAD_CANCELLED"

    .line 141
    .line 142
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v12

    .line 146
    if-eqz v12, :cond_0

    .line 147
    .line 148
    const/4 v12, 0x3

    .line 149
    goto :goto_1

    .line 150
    :cond_0
    :goto_0
    const/4 v12, -0x1

    .line 151
    :goto_1
    iget-object v15, v1, Lcom/google/android/gms/cast/internal/zzaq;->j:Lcom/google/android/gms/cast/internal/zzau;

    .line 152
    .line 153
    const-string v8, "itemIds"

    .line 154
    .line 155
    const/4 v10, 0x0

    .line 156
    packed-switch v12, :pswitch_data_0

    .line 157
    .line 158
    .line 159
    goto/16 :goto_10

    .line 160
    .line 161
    :pswitch_0
    :try_start_1
    iget-object v3, v1, Lcom/google/android/gms/cast/internal/zzaq;->t:Lcom/google/android/gms/cast/internal/zzau;

    .line 162
    .line 163
    const/4 v4, 0x0

    .line 164
    invoke-virtual {v3, v13, v14, v4, v10}, Lcom/google/android/gms/cast/internal/zzau;->zzd(JILjava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v9, v0}, Lcom/google/android/gms/cast/internal/zzaq;->d(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    iget-object v0, v1, Lcom/google/android/gms/cast/internal/zzaq;->h:Lcom/google/android/gms/cast/internal/zzan;

    .line 171
    .line 172
    if-eqz v0, :cond_1b

    .line 173
    .line 174
    const-string v0, "items"

    .line 175
    .line 176
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    new-array v3, v3, [Lcom/google/android/gms/cast/MediaQueueItem;

    .line 185
    .line 186
    const/4 v4, 0x0

    .line 187
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 188
    .line 189
    .line 190
    move-result v5

    .line 191
    if-ge v4, v5, :cond_1

    .line 192
    .line 193
    new-instance v5, Lcom/google/android/gms/cast/MediaQueueItem$Builder;

    .line 194
    .line 195
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 196
    .line 197
    .line 198
    move-result-object v6

    .line 199
    invoke-direct {v5, v6}, Lcom/google/android/gms/cast/MediaQueueItem$Builder;-><init>(Lorg/json/JSONObject;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v5}, Lcom/google/android/gms/cast/MediaQueueItem$Builder;->build()Lcom/google/android/gms/cast/MediaQueueItem;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    aput-object v5, v3, v4

    .line 207
    .line 208
    add-int/lit8 v4, v4, 0x1

    .line 209
    .line 210
    goto :goto_2

    .line 211
    :catch_0
    move-exception v0

    .line 212
    goto/16 :goto_11

    .line 213
    .line 214
    :cond_1
    iget-object v0, v1, Lcom/google/android/gms/cast/internal/zzaq;->h:Lcom/google/android/gms/cast/internal/zzan;

    .line 215
    .line 216
    invoke-interface {v0, v3}, Lcom/google/android/gms/cast/internal/zzan;->zzg([Lcom/google/android/gms/cast/MediaQueueItem;)V

    .line 217
    .line 218
    .line 219
    return-void

    .line 220
    :pswitch_1
    iget-object v0, v1, Lcom/google/android/gms/cast/internal/zzaq;->u:Lcom/google/android/gms/cast/internal/zzau;

    .line 221
    .line 222
    const/4 v4, 0x0

    .line 223
    invoke-virtual {v0, v13, v14, v4, v10}, Lcom/google/android/gms/cast/internal/zzau;->zzd(JILjava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1, v9, v3}, Lcom/google/android/gms/cast/internal/zzaq;->d(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    iget-object v0, v1, Lcom/google/android/gms/cast/internal/zzaq;->h:Lcom/google/android/gms/cast/internal/zzan;

    .line 230
    .line 231
    if-eqz v0, :cond_1b

    .line 232
    .line 233
    const-string v0, "changeType"

    .line 234
    .line 235
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    invoke-static {v3}, Lcom/google/android/gms/cast/internal/zzaq;->e(Lorg/json/JSONArray;)[I

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    const/4 v4, 0x0

    .line 248
    invoke-virtual {v9, v7, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 249
    .line 250
    .line 251
    move-result v5

    .line 252
    if-eqz v3, :cond_1b

    .line 253
    .line 254
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 255
    .line 256
    .line 257
    move-result v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 258
    sparse-switch v4, :sswitch_data_1

    .line 259
    .line 260
    .line 261
    goto :goto_3

    .line 262
    :sswitch_9
    const-string v4, "ITEMS_CHANGE"

    .line 263
    .line 264
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    if-eqz v0, :cond_2

    .line 269
    .line 270
    move/from16 v0, v19

    .line 271
    .line 272
    goto :goto_4

    .line 273
    :sswitch_a
    const-string v4, "UPDATE"

    .line 274
    .line 275
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    if-eqz v0, :cond_2

    .line 280
    .line 281
    const/4 v0, 0x3

    .line 282
    goto :goto_4

    .line 283
    :sswitch_b
    const-string v4, "REMOVE"

    .line 284
    .line 285
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    if-eqz v0, :cond_2

    .line 290
    .line 291
    const/4 v0, 0x2

    .line 292
    goto :goto_4

    .line 293
    :sswitch_c
    const-string v4, "INSERT"

    .line 294
    .line 295
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    if-eqz v0, :cond_2

    .line 300
    .line 301
    const/4 v0, 0x0

    .line 302
    goto :goto_4

    .line 303
    :cond_2
    :goto_3
    const/4 v0, -0x1

    .line 304
    :goto_4
    if-eqz v0, :cond_7

    .line 305
    .line 306
    move/from16 v4, v19

    .line 307
    .line 308
    if-eq v0, v4, :cond_6

    .line 309
    .line 310
    const/4 v4, 0x2

    .line 311
    if-eq v0, v4, :cond_5

    .line 312
    .line 313
    const/4 v4, 0x3

    .line 314
    if-eq v0, v4, :cond_3

    .line 315
    .line 316
    goto/16 :goto_10

    .line 317
    .line 318
    :cond_3
    :try_start_2
    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    invoke-static {v0}, Lcom/google/android/gms/cast/internal/zzaq;->e(Lorg/json/JSONArray;)[I

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    const-string v3, "A list of item IDs is expected in a QUEUE UPDATE message."

    .line 327
    .line 328
    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    const-string v3, "reorderItemIds"

    .line 332
    .line 333
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 334
    .line 335
    .line 336
    move-result-object v3

    .line 337
    if-eqz v3, :cond_4

    .line 338
    .line 339
    invoke-static {v0}, Lcom/google/android/gms/cast/internal/CastUtils;->zzd([I)Ljava/util/List;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    const/4 v4, 0x0

    .line 344
    invoke-virtual {v9, v7, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 345
    .line 346
    .line 347
    move-result v5

    .line 348
    invoke-static {v3}, Lcom/google/android/gms/cast/internal/zzaq;->e(Lorg/json/JSONArray;)[I

    .line 349
    .line 350
    .line 351
    move-result-object v3

    .line 352
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v3

    .line 356
    check-cast v3, [I

    .line 357
    .line 358
    invoke-static {v3}, Lcom/google/android/gms/cast/internal/CastUtils;->zzd([I)Ljava/util/List;

    .line 359
    .line 360
    .line 361
    move-result-object v3

    .line 362
    iget-object v4, v1, Lcom/google/android/gms/cast/internal/zzaq;->h:Lcom/google/android/gms/cast/internal/zzan;

    .line 363
    .line 364
    invoke-interface {v4, v0, v3, v5}, Lcom/google/android/gms/cast/internal/zzan;->zzi(Ljava/util/List;Ljava/util/List;I)V

    .line 365
    .line 366
    .line 367
    return-void

    .line 368
    :cond_4
    iget-object v3, v1, Lcom/google/android/gms/cast/internal/zzaq;->h:Lcom/google/android/gms/cast/internal/zzan;

    .line 369
    .line 370
    invoke-interface {v3, v0}, Lcom/google/android/gms/cast/internal/zzan;->zze([I)V

    .line 371
    .line 372
    .line 373
    return-void

    .line 374
    :cond_5
    iget-object v0, v1, Lcom/google/android/gms/cast/internal/zzaq;->h:Lcom/google/android/gms/cast/internal/zzan;

    .line 375
    .line 376
    invoke-interface {v0, v3}, Lcom/google/android/gms/cast/internal/zzan;->zzh([I)V

    .line 377
    .line 378
    .line 379
    return-void

    .line 380
    :cond_6
    iget-object v0, v1, Lcom/google/android/gms/cast/internal/zzaq;->h:Lcom/google/android/gms/cast/internal/zzan;

    .line 381
    .line 382
    invoke-interface {v0, v3}, Lcom/google/android/gms/cast/internal/zzan;->zzj([I)V

    .line 383
    .line 384
    .line 385
    return-void

    .line 386
    :cond_7
    iget-object v0, v1, Lcom/google/android/gms/cast/internal/zzaq;->h:Lcom/google/android/gms/cast/internal/zzan;

    .line 387
    .line 388
    invoke-interface {v0, v3, v5}, Lcom/google/android/gms/cast/internal/zzan;->zzf([II)V

    .line 389
    .line 390
    .line 391
    return-void

    .line 392
    :pswitch_2
    iget-object v0, v1, Lcom/google/android/gms/cast/internal/zzaq;->s:Lcom/google/android/gms/cast/internal/zzau;

    .line 393
    .line 394
    const/4 v3, 0x0

    .line 395
    invoke-virtual {v0, v13, v14, v3, v10}, Lcom/google/android/gms/cast/internal/zzau;->zzd(JILjava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    invoke-virtual {v1, v9, v4}, Lcom/google/android/gms/cast/internal/zzaq;->d(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    iget-object v0, v1, Lcom/google/android/gms/cast/internal/zzaq;->h:Lcom/google/android/gms/cast/internal/zzan;

    .line 402
    .line 403
    if-eqz v0, :cond_1b

    .line 404
    .line 405
    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    invoke-static {v0}, Lcom/google/android/gms/cast/internal/zzaq;->e(Lorg/json/JSONArray;)[I

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    if-eqz v0, :cond_1b

    .line 414
    .line 415
    iget-object v3, v1, Lcom/google/android/gms/cast/internal/zzaq;->h:Lcom/google/android/gms/cast/internal/zzan;

    .line 416
    .line 417
    invoke-interface {v3, v0}, Lcom/google/android/gms/cast/internal/zzan;->zze([I)V

    .line 418
    .line 419
    .line 420
    return-void

    .line 421
    :pswitch_3
    invoke-virtual {v1}, Lcom/google/android/gms/cast/internal/zzd;->zza()Ljava/util/List;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 430
    .line 431
    .line 432
    move-result v3

    .line 433
    if-eqz v3, :cond_8

    .line 434
    .line 435
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object v3

    .line 439
    check-cast v3, Lcom/google/android/gms/cast/internal/zzau;

    .line 440
    .line 441
    invoke-static {v9}, Lcom/google/android/gms/cast/internal/zzaq;->b(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/internal/zzap;

    .line 442
    .line 443
    .line 444
    move-result-object v4

    .line 445
    const/16 v5, 0x834

    .line 446
    .line 447
    invoke-virtual {v3, v13, v14, v5, v4}, Lcom/google/android/gms/cast/internal/zzau;->zzd(JILjava/lang/Object;)Z

    .line 448
    .line 449
    .line 450
    goto :goto_5

    .line 451
    :cond_8
    iget-object v0, v1, Lcom/google/android/gms/cast/internal/zzaq;->h:Lcom/google/android/gms/cast/internal/zzan;

    .line 452
    .line 453
    if-nez v0, :cond_9

    .line 454
    .line 455
    goto/16 :goto_10

    .line 456
    .line 457
    :cond_9
    invoke-static {v9}, Lcom/google/android/gms/cast/MediaError;->zza(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/MediaError;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    iget-object v3, v1, Lcom/google/android/gms/cast/internal/zzaq;->h:Lcom/google/android/gms/cast/internal/zzan;

    .line 462
    .line 463
    invoke-interface {v3, v0}, Lcom/google/android/gms/cast/internal/zzan;->zzb(Lcom/google/android/gms/cast/MediaError;)V

    .line 464
    .line 465
    .line 466
    return-void

    .line 467
    :pswitch_4
    const-string v0, "received unexpected error: Invalid Request."

    .line 468
    .line 469
    const/4 v4, 0x0

    .line 470
    new-array v3, v4, [Ljava/lang/Object;

    .line 471
    .line 472
    invoke-virtual {v11, v0, v3}, Lcom/google/android/gms/cast/internal/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v1}, Lcom/google/android/gms/cast/internal/zzd;->zza()Ljava/util/List;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 484
    .line 485
    .line 486
    move-result v3

    .line 487
    if-eqz v3, :cond_1b

    .line 488
    .line 489
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 490
    .line 491
    .line 492
    move-result-object v3

    .line 493
    check-cast v3, Lcom/google/android/gms/cast/internal/zzau;

    .line 494
    .line 495
    invoke-static {v9}, Lcom/google/android/gms/cast/internal/zzaq;->b(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/internal/zzap;

    .line 496
    .line 497
    .line 498
    move-result-object v4

    .line 499
    const/16 v5, 0x7d1

    .line 500
    .line 501
    invoke-virtual {v3, v13, v14, v5, v4}, Lcom/google/android/gms/cast/internal/zzau;->zzd(JILjava/lang/Object;)Z

    .line 502
    .line 503
    .line 504
    goto :goto_6

    .line 505
    :pswitch_5
    invoke-static {v9}, Lcom/google/android/gms/cast/internal/zzaq;->b(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/internal/zzap;

    .line 506
    .line 507
    .line 508
    move-result-object v0

    .line 509
    const/16 v3, 0x835

    .line 510
    .line 511
    invoke-virtual {v15, v13, v14, v3, v0}, Lcom/google/android/gms/cast/internal/zzau;->zzd(JILjava/lang/Object;)Z

    .line 512
    .line 513
    .line 514
    return-void

    .line 515
    :pswitch_6
    invoke-static {v9}, Lcom/google/android/gms/cast/internal/zzaq;->b(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/internal/zzap;

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    const/16 v5, 0x834

    .line 520
    .line 521
    invoke-virtual {v15, v13, v14, v5, v0}, Lcom/google/android/gms/cast/internal/zzau;->zzd(JILjava/lang/Object;)Z

    .line 522
    .line 523
    .line 524
    return-void

    .line 525
    :pswitch_7
    const-string v0, "received unexpected error: Invalid Player State."

    .line 526
    .line 527
    const/4 v4, 0x0

    .line 528
    new-array v3, v4, [Ljava/lang/Object;

    .line 529
    .line 530
    invoke-virtual {v11, v0, v3}, Lcom/google/android/gms/cast/internal/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 531
    .line 532
    .line 533
    invoke-virtual {v1}, Lcom/google/android/gms/cast/internal/zzd;->zza()Ljava/util/List;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 538
    .line 539
    .line 540
    move-result-object v0

    .line 541
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 542
    .line 543
    .line 544
    move-result v3

    .line 545
    if-eqz v3, :cond_1b

    .line 546
    .line 547
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 548
    .line 549
    .line 550
    move-result-object v3

    .line 551
    check-cast v3, Lcom/google/android/gms/cast/internal/zzau;

    .line 552
    .line 553
    invoke-static {v9}, Lcom/google/android/gms/cast/internal/zzaq;->b(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/internal/zzap;

    .line 554
    .line 555
    .line 556
    move-result-object v4

    .line 557
    const/16 v5, 0x834

    .line 558
    .line 559
    invoke-virtual {v3, v13, v14, v5, v4}, Lcom/google/android/gms/cast/internal/zzau;->zzd(JILjava/lang/Object;)Z

    .line 560
    .line 561
    .line 562
    goto :goto_7

    .line 563
    :pswitch_8
    const-string v0, "status"

    .line 564
    .line 565
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 566
    .line 567
    .line 568
    move-result-object v0

    .line 569
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 570
    .line 571
    .line 572
    move-result v3

    .line 573
    if-lez v3, :cond_16

    .line 574
    .line 575
    const/4 v4, 0x0

    .line 576
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 577
    .line 578
    .line 579
    move-result-object v0

    .line 580
    invoke-virtual {v15, v13, v14}, Lcom/google/android/gms/cast/internal/zzau;->zze(J)Z

    .line 581
    .line 582
    .line 583
    move-result v3

    .line 584
    invoke-virtual {v6}, Lcom/google/android/gms/cast/internal/zzau;->zzf()Z

    .line 585
    .line 586
    .line 587
    move-result v4

    .line 588
    if-eqz v4, :cond_b

    .line 589
    .line 590
    invoke-virtual {v6, v13, v14}, Lcom/google/android/gms/cast/internal/zzau;->zze(J)Z

    .line 591
    .line 592
    .line 593
    move-result v4

    .line 594
    if-eqz v4, :cond_a

    .line 595
    .line 596
    goto :goto_9

    .line 597
    :cond_a
    :goto_8
    const/4 v4, 0x1

    .line 598
    goto :goto_a

    .line 599
    :cond_b
    :goto_9
    invoke-virtual {v5}, Lcom/google/android/gms/cast/internal/zzau;->zzf()Z

    .line 600
    .line 601
    .line 602
    move-result v4

    .line 603
    if-eqz v4, :cond_c

    .line 604
    .line 605
    invoke-virtual {v5, v13, v14}, Lcom/google/android/gms/cast/internal/zzau;->zze(J)Z

    .line 606
    .line 607
    .line 608
    move-result v4

    .line 609
    if-nez v4, :cond_c

    .line 610
    .line 611
    goto :goto_8

    .line 612
    :cond_c
    const/4 v4, 0x0

    .line 613
    :goto_a
    if-nez v3, :cond_e

    .line 614
    .line 615
    iget-object v3, v1, Lcom/google/android/gms/cast/internal/zzaq;->f:Lcom/google/android/gms/cast/MediaStatus;

    .line 616
    .line 617
    if-nez v3, :cond_d

    .line 618
    .line 619
    goto :goto_c

    .line 620
    :cond_d
    invoke-virtual {v3, v0, v4}, Lcom/google/android/gms/cast/MediaStatus;->zza(Lorg/json/JSONObject;I)I

    .line 621
    .line 622
    .line 623
    move-result v0

    .line 624
    :goto_b
    const/16 v19, 0x1

    .line 625
    .line 626
    goto :goto_d

    .line 627
    :cond_e
    :goto_c
    new-instance v3, Lcom/google/android/gms/cast/MediaStatus;

    .line 628
    .line 629
    invoke-direct {v3, v0}, Lcom/google/android/gms/cast/MediaStatus;-><init>(Lorg/json/JSONObject;)V

    .line 630
    .line 631
    .line 632
    iput-object v3, v1, Lcom/google/android/gms/cast/internal/zzaq;->f:Lcom/google/android/gms/cast/MediaStatus;

    .line 633
    .line 634
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 635
    .line 636
    .line 637
    move-result-wide v3

    .line 638
    iput-wide v3, v1, Lcom/google/android/gms/cast/internal/zzaq;->e:J

    .line 639
    .line 640
    const/16 v0, 0x7f

    .line 641
    .line 642
    goto :goto_b

    .line 643
    :goto_d
    and-int/lit8 v3, v0, 0x1

    .line 644
    .line 645
    if-eqz v3, :cond_f

    .line 646
    .line 647
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 648
    .line 649
    .line 650
    move-result-wide v3

    .line 651
    iput-wide v3, v1, Lcom/google/android/gms/cast/internal/zzaq;->e:J

    .line 652
    .line 653
    const/4 v3, -0x1

    .line 654
    iput v3, v1, Lcom/google/android/gms/cast/internal/zzaq;->i:I

    .line 655
    .line 656
    iget-object v3, v1, Lcom/google/android/gms/cast/internal/zzaq;->h:Lcom/google/android/gms/cast/internal/zzan;

    .line 657
    .line 658
    if-eqz v3, :cond_f

    .line 659
    .line 660
    invoke-interface {v3}, Lcom/google/android/gms/cast/internal/zzan;->zzm()V

    .line 661
    .line 662
    .line 663
    :cond_f
    const/16 v18, 0x2

    .line 664
    .line 665
    and-int/lit8 v3, v0, 0x2

    .line 666
    .line 667
    if-eqz v3, :cond_10

    .line 668
    .line 669
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 670
    .line 671
    .line 672
    move-result-wide v3

    .line 673
    iput-wide v3, v1, Lcom/google/android/gms/cast/internal/zzaq;->e:J

    .line 674
    .line 675
    iget-object v3, v1, Lcom/google/android/gms/cast/internal/zzaq;->h:Lcom/google/android/gms/cast/internal/zzan;

    .line 676
    .line 677
    if-eqz v3, :cond_10

    .line 678
    .line 679
    invoke-interface {v3}, Lcom/google/android/gms/cast/internal/zzan;->zzm()V

    .line 680
    .line 681
    .line 682
    :cond_10
    and-int/lit16 v3, v0, 0x80

    .line 683
    .line 684
    if-eqz v3, :cond_11

    .line 685
    .line 686
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 687
    .line 688
    .line 689
    move-result-wide v3

    .line 690
    iput-wide v3, v1, Lcom/google/android/gms/cast/internal/zzaq;->e:J

    .line 691
    .line 692
    :cond_11
    and-int/lit8 v3, v0, 0x4

    .line 693
    .line 694
    if-eqz v3, :cond_12

    .line 695
    .line 696
    iget-object v3, v1, Lcom/google/android/gms/cast/internal/zzaq;->h:Lcom/google/android/gms/cast/internal/zzan;

    .line 697
    .line 698
    if-eqz v3, :cond_12

    .line 699
    .line 700
    invoke-interface {v3}, Lcom/google/android/gms/cast/internal/zzan;->zzc()V

    .line 701
    .line 702
    .line 703
    :cond_12
    and-int/lit8 v3, v0, 0x8

    .line 704
    .line 705
    if-eqz v3, :cond_13

    .line 706
    .line 707
    iget-object v3, v1, Lcom/google/android/gms/cast/internal/zzaq;->h:Lcom/google/android/gms/cast/internal/zzan;

    .line 708
    .line 709
    if-eqz v3, :cond_13

    .line 710
    .line 711
    invoke-interface {v3}, Lcom/google/android/gms/cast/internal/zzan;->zzk()V

    .line 712
    .line 713
    .line 714
    :cond_13
    and-int/lit8 v3, v0, 0x10

    .line 715
    .line 716
    if-eqz v3, :cond_14

    .line 717
    .line 718
    iget-object v3, v1, Lcom/google/android/gms/cast/internal/zzaq;->h:Lcom/google/android/gms/cast/internal/zzan;

    .line 719
    .line 720
    if-eqz v3, :cond_14

    .line 721
    .line 722
    invoke-interface {v3}, Lcom/google/android/gms/cast/internal/zzan;->zzd()V

    .line 723
    .line 724
    .line 725
    :cond_14
    and-int/lit8 v3, v0, 0x20

    .line 726
    .line 727
    if-eqz v3, :cond_15

    .line 728
    .line 729
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 730
    .line 731
    .line 732
    move-result-wide v3

    .line 733
    iput-wide v3, v1, Lcom/google/android/gms/cast/internal/zzaq;->e:J

    .line 734
    .line 735
    iget-object v3, v1, Lcom/google/android/gms/cast/internal/zzaq;->h:Lcom/google/android/gms/cast/internal/zzan;

    .line 736
    .line 737
    if-eqz v3, :cond_15

    .line 738
    .line 739
    invoke-interface {v3}, Lcom/google/android/gms/cast/internal/zzan;->zza()V

    .line 740
    .line 741
    .line 742
    :cond_15
    and-int/lit8 v0, v0, 0x40

    .line 743
    .line 744
    if-eqz v0, :cond_1a

    .line 745
    .line 746
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 747
    .line 748
    .line 749
    move-result-wide v3

    .line 750
    iput-wide v3, v1, Lcom/google/android/gms/cast/internal/zzaq;->e:J

    .line 751
    .line 752
    iget-object v0, v1, Lcom/google/android/gms/cast/internal/zzaq;->h:Lcom/google/android/gms/cast/internal/zzan;

    .line 753
    .line 754
    if-eqz v0, :cond_1a

    .line 755
    .line 756
    invoke-interface {v0}, Lcom/google/android/gms/cast/internal/zzan;->zzm()V

    .line 757
    .line 758
    .line 759
    goto :goto_e

    .line 760
    :cond_16
    iput-object v10, v1, Lcom/google/android/gms/cast/internal/zzaq;->f:Lcom/google/android/gms/cast/MediaStatus;

    .line 761
    .line 762
    iget-object v0, v1, Lcom/google/android/gms/cast/internal/zzaq;->h:Lcom/google/android/gms/cast/internal/zzan;

    .line 763
    .line 764
    if-eqz v0, :cond_17

    .line 765
    .line 766
    invoke-interface {v0}, Lcom/google/android/gms/cast/internal/zzan;->zzm()V

    .line 767
    .line 768
    .line 769
    :cond_17
    iget-object v0, v1, Lcom/google/android/gms/cast/internal/zzaq;->h:Lcom/google/android/gms/cast/internal/zzan;

    .line 770
    .line 771
    if-eqz v0, :cond_18

    .line 772
    .line 773
    invoke-interface {v0}, Lcom/google/android/gms/cast/internal/zzan;->zzc()V

    .line 774
    .line 775
    .line 776
    :cond_18
    iget-object v0, v1, Lcom/google/android/gms/cast/internal/zzaq;->h:Lcom/google/android/gms/cast/internal/zzan;

    .line 777
    .line 778
    if-eqz v0, :cond_19

    .line 779
    .line 780
    invoke-interface {v0}, Lcom/google/android/gms/cast/internal/zzan;->zzk()V

    .line 781
    .line 782
    .line 783
    :cond_19
    iget-object v0, v1, Lcom/google/android/gms/cast/internal/zzaq;->h:Lcom/google/android/gms/cast/internal/zzan;

    .line 784
    .line 785
    if-eqz v0, :cond_1a

    .line 786
    .line 787
    invoke-interface {v0}, Lcom/google/android/gms/cast/internal/zzan;->zzd()V

    .line 788
    .line 789
    .line 790
    :cond_1a
    :goto_e
    invoke-virtual {v1}, Lcom/google/android/gms/cast/internal/zzd;->zza()Ljava/util/List;

    .line 791
    .line 792
    .line 793
    move-result-object v0

    .line 794
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 795
    .line 796
    .line 797
    move-result-object v0

    .line 798
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 799
    .line 800
    .line 801
    move-result v3

    .line 802
    if-eqz v3, :cond_1b

    .line 803
    .line 804
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 805
    .line 806
    .line 807
    move-result-object v3

    .line 808
    check-cast v3, Lcom/google/android/gms/cast/internal/zzau;

    .line 809
    .line 810
    const/4 v4, 0x0

    .line 811
    invoke-virtual {v3, v13, v14, v4, v10}, Lcom/google/android/gms/cast/internal/zzau;->zzd(JILjava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 812
    .line 813
    .line 814
    goto :goto_f

    .line 815
    :cond_1b
    :goto_10
    return-void

    .line 816
    :goto_11
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 817
    .line 818
    .line 819
    move-result-object v0

    .line 820
    const/4 v4, 0x2

    .line 821
    new-array v3, v4, [Ljava/lang/Object;

    .line 822
    .line 823
    const/16 v20, 0x0

    .line 824
    .line 825
    aput-object v0, v3, v20

    .line 826
    .line 827
    const/16 v19, 0x1

    .line 828
    .line 829
    aput-object v2, v3, v19

    .line 830
    .line 831
    const-string v0, "Message is malformed (%s); ignoring: %s"

    .line 832
    .line 833
    invoke-virtual {v11, v0, v3}, Lcom/google/android/gms/cast/internal/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 834
    .line 835
    .line 836
    return-void

    .line 837
    :sswitch_data_0
    .sparse-switch
        -0x6d1d76e8 -> :sswitch_8
        -0x6ab4c52e -> :sswitch_7
        -0x430e23f9 -> :sswitch_6
        -0xfa7664a -> :sswitch_5
        0x3f2d9e8 -> :sswitch_4
        0x93422be -> :sswitch_3
        0x19b9b2fb -> :sswitch_2
        0x3115c4cd -> :sswitch_1
        0x7d988afa -> :sswitch_0
    .end sparse-switch

    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    :sswitch_data_1
    .sparse-switch
        -0x7efc4947 -> :sswitch_c
        -0x7022137c -> :sswitch_b
        -0x6a6cd337 -> :sswitch_a
        0x42ef412f -> :sswitch_9
    .end sparse-switch
.end method

.method public final zzP(JI)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzd;->zza()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/google/android/gms/cast/internal/zzau;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/google/android/gms/cast/internal/zzau;->zzd(JILjava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method public final zzQ(Lcom/google/android/gms/cast/internal/zzan;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzaq;->h:Lcom/google/android/gms/cast/internal/zzan;

    return-void
.end method

.method public final zzf()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzd;->zzb()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzaq;->c()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final zzj()J
    .locals 14

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/cast/internal/zzaq;->e:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzaq;->f:Lcom/google/android/gms/cast/MediaStatus;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getAdBreakStatus()Lcom/google/android/gms/cast/AdBreakStatus;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_3

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getPlaybackRate()D

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    const-wide/16 v4, 0x0

    .line 25
    .line 26
    cmpl-double v6, v2, v4

    .line 27
    .line 28
    if-nez v6, :cond_1

    .line 29
    .line 30
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 31
    .line 32
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getPlayerState()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const/4 v6, 0x2

    .line 37
    if-eq v0, v6, :cond_2

    .line 38
    .line 39
    move-wide v10, v4

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    move-wide v10, v2

    .line 42
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/cast/AdBreakStatus;->getCurrentBreakClipTimeInMs()J

    .line 43
    .line 44
    .line 45
    move-result-wide v8

    .line 46
    const-wide/16 v12, 0x0

    .line 47
    .line 48
    move-object v7, p0

    .line 49
    invoke-virtual/range {v7 .. v13}, Lcom/google/android/gms/cast/internal/zzaq;->a(JDJ)J

    .line 50
    .line 51
    .line 52
    move-result-wide v0

    .line 53
    return-wide v0

    .line 54
    :cond_3
    :goto_1
    return-wide v2
.end method

.method public final zzk()J
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzaq;->f:Lcom/google/android/gms/cast/MediaStatus;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-wide v1

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getLiveSeekableRange()Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    return-wide v1

    .line 15
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaLiveSeekableRange;->getEndTime()J

    .line 16
    .line 17
    .line 18
    move-result-wide v4

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaLiveSeekableRange;->isLiveDone()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 26
    .line 27
    const-wide/16 v8, -0x1

    .line 28
    .line 29
    move-object v3, p0

    .line 30
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/cast/internal/zzaq;->a(JDJ)J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    return-wide v0

    .line 35
    :cond_2
    return-wide v4
.end method

.method public final zzl()J
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzaq;->f:Lcom/google/android/gms/cast/MediaStatus;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-wide v1

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getLiveSeekableRange()Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    return-wide v1

    .line 15
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaLiveSeekableRange;->getStartTime()J

    .line 16
    .line 17
    .line 18
    move-result-wide v4

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaLiveSeekableRange;->isMovingWindow()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 26
    .line 27
    const-wide/16 v8, -0x1

    .line 28
    .line 29
    move-object v3, p0

    .line 30
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/cast/internal/zzaq;->a(JDJ)J

    .line 31
    .line 32
    .line 33
    move-result-wide v4

    .line 34
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaLiveSeekableRange;->isLiveDone()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_3

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaLiveSeekableRange;->getEndTime()J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 45
    .line 46
    .line 47
    move-result-wide v0

    .line 48
    return-wide v0

    .line 49
    :cond_3
    return-wide v4
.end method

.method public final zzm()J
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzaq;->zzK()Lcom/google/android/gms/cast/MediaInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_7

    .line 8
    .line 9
    iget-object v3, p0, Lcom/google/android/gms/cast/internal/zzaq;->f:Lcom/google/android/gms/cast/MediaStatus;

    .line 10
    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object v4, p0, Lcom/google/android/gms/cast/internal/zzaq;->g:Ljava/lang/Long;

    .line 15
    .line 16
    if-eqz v4, :cond_3

    .line 17
    .line 18
    const-wide v5, 0x3e800000000L

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v4, v0}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzaq;->f:Lcom/google/android/gms/cast/MediaStatus;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getLiveSeekableRange()Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzaq;->zzk()J

    .line 46
    .line 47
    .line 48
    move-result-wide v2

    .line 49
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 50
    .line 51
    .line 52
    move-result-wide v0

    .line 53
    return-wide v0

    .line 54
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzaq;->zzo()J

    .line 55
    .line 56
    .line 57
    move-result-wide v5

    .line 58
    cmp-long v0, v5, v1

    .line 59
    .line 60
    if-ltz v0, :cond_2

    .line 61
    .line 62
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 63
    .line 64
    .line 65
    move-result-wide v0

    .line 66
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzaq;->zzo()J

    .line 67
    .line 68
    .line 69
    move-result-wide v2

    .line 70
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 71
    .line 72
    .line 73
    move-result-wide v0

    .line 74
    return-wide v0

    .line 75
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 76
    .line 77
    .line 78
    move-result-wide v0

    .line 79
    return-wide v0

    .line 80
    :cond_3
    iget-wide v4, p0, Lcom/google/android/gms/cast/internal/zzaq;->e:J

    .line 81
    .line 82
    cmp-long v4, v4, v1

    .line 83
    .line 84
    if-nez v4, :cond_4

    .line 85
    .line 86
    return-wide v1

    .line 87
    :cond_4
    invoke-virtual {v3}, Lcom/google/android/gms/cast/MediaStatus;->getPlaybackRate()D

    .line 88
    .line 89
    .line 90
    move-result-wide v8

    .line 91
    invoke-virtual {v3}, Lcom/google/android/gms/cast/MediaStatus;->getStreamPosition()J

    .line 92
    .line 93
    .line 94
    move-result-wide v6

    .line 95
    invoke-virtual {v3}, Lcom/google/android/gms/cast/MediaStatus;->getPlayerState()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    const-wide/16 v2, 0x0

    .line 100
    .line 101
    cmpl-double v2, v8, v2

    .line 102
    .line 103
    if-eqz v2, :cond_6

    .line 104
    .line 105
    const/4 v2, 0x2

    .line 106
    if-eq v1, v2, :cond_5

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getStreamDuration()J

    .line 110
    .line 111
    .line 112
    move-result-wide v10

    .line 113
    move-object v5, p0

    .line 114
    invoke-virtual/range {v5 .. v11}, Lcom/google/android/gms/cast/internal/zzaq;->a(JDJ)J

    .line 115
    .line 116
    .line 117
    move-result-wide v0

    .line 118
    return-wide v0

    .line 119
    :cond_6
    :goto_0
    return-wide v6

    .line 120
    :cond_7
    :goto_1
    return-wide v1
.end method

.method public final zzn()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/cast/internal/zzao;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzaq;->f:Lcom/google/android/gms/cast/MediaStatus;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->zzb()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0

    .line 10
    :cond_0
    new-instance v0, Lcom/google/android/gms/cast/internal/zzao;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/google/android/gms/cast/internal/zzao;-><init>()V

    .line 13
    .line 14
    .line 15
    throw v0
.end method

.method public final zzo()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzaq;->zzK()Lcom/google/android/gms/cast/MediaInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getStreamDuration()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0

    .line 12
    :cond_0
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    return-wide v0
.end method

.method public final zzp(Lcom/google/android/gms/cast/internal/zzas;Lcom/google/android/gms/cast/MediaLoadRequestData;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaLoadRequestData;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaLoadRequestData;->getQueueData()Lcom/google/android/gms/cast/MediaQueueData;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    const-string p2, "MediaInfo and MediaQueueData should not be both null"

    .line 17
    .line 18
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1

    .line 22
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaLoadRequestData;->toJson()Lorg/json/JSONObject;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    if-eqz p2, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzp;->zzd()J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    :try_start_0
    const-string v2, "requestId"

    .line 33
    .line 34
    invoke-virtual {p2, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 35
    .line 36
    .line 37
    const-string v2, "type"

    .line 38
    .line 39
    const-string v3, "LOAD"

    .line 40
    .line 41
    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    :catch_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    const/4 v2, 0x0

    .line 49
    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/google/android/gms/cast/internal/zzp;->zzg(Ljava/lang/String;JLjava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object p2, p0, Lcom/google/android/gms/cast/internal/zzaq;->j:Lcom/google/android/gms/cast/internal/zzau;

    .line 53
    .line 54
    invoke-virtual {p2, v0, v1, p1}, Lcom/google/android/gms/cast/internal/zzau;->zzb(JLcom/google/android/gms/cast/internal/zzas;)V

    .line 55
    .line 56
    .line 57
    return-wide v0

    .line 58
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 59
    .line 60
    const-string p2, "Failed to jsonify the load request due to malformed request"

    .line 61
    .line 62
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1
.end method

.method public final zzq(Lcom/google/android/gms/cast/internal/zzas;Lorg/json/JSONObject;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/cast/internal/zzao;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzp;->zzd()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    :try_start_0
    const-string v3, "requestId"

    .line 11
    .line 12
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 13
    .line 14
    .line 15
    const-string v3, "type"

    .line 16
    .line 17
    const-string v4, "PAUSE"

    .line 18
    .line 19
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    const-string v3, "mediaSessionId"

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzaq;->zzn()J

    .line 25
    .line 26
    .line 27
    move-result-wide v4

    .line 28
    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 29
    .line 30
    .line 31
    if-eqz p2, :cond_0

    .line 32
    .line 33
    const-string v3, "customData"

    .line 34
    .line 35
    invoke-virtual {v0, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    :catch_0
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, p2, v1, v2, v0}, Lcom/google/android/gms/cast/internal/zzp;->zzg(Ljava/lang/String;JLjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object p2, p0, Lcom/google/android/gms/cast/internal/zzaq;->k:Lcom/google/android/gms/cast/internal/zzau;

    .line 47
    .line 48
    invoke-virtual {p2, v1, v2, p1}, Lcom/google/android/gms/cast/internal/zzau;->zzb(JLcom/google/android/gms/cast/internal/zzas;)V

    .line 49
    .line 50
    .line 51
    return-wide v1
.end method

.method public final zzr(Lcom/google/android/gms/cast/internal/zzas;Lorg/json/JSONObject;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/cast/internal/zzao;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzp;->zzd()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    :try_start_0
    const-string v3, "requestId"

    .line 11
    .line 12
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 13
    .line 14
    .line 15
    const-string v3, "type"

    .line 16
    .line 17
    const-string v4, "PLAY"

    .line 18
    .line 19
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    const-string v3, "mediaSessionId"

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzaq;->zzn()J

    .line 25
    .line 26
    .line 27
    move-result-wide v4

    .line 28
    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 29
    .line 30
    .line 31
    if-eqz p2, :cond_0

    .line 32
    .line 33
    const-string v3, "customData"

    .line 34
    .line 35
    invoke-virtual {v0, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    :catch_0
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, p2, v1, v2, v0}, Lcom/google/android/gms/cast/internal/zzp;->zzg(Ljava/lang/String;JLjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object p2, p0, Lcom/google/android/gms/cast/internal/zzaq;->l:Lcom/google/android/gms/cast/internal/zzau;

    .line 47
    .line 48
    invoke-virtual {p2, v1, v2, p1}, Lcom/google/android/gms/cast/internal/zzau;->zzb(JLcom/google/android/gms/cast/internal/zzas;)V

    .line 49
    .line 50
    .line 51
    return-wide v1
.end method

.method public final zzu(Lcom/google/android/gms/cast/internal/zzas;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/cast/internal/zzao;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzp;->zzd()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    :try_start_0
    const-string v3, "requestId"

    .line 11
    .line 12
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 13
    .line 14
    .line 15
    const-string v3, "type"

    .line 16
    .line 17
    const-string v4, "QUEUE_GET_ITEM_IDS"

    .line 18
    .line 19
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    const-string v3, "mediaSessionId"

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzaq;->zzn()J

    .line 25
    .line 26
    .line 27
    move-result-wide v4

    .line 28
    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/cast/internal/zzp;->zzg(Ljava/lang/String;JLjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzaq;->s:Lcom/google/android/gms/cast/internal/zzau;

    .line 40
    .line 41
    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/cast/internal/zzau;->zzb(JLcom/google/android/gms/cast/internal/zzas;)V

    .line 42
    .line 43
    .line 44
    return-wide v1
.end method

.method public final zzv(Lcom/google/android/gms/cast/internal/zzas;[I)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/cast/internal/zzao;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzp;->zzd()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    :try_start_0
    const-string v3, "requestId"

    .line 11
    .line 12
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 13
    .line 14
    .line 15
    const-string v3, "type"

    .line 16
    .line 17
    const-string v4, "QUEUE_GET_ITEMS"

    .line 18
    .line 19
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    const-string v3, "mediaSessionId"

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzaq;->zzn()J

    .line 25
    .line 26
    .line 27
    move-result-wide v4

    .line 28
    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 29
    .line 30
    .line 31
    new-instance v3, Lorg/json/JSONArray;

    .line 32
    .line 33
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 34
    .line 35
    .line 36
    array-length v4, p2

    .line 37
    const/4 v5, 0x0

    .line 38
    :goto_0
    if-ge v5, v4, :cond_0

    .line 39
    .line 40
    aget v6, p2, v5

    .line 41
    .line 42
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 43
    .line 44
    .line 45
    add-int/lit8 v5, v5, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const-string p2, "itemIds"

    .line 49
    .line 50
    invoke-virtual {v0, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, p2, v1, v2, v0}, Lcom/google/android/gms/cast/internal/zzp;->zzg(Ljava/lang/String;JLjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object p2, p0, Lcom/google/android/gms/cast/internal/zzaq;->t:Lcom/google/android/gms/cast/internal/zzau;

    .line 62
    .line 63
    invoke-virtual {p2, v1, v2, p1}, Lcom/google/android/gms/cast/internal/zzau;->zzb(JLcom/google/android/gms/cast/internal/zzas;)V

    .line 64
    .line 65
    .line 66
    return-wide v1
.end method
