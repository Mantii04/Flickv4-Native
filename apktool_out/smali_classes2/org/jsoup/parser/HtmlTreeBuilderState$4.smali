.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$4;
.super Lorg/jsoup/parser/HtmlTreeBuilderState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/HtmlTreeBuilderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "InHead"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final e(Lk6/o;Lorg/jsoup/parser/a;)Z
    .locals 10

    .line 1
    invoke-static {p1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->b(Lk6/o;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast p1, Lk6/h;

    .line 9
    .line 10
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/a;->o(Lk6/h;)V

    .line 11
    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    iget-object v0, p1, Lk6/o;->a:Lorg/jsoup/parser/Token$TokenType;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v0, :cond_10

    .line 22
    .line 23
    const-string v3, "head"

    .line 24
    .line 25
    const-string v4, "html"

    .line 26
    .line 27
    if-eq v0, v1, :cond_5

    .line 28
    .line 29
    const/4 v5, 0x2

    .line 30
    if-eq v0, v5, :cond_2

    .line 31
    .line 32
    const/4 v2, 0x3

    .line 33
    if-eq v0, v2, :cond_1

    .line 34
    .line 35
    invoke-virtual {p2, v3}, Lorg/jsoup/parser/c;->processEndTag(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/a;->process(Lk6/o;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    return p1

    .line 43
    :cond_1
    check-cast p1, Lk6/i;

    .line 44
    .line 45
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/a;->p(Lk6/i;)V

    .line 46
    .line 47
    .line 48
    return v1

    .line 49
    :cond_2
    move-object v0, p1

    .line 50
    check-cast v0, Lk6/l;

    .line 51
    .line 52
    iget-object v0, v0, Lk6/n;->c:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-eqz v5, :cond_3

    .line 59
    .line 60
    invoke-virtual {p2}, Lorg/jsoup/parser/a;->v()V

    .line 61
    .line 62
    .line 63
    sget-object p1, Lorg/jsoup/parser/HtmlTreeBuilderState;->n:Lorg/jsoup/parser/HtmlTreeBuilderState$6;

    .line 64
    .line 65
    iput-object p1, p2, Lorg/jsoup/parser/a;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 66
    .line 67
    return v1

    .line 68
    :cond_3
    const-string v1, "body"

    .line 69
    .line 70
    const-string v5, "br"

    .line 71
    .line 72
    filled-new-array {v1, v4, v5}, [Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-static {v0, v1}, Lh6/j;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_4

    .line 81
    .line 82
    invoke-virtual {p2, v3}, Lorg/jsoup/parser/c;->processEndTag(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/a;->process(Lk6/o;)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    return p1

    .line 90
    :cond_4
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 91
    .line 92
    .line 93
    return v2

    .line 94
    :cond_5
    move-object v0, p1

    .line 95
    check-cast v0, Lk6/m;

    .line 96
    .line 97
    iget-object v5, v0, Lk6/n;->c:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    if-eqz v4, :cond_6

    .line 104
    .line 105
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->p:Lorg/jsoup/parser/HtmlTreeBuilderState$7;

    .line 106
    .line 107
    invoke-virtual {v0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->e(Lk6/o;Lorg/jsoup/parser/a;)Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    return p1

    .line 112
    :cond_6
    const-string v4, "basefont"

    .line 113
    .line 114
    const-string v6, "bgsound"

    .line 115
    .line 116
    const-string v7, "base"

    .line 117
    .line 118
    const-string v8, "command"

    .line 119
    .line 120
    const-string v9, "link"

    .line 121
    .line 122
    filled-new-array {v7, v4, v6, v8, v9}, [Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-static {v5, v4}, Lh6/j;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    if-eqz v4, :cond_9

    .line 131
    .line 132
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/a;->q(Lk6/m;)Lorg/jsoup/nodes/b;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-eqz v0, :cond_8

    .line 141
    .line 142
    const-string v0, "href"

    .line 143
    .line 144
    invoke-virtual {p1, v0}, Lj6/p;->hasAttr(Ljava/lang/String;)Z

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-eqz v2, :cond_8

    .line 149
    .line 150
    iget-boolean v2, p2, Lorg/jsoup/parser/a;->m:Z

    .line 151
    .line 152
    if-eqz v2, :cond_7

    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_7
    invoke-virtual {p1, v0}, Lj6/p;->absUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-eqz v0, :cond_8

    .line 164
    .line 165
    iput-object p1, p2, Lorg/jsoup/parser/c;->e:Ljava/lang/String;

    .line 166
    .line 167
    iput-boolean v1, p2, Lorg/jsoup/parser/a;->m:Z

    .line 168
    .line 169
    iget-object p2, p2, Lorg/jsoup/parser/c;->c:Lj6/h;

    .line 170
    .line 171
    invoke-virtual {p2, p1}, Lj6/p;->setBaseUri(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    :cond_8
    :goto_0
    return v1

    .line 175
    :cond_9
    const-string v4, "meta"

    .line 176
    .line 177
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    if-eqz v4, :cond_a

    .line 182
    .line 183
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/a;->q(Lk6/m;)Lorg/jsoup/nodes/b;

    .line 184
    .line 185
    .line 186
    return v1

    .line 187
    :cond_a
    const-string v4, "title"

    .line 188
    .line 189
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v4

    .line 193
    sget-object v6, Lorg/jsoup/parser/HtmlTreeBuilderState;->q:Lorg/jsoup/parser/HtmlTreeBuilderState$8;

    .line 194
    .line 195
    if-eqz v4, :cond_b

    .line 196
    .line 197
    iget-object p1, p2, Lorg/jsoup/parser/c;->b:Lorg/jsoup/parser/b;

    .line 198
    .line 199
    sget-object v2, Lorg/jsoup/parser/TokeniserState;->f:Lorg/jsoup/parser/TokeniserState$3;

    .line 200
    .line 201
    iput-object v2, p1, Lorg/jsoup/parser/b;->c:Lorg/jsoup/parser/TokeniserState;

    .line 202
    .line 203
    iget-object p1, p2, Lorg/jsoup/parser/a;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 204
    .line 205
    iput-object p1, p2, Lorg/jsoup/parser/a;->l:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 206
    .line 207
    iput-object v6, p2, Lorg/jsoup/parser/a;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 208
    .line 209
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/a;->n(Lk6/m;)Lorg/jsoup/nodes/b;

    .line 210
    .line 211
    .line 212
    return v1

    .line 213
    :cond_b
    const-string v4, "noframes"

    .line 214
    .line 215
    const-string v7, "style"

    .line 216
    .line 217
    filled-new-array {v4, v7}, [Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    invoke-static {v5, v4}, Lh6/j;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 222
    .line 223
    .line 224
    move-result v4

    .line 225
    if-eqz v4, :cond_c

    .line 226
    .line 227
    invoke-static {v0, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState;->d(Lk6/m;Lorg/jsoup/parser/a;)V

    .line 228
    .line 229
    .line 230
    return v1

    .line 231
    :cond_c
    const-string v4, "noscript"

    .line 232
    .line 233
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v4

    .line 237
    if-eqz v4, :cond_d

    .line 238
    .line 239
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/a;->n(Lk6/m;)Lorg/jsoup/nodes/b;

    .line 240
    .line 241
    .line 242
    sget-object p1, Lorg/jsoup/parser/HtmlTreeBuilderState;->m:Lorg/jsoup/parser/HtmlTreeBuilderState$5;

    .line 243
    .line 244
    iput-object p1, p2, Lorg/jsoup/parser/a;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 245
    .line 246
    return v1

    .line 247
    :cond_d
    const-string v4, "script"

    .line 248
    .line 249
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v4

    .line 253
    if-eqz v4, :cond_e

    .line 254
    .line 255
    iget-object p1, p2, Lorg/jsoup/parser/c;->b:Lorg/jsoup/parser/b;

    .line 256
    .line 257
    sget-object v2, Lorg/jsoup/parser/TokeniserState;->n:Lorg/jsoup/parser/TokeniserState$6;

    .line 258
    .line 259
    iput-object v2, p1, Lorg/jsoup/parser/b;->c:Lorg/jsoup/parser/TokeniserState;

    .line 260
    .line 261
    iget-object p1, p2, Lorg/jsoup/parser/a;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 262
    .line 263
    iput-object p1, p2, Lorg/jsoup/parser/a;->l:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 264
    .line 265
    iput-object v6, p2, Lorg/jsoup/parser/a;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 266
    .line 267
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/a;->n(Lk6/m;)Lorg/jsoup/nodes/b;

    .line 268
    .line 269
    .line 270
    return v1

    .line 271
    :cond_e
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v0

    .line 275
    if-eqz v0, :cond_f

    .line 276
    .line 277
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 278
    .line 279
    .line 280
    return v2

    .line 281
    :cond_f
    invoke-virtual {p2, v3}, Lorg/jsoup/parser/c;->processEndTag(Ljava/lang/String;)Z

    .line 282
    .line 283
    .line 284
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/a;->process(Lk6/o;)Z

    .line 285
    .line 286
    .line 287
    move-result p1

    .line 288
    return p1

    .line 289
    :cond_10
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 290
    .line 291
    .line 292
    return v2
.end method
