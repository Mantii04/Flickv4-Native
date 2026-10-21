.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$5;
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
    const-string v0, "InHeadNoscript"

    .line 2
    .line 3
    const/4 v1, 0x4

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
    invoke-virtual {p1}, Lk6/o;->b()Z

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
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 9
    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    invoke-virtual {p1}, Lk6/o;->e()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    move-object v0, p1

    .line 19
    check-cast v0, Lk6/m;

    .line 20
    .line 21
    iget-object v0, v0, Lk6/n;->c:Ljava/lang/String;

    .line 22
    .line 23
    const-string v2, "html"

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->p:Lorg/jsoup/parser/HtmlTreeBuilderState$7;

    .line 32
    .line 33
    iput-object p1, p2, Lorg/jsoup/parser/c;->f:Lk6/o;

    .line 34
    .line 35
    invoke-virtual {v0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->e(Lk6/o;Lorg/jsoup/parser/a;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    return p1

    .line 40
    :cond_1
    invoke-virtual {p1}, Lk6/o;->d()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->j:Lorg/jsoup/parser/HtmlTreeBuilderState$4;

    .line 45
    .line 46
    const-string v3, "noscript"

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    move-object v0, p1

    .line 51
    check-cast v0, Lk6/l;

    .line 52
    .line 53
    iget-object v0, v0, Lk6/n;->c:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    invoke-virtual {p2}, Lorg/jsoup/parser/a;->v()V

    .line 62
    .line 63
    .line 64
    iput-object v2, p2, Lorg/jsoup/parser/a;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 65
    .line 66
    return v1

    .line 67
    :cond_2
    invoke-static {p1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->b(Lk6/o;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_8

    .line 72
    .line 73
    invoke-virtual {p1}, Lk6/o;->a()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_8

    .line 78
    .line 79
    invoke-virtual {p1}, Lk6/o;->e()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_3

    .line 84
    .line 85
    move-object v0, p1

    .line 86
    check-cast v0, Lk6/m;

    .line 87
    .line 88
    iget-object v0, v0, Lk6/n;->c:Ljava/lang/String;

    .line 89
    .line 90
    const-string v6, "link"

    .line 91
    .line 92
    const-string v7, "meta"

    .line 93
    .line 94
    const-string v4, "basefont"

    .line 95
    .line 96
    const-string v5, "bgsound"

    .line 97
    .line 98
    const-string v8, "noframes"

    .line 99
    .line 100
    const-string v9, "style"

    .line 101
    .line 102
    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-static {v0, v4}, Lh6/j;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_3

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_3
    invoke-virtual {p1}, Lk6/o;->d()Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_4

    .line 118
    .line 119
    move-object v0, p1

    .line 120
    check-cast v0, Lk6/l;

    .line 121
    .line 122
    iget-object v0, v0, Lk6/n;->c:Ljava/lang/String;

    .line 123
    .line 124
    const-string v2, "br"

    .line 125
    .line 126
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-eqz v0, :cond_4

    .line 131
    .line 132
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 133
    .line 134
    .line 135
    new-instance v0, Lk6/h;

    .line 136
    .line 137
    invoke-direct {v0}, Lk6/h;-><init>()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    iput-object p1, v0, Lk6/h;->b:Ljava/lang/String;

    .line 145
    .line 146
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/a;->o(Lk6/h;)V

    .line 147
    .line 148
    .line 149
    return v1

    .line 150
    :cond_4
    invoke-virtual {p1}, Lk6/o;->e()Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-eqz v0, :cond_5

    .line 155
    .line 156
    move-object v0, p1

    .line 157
    check-cast v0, Lk6/m;

    .line 158
    .line 159
    iget-object v0, v0, Lk6/n;->c:Ljava/lang/String;

    .line 160
    .line 161
    const-string v2, "head"

    .line 162
    .line 163
    filled-new-array {v2, v3}, [Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    invoke-static {v0, v2}, Lh6/j;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-nez v0, :cond_6

    .line 172
    .line 173
    :cond_5
    invoke-virtual {p1}, Lk6/o;->d()Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    if-eqz v0, :cond_7

    .line 178
    .line 179
    :cond_6
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 180
    .line 181
    .line 182
    const/4 p1, 0x0

    .line 183
    return p1

    .line 184
    :cond_7
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 185
    .line 186
    .line 187
    new-instance v0, Lk6/h;

    .line 188
    .line 189
    invoke-direct {v0}, Lk6/h;-><init>()V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    iput-object p1, v0, Lk6/h;->b:Ljava/lang/String;

    .line 197
    .line 198
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/a;->o(Lk6/h;)V

    .line 199
    .line 200
    .line 201
    return v1

    .line 202
    :cond_8
    :goto_0
    iput-object p1, p2, Lorg/jsoup/parser/c;->f:Lk6/o;

    .line 203
    .line 204
    invoke-virtual {v2, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$4;->e(Lk6/o;Lorg/jsoup/parser/a;)Z

    .line 205
    .line 206
    .line 207
    move-result p1

    .line 208
    return p1
.end method
