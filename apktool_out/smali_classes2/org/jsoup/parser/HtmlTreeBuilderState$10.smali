.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$10;
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
    const-string v0, "InTableText"

    .line 2
    .line 3
    const/16 v1, 0x9

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
    .locals 10

    .line 1
    iget-object v0, p1, Lk6/o;->a:Lorg/jsoup/parser/Token$TokenType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x4

    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eq v0, v1, :cond_4

    .line 11
    .line 12
    iget-object v0, p2, Lorg/jsoup/parser/a;->q:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-lez v0, :cond_3

    .line 19
    .line 20
    iget-object v0, p2, Lorg/jsoup/parser/a;->q:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v1}, Lh6/j;->isBlank(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-nez v4, :cond_1

    .line 43
    .line 44
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Lorg/jsoup/parser/c;->currentElement()Lorg/jsoup/nodes/b;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v4}, Lorg/jsoup/nodes/b;->nodeName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    const-string v5, "tbody"

    .line 56
    .line 57
    const-string v6, "tfoot"

    .line 58
    .line 59
    const-string v7, "table"

    .line 60
    .line 61
    const-string v8, "thead"

    .line 62
    .line 63
    const-string v9, "tr"

    .line 64
    .line 65
    filled-new-array {v7, v5, v6, v8, v9}, [Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-static {v4, v5}, Lh6/j;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    sget-object v5, Lorg/jsoup/parser/HtmlTreeBuilderState;->p:Lorg/jsoup/parser/HtmlTreeBuilderState$7;

    .line 74
    .line 75
    if-eqz v4, :cond_0

    .line 76
    .line 77
    iput-boolean v2, p2, Lorg/jsoup/parser/a;->t:Z

    .line 78
    .line 79
    new-instance v4, Lk6/h;

    .line 80
    .line 81
    invoke-direct {v4}, Lk6/h;-><init>()V

    .line 82
    .line 83
    .line 84
    iput-object v1, v4, Lk6/h;->b:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {p2, v4, v5}, Lorg/jsoup/parser/a;->x(Lk6/o;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    .line 87
    .line 88
    .line 89
    iput-boolean v3, p2, Lorg/jsoup/parser/a;->t:Z

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_0
    new-instance v4, Lk6/h;

    .line 93
    .line 94
    invoke-direct {v4}, Lk6/h;-><init>()V

    .line 95
    .line 96
    .line 97
    iput-object v1, v4, Lk6/h;->b:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {p2, v4, v5}, Lorg/jsoup/parser/a;->x(Lk6/o;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_1
    new-instance v4, Lk6/h;

    .line 104
    .line 105
    invoke-direct {v4}, Lk6/h;-><init>()V

    .line 106
    .line 107
    .line 108
    iput-object v1, v4, Lk6/h;->b:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {p2, v4}, Lorg/jsoup/parser/a;->o(Lk6/h;)V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .line 118
    .line 119
    iput-object v0, p2, Lorg/jsoup/parser/a;->q:Ljava/util/ArrayList;

    .line 120
    .line 121
    :cond_3
    iget-object v0, p2, Lorg/jsoup/parser/a;->l:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 122
    .line 123
    iput-object v0, p2, Lorg/jsoup/parser/a;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 124
    .line 125
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/a;->process(Lk6/o;)Z

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    return p1

    .line 130
    :cond_4
    check-cast p1, Lk6/h;

    .line 131
    .line 132
    iget-object v0, p1, Lk6/h;->b:Ljava/lang/String;

    .line 133
    .line 134
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState;->F:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-eqz v0, :cond_5

    .line 141
    .line 142
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->e(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 143
    .line 144
    .line 145
    return v3

    .line 146
    :cond_5
    iget-object p2, p2, Lorg/jsoup/parser/a;->q:Ljava/util/ArrayList;

    .line 147
    .line 148
    iget-object p1, p1, Lk6/h;->b:Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    return v2
.end method
