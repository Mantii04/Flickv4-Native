.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$11;
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
    const-string v0, "InCaption"

    .line 2
    .line 3
    const/16 v1, 0xa

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
    .locals 12

    .line 1
    invoke-virtual {p1}, Lk6/o;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "caption"

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    move-object v0, p1

    .line 11
    check-cast v0, Lk6/l;

    .line 12
    .line 13
    iget-object v3, v0, Lk6/n;->c:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_2

    .line 20
    .line 21
    iget-object p1, v0, Lk6/n;->c:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/a;->m(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 30
    .line 31
    .line 32
    return v1

    .line 33
    :cond_0
    invoke-static {p2, v2}, Lb/c;->v(Lorg/jsoup/parser/a;Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_1

    .line 38
    .line 39
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-virtual {p2, v2}, Lorg/jsoup/parser/a;->w(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Lorg/jsoup/parser/a;->c()V

    .line 46
    .line 47
    .line 48
    sget-object p1, Lorg/jsoup/parser/HtmlTreeBuilderState;->r:Lorg/jsoup/parser/HtmlTreeBuilderState$9;

    .line 49
    .line 50
    iput-object p1, p2, Lorg/jsoup/parser/a;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {p1}, Lk6/o;->e()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    move-object v0, p1

    .line 60
    check-cast v0, Lk6/m;

    .line 61
    .line 62
    iget-object v0, v0, Lk6/n;->c:Ljava/lang/String;

    .line 63
    .line 64
    const-string v8, "tfoot"

    .line 65
    .line 66
    const-string v9, "th"

    .line 67
    .line 68
    const-string v3, "caption"

    .line 69
    .line 70
    const-string v4, "col"

    .line 71
    .line 72
    const-string v5, "colgroup"

    .line 73
    .line 74
    const-string v6, "tbody"

    .line 75
    .line 76
    const-string v7, "td"

    .line 77
    .line 78
    const-string v10, "thead"

    .line 79
    .line 80
    const-string v11, "tr"

    .line 81
    .line 82
    filled-new-array/range {v3 .. v11}, [Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-static {v0, v3}, Lh6/j;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-nez v0, :cond_4

    .line 91
    .line 92
    :cond_3
    invoke-virtual {p1}, Lk6/o;->d()Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_6

    .line 97
    .line 98
    move-object v0, p1

    .line 99
    check-cast v0, Lk6/l;

    .line 100
    .line 101
    iget-object v0, v0, Lk6/n;->c:Ljava/lang/String;

    .line 102
    .line 103
    const-string v3, "table"

    .line 104
    .line 105
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_6

    .line 110
    .line 111
    :cond_4
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2, v2}, Lorg/jsoup/parser/c;->processEndTag(Ljava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_5

    .line 119
    .line 120
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/a;->process(Lk6/o;)Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    return p1

    .line 125
    :cond_5
    :goto_0
    const/4 p1, 0x1

    .line 126
    return p1

    .line 127
    :cond_6
    invoke-virtual {p1}, Lk6/o;->d()Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_7

    .line 132
    .line 133
    move-object v0, p1

    .line 134
    check-cast v0, Lk6/l;

    .line 135
    .line 136
    iget-object v0, v0, Lk6/n;->c:Ljava/lang/String;

    .line 137
    .line 138
    const-string v8, "tfoot"

    .line 139
    .line 140
    const-string v9, "th"

    .line 141
    .line 142
    const-string v2, "body"

    .line 143
    .line 144
    const-string v3, "col"

    .line 145
    .line 146
    const-string v4, "colgroup"

    .line 147
    .line 148
    const-string v5, "html"

    .line 149
    .line 150
    const-string v6, "tbody"

    .line 151
    .line 152
    const-string v7, "td"

    .line 153
    .line 154
    const-string v10, "thead"

    .line 155
    .line 156
    const-string v11, "tr"

    .line 157
    .line 158
    filled-new-array/range {v2 .. v11}, [Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-static {v0, v2}, Lh6/j;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-eqz v0, :cond_7

    .line 167
    .line 168
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 169
    .line 170
    .line 171
    return v1

    .line 172
    :cond_7
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->p:Lorg/jsoup/parser/HtmlTreeBuilderState$7;

    .line 173
    .line 174
    iput-object p1, p2, Lorg/jsoup/parser/c;->f:Lk6/o;

    .line 175
    .line 176
    invoke-virtual {v0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->e(Lk6/o;Lorg/jsoup/parser/a;)Z

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    return p1
.end method
