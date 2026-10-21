.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$17;
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
    const-string v0, "InSelectInTable"

    .line 2
    .line 3
    const/16 v1, 0x10

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
    .locals 11

    .line 1
    invoke-virtual {p1}, Lk6/o;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "select"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move-object v0, p1

    .line 10
    check-cast v0, Lk6/m;

    .line 11
    .line 12
    iget-object v0, v0, Lk6/n;->c:Ljava/lang/String;

    .line 13
    .line 14
    const-string v6, "thead"

    .line 15
    .line 16
    const-string v7, "tr"

    .line 17
    .line 18
    const-string v2, "caption"

    .line 19
    .line 20
    const-string v3, "table"

    .line 21
    .line 22
    const-string v4, "tbody"

    .line 23
    .line 24
    const-string v5, "tfoot"

    .line 25
    .line 26
    const-string v8, "td"

    .line 27
    .line 28
    const-string v9, "th"

    .line 29
    .line 30
    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-static {v0, v2}, Lh6/j;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/c;->processEndTag(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/a;->process(Lk6/o;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    return p1

    .line 51
    :cond_0
    invoke-virtual {p1}, Lk6/o;->d()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    move-object v0, p1

    .line 58
    check-cast v0, Lk6/l;

    .line 59
    .line 60
    iget-object v2, v0, Lk6/n;->c:Ljava/lang/String;

    .line 61
    .line 62
    const-string v7, "thead"

    .line 63
    .line 64
    const-string v8, "tr"

    .line 65
    .line 66
    const-string v3, "caption"

    .line 67
    .line 68
    const-string v4, "table"

    .line 69
    .line 70
    const-string v5, "tbody"

    .line 71
    .line 72
    const-string v6, "tfoot"

    .line 73
    .line 74
    const-string v9, "td"

    .line 75
    .line 76
    const-string v10, "th"

    .line 77
    .line 78
    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-static {v2, v3}, Lh6/j;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_2

    .line 87
    .line 88
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, v0, Lk6/n;->c:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/a;->m(Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_1

    .line 98
    .line 99
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/c;->processEndTag(Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/a;->process(Lk6/o;)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    return p1

    .line 107
    :cond_1
    const/4 p1, 0x0

    .line 108
    return p1

    .line 109
    :cond_2
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->y:Lorg/jsoup/parser/HtmlTreeBuilderState$16;

    .line 110
    .line 111
    iput-object p1, p2, Lorg/jsoup/parser/c;->f:Lk6/o;

    .line 112
    .line 113
    invoke-virtual {v0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$16;->e(Lk6/o;Lorg/jsoup/parser/a;)Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    return p1
.end method
