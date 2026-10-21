.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$15;
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
    const-string v0, "InCell"

    .line 2
    .line 3
    const/16 v1, 0xe

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
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual {v1}, Lk6/o;->d()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState;->p:Lorg/jsoup/parser/HtmlTreeBuilderState$7;

    .line 12
    .line 13
    const-string v5, "th"

    .line 14
    .line 15
    const-string v6, "td"

    .line 16
    .line 17
    const/4 v7, 0x0

    .line 18
    if-eqz v3, :cond_7

    .line 19
    .line 20
    move-object v3, v1

    .line 21
    check-cast v3, Lk6/l;

    .line 22
    .line 23
    iget-object v3, v3, Lk6/n;->c:Ljava/lang/String;

    .line 24
    .line 25
    filled-new-array {v6, v5}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v8

    .line 29
    invoke-static {v3, v8}, Lh6/j;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v8

    .line 33
    if-eqz v8, :cond_2

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/a;->m(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState;->w:Lorg/jsoup/parser/HtmlTreeBuilderState$14;

    .line 40
    .line 41
    if-nez v1, :cond_0

    .line 42
    .line 43
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 44
    .line 45
    .line 46
    iput-object v4, v2, Lorg/jsoup/parser/a;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 47
    .line 48
    return v7

    .line 49
    :cond_0
    invoke-static {v2, v3}, Lb/c;->v(Lorg/jsoup/parser/a;Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_1

    .line 54
    .line 55
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/a;->w(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Lorg/jsoup/parser/a;->c()V

    .line 62
    .line 63
    .line 64
    iput-object v4, v2, Lorg/jsoup/parser/a;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 65
    .line 66
    const/4 v1, 0x1

    .line 67
    return v1

    .line 68
    :cond_2
    const-string v8, "caption"

    .line 69
    .line 70
    const-string v9, "col"

    .line 71
    .line 72
    const-string v10, "body"

    .line 73
    .line 74
    const-string v11, "colgroup"

    .line 75
    .line 76
    const-string v12, "html"

    .line 77
    .line 78
    filled-new-array {v10, v8, v9, v11, v12}, [Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    invoke-static {v3, v8}, Lh6/j;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    if-eqz v8, :cond_3

    .line 87
    .line 88
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 89
    .line 90
    .line 91
    return v7

    .line 92
    :cond_3
    const-string v8, "tbody"

    .line 93
    .line 94
    const-string v9, "tfoot"

    .line 95
    .line 96
    const-string v10, "table"

    .line 97
    .line 98
    const-string v11, "thead"

    .line 99
    .line 100
    const-string v12, "tr"

    .line 101
    .line 102
    filled-new-array {v10, v8, v9, v11, v12}, [Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    invoke-static {v3, v8}, Lh6/j;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    if-eqz v8, :cond_6

    .line 111
    .line 112
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/a;->m(Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-nez v3, :cond_4

    .line 117
    .line 118
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 119
    .line 120
    .line 121
    return v7

    .line 122
    :cond_4
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/a;->m(Ljava/lang/String;)Z

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    if-eqz v3, :cond_5

    .line 127
    .line 128
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/c;->processEndTag(Ljava/lang/String;)Z

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_5
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/c;->processEndTag(Ljava/lang/String;)Z

    .line 133
    .line 134
    .line 135
    :goto_0
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/a;->process(Lk6/o;)Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    return v1

    .line 140
    :cond_6
    iput-object v1, v2, Lorg/jsoup/parser/c;->f:Lk6/o;

    .line 141
    .line 142
    invoke-virtual {v4, v1, v2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->e(Lk6/o;Lorg/jsoup/parser/a;)Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    return v1

    .line 147
    :cond_7
    invoke-virtual {v1}, Lk6/o;->e()Z

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    if-eqz v3, :cond_a

    .line 152
    .line 153
    move-object v3, v1

    .line 154
    check-cast v3, Lk6/m;

    .line 155
    .line 156
    iget-object v3, v3, Lk6/n;->c:Ljava/lang/String;

    .line 157
    .line 158
    const-string v13, "tfoot"

    .line 159
    .line 160
    const-string v14, "th"

    .line 161
    .line 162
    const-string v8, "caption"

    .line 163
    .line 164
    const-string v9, "col"

    .line 165
    .line 166
    const-string v10, "colgroup"

    .line 167
    .line 168
    const-string v11, "tbody"

    .line 169
    .line 170
    const-string v12, "td"

    .line 171
    .line 172
    const-string v15, "thead"

    .line 173
    .line 174
    const-string v16, "tr"

    .line 175
    .line 176
    filled-new-array/range {v8 .. v16}, [Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v8

    .line 180
    invoke-static {v3, v8}, Lh6/j;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    if-eqz v3, :cond_a

    .line 185
    .line 186
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/a;->m(Ljava/lang/String;)Z

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    if-nez v3, :cond_8

    .line 191
    .line 192
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/a;->m(Ljava/lang/String;)Z

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    if-nez v3, :cond_8

    .line 197
    .line 198
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 199
    .line 200
    .line 201
    return v7

    .line 202
    :cond_8
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/a;->m(Ljava/lang/String;)Z

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    if-eqz v3, :cond_9

    .line 207
    .line 208
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/c;->processEndTag(Ljava/lang/String;)Z

    .line 209
    .line 210
    .line 211
    goto :goto_1

    .line 212
    :cond_9
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/c;->processEndTag(Ljava/lang/String;)Z

    .line 213
    .line 214
    .line 215
    :goto_1
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/a;->process(Lk6/o;)Z

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    return v1

    .line 220
    :cond_a
    iput-object v1, v2, Lorg/jsoup/parser/c;->f:Lk6/o;

    .line 221
    .line 222
    invoke-virtual {v4, v1, v2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->e(Lk6/o;Lorg/jsoup/parser/a;)Z

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    return v1
.end method
