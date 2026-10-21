.class public final Ll6/W;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:[Ljava/lang/String;

.field public static final e:[Ljava/lang/String;

.field public static final f:Ljava/util/regex/Pattern;

.field public static final g:Ljava/util/regex/Pattern;


# instance fields
.field public a:Lk6/p;

.field public b:Ljava/lang/String;

.field public c:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const-string v0, "~"

    .line 2
    .line 3
    const-string v1, " "

    .line 4
    .line 5
    const-string v2, ","

    .line 6
    .line 7
    const-string v3, ">"

    .line 8
    .line 9
    const-string v4, "+"

    .line 10
    .line 11
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Ll6/W;->d:[Ljava/lang/String;

    .line 16
    .line 17
    const-string v5, "*="

    .line 18
    .line 19
    const-string v6, "~="

    .line 20
    .line 21
    const-string v1, "="

    .line 22
    .line 23
    const-string v2, "!="

    .line 24
    .line 25
    const-string v3, "^="

    .line 26
    .line 27
    const-string v4, "$="

    .line 28
    .line 29
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Ll6/W;->e:[Ljava/lang/String;

    .line 34
    .line 35
    const-string v0, "(([+-])?(\\d+)?)n(\\s*([+-])?\\s*\\d+)?"

    .line 36
    .line 37
    const/4 v1, 0x2

    .line 38
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sput-object v0, Ll6/W;->f:Ljava/util/regex/Pattern;

    .line 43
    .line 44
    const-string v0, "([+-])?(\\d+)"

    .line 45
    .line 46
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sput-object v0, Ll6/W;->g:Ljava/util/regex/Pattern;

    .line 51
    .line 52
    return-void
.end method

.method public static parse(Ljava/lang/String;)Ll6/S;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ll6/W;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v1, v0, Ll6/W;->c:Ljava/util/ArrayList;

    .line 12
    .line 13
    iput-object p0, v0, Ll6/W;->b:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v1, Lk6/p;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lk6/p;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iput-object v1, v0, Ll6/W;->a:Lk6/p;

    .line 21
    .line 22
    invoke-virtual {v0}, Ll6/W;->g()Ll6/S;

    .line 23
    .line 24
    .line 25
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    return-object p0

    .line 27
    :catch_0
    move-exception p0

    .line 28
    new-instance v0, Lorg/jsoup/select/Selector$SelectorParseException;

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const/4 v1, 0x0

    .line 35
    new-array v1, v1, [Ljava/lang/Object;

    .line 36
    .line 37
    invoke-direct {v0, p0, v1}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    throw v0
.end method


# virtual methods
.method public final a(C)V
    .locals 10

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    iget-object v3, p0, Ll6/W;->a:Lk6/p;

    .line 5
    .line 6
    invoke-virtual {v3}, Lk6/p;->consumeWhitespace()Z

    .line 7
    .line 8
    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-virtual {v3}, Lk6/p;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    if-nez v5, :cond_3

    .line 19
    .line 20
    const-string v5, "("

    .line 21
    .line 22
    invoke-virtual {v3, v5}, Lk6/p;->matches(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    if-eqz v6, :cond_0

    .line 27
    .line 28
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const/16 v5, 0x28

    .line 32
    .line 33
    const/16 v6, 0x29

    .line 34
    .line 35
    invoke-virtual {v3, v5, v6}, Lk6/p;->chompBalanced(CC)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v5, ")"

    .line 43
    .line 44
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const-string v5, "["

    .line 49
    .line 50
    invoke-virtual {v3, v5}, Lk6/p;->matches(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    if-eqz v6, :cond_1

    .line 55
    .line 56
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const/16 v5, 0x5b

    .line 60
    .line 61
    const/16 v6, 0x5d

    .line 62
    .line 63
    invoke-virtual {v3, v5, v6}, Lk6/p;->chompBalanced(CC)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v5, "]"

    .line 71
    .line 72
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    sget-object v5, Ll6/W;->d:[Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v3, v5}, Lk6/p;->matchesAny([Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    if-eqz v5, :cond_2

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    invoke-virtual {v3}, Lk6/p;->consume()C

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-static {v3}, Ll6/W;->parse(Ljava/lang/String;)Ll6/S;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    iget-object v4, p0, Ll6/W;->c:Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    const/16 v6, 0x2c

    .line 108
    .line 109
    if-ne v5, v1, :cond_6

    .line 110
    .line 111
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    check-cast v5, Ll6/S;

    .line 116
    .line 117
    instance-of v7, v5, Ll6/e;

    .line 118
    .line 119
    if-eqz v7, :cond_5

    .line 120
    .line 121
    if-eq p1, v6, :cond_5

    .line 122
    .line 123
    move-object v7, v5

    .line 124
    check-cast v7, Ll6/e;

    .line 125
    .line 126
    iget v8, v7, Ll6/f;->b:I

    .line 127
    .line 128
    if-lez v8, :cond_4

    .line 129
    .line 130
    iget-object v7, v7, Ll6/f;->a:Ljava/util/ArrayList;

    .line 131
    .line 132
    sub-int/2addr v8, v1

    .line 133
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    check-cast v7, Ll6/S;

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_4
    const/4 v7, 0x0

    .line 141
    :goto_2
    move-object v8, v7

    .line 142
    move-object v7, v5

    .line 143
    move-object v5, v8

    .line 144
    move v8, v1

    .line 145
    goto :goto_4

    .line 146
    :cond_5
    :goto_3
    move v8, v2

    .line 147
    move-object v7, v5

    .line 148
    goto :goto_4

    .line 149
    :cond_6
    new-instance v5, Ll6/d;

    .line 150
    .line 151
    invoke-direct {v5, v4}, Ll6/d;-><init>(Ljava/util/List;)V

    .line 152
    .line 153
    .line 154
    goto :goto_3

    .line 155
    :goto_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 156
    .line 157
    .line 158
    const/16 v9, 0x3e

    .line 159
    .line 160
    if-ne p1, v9, :cond_7

    .line 161
    .line 162
    new-instance p1, Ll6/d;

    .line 163
    .line 164
    new-instance v6, Ll6/Z;

    .line 165
    .line 166
    invoke-direct {v6, v5}, Ll6/Z;-><init>(Ll6/S;)V

    .line 167
    .line 168
    .line 169
    new-array v0, v0, [Ll6/S;

    .line 170
    .line 171
    aput-object v3, v0, v2

    .line 172
    .line 173
    aput-object v6, v0, v1

    .line 174
    .line 175
    invoke-direct {p1, v0}, Ll6/d;-><init>([Ll6/S;)V

    .line 176
    .line 177
    .line 178
    goto :goto_5

    .line 179
    :cond_7
    const/16 v9, 0x20

    .line 180
    .line 181
    if-ne p1, v9, :cond_8

    .line 182
    .line 183
    new-instance p1, Ll6/d;

    .line 184
    .line 185
    new-instance v6, Ll6/c0;

    .line 186
    .line 187
    invoke-direct {v6, v5}, Ll6/c0;-><init>(Ll6/S;)V

    .line 188
    .line 189
    .line 190
    new-array v0, v0, [Ll6/S;

    .line 191
    .line 192
    aput-object v3, v0, v2

    .line 193
    .line 194
    aput-object v6, v0, v1

    .line 195
    .line 196
    invoke-direct {p1, v0}, Ll6/d;-><init>([Ll6/S;)V

    .line 197
    .line 198
    .line 199
    goto :goto_5

    .line 200
    :cond_8
    const/16 v9, 0x2b

    .line 201
    .line 202
    if-ne p1, v9, :cond_9

    .line 203
    .line 204
    new-instance p1, Ll6/d;

    .line 205
    .line 206
    new-instance v6, Ll6/a0;

    .line 207
    .line 208
    invoke-direct {v6, v5}, Ll6/a0;-><init>(Ll6/S;)V

    .line 209
    .line 210
    .line 211
    new-array v0, v0, [Ll6/S;

    .line 212
    .line 213
    aput-object v3, v0, v2

    .line 214
    .line 215
    aput-object v6, v0, v1

    .line 216
    .line 217
    invoke-direct {p1, v0}, Ll6/d;-><init>([Ll6/S;)V

    .line 218
    .line 219
    .line 220
    goto :goto_5

    .line 221
    :cond_9
    const/16 v9, 0x7e

    .line 222
    .line 223
    if-ne p1, v9, :cond_a

    .line 224
    .line 225
    new-instance p1, Ll6/d;

    .line 226
    .line 227
    new-instance v6, Ll6/d0;

    .line 228
    .line 229
    invoke-direct {v6, v5}, Ll6/d0;-><init>(Ll6/S;)V

    .line 230
    .line 231
    .line 232
    new-array v0, v0, [Ll6/S;

    .line 233
    .line 234
    aput-object v3, v0, v2

    .line 235
    .line 236
    aput-object v6, v0, v1

    .line 237
    .line 238
    invoke-direct {p1, v0}, Ll6/d;-><init>([Ll6/S;)V

    .line 239
    .line 240
    .line 241
    goto :goto_5

    .line 242
    :cond_a
    if-ne p1, v6, :cond_d

    .line 243
    .line 244
    instance-of p1, v5, Ll6/e;

    .line 245
    .line 246
    if-eqz p1, :cond_b

    .line 247
    .line 248
    check-cast v5, Ll6/e;

    .line 249
    .line 250
    invoke-virtual {v5, v3}, Ll6/e;->add(Ll6/S;)V

    .line 251
    .line 252
    .line 253
    move-object p1, v5

    .line 254
    goto :goto_5

    .line 255
    :cond_b
    new-instance p1, Ll6/e;

    .line 256
    .line 257
    invoke-direct {p1}, Ll6/f;-><init>()V

    .line 258
    .line 259
    .line 260
    invoke-virtual {p1, v5}, Ll6/e;->add(Ll6/S;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {p1, v3}, Ll6/e;->add(Ll6/S;)V

    .line 264
    .line 265
    .line 266
    :goto_5
    if-eqz v8, :cond_c

    .line 267
    .line 268
    move-object v0, v7

    .line 269
    check-cast v0, Ll6/e;

    .line 270
    .line 271
    iget-object v2, v0, Ll6/f;->a:Ljava/util/ArrayList;

    .line 272
    .line 273
    iget v0, v0, Ll6/f;->b:I

    .line 274
    .line 275
    sub-int/2addr v0, v1

    .line 276
    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    goto :goto_6

    .line 280
    :cond_c
    move-object v7, p1

    .line 281
    :goto_6
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    return-void

    .line 285
    :cond_d
    new-instance v0, Lorg/jsoup/select/Selector$SelectorParseException;

    .line 286
    .line 287
    const-string v1, "Unknown combinator: "

    .line 288
    .line 289
    invoke-static {v1, p1}, LA/i;->h(Ljava/lang/String;C)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    new-array v1, v2, [Ljava/lang/Object;

    .line 294
    .line 295
    invoke-direct {v0, p1, v1}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    .line 297
    .line 298
    throw v0
.end method

.method public final b()I
    .locals 3

    .line 1
    iget-object v0, p0, Ll6/W;->a:Lk6/p;

    .line 2
    .line 3
    const-string v1, ")"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lk6/p;->chompTo(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lh6/j;->isNumeric(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const-string v2, "Index must be numeric"

    .line 18
    .line 19
    invoke-static {v1, v2}, Lh6/k;->isTrue(ZLjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    return v0
.end method

.method public final c(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, ":containsOwn"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v0, ":contains"

    .line 7
    .line 8
    :goto_0
    iget-object v1, p0, Ll6/W;->a:Lk6/p;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Lk6/p;->consume(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/16 v0, 0x28

    .line 14
    .line 15
    const/16 v2, 0x29

    .line 16
    .line 17
    invoke-virtual {v1, v0, v2}, Lk6/p;->chompBalanced(CC)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lk6/p;->unescape(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, ":contains(text) query must not be empty"

    .line 26
    .line 27
    invoke-static {v0, v1}, Lh6/k;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Ll6/W;->c:Ljava/util/ArrayList;

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    new-instance p1, Ll6/s;

    .line 35
    .line 36
    invoke-direct {p1, v0}, Ll6/s;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    new-instance p1, Ll6/t;

    .line 44
    .line 45
    invoke-direct {p1, v0}, Ll6/t;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final d(ZZ)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Ll6/W;->a:Lk6/p;

    .line 3
    .line 4
    const-string v2, ")"

    .line 5
    .line 6
    invoke-virtual {v1, v2}, Lk6/p;->chompTo(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Li6/b;->normalize(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    sget-object v2, Ll6/W;->f:Ljava/util/regex/Pattern;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    sget-object v3, Ll6/W;->g:Ljava/util/regex/Pattern;

    .line 21
    .line 22
    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const-string v4, "odd"

    .line 27
    .line 28
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    const/4 v5, 0x2

    .line 33
    const/4 v6, 0x1

    .line 34
    if-eqz v4, :cond_0

    .line 35
    .line 36
    move v0, v5

    .line 37
    move v1, v6

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const-string v4, "even"

    .line 40
    .line 41
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_1

    .line 46
    .line 47
    move v1, v0

    .line 48
    move v0, v5

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    const-string v5, ""

    .line 55
    .line 56
    const-string v7, "^\\+"

    .line 57
    .line 58
    if-eqz v4, :cond_4

    .line 59
    .line 60
    const/4 v1, 0x3

    .line 61
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    if-eqz v1, :cond_2

    .line 66
    .line 67
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1, v7, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    :cond_2
    const/4 v1, 0x4

    .line 80
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    if-eqz v3, :cond_3

    .line 85
    .line 86
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0, v7, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    :cond_3
    move v1, v0

    .line 99
    move v0, v6

    .line 100
    goto :goto_0

    .line 101
    :cond_4
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_8

    .line 106
    .line 107
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v1, v7, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    :goto_0
    iget-object v2, p0, Ll6/W;->c:Ljava/util/ArrayList;

    .line 120
    .line 121
    if-eqz p2, :cond_6

    .line 122
    .line 123
    if-eqz p1, :cond_5

    .line 124
    .line 125
    new-instance p1, Ll6/H;

    .line 126
    .line 127
    invoke-direct {p1, v0, v1}, Ll6/H;-><init>(II)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :cond_5
    new-instance p1, Ll6/I;

    .line 135
    .line 136
    invoke-direct {p1, v0, v1}, Ll6/I;-><init>(II)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :cond_6
    if-eqz p1, :cond_7

    .line 144
    .line 145
    new-instance p1, Ll6/G;

    .line 146
    .line 147
    invoke-direct {p1, v0, v1}, Ll6/G;-><init>(II)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :cond_7
    new-instance p1, Ll6/F;

    .line 155
    .line 156
    invoke-direct {p1, v0, v1}, Ll6/F;-><init>(II)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :cond_8
    new-instance p1, Lorg/jsoup/select/Selector$SelectorParseException;

    .line 164
    .line 165
    const-string p2, "Could not parse nth-index \'%s\': unexpected format"

    .line 166
    .line 167
    new-array v2, v6, [Ljava/lang/Object;

    .line 168
    .line 169
    aput-object v1, v2, v0

    .line 170
    .line 171
    invoke-direct {p1, p2, v2}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    throw p1
.end method

.method public final e()V
    .locals 10

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    iget-object v3, p0, Ll6/W;->a:Lk6/p;

    .line 5
    .line 6
    const-string v4, "#"

    .line 7
    .line 8
    invoke-virtual {v3, v4}, Lk6/p;->matchChomp(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    iget-object v5, p0, Ll6/W;->c:Ljava/util/ArrayList;

    .line 13
    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    invoke-virtual {v3}, Lk6/p;->consumeCssIdentifier()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lh6/k;->notEmpty(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Ll6/v;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Ll6/v;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    const-string v4, "."

    .line 33
    .line 34
    invoke-virtual {v3, v4}, Lk6/p;->matchChomp(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    invoke-virtual {v3}, Lk6/p;->consumeCssIdentifier()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Lh6/k;->notEmpty(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    new-instance v1, Ll6/q;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-direct {v1, v0}, Ll6/q;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_1
    invoke-virtual {v3}, Lk6/p;->matchesWord()Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    const-string v6, "*|"

    .line 65
    .line 66
    if-nez v4, :cond_24

    .line 67
    .line 68
    invoke-virtual {v3, v6}, Lk6/p;->matches(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_2

    .line 73
    .line 74
    goto/16 :goto_0

    .line 75
    .line 76
    :cond_2
    const-string v4, "["

    .line 77
    .line 78
    invoke-virtual {v3, v4}, Lk6/p;->matches(Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    iget-object v6, p0, Ll6/W;->b:Ljava/lang/String;

    .line 83
    .line 84
    if-eqz v4, :cond_b

    .line 85
    .line 86
    new-instance v4, Lk6/p;

    .line 87
    .line 88
    const/16 v7, 0x5b

    .line 89
    .line 90
    const/16 v8, 0x5d

    .line 91
    .line 92
    invoke-virtual {v3, v7, v8}, Lk6/p;->chompBalanced(CC)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-direct {v4, v3}, Lk6/p;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    sget-object v3, Ll6/W;->e:[Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v4, v3}, Lk6/p;->consumeToAny([Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-static {v3}, Lh6/k;->notEmpty(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4}, Lk6/p;->consumeWhitespace()Z

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4}, Lk6/p;->isEmpty()Z

    .line 112
    .line 113
    .line 114
    move-result v7

    .line 115
    if-eqz v7, :cond_4

    .line 116
    .line 117
    const-string v0, "^"

    .line 118
    .line 119
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_3

    .line 124
    .line 125
    new-instance v0, Ll6/j;

    .line 126
    .line 127
    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-direct {v0, v1}, Ll6/j;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :cond_3
    new-instance v0, Ll6/h;

    .line 139
    .line 140
    invoke-direct {v0, v3}, Ll6/h;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :cond_4
    const-string v7, "="

    .line 148
    .line 149
    invoke-virtual {v4, v7}, Lk6/p;->matchChomp(Ljava/lang/String;)Z

    .line 150
    .line 151
    .line 152
    move-result v7

    .line 153
    if-eqz v7, :cond_5

    .line 154
    .line 155
    new-instance v0, Ll6/k;

    .line 156
    .line 157
    invoke-virtual {v4}, Lk6/p;->remainder()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-direct {v0, v3, v1}, Ll6/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    return-void

    .line 168
    :cond_5
    const-string v7, "!="

    .line 169
    .line 170
    invoke-virtual {v4, v7}, Lk6/p;->matchChomp(Ljava/lang/String;)Z

    .line 171
    .line 172
    .line 173
    move-result v7

    .line 174
    if-eqz v7, :cond_6

    .line 175
    .line 176
    new-instance v0, Ll6/o;

    .line 177
    .line 178
    invoke-virtual {v4}, Lk6/p;->remainder()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-direct {v0, v3, v1}, Ll6/o;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    return-void

    .line 189
    :cond_6
    const-string v7, "^="

    .line 190
    .line 191
    invoke-virtual {v4, v7}, Lk6/p;->matchChomp(Ljava/lang/String;)Z

    .line 192
    .line 193
    .line 194
    move-result v7

    .line 195
    if-eqz v7, :cond_7

    .line 196
    .line 197
    new-instance v0, Ll6/p;

    .line 198
    .line 199
    invoke-virtual {v4}, Lk6/p;->remainder()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-direct {v0, v3, v1}, Ll6/p;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    return-void

    .line 210
    :cond_7
    const-string v7, "$="

    .line 211
    .line 212
    invoke-virtual {v4, v7}, Lk6/p;->matchChomp(Ljava/lang/String;)Z

    .line 213
    .line 214
    .line 215
    move-result v7

    .line 216
    if-eqz v7, :cond_8

    .line 217
    .line 218
    new-instance v0, Ll6/m;

    .line 219
    .line 220
    invoke-virtual {v4}, Lk6/p;->remainder()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-direct {v0, v3, v1}, Ll6/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    return-void

    .line 231
    :cond_8
    const-string v7, "*="

    .line 232
    .line 233
    invoke-virtual {v4, v7}, Lk6/p;->matchChomp(Ljava/lang/String;)Z

    .line 234
    .line 235
    .line 236
    move-result v7

    .line 237
    if-eqz v7, :cond_9

    .line 238
    .line 239
    new-instance v0, Ll6/l;

    .line 240
    .line 241
    invoke-virtual {v4}, Lk6/p;->remainder()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    invoke-direct {v0, v3, v1}, Ll6/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    return-void

    .line 252
    :cond_9
    const-string v7, "~="

    .line 253
    .line 254
    invoke-virtual {v4, v7}, Lk6/p;->matchChomp(Ljava/lang/String;)Z

    .line 255
    .line 256
    .line 257
    move-result v7

    .line 258
    if-eqz v7, :cond_a

    .line 259
    .line 260
    new-instance v0, Ll6/n;

    .line 261
    .line 262
    invoke-virtual {v4}, Lk6/p;->remainder()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    invoke-direct {v0, v3, v1}, Ll6/n;-><init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    return-void

    .line 277
    :cond_a
    new-instance v3, Lorg/jsoup/select/Selector$SelectorParseException;

    .line 278
    .line 279
    invoke-virtual {v4}, Lk6/p;->remainder()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v4

    .line 283
    new-array v0, v0, [Ljava/lang/Object;

    .line 284
    .line 285
    aput-object v6, v0, v1

    .line 286
    .line 287
    aput-object v4, v0, v2

    .line 288
    .line 289
    const-string v1, "Could not parse attribute query \'%s\': unexpected token at \'%s\'"

    .line 290
    .line 291
    invoke-direct {v3, v1, v0}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    throw v3

    .line 295
    :cond_b
    const-string v4, "*"

    .line 296
    .line 297
    invoke-virtual {v3, v4}, Lk6/p;->matchChomp(Ljava/lang/String;)Z

    .line 298
    .line 299
    .line 300
    move-result v4

    .line 301
    if-eqz v4, :cond_c

    .line 302
    .line 303
    new-instance v0, Ll6/g;

    .line 304
    .line 305
    invoke-direct {v0}, Ll6/g;-><init>()V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    return-void

    .line 312
    :cond_c
    const-string v4, ":lt("

    .line 313
    .line 314
    invoke-virtual {v3, v4}, Lk6/p;->matchChomp(Ljava/lang/String;)Z

    .line 315
    .line 316
    .line 317
    move-result v4

    .line 318
    if-eqz v4, :cond_d

    .line 319
    .line 320
    new-instance v0, Ll6/z;

    .line 321
    .line 322
    invoke-virtual {p0}, Ll6/W;->b()I

    .line 323
    .line 324
    .line 325
    move-result v1

    .line 326
    invoke-direct {v0, v1}, Ll6/z;-><init>(I)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    return-void

    .line 333
    :cond_d
    const-string v4, ":gt("

    .line 334
    .line 335
    invoke-virtual {v3, v4}, Lk6/p;->matchChomp(Ljava/lang/String;)Z

    .line 336
    .line 337
    .line 338
    move-result v4

    .line 339
    if-eqz v4, :cond_e

    .line 340
    .line 341
    new-instance v0, Ll6/y;

    .line 342
    .line 343
    invoke-virtual {p0}, Ll6/W;->b()I

    .line 344
    .line 345
    .line 346
    move-result v1

    .line 347
    invoke-direct {v0, v1}, Ll6/y;-><init>(I)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    return-void

    .line 354
    :cond_e
    const-string v4, ":eq("

    .line 355
    .line 356
    invoke-virtual {v3, v4}, Lk6/p;->matchChomp(Ljava/lang/String;)Z

    .line 357
    .line 358
    .line 359
    move-result v4

    .line 360
    if-eqz v4, :cond_f

    .line 361
    .line 362
    new-instance v0, Ll6/w;

    .line 363
    .line 364
    invoke-virtual {p0}, Ll6/W;->b()I

    .line 365
    .line 366
    .line 367
    move-result v1

    .line 368
    invoke-direct {v0, v1}, Ll6/w;-><init>(I)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    return-void

    .line 375
    :cond_f
    const-string v4, ":has("

    .line 376
    .line 377
    invoke-virtual {v3, v4}, Lk6/p;->matches(Ljava/lang/String;)Z

    .line 378
    .line 379
    .line 380
    move-result v4

    .line 381
    const/16 v7, 0x29

    .line 382
    .line 383
    const/16 v8, 0x28

    .line 384
    .line 385
    if-eqz v4, :cond_10

    .line 386
    .line 387
    const-string v0, ":has"

    .line 388
    .line 389
    invoke-virtual {v3, v0}, Lk6/p;->consume(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v3, v8, v7}, Lk6/p;->chompBalanced(CC)Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    const-string v1, ":has(el) subselect must not be empty"

    .line 397
    .line 398
    invoke-static {v0, v1}, Lh6/k;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    new-instance v1, Ll6/Y;

    .line 402
    .line 403
    invoke-static {v0}, Ll6/W;->parse(Ljava/lang/String;)Ll6/S;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    invoke-direct {v1, v0}, Ll6/Y;-><init>(Ll6/S;)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    return-void

    .line 414
    :cond_10
    const-string v4, ":contains("

    .line 415
    .line 416
    invoke-virtual {v3, v4}, Lk6/p;->matches(Ljava/lang/String;)Z

    .line 417
    .line 418
    .line 419
    move-result v4

    .line 420
    if-eqz v4, :cond_11

    .line 421
    .line 422
    invoke-virtual {p0, v1}, Ll6/W;->c(Z)V

    .line 423
    .line 424
    .line 425
    return-void

    .line 426
    :cond_11
    const-string v4, ":containsOwn("

    .line 427
    .line 428
    invoke-virtual {v3, v4}, Lk6/p;->matches(Ljava/lang/String;)Z

    .line 429
    .line 430
    .line 431
    move-result v4

    .line 432
    if-eqz v4, :cond_12

    .line 433
    .line 434
    invoke-virtual {p0, v2}, Ll6/W;->c(Z)V

    .line 435
    .line 436
    .line 437
    return-void

    .line 438
    :cond_12
    const-string v4, ":containsData("

    .line 439
    .line 440
    invoke-virtual {v3, v4}, Lk6/p;->matches(Ljava/lang/String;)Z

    .line 441
    .line 442
    .line 443
    move-result v4

    .line 444
    if-eqz v4, :cond_13

    .line 445
    .line 446
    const-string v0, ":containsData"

    .line 447
    .line 448
    invoke-virtual {v3, v0}, Lk6/p;->consume(Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v3, v8, v7}, Lk6/p;->chompBalanced(CC)Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    invoke-static {v0}, Lk6/p;->unescape(Ljava/lang/String;)Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    const-string v1, ":containsData(text) query must not be empty"

    .line 460
    .line 461
    invoke-static {v0, v1}, Lh6/k;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    new-instance v1, Ll6/r;

    .line 465
    .line 466
    invoke-direct {v1, v0}, Ll6/r;-><init>(Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    .line 471
    .line 472
    return-void

    .line 473
    :cond_13
    const-string v4, ":matches("

    .line 474
    .line 475
    invoke-virtual {v3, v4}, Lk6/p;->matches(Ljava/lang/String;)Z

    .line 476
    .line 477
    .line 478
    move-result v4

    .line 479
    if-eqz v4, :cond_14

    .line 480
    .line 481
    invoke-virtual {p0, v1}, Ll6/W;->f(Z)V

    .line 482
    .line 483
    .line 484
    return-void

    .line 485
    :cond_14
    const-string v4, ":matchesOwn("

    .line 486
    .line 487
    invoke-virtual {v3, v4}, Lk6/p;->matches(Ljava/lang/String;)Z

    .line 488
    .line 489
    .line 490
    move-result v4

    .line 491
    if-eqz v4, :cond_15

    .line 492
    .line 493
    invoke-virtual {p0, v2}, Ll6/W;->f(Z)V

    .line 494
    .line 495
    .line 496
    return-void

    .line 497
    :cond_15
    const-string v4, ":not("

    .line 498
    .line 499
    invoke-virtual {v3, v4}, Lk6/p;->matches(Ljava/lang/String;)Z

    .line 500
    .line 501
    .line 502
    move-result v4

    .line 503
    if-eqz v4, :cond_16

    .line 504
    .line 505
    const-string v0, ":not"

    .line 506
    .line 507
    invoke-virtual {v3, v0}, Lk6/p;->consume(Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v3, v8, v7}, Lk6/p;->chompBalanced(CC)Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v0

    .line 514
    const-string v1, ":not(selector) subselect must not be empty"

    .line 515
    .line 516
    invoke-static {v0, v1}, Lh6/k;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    new-instance v1, Ll6/b0;

    .line 520
    .line 521
    invoke-static {v0}, Ll6/W;->parse(Ljava/lang/String;)Ll6/S;

    .line 522
    .line 523
    .line 524
    move-result-object v0

    .line 525
    invoke-direct {v1, v0}, Ll6/b0;-><init>(Ll6/S;)V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    .line 530
    .line 531
    return-void

    .line 532
    :cond_16
    const-string v4, ":nth-child("

    .line 533
    .line 534
    invoke-virtual {v3, v4}, Lk6/p;->matchChomp(Ljava/lang/String;)Z

    .line 535
    .line 536
    .line 537
    move-result v4

    .line 538
    if-eqz v4, :cond_17

    .line 539
    .line 540
    invoke-virtual {p0, v1, v1}, Ll6/W;->d(ZZ)V

    .line 541
    .line 542
    .line 543
    return-void

    .line 544
    :cond_17
    const-string v4, ":nth-last-child("

    .line 545
    .line 546
    invoke-virtual {v3, v4}, Lk6/p;->matchChomp(Ljava/lang/String;)Z

    .line 547
    .line 548
    .line 549
    move-result v4

    .line 550
    if-eqz v4, :cond_18

    .line 551
    .line 552
    invoke-virtual {p0, v2, v1}, Ll6/W;->d(ZZ)V

    .line 553
    .line 554
    .line 555
    return-void

    .line 556
    :cond_18
    const-string v4, ":nth-of-type("

    .line 557
    .line 558
    invoke-virtual {v3, v4}, Lk6/p;->matchChomp(Ljava/lang/String;)Z

    .line 559
    .line 560
    .line 561
    move-result v4

    .line 562
    if-eqz v4, :cond_19

    .line 563
    .line 564
    invoke-virtual {p0, v1, v2}, Ll6/W;->d(ZZ)V

    .line 565
    .line 566
    .line 567
    return-void

    .line 568
    :cond_19
    const-string v4, ":nth-last-of-type("

    .line 569
    .line 570
    invoke-virtual {v3, v4}, Lk6/p;->matchChomp(Ljava/lang/String;)Z

    .line 571
    .line 572
    .line 573
    move-result v4

    .line 574
    if-eqz v4, :cond_1a

    .line 575
    .line 576
    invoke-virtual {p0, v2, v2}, Ll6/W;->d(ZZ)V

    .line 577
    .line 578
    .line 579
    return-void

    .line 580
    :cond_1a
    const-string v4, ":first-child"

    .line 581
    .line 582
    invoke-virtual {v3, v4}, Lk6/p;->matchChomp(Ljava/lang/String;)Z

    .line 583
    .line 584
    .line 585
    move-result v4

    .line 586
    if-eqz v4, :cond_1b

    .line 587
    .line 588
    new-instance v0, Ll6/B;

    .line 589
    .line 590
    invoke-direct {v0}, Ll6/B;-><init>()V

    .line 591
    .line 592
    .line 593
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    .line 595
    .line 596
    return-void

    .line 597
    :cond_1b
    const-string v4, ":last-child"

    .line 598
    .line 599
    invoke-virtual {v3, v4}, Lk6/p;->matchChomp(Ljava/lang/String;)Z

    .line 600
    .line 601
    .line 602
    move-result v4

    .line 603
    if-eqz v4, :cond_1c

    .line 604
    .line 605
    new-instance v0, Ll6/D;

    .line 606
    .line 607
    invoke-direct {v0}, Ll6/D;-><init>()V

    .line 608
    .line 609
    .line 610
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    .line 612
    .line 613
    return-void

    .line 614
    :cond_1c
    const-string v4, ":first-of-type"

    .line 615
    .line 616
    invoke-virtual {v3, v4}, Lk6/p;->matchChomp(Ljava/lang/String;)Z

    .line 617
    .line 618
    .line 619
    move-result v4

    .line 620
    if-eqz v4, :cond_1d

    .line 621
    .line 622
    new-instance v0, Ll6/C;

    .line 623
    .line 624
    invoke-direct {v0}, Ll6/C;-><init>()V

    .line 625
    .line 626
    .line 627
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    .line 629
    .line 630
    return-void

    .line 631
    :cond_1d
    const-string v4, ":last-of-type"

    .line 632
    .line 633
    invoke-virtual {v3, v4}, Lk6/p;->matchChomp(Ljava/lang/String;)Z

    .line 634
    .line 635
    .line 636
    move-result v4

    .line 637
    if-eqz v4, :cond_1e

    .line 638
    .line 639
    new-instance v0, Ll6/E;

    .line 640
    .line 641
    invoke-direct {v0}, Ll6/E;-><init>()V

    .line 642
    .line 643
    .line 644
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    .line 646
    .line 647
    return-void

    .line 648
    :cond_1e
    const-string v4, ":only-child"

    .line 649
    .line 650
    invoke-virtual {v3, v4}, Lk6/p;->matchChomp(Ljava/lang/String;)Z

    .line 651
    .line 652
    .line 653
    move-result v4

    .line 654
    if-eqz v4, :cond_1f

    .line 655
    .line 656
    new-instance v0, Ll6/J;

    .line 657
    .line 658
    invoke-direct {v0}, Ll6/J;-><init>()V

    .line 659
    .line 660
    .line 661
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 662
    .line 663
    .line 664
    return-void

    .line 665
    :cond_1f
    const-string v4, ":only-of-type"

    .line 666
    .line 667
    invoke-virtual {v3, v4}, Lk6/p;->matchChomp(Ljava/lang/String;)Z

    .line 668
    .line 669
    .line 670
    move-result v4

    .line 671
    if-eqz v4, :cond_20

    .line 672
    .line 673
    new-instance v0, Ll6/K;

    .line 674
    .line 675
    invoke-direct {v0}, Ll6/K;-><init>()V

    .line 676
    .line 677
    .line 678
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    .line 680
    .line 681
    return-void

    .line 682
    :cond_20
    const-string v4, ":empty"

    .line 683
    .line 684
    invoke-virtual {v3, v4}, Lk6/p;->matchChomp(Ljava/lang/String;)Z

    .line 685
    .line 686
    .line 687
    move-result v4

    .line 688
    if-eqz v4, :cond_21

    .line 689
    .line 690
    new-instance v0, Ll6/A;

    .line 691
    .line 692
    invoke-direct {v0}, Ll6/A;-><init>()V

    .line 693
    .line 694
    .line 695
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 696
    .line 697
    .line 698
    return-void

    .line 699
    :cond_21
    const-string v4, ":root"

    .line 700
    .line 701
    invoke-virtual {v3, v4}, Lk6/p;->matchChomp(Ljava/lang/String;)Z

    .line 702
    .line 703
    .line 704
    move-result v4

    .line 705
    if-eqz v4, :cond_22

    .line 706
    .line 707
    new-instance v0, Ll6/L;

    .line 708
    .line 709
    invoke-direct {v0}, Ll6/L;-><init>()V

    .line 710
    .line 711
    .line 712
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    .line 714
    .line 715
    return-void

    .line 716
    :cond_22
    const-string v4, ":matchText"

    .line 717
    .line 718
    invoke-virtual {v3, v4}, Lk6/p;->matchChomp(Ljava/lang/String;)Z

    .line 719
    .line 720
    .line 721
    move-result v4

    .line 722
    if-eqz v4, :cond_23

    .line 723
    .line 724
    new-instance v0, Ll6/M;

    .line 725
    .line 726
    invoke-direct {v0}, Ll6/M;-><init>()V

    .line 727
    .line 728
    .line 729
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 730
    .line 731
    .line 732
    return-void

    .line 733
    :cond_23
    new-instance v4, Lorg/jsoup/select/Selector$SelectorParseException;

    .line 734
    .line 735
    invoke-virtual {v3}, Lk6/p;->remainder()Ljava/lang/String;

    .line 736
    .line 737
    .line 738
    move-result-object v3

    .line 739
    new-array v0, v0, [Ljava/lang/Object;

    .line 740
    .line 741
    aput-object v6, v0, v1

    .line 742
    .line 743
    aput-object v3, v0, v2

    .line 744
    .line 745
    const-string v1, "Could not parse query \'%s\': unexpected token at \'%s\'"

    .line 746
    .line 747
    invoke-direct {v4, v1, v0}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 748
    .line 749
    .line 750
    throw v4

    .line 751
    :cond_24
    :goto_0
    invoke-virtual {v3}, Lk6/p;->consumeElementSelector()Ljava/lang/String;

    .line 752
    .line 753
    .line 754
    move-result-object v3

    .line 755
    invoke-static {v3}, Lh6/k;->notEmpty(Ljava/lang/String;)V

    .line 756
    .line 757
    .line 758
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 759
    .line 760
    .line 761
    move-result v4

    .line 762
    const-string v7, ":"

    .line 763
    .line 764
    if-eqz v4, :cond_26

    .line 765
    .line 766
    new-instance v4, Ll6/e;

    .line 767
    .line 768
    new-instance v8, Ll6/P;

    .line 769
    .line 770
    invoke-static {v3}, Li6/b;->normalize(Ljava/lang/String;)Ljava/lang/String;

    .line 771
    .line 772
    .line 773
    move-result-object v9

    .line 774
    invoke-direct {v8, v9}, Ll6/P;-><init>(Ljava/lang/String;)V

    .line 775
    .line 776
    .line 777
    new-instance v9, Ll6/Q;

    .line 778
    .line 779
    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 780
    .line 781
    .line 782
    move-result-object v3

    .line 783
    invoke-static {v3}, Li6/b;->normalize(Ljava/lang/String;)Ljava/lang/String;

    .line 784
    .line 785
    .line 786
    move-result-object v3

    .line 787
    invoke-direct {v9, v3}, Ll6/Q;-><init>(Ljava/lang/String;)V

    .line 788
    .line 789
    .line 790
    new-array v0, v0, [Ll6/S;

    .line 791
    .line 792
    aput-object v8, v0, v1

    .line 793
    .line 794
    aput-object v9, v0, v2

    .line 795
    .line 796
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 797
    .line 798
    .line 799
    move-result-object v0

    .line 800
    invoke-direct {v4}, Ll6/f;-><init>()V

    .line 801
    .line 802
    .line 803
    iget v1, v4, Ll6/f;->b:I

    .line 804
    .line 805
    iget-object v3, v4, Ll6/f;->a:Ljava/util/ArrayList;

    .line 806
    .line 807
    if-le v1, v2, :cond_25

    .line 808
    .line 809
    new-instance v1, Ll6/d;

    .line 810
    .line 811
    check-cast v0, Ljava/util/List;

    .line 812
    .line 813
    invoke-direct {v1, v0}, Ll6/d;-><init>(Ljava/util/List;)V

    .line 814
    .line 815
    .line 816
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 817
    .line 818
    .line 819
    goto :goto_1

    .line 820
    :cond_25
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 821
    .line 822
    .line 823
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 824
    .line 825
    .line 826
    move-result v0

    .line 827
    iput v0, v4, Ll6/f;->b:I

    .line 828
    .line 829
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 830
    .line 831
    .line 832
    return-void

    .line 833
    :cond_26
    const-string v0, "|"

    .line 834
    .line 835
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 836
    .line 837
    .line 838
    move-result v1

    .line 839
    if-eqz v1, :cond_27

    .line 840
    .line 841
    invoke-virtual {v3, v0, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 842
    .line 843
    .line 844
    move-result-object v3

    .line 845
    :cond_27
    new-instance v0, Ll6/P;

    .line 846
    .line 847
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 848
    .line 849
    .line 850
    move-result-object v1

    .line 851
    invoke-direct {v0, v1}, Ll6/P;-><init>(Ljava/lang/String;)V

    .line 852
    .line 853
    .line 854
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 855
    .line 856
    .line 857
    return-void
.end method

.method public final f(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, ":matchesOwn"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v0, ":matches"

    .line 7
    .line 8
    :goto_0
    iget-object v1, p0, Ll6/W;->a:Lk6/p;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Lk6/p;->consume(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/16 v0, 0x28

    .line 14
    .line 15
    const/16 v2, 0x29

    .line 16
    .line 17
    invoke-virtual {v1, v0, v2}, Lk6/p;->chompBalanced(CC)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, ":matches(regex) query must not be empty"

    .line 22
    .line 23
    invoke-static {v0, v1}, Lh6/k;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Ll6/W;->c:Ljava/util/ArrayList;

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    new-instance p1, Ll6/O;

    .line 31
    .line 32
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-direct {p1, v0}, Ll6/O;-><init>(Ljava/util/regex/Pattern;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    new-instance p1, Ll6/N;

    .line 44
    .line 45
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-direct {p1, v0}, Ll6/N;-><init>(Ljava/util/regex/Pattern;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final g()Ll6/S;
    .locals 5

    .line 1
    iget-object v0, p0, Ll6/W;->a:Lk6/p;

    .line 2
    .line 3
    invoke-virtual {v0}, Lk6/p;->consumeWhitespace()Z

    .line 4
    .line 5
    .line 6
    sget-object v1, Ll6/W;->d:[Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lk6/p;->matchesAny([Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    iget-object v3, p0, Ll6/W;->c:Ljava/util/ArrayList;

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    new-instance v2, Ll6/e0;

    .line 17
    .line 18
    invoke-direct {v2}, Ll6/S;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lk6/p;->consume()C

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {p0, v2}, Ll6/W;->a(C)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p0}, Ll6/W;->e()V

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-virtual {v0}, Lk6/p;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_3

    .line 40
    .line 41
    invoke-virtual {v0}, Lk6/p;->consumeWhitespace()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-virtual {v0, v1}, Lk6/p;->matchesAny([Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_1

    .line 50
    .line 51
    invoke-virtual {v0}, Lk6/p;->consume()C

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    invoke-virtual {p0, v2}, Ll6/W;->a(C)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    if-eqz v2, :cond_2

    .line 60
    .line 61
    const/16 v2, 0x20

    .line 62
    .line 63
    invoke-virtual {p0, v2}, Ll6/W;->a(C)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    invoke-virtual {p0}, Ll6/W;->e()V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    const/4 v1, 0x1

    .line 76
    if-ne v0, v1, :cond_4

    .line 77
    .line 78
    const/4 v0, 0x0

    .line 79
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Ll6/S;

    .line 84
    .line 85
    return-object v0

    .line 86
    :cond_4
    new-instance v0, Ll6/d;

    .line 87
    .line 88
    invoke-direct {v0, v3}, Ll6/d;-><init>(Ljava/util/List;)V

    .line 89
    .line 90
    .line 91
    return-object v0
.end method
