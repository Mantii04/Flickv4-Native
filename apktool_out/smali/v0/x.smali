.class public final Lv0/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv0/I;


# static fields
.field public static final q:[I

.field public static final r:Lv0/w;

.field public static final s:Lv0/w;


# instance fields
.field public b:I

.field public e:Lcom/google/common/collect/ImmutableList;

.field public f:Z

.field public j:LS0/q;

.field public m:I

.field public n:I

.field public p:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/16 v0, 0x15

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    const/16 v2, 0xb

    .line 6
    .line 7
    new-array v0, v0, [I

    .line 8
    .line 9
    fill-array-data v0, :array_0

    .line 10
    .line 11
    .line 12
    sput-object v0, Lv0/x;->q:[I

    .line 13
    .line 14
    new-instance v0, Lv0/w;

    .line 15
    .line 16
    new-instance v3, Landroidx/media3/exoplayer/source/chunk/a;

    .line 17
    .line 18
    invoke-direct {v3, v1}, Landroidx/media3/exoplayer/source/chunk/a;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v3}, Lv0/w;-><init>(Lv0/v;)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lv0/x;->r:Lv0/w;

    .line 25
    .line 26
    new-instance v0, Lv0/w;

    .line 27
    .line 28
    new-instance v1, Landroidx/media3/exoplayer/source/chunk/a;

    .line 29
    .line 30
    invoke-direct {v1, v2}, Landroidx/media3/exoplayer/source/chunk/a;-><init>(I)V

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, v1}, Lv0/w;-><init>(Lv0/v;)V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lv0/x;->s:Lv0/w;

    .line 37
    .line 38
    return-void

    .line 39
    :array_0
    .array-data 4
        0x5
        0x4
        0xc
        0x8
        0x3
        0xa
        0x9
        0xb
        0x6
        0x2
        0x0
        0x1
        0x7
        0x10
        0xf
        0xe
        0x11
        0x12
        0x13
        0x14
        0x15
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, LS0/e;

    .line 5
    .line 6
    invoke-direct {v0}, LS0/e;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lv0/x;->j:LS0/q;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lv0/x;->f:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(ILjava/util/ArrayList;)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    goto :goto_0

    .line 7
    :pswitch_1
    new-instance p1, Ly0/a;

    .line 8
    .line 9
    invoke-direct {p1}, Ly0/a;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_2
    new-instance p1, LC0/b;

    .line 17
    .line 18
    iget v0, p0, Lv0/x;->p:I

    .line 19
    .line 20
    invoke-direct {p1, v0}, LC0/b;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_3
    new-instance p1, Lz0/a;

    .line 28
    .line 29
    invoke-direct {p1}, Lz0/a;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_4
    new-instance p1, Le1/a;

    .line 37
    .line 38
    invoke-direct {p1}, Le1/a;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_5
    new-instance p1, LR0/a;

    .line 46
    .line 47
    invoke-direct {p1}, LR0/a;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :pswitch_6
    new-instance p1, Lx0/d;

    .line 55
    .line 56
    iget-boolean v1, p0, Lv0/x;->f:Z

    .line 57
    .line 58
    xor-int/2addr v0, v1

    .line 59
    iget-object v1, p0, Lv0/x;->j:LS0/q;

    .line 60
    .line 61
    invoke-direct {p1, v0, v1}, Lx0/d;-><init>(ILS0/q;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :pswitch_7
    sget-object p1, Lv0/x;->s:Lv0/w;

    .line 69
    .line 70
    new-array v0, v1, [Ljava/lang/Object;

    .line 71
    .line 72
    invoke-virtual {p1, v0}, Lv0/w;->getExtractor([Ljava/lang/Object;)Lv0/C;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-eqz p1, :cond_0

    .line 77
    .line 78
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    :cond_0
    :goto_0
    return-void

    .line 82
    :pswitch_8
    new-instance p1, LD0/a;

    .line 83
    .line 84
    iget v0, p0, Lv0/x;->n:I

    .line 85
    .line 86
    invoke-direct {p1, v0}, LD0/a;-><init>(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :pswitch_9
    new-instance p1, Ld1/d;

    .line 94
    .line 95
    invoke-direct {p1}, Ld1/d;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :pswitch_a
    iget-object p1, p0, Lv0/x;->e:Lcom/google/common/collect/ImmutableList;

    .line 103
    .line 104
    if-nez p1, :cond_1

    .line 105
    .line 106
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    iput-object p1, p0, Lv0/x;->e:Lcom/google/common/collect/ImmutableList;

    .line 111
    .line 112
    :cond_1
    new-instance v2, Lc1/S;

    .line 113
    .line 114
    iget-boolean p1, p0, Lv0/x;->f:Z

    .line 115
    .line 116
    xor-int/lit8 v4, p1, 0x1

    .line 117
    .line 118
    iget-object v5, p0, Lv0/x;->j:LS0/q;

    .line 119
    .line 120
    new-instance v6, Landroidx/media3/common/util/TimestampAdjuster;

    .line 121
    .line 122
    const-wide/16 v7, 0x0

    .line 123
    .line 124
    invoke-direct {v6, v7, v8}, Landroidx/media3/common/util/TimestampAdjuster;-><init>(J)V

    .line 125
    .line 126
    .line 127
    new-instance v7, Lc1/g;

    .line 128
    .line 129
    iget-object p1, p0, Lv0/x;->e:Lcom/google/common/collect/ImmutableList;

    .line 130
    .line 131
    invoke-direct {v7, v1, p1}, Lc1/g;-><init>(ILjava/util/List;)V

    .line 132
    .line 133
    .line 134
    const v8, 0x1b8a0

    .line 135
    .line 136
    .line 137
    const/4 v3, 0x1

    .line 138
    invoke-direct/range {v2 .. v8}, Lc1/S;-><init>(IILS0/q;Landroidx/media3/common/util/TimestampAdjuster;Lc1/V;I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :pswitch_b
    new-instance p1, Lc1/I;

    .line 146
    .line 147
    invoke-direct {p1}, Lc1/I;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :pswitch_c
    new-instance p1, LQ0/e;

    .line 155
    .line 156
    invoke-direct {p1}, LQ0/e;-><init>()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :pswitch_d
    new-instance p1, LP0/u;

    .line 164
    .line 165
    iget-object v0, p0, Lv0/x;->j:LS0/q;

    .line 166
    .line 167
    iget v2, p0, Lv0/x;->m:I

    .line 168
    .line 169
    invoke-static {v2}, LP0/u;->codecsToParseWithinGopSampleDependenciesAsFlags(I)I

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    iget-boolean v3, p0, Lv0/x;->f:Z

    .line 174
    .line 175
    if-eqz v3, :cond_2

    .line 176
    .line 177
    move v3, v1

    .line 178
    goto :goto_1

    .line 179
    :cond_2
    const/16 v3, 0x20

    .line 180
    .line 181
    :goto_1
    or-int/2addr v2, v3

    .line 182
    invoke-direct {p1, v0, v2}, LP0/u;-><init>(LS0/q;I)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    new-instance p1, LP0/B;

    .line 189
    .line 190
    iget-object v0, p0, Lv0/x;->j:LS0/q;

    .line 191
    .line 192
    iget v2, p0, Lv0/x;->b:I

    .line 193
    .line 194
    iget v3, p0, Lv0/x;->m:I

    .line 195
    .line 196
    invoke-static {v3}, LP0/B;->codecsToParseWithinGopSampleDependenciesAsFlags(I)I

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    or-int/2addr v2, v3

    .line 201
    iget-boolean v3, p0, Lv0/x;->f:Z

    .line 202
    .line 203
    if-eqz v3, :cond_3

    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_3
    const/16 v1, 0x10

    .line 207
    .line 208
    :goto_2
    or-int/2addr v1, v2

    .line 209
    invoke-direct {p1, v0, v1}, LP0/B;-><init>(LS0/q;I)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    return-void

    .line 216
    :pswitch_e
    new-instance p1, LO0/e;

    .line 217
    .line 218
    invoke-direct {p1, v1}, LO0/e;-><init>(I)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    return-void

    .line 225
    :pswitch_f
    new-instance p1, LN0/h;

    .line 226
    .line 227
    iget-object v0, p0, Lv0/x;->j:LS0/q;

    .line 228
    .line 229
    iget-boolean v2, p0, Lv0/x;->f:Z

    .line 230
    .line 231
    if-eqz v2, :cond_4

    .line 232
    .line 233
    goto :goto_3

    .line 234
    :cond_4
    const/4 v1, 0x2

    .line 235
    :goto_3
    invoke-direct {p1, v0, v1}, LN0/h;-><init>(LS0/q;I)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    return-void

    .line 242
    :pswitch_10
    new-instance p1, LB0/b;

    .line 243
    .line 244
    invoke-direct {p1}, LB0/b;-><init>()V

    .line 245
    .line 246
    .line 247
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    return-void

    .line 251
    :pswitch_11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    new-array v0, v0, [Ljava/lang/Object;

    .line 256
    .line 257
    aput-object p1, v0, v1

    .line 258
    .line 259
    sget-object p1, Lv0/x;->r:Lv0/w;

    .line 260
    .line 261
    invoke-virtual {p1, v0}, Lv0/w;->getExtractor([Ljava/lang/Object;)Lv0/C;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    if-eqz p1, :cond_5

    .line 266
    .line 267
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    return-void

    .line 271
    :cond_5
    new-instance p1, LA0/d;

    .line 272
    .line 273
    invoke-direct {p1, v1}, LA0/d;-><init>(I)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    return-void

    .line 280
    :pswitch_12
    new-instance p1, Lw0/a;

    .line 281
    .line 282
    invoke-direct {p1, v1}, Lw0/a;-><init>(I)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    return-void

    .line 289
    :pswitch_13
    new-instance p1, Lc1/e;

    .line 290
    .line 291
    invoke-direct {p1, v1}, Lc1/e;-><init>(I)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    return-void

    .line 298
    :pswitch_14
    new-instance p1, Lc1/c;

    .line 299
    .line 300
    invoke-direct {p1}, Lc1/c;-><init>()V

    .line 301
    .line 302
    .line 303
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    return-void

    .line 307
    :pswitch_15
    new-instance p1, Lc1/a;

    .line 308
    .line 309
    invoke-direct {p1}, Lc1/a;-><init>()V

    .line 310
    .line 311
    .line 312
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    return-void

    .line 316
    nop

    .line 317
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized createExtractors()[Lv0/C;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0, v1}, Lv0/x;->createExtractors(Landroid/net/Uri;Ljava/util/Map;)[Lv0/C;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized createExtractors(Landroid/net/Uri;Ljava/util/Map;)[Lv0/C;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)[",
            "Lv0/C;"
        }
    .end annotation

    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lv0/x;->q:[I

    const/16 v2, 0x15

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-static {p2}, Landroidx/media3/common/FileTypes;->inferFileTypeFromResponseHeaders(Ljava/util/Map;)I

    move-result p2

    const/4 v3, -0x1

    if-eq p2, v3, :cond_0

    .line 4
    invoke-virtual {p0, p2, v0}, Lv0/x;->a(ILjava/util/ArrayList;)V

    .line 5
    :cond_0
    invoke-static {p1}, Landroidx/media3/common/FileTypes;->inferFileTypeFromUri(Landroid/net/Uri;)I

    move-result p1

    if-eq p1, v3, :cond_1

    if-eq p1, p2, :cond_1

    .line 6
    invoke-virtual {p0, p1, v0}, Lv0/x;->a(ILjava/util/ArrayList;)V

    :cond_1
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    .line 7
    aget v5, v1, v4

    if-eq v5, p2, :cond_2

    if-eq v5, p1, :cond_2

    .line 8
    invoke-virtual {p0, v5, v0}, Lv0/x;->a(ILjava/util/ArrayList;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 9
    :cond_3
    new-array p1, v3, [Lv0/C;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lv0/C;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public bridge synthetic experimentalSetCodecsToParseWithinGopSampleDependencies(I)Lv0/I;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lv0/x;->experimentalSetCodecsToParseWithinGopSampleDependencies(I)Lv0/x;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized experimentalSetCodecsToParseWithinGopSampleDependencies(I)Lv0/x;
    .locals 0

    monitor-enter p0

    .line 2
    :try_start_0
    iput p1, p0, Lv0/x;->m:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public bridge synthetic experimentalSetTextTrackTranscodingEnabled(Z)Lv0/I;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lv0/x;->experimentalSetTextTrackTranscodingEnabled(Z)Lv0/x;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized experimentalSetTextTrackTranscodingEnabled(Z)Lv0/x;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 2
    :try_start_0
    iput-boolean p1, p0, Lv0/x;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setHeifExtractorFlags(I)Lv0/x;
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput p1, p0, Lv0/x;->p:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object p0

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw p1
.end method

.method public declared-synchronized setJpegExtractorFlags(I)Lv0/x;
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput p1, p0, Lv0/x;->n:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object p0

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw p1
.end method

.method public declared-synchronized setMp4ExtractorFlags(I)Lv0/x;
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput p1, p0, Lv0/x;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object p0

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw p1
.end method

.method public bridge synthetic setSubtitleParserFactory(LS0/q;)Lv0/I;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lv0/x;->setSubtitleParserFactory(LS0/q;)Lv0/x;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized setSubtitleParserFactory(LS0/q;)Lv0/x;
    .locals 0

    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lv0/x;->j:LS0/q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
