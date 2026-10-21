.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$6;
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
    const-string v0, "AfterHead"

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final e(Lk6/o;Lorg/jsoup/parser/a;)Z
    .locals 18

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
    invoke-static {v1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->b(Lk6/o;)Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x1

    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    check-cast v1, Lk6/h;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/a;->o(Lk6/h;)V

    .line 17
    .line 18
    .line 19
    goto/16 :goto_0

    .line 20
    .line 21
    :cond_0
    invoke-virtual {v1}, Lk6/o;->a()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    check-cast v1, Lk6/i;

    .line 28
    .line 29
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/a;->p(Lk6/i;)V

    .line 30
    .line 31
    .line 32
    goto/16 :goto_0

    .line 33
    .line 34
    :cond_1
    invoke-virtual {v1}, Lk6/o;->b()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 41
    .line 42
    .line 43
    goto/16 :goto_0

    .line 44
    .line 45
    :cond_2
    invoke-virtual {v1}, Lk6/o;->e()Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    const-string v5, "body"

    .line 50
    .line 51
    const-string v6, "html"

    .line 52
    .line 53
    const/4 v7, 0x0

    .line 54
    if-eqz v3, :cond_8

    .line 55
    .line 56
    move-object v3, v1

    .line 57
    check-cast v3, Lk6/m;

    .line 58
    .line 59
    iget-object v8, v3, Lk6/n;->c:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    sget-object v9, Lorg/jsoup/parser/HtmlTreeBuilderState;->p:Lorg/jsoup/parser/HtmlTreeBuilderState$7;

    .line 66
    .line 67
    if-eqz v6, :cond_3

    .line 68
    .line 69
    iput-object v1, v2, Lorg/jsoup/parser/c;->f:Lk6/o;

    .line 70
    .line 71
    invoke-virtual {v9, v1, v2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->e(Lk6/o;Lorg/jsoup/parser/a;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    return v1

    .line 76
    :cond_3
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    if-eqz v6, :cond_4

    .line 81
    .line 82
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/a;->n(Lk6/m;)Lorg/jsoup/nodes/b;

    .line 83
    .line 84
    .line 85
    iput-boolean v7, v2, Lorg/jsoup/parser/a;->s:Z

    .line 86
    .line 87
    iput-object v9, v2, Lorg/jsoup/parser/a;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 88
    .line 89
    goto/16 :goto_0

    .line 90
    .line 91
    :cond_4
    const-string v6, "frameset"

    .line 92
    .line 93
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    if-eqz v6, :cond_5

    .line 98
    .line 99
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/a;->n(Lk6/m;)Lorg/jsoup/nodes/b;

    .line 100
    .line 101
    .line 102
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState;->B:Lorg/jsoup/parser/HtmlTreeBuilderState$19;

    .line 103
    .line 104
    iput-object v1, v2, Lorg/jsoup/parser/a;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_5
    const-string v14, "noframes"

    .line 108
    .line 109
    const-string v15, "script"

    .line 110
    .line 111
    const-string v9, "base"

    .line 112
    .line 113
    const-string v10, "basefont"

    .line 114
    .line 115
    const-string v11, "bgsound"

    .line 116
    .line 117
    const-string v12, "link"

    .line 118
    .line 119
    const-string v13, "meta"

    .line 120
    .line 121
    const-string v16, "style"

    .line 122
    .line 123
    const-string v17, "title"

    .line 124
    .line 125
    filled-new-array/range {v9 .. v17}, [Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-static {v8, v3}, Lh6/j;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    if-eqz v3, :cond_6

    .line 134
    .line 135
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 136
    .line 137
    .line 138
    iget-object v3, v2, Lorg/jsoup/parser/a;->n:Lorg/jsoup/nodes/b;

    .line 139
    .line 140
    iget-object v5, v2, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    sget-object v5, Lorg/jsoup/parser/HtmlTreeBuilderState;->j:Lorg/jsoup/parser/HtmlTreeBuilderState$4;

    .line 146
    .line 147
    invoke-virtual {v2, v1, v5}, Lorg/jsoup/parser/a;->x(Lk6/o;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/a;->B(Lorg/jsoup/nodes/b;)V

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_6
    const-string v3, "head"

    .line 155
    .line 156
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    if-eqz v3, :cond_7

    .line 161
    .line 162
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 163
    .line 164
    .line 165
    return v7

    .line 166
    :cond_7
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/c;->processStartTag(Ljava/lang/String;)Z

    .line 167
    .line 168
    .line 169
    iput-boolean v4, v2, Lorg/jsoup/parser/a;->s:Z

    .line 170
    .line 171
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/a;->process(Lk6/o;)Z

    .line 172
    .line 173
    .line 174
    goto :goto_0

    .line 175
    :cond_8
    invoke-virtual {v1}, Lk6/o;->d()Z

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    if-eqz v3, :cond_a

    .line 180
    .line 181
    move-object v3, v1

    .line 182
    check-cast v3, Lk6/l;

    .line 183
    .line 184
    iget-object v3, v3, Lk6/n;->c:Ljava/lang/String;

    .line 185
    .line 186
    filled-new-array {v5, v6}, [Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v6

    .line 190
    invoke-static {v3, v6}, Lh6/j;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    if-eqz v3, :cond_9

    .line 195
    .line 196
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/c;->processStartTag(Ljava/lang/String;)Z

    .line 197
    .line 198
    .line 199
    iput-boolean v4, v2, Lorg/jsoup/parser/a;->s:Z

    .line 200
    .line 201
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/a;->process(Lk6/o;)Z

    .line 202
    .line 203
    .line 204
    goto :goto_0

    .line 205
    :cond_9
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 206
    .line 207
    .line 208
    return v7

    .line 209
    :cond_a
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/c;->processStartTag(Ljava/lang/String;)Z

    .line 210
    .line 211
    .line 212
    iput-boolean v4, v2, Lorg/jsoup/parser/a;->s:Z

    .line 213
    .line 214
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/a;->process(Lk6/o;)Z

    .line 215
    .line 216
    .line 217
    :goto_0
    return v4
.end method
