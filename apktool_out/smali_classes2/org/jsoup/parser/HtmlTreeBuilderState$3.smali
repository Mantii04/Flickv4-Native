.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$3;
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
    const-string v0, "BeforeHead"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final e(Lk6/o;Lorg/jsoup/parser/a;)Z
    .locals 6

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
    return v1

    .line 9
    :cond_0
    invoke-virtual {p1}, Lk6/o;->a()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    check-cast p1, Lk6/i;

    .line 16
    .line 17
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/a;->p(Lk6/i;)V

    .line 18
    .line 19
    .line 20
    return v1

    .line 21
    :cond_1
    invoke-virtual {p1}, Lk6/o;->b()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v2, 0x0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 29
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
    const-string v3, "html"

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    move-object v0, p1

    .line 41
    check-cast v0, Lk6/m;

    .line 42
    .line 43
    iget-object v0, v0, Lk6/n;->c:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->p:Lorg/jsoup/parser/HtmlTreeBuilderState$7;

    .line 52
    .line 53
    invoke-virtual {v0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->e(Lk6/o;Lorg/jsoup/parser/a;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    return p1

    .line 58
    :cond_3
    invoke-virtual {p1}, Lk6/o;->e()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    const-string v4, "head"

    .line 63
    .line 64
    if-eqz v0, :cond_4

    .line 65
    .line 66
    move-object v0, p1

    .line 67
    check-cast v0, Lk6/m;

    .line 68
    .line 69
    iget-object v5, v0, Lk6/n;->c:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-eqz v5, :cond_4

    .line 76
    .line 77
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/a;->n(Lk6/m;)Lorg/jsoup/nodes/b;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iput-object p1, p2, Lorg/jsoup/parser/a;->n:Lorg/jsoup/nodes/b;

    .line 82
    .line 83
    sget-object p1, Lorg/jsoup/parser/HtmlTreeBuilderState;->j:Lorg/jsoup/parser/HtmlTreeBuilderState$4;

    .line 84
    .line 85
    iput-object p1, p2, Lorg/jsoup/parser/a;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 86
    .line 87
    return v1

    .line 88
    :cond_4
    invoke-virtual {p1}, Lk6/o;->d()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_5

    .line 93
    .line 94
    move-object v0, p1

    .line 95
    check-cast v0, Lk6/l;

    .line 96
    .line 97
    iget-object v0, v0, Lk6/n;->c:Ljava/lang/String;

    .line 98
    .line 99
    const-string v1, "body"

    .line 100
    .line 101
    const-string v5, "br"

    .line 102
    .line 103
    filled-new-array {v4, v1, v3, v5}, [Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-static {v0, v1}, Lh6/j;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_5

    .line 112
    .line 113
    invoke-virtual {p2, v4}, Lorg/jsoup/parser/c;->processStartTag(Ljava/lang/String;)Z

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/a;->process(Lk6/o;)Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    return p1

    .line 121
    :cond_5
    invoke-virtual {p1}, Lk6/o;->d()Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_6

    .line 126
    .line 127
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 128
    .line 129
    .line 130
    return v2

    .line 131
    :cond_6
    invoke-virtual {p2, v4}, Lorg/jsoup/parser/c;->processStartTag(Ljava/lang/String;)Z

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/a;->process(Lk6/o;)Z

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    return p1
.end method
