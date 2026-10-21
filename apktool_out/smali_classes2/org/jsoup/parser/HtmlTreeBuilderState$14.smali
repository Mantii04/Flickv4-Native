.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$14;
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
    const-string v0, "InRow"

    .line 2
    .line 3
    const/16 v1, 0xd

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final e(Lk6/o;Lorg/jsoup/parser/a;)Z
    .locals 13

    .line 1
    invoke-virtual {p1}, Lk6/o;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState;->r:Lorg/jsoup/parser/HtmlTreeBuilderState$9;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const-string v3, "template"

    .line 9
    .line 10
    const-string v4, "tr"

    .line 11
    .line 12
    if-eqz v0, :cond_4

    .line 13
    .line 14
    move-object v0, p1

    .line 15
    check-cast v0, Lk6/m;

    .line 16
    .line 17
    iget-object v5, v0, Lk6/n;->c:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    if-eqz v6, :cond_0

    .line 24
    .line 25
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/a;->n(Lk6/m;)Lorg/jsoup/nodes/b;

    .line 26
    .line 27
    .line 28
    goto/16 :goto_0

    .line 29
    .line 30
    :cond_0
    const-string v6, "th"

    .line 31
    .line 32
    const-string v7, "td"

    .line 33
    .line 34
    filled-new-array {v6, v7}, [Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    invoke-static {v5, v6}, Lh6/j;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    if-eqz v6, :cond_1

    .line 43
    .line 44
    filled-new-array {v4, v3}, [Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/a;->d([Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/a;->n(Lk6/m;)Lorg/jsoup/nodes/b;

    .line 52
    .line 53
    .line 54
    sget-object p1, Lorg/jsoup/parser/HtmlTreeBuilderState;->x:Lorg/jsoup/parser/HtmlTreeBuilderState$15;

    .line 55
    .line 56
    iput-object p1, p2, Lorg/jsoup/parser/a;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 57
    .line 58
    iget-object p1, p2, Lorg/jsoup/parser/a;->p:Ljava/util/ArrayList;

    .line 59
    .line 60
    const/4 p2, 0x0

    .line 61
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    const-string v9, "tbody"

    .line 66
    .line 67
    const-string v10, "tfoot"

    .line 68
    .line 69
    const-string v6, "caption"

    .line 70
    .line 71
    const-string v7, "col"

    .line 72
    .line 73
    const-string v8, "colgroup"

    .line 74
    .line 75
    const-string v11, "thead"

    .line 76
    .line 77
    const-string v12, "tr"

    .line 78
    .line 79
    filled-new-array/range {v6 .. v12}, [Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {v5, v0}, Lh6/j;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_3

    .line 88
    .line 89
    invoke-virtual {p2, v4}, Lorg/jsoup/parser/c;->processEndTag(Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_2

    .line 94
    .line 95
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/a;->process(Lk6/o;)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    return p1

    .line 100
    :cond_2
    return v2

    .line 101
    :cond_3
    iput-object p1, p2, Lorg/jsoup/parser/c;->f:Lk6/o;

    .line 102
    .line 103
    invoke-virtual {v1, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->e(Lk6/o;Lorg/jsoup/parser/a;)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    return p1

    .line 108
    :cond_4
    invoke-virtual {p1}, Lk6/o;->d()Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_c

    .line 113
    .line 114
    move-object v0, p1

    .line 115
    check-cast v0, Lk6/l;

    .line 116
    .line 117
    iget-object v0, v0, Lk6/n;->c:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    if-eqz v5, :cond_6

    .line 124
    .line 125
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/a;->m(Ljava/lang/String;)Z

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    if-nez p1, :cond_5

    .line 130
    .line 131
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 132
    .line 133
    .line 134
    return v2

    .line 135
    :cond_5
    filled-new-array {v4, v3}, [Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/a;->d([Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p2}, Lorg/jsoup/parser/a;->v()V

    .line 143
    .line 144
    .line 145
    sget-object p1, Lorg/jsoup/parser/HtmlTreeBuilderState;->v:Lorg/jsoup/parser/HtmlTreeBuilderState$13;

    .line 146
    .line 147
    iput-object p1, p2, Lorg/jsoup/parser/a;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 148
    .line 149
    :goto_0
    const/4 p1, 0x1

    .line 150
    return p1

    .line 151
    :cond_6
    const-string v3, "table"

    .line 152
    .line 153
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v3

    .line 157
    if-eqz v3, :cond_8

    .line 158
    .line 159
    invoke-virtual {p2, v4}, Lorg/jsoup/parser/c;->processEndTag(Ljava/lang/String;)Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-eqz v0, :cond_7

    .line 164
    .line 165
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/a;->process(Lk6/o;)Z

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    return p1

    .line 170
    :cond_7
    return v2

    .line 171
    :cond_8
    const-string v3, "thead"

    .line 172
    .line 173
    const-string v5, "tbody"

    .line 174
    .line 175
    const-string v6, "tfoot"

    .line 176
    .line 177
    filled-new-array {v5, v6, v3}, [Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    invoke-static {v0, v3}, Lh6/j;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    if-eqz v3, :cond_a

    .line 186
    .line 187
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/a;->m(Ljava/lang/String;)Z

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    if-nez v0, :cond_9

    .line 192
    .line 193
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 194
    .line 195
    .line 196
    return v2

    .line 197
    :cond_9
    invoke-virtual {p2, v4}, Lorg/jsoup/parser/c;->processEndTag(Ljava/lang/String;)Z

    .line 198
    .line 199
    .line 200
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/a;->process(Lk6/o;)Z

    .line 201
    .line 202
    .line 203
    move-result p1

    .line 204
    return p1

    .line 205
    :cond_a
    const-string v6, "colgroup"

    .line 206
    .line 207
    const-string v7, "html"

    .line 208
    .line 209
    const-string v3, "body"

    .line 210
    .line 211
    const-string v4, "caption"

    .line 212
    .line 213
    const-string v5, "col"

    .line 214
    .line 215
    const-string v8, "td"

    .line 216
    .line 217
    const-string v9, "th"

    .line 218
    .line 219
    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    invoke-static {v0, v3}, Lh6/j;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    if-eqz v0, :cond_b

    .line 228
    .line 229
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 230
    .line 231
    .line 232
    return v2

    .line 233
    :cond_b
    iput-object p1, p2, Lorg/jsoup/parser/c;->f:Lk6/o;

    .line 234
    .line 235
    invoke-virtual {v1, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->e(Lk6/o;Lorg/jsoup/parser/a;)Z

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    return p1

    .line 240
    :cond_c
    iput-object p1, p2, Lorg/jsoup/parser/c;->f:Lk6/o;

    .line 241
    .line 242
    invoke-virtual {v1, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->e(Lk6/o;Lorg/jsoup/parser/a;)Z

    .line 243
    .line 244
    .line 245
    move-result p1

    .line 246
    return p1
.end method
