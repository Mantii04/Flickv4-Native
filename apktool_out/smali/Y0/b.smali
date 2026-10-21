.class public final LY0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ljava/util/regex/Pattern;

.field public static final e:Lcom/google/common/collect/ImmutableSet;

.field public static final f:Lcom/google/common/collect/ImmutableSet;

.field public static final g:Lcom/google/common/collect/ImmutableSet;

.field public static final h:Lcom/google/common/collect/ImmutableSet;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "\\s+"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, LY0/b;->d:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    const-string v0, "auto"

    .line 10
    .line 11
    const-string v1, "none"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, LY0/b;->e:Lcom/google/common/collect/ImmutableSet;

    .line 18
    .line 19
    const-string v0, "sesame"

    .line 20
    .line 21
    const-string v1, "circle"

    .line 22
    .line 23
    const-string v2, "dot"

    .line 24
    .line 25
    invoke-static {v2, v0, v1}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, LY0/b;->f:Lcom/google/common/collect/ImmutableSet;

    .line 30
    .line 31
    const-string v0, "filled"

    .line 32
    .line 33
    const-string v1, "open"

    .line 34
    .line 35
    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, LY0/b;->g:Lcom/google/common/collect/ImmutableSet;

    .line 40
    .line 41
    const-string v0, "before"

    .line 42
    .line 43
    const-string v1, "outside"

    .line 44
    .line 45
    const-string v2, "after"

    .line 46
    .line 47
    invoke-static {v2, v0, v1}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sput-object v0, LY0/b;->h:Lcom/google/common/collect/ImmutableSet;

    .line 52
    .line 53
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, LY0/b;->a:I

    .line 5
    .line 6
    iput p2, p0, LY0/b;->b:I

    .line 7
    .line 8
    iput p3, p0, LY0/b;->c:I

    .line 9
    .line 10
    return-void
.end method

.method public static parse(Ljava/lang/String;)LY0/b;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, LP3/a;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    sget-object v0, LY0/b;->d:Ljava/util/regex/Pattern;

    .line 21
    .line 22
    invoke-static {p0, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Lcom/google/common/collect/ImmutableSet;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    sget-object v0, LY0/b;->h:Lcom/google/common/collect/ImmutableSet;

    .line 31
    .line 32
    invoke-static {v0, p0}, LQ3/s0;->intersection(Ljava/util/Set;Ljava/util/Set;)LQ3/r0;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "outside"

    .line 37
    .line 38
    invoke-static {v0, v1}, LQ3/A;->getFirst(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    const v3, -0x5305c081

    .line 49
    .line 50
    .line 51
    const/4 v4, 0x2

    .line 52
    const/4 v5, 0x0

    .line 53
    const/4 v6, 0x1

    .line 54
    const/4 v7, -0x1

    .line 55
    if-eq v2, v3, :cond_4

    .line 56
    .line 57
    const v3, -0x41ecca5b

    .line 58
    .line 59
    .line 60
    if-eq v2, v3, :cond_3

    .line 61
    .line 62
    const v1, 0x58705dc

    .line 63
    .line 64
    .line 65
    if-eq v2, v1, :cond_2

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    const-string v1, "after"

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_5

    .line 75
    .line 76
    move v0, v5

    .line 77
    goto :goto_1

    .line 78
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_5

    .line 83
    .line 84
    move v0, v6

    .line 85
    goto :goto_1

    .line 86
    :cond_4
    const-string v1, "before"

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_5

    .line 93
    .line 94
    move v0, v4

    .line 95
    goto :goto_1

    .line 96
    :cond_5
    :goto_0
    move v0, v7

    .line 97
    :goto_1
    if-eqz v0, :cond_7

    .line 98
    .line 99
    if-eq v0, v6, :cond_6

    .line 100
    .line 101
    move v0, v6

    .line 102
    goto :goto_2

    .line 103
    :cond_6
    const/4 v0, -0x2

    .line 104
    goto :goto_2

    .line 105
    :cond_7
    move v0, v4

    .line 106
    :goto_2
    sget-object v1, LY0/b;->e:Lcom/google/common/collect/ImmutableSet;

    .line 107
    .line 108
    invoke-static {v1, p0}, LQ3/s0;->intersection(Ljava/util/Set;Ljava/util/Set;)LQ3/r0;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    check-cast v1, LQ3/n0;

    .line 113
    .line 114
    invoke-virtual {v1}, LQ3/n0;->isEmpty()Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-nez v2, :cond_b

    .line 119
    .line 120
    invoke-virtual {v1}, LQ3/n0;->iterator()Ljava/util/Iterator;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    check-cast p0, Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    const v2, 0x2dddaf

    .line 135
    .line 136
    .line 137
    if-eq v1, v2, :cond_9

    .line 138
    .line 139
    const v2, 0x33af38

    .line 140
    .line 141
    .line 142
    if-eq v1, v2, :cond_8

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_8
    const-string v1, "none"

    .line 146
    .line 147
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result p0

    .line 151
    if-eqz p0, :cond_a

    .line 152
    .line 153
    move v7, v5

    .line 154
    goto :goto_3

    .line 155
    :cond_9
    const-string v1, "auto"

    .line 156
    .line 157
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result p0

    .line 161
    :cond_a
    :goto_3
    new-instance p0, LY0/b;

    .line 162
    .line 163
    invoke-direct {p0, v7, v5, v0}, LY0/b;-><init>(III)V

    .line 164
    .line 165
    .line 166
    return-object p0

    .line 167
    :cond_b
    sget-object v1, LY0/b;->g:Lcom/google/common/collect/ImmutableSet;

    .line 168
    .line 169
    invoke-static {v1, p0}, LQ3/s0;->intersection(Ljava/util/Set;Ljava/util/Set;)LQ3/r0;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    sget-object v2, LY0/b;->f:Lcom/google/common/collect/ImmutableSet;

    .line 174
    .line 175
    invoke-static {v2, p0}, LQ3/s0;->intersection(Ljava/util/Set;Ljava/util/Set;)LQ3/r0;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    check-cast v1, LQ3/n0;

    .line 180
    .line 181
    invoke-virtual {v1}, LQ3/n0;->isEmpty()Z

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    if-eqz v2, :cond_c

    .line 186
    .line 187
    move-object v2, p0

    .line 188
    check-cast v2, LQ3/n0;

    .line 189
    .line 190
    invoke-virtual {v2}, LQ3/n0;->isEmpty()Z

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    if-eqz v2, :cond_c

    .line 195
    .line 196
    new-instance p0, LY0/b;

    .line 197
    .line 198
    invoke-direct {p0, v7, v5, v0}, LY0/b;-><init>(III)V

    .line 199
    .line 200
    .line 201
    return-object p0

    .line 202
    :cond_c
    const-string v2, "filled"

    .line 203
    .line 204
    invoke-static {v1, v2}, LQ3/A;->getFirst(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    check-cast v1, Ljava/lang/String;

    .line 209
    .line 210
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    const v8, -0x4bf7529e

    .line 215
    .line 216
    .line 217
    if-eq v3, v8, :cond_e

    .line 218
    .line 219
    const v2, 0x34264a

    .line 220
    .line 221
    .line 222
    if-eq v3, v2, :cond_d

    .line 223
    .line 224
    goto :goto_4

    .line 225
    :cond_d
    const-string v2, "open"

    .line 226
    .line 227
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v1

    .line 231
    if-eqz v1, :cond_f

    .line 232
    .line 233
    move v1, v4

    .line 234
    goto :goto_5

    .line 235
    :cond_e
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    :cond_f
    :goto_4
    move v1, v6

    .line 240
    :goto_5
    const-string v2, "circle"

    .line 241
    .line 242
    invoke-static {p0, v2}, LQ3/A;->getFirst(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object p0

    .line 246
    check-cast p0, Ljava/lang/String;

    .line 247
    .line 248
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 249
    .line 250
    .line 251
    move-result v3

    .line 252
    const v8, -0x51134330

    .line 253
    .line 254
    .line 255
    if-eq v3, v8, :cond_12

    .line 256
    .line 257
    const v2, -0x35fdaa48    # -2135406.0f

    .line 258
    .line 259
    .line 260
    if-eq v3, v2, :cond_11

    .line 261
    .line 262
    const v2, 0x18549

    .line 263
    .line 264
    .line 265
    if-eq v3, v2, :cond_10

    .line 266
    .line 267
    goto :goto_6

    .line 268
    :cond_10
    const-string v2, "dot"

    .line 269
    .line 270
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result p0

    .line 274
    if-eqz p0, :cond_13

    .line 275
    .line 276
    goto :goto_7

    .line 277
    :cond_11
    const-string v2, "sesame"

    .line 278
    .line 279
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result p0

    .line 283
    if-eqz p0, :cond_13

    .line 284
    .line 285
    move v5, v6

    .line 286
    goto :goto_7

    .line 287
    :cond_12
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result p0

    .line 291
    if-eqz p0, :cond_13

    .line 292
    .line 293
    move v5, v4

    .line 294
    goto :goto_7

    .line 295
    :cond_13
    :goto_6
    move v5, v7

    .line 296
    :goto_7
    if-eqz v5, :cond_15

    .line 297
    .line 298
    if-eq v5, v6, :cond_14

    .line 299
    .line 300
    move v4, v6

    .line 301
    goto :goto_8

    .line 302
    :cond_14
    const/4 v4, 0x3

    .line 303
    :cond_15
    :goto_8
    new-instance p0, LY0/b;

    .line 304
    .line 305
    invoke-direct {p0, v4, v1, v0}, LY0/b;-><init>(III)V

    .line 306
    .line 307
    .line 308
    return-object p0
.end method
