.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$2;
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
    const-string v0, "BeforeHtml"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final e(Lk6/o;Lorg/jsoup/parser/a;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Lk6/o;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

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
    invoke-virtual {p1}, Lk6/o;->a()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v2, 0x1

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    check-cast p1, Lk6/i;

    .line 20
    .line 21
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/a;->p(Lk6/i;)V

    .line 22
    .line 23
    .line 24
    return v2

    .line 25
    :cond_1
    invoke-static {p1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->b(Lk6/o;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    return v2

    .line 32
    :cond_2
    invoke-virtual {p1}, Lk6/o;->e()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState;->f:Lorg/jsoup/parser/HtmlTreeBuilderState$3;

    .line 37
    .line 38
    const-string v4, "html"

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    move-object v0, p1

    .line 43
    check-cast v0, Lk6/m;

    .line 44
    .line 45
    iget-object v5, v0, Lk6/n;->c:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_3

    .line 52
    .line 53
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/a;->n(Lk6/m;)Lorg/jsoup/nodes/b;

    .line 54
    .line 55
    .line 56
    iput-object v3, p2, Lorg/jsoup/parser/a;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 57
    .line 58
    return v2

    .line 59
    :cond_3
    invoke-virtual {p1}, Lk6/o;->d()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_4

    .line 64
    .line 65
    move-object v0, p1

    .line 66
    check-cast v0, Lk6/l;

    .line 67
    .line 68
    iget-object v0, v0, Lk6/n;->c:Ljava/lang/String;

    .line 69
    .line 70
    const-string v2, "br"

    .line 71
    .line 72
    const-string v5, "head"

    .line 73
    .line 74
    const-string v6, "body"

    .line 75
    .line 76
    filled-new-array {v5, v6, v4, v2}, [Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-static {v0, v2}, Lh6/j;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_4

    .line 85
    .line 86
    new-instance v0, Lorg/jsoup/nodes/b;

    .line 87
    .line 88
    iget-object v1, p2, Lorg/jsoup/parser/c;->h:Lk6/d;

    .line 89
    .line 90
    invoke-static {v4, v1}, Lk6/f;->valueOf(Ljava/lang/String;Lk6/d;)Lk6/f;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    iget-object v2, p2, Lorg/jsoup/parser/c;->e:Ljava/lang/String;

    .line 95
    .line 96
    invoke-direct {v0, v1, v2}, Lorg/jsoup/nodes/b;-><init>(Lk6/f;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/a;->t(Lj6/p;)V

    .line 100
    .line 101
    .line 102
    iget-object v1, p2, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    iput-object v3, p2, Lorg/jsoup/parser/a;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 108
    .line 109
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/a;->process(Lk6/o;)Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    return p1

    .line 114
    :cond_4
    invoke-virtual {p1}, Lk6/o;->d()Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_5

    .line 119
    .line 120
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 121
    .line 122
    .line 123
    return v1

    .line 124
    :cond_5
    new-instance v0, Lorg/jsoup/nodes/b;

    .line 125
    .line 126
    iget-object v1, p2, Lorg/jsoup/parser/c;->h:Lk6/d;

    .line 127
    .line 128
    invoke-static {v4, v1}, Lk6/f;->valueOf(Ljava/lang/String;Lk6/d;)Lk6/f;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    iget-object v2, p2, Lorg/jsoup/parser/c;->e:Ljava/lang/String;

    .line 133
    .line 134
    invoke-direct {v0, v1, v2}, Lorg/jsoup/nodes/b;-><init>(Lk6/f;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/a;->t(Lj6/p;)V

    .line 138
    .line 139
    .line 140
    iget-object v1, p2, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    iput-object v3, p2, Lorg/jsoup/parser/a;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 146
    .line 147
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/a;->process(Lk6/o;)Z

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    return p1
.end method
