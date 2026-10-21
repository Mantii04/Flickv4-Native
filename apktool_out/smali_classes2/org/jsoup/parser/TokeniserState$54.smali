.class final enum Lorg/jsoup/parser/TokeniserState$54;
.super Lorg/jsoup/parser/TokeniserState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/TokeniserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "AfterDoctypeName"

    .line 2
    .line 3
    const/16 v1, 0x35

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final f(Lorg/jsoup/parser/b;Lk6/a;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lk6/a;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lorg/jsoup/parser/TokeniserState;->b:Lorg/jsoup/parser/TokeniserState$1;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->l(Lorg/jsoup/parser/TokeniserState;)V

    .line 11
    .line 12
    .line 13
    iget-object p2, p1, Lorg/jsoup/parser/b;->m:Lk6/j;

    .line 14
    .line 15
    iput-boolean v2, p2, Lk6/j;->f:Z

    .line 16
    .line 17
    invoke-virtual {p1}, Lorg/jsoup/parser/b;->j()V

    .line 18
    .line 19
    .line 20
    iput-object v1, p1, Lorg/jsoup/parser/b;->c:Lorg/jsoup/parser/TokeniserState;

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    const/4 v0, 0x5

    .line 24
    new-array v0, v0, [C

    .line 25
    .line 26
    fill-array-data v0, :array_0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, v0}, Lk6/a;->i([C)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {p2}, Lk6/a;->advance()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    const/16 v0, 0x3e

    .line 40
    .line 41
    invoke-virtual {p2, v0}, Lk6/a;->h(C)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-virtual {p1}, Lorg/jsoup/parser/b;->j()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v1}, Lorg/jsoup/parser/b;->a(Lorg/jsoup/parser/TokeniserState;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_2
    const-string v0, "PUBLIC"

    .line 55
    .line 56
    invoke-virtual {p2, v0}, Lk6/a;->g(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    iget-object p2, p1, Lorg/jsoup/parser/b;->m:Lk6/j;

    .line 63
    .line 64
    iput-object v0, p2, Lk6/j;->c:Ljava/lang/String;

    .line 65
    .line 66
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->l0:Lorg/jsoup/parser/TokeniserState$55;

    .line 67
    .line 68
    iput-object p2, p1, Lorg/jsoup/parser/b;->c:Lorg/jsoup/parser/TokeniserState;

    .line 69
    .line 70
    return-void

    .line 71
    :cond_3
    const-string v0, "SYSTEM"

    .line 72
    .line 73
    invoke-virtual {p2, v0}, Lk6/a;->g(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    if-eqz p2, :cond_4

    .line 78
    .line 79
    iget-object p2, p1, Lorg/jsoup/parser/b;->m:Lk6/j;

    .line 80
    .line 81
    iput-object v0, p2, Lk6/j;->c:Ljava/lang/String;

    .line 82
    .line 83
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->r0:Lorg/jsoup/parser/TokeniserState$61;

    .line 84
    .line 85
    iput-object p2, p1, Lorg/jsoup/parser/b;->c:Lorg/jsoup/parser/TokeniserState;

    .line 86
    .line 87
    return-void

    .line 88
    :cond_4
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->m(Lorg/jsoup/parser/TokeniserState;)V

    .line 89
    .line 90
    .line 91
    iget-object p2, p1, Lorg/jsoup/parser/b;->m:Lk6/j;

    .line 92
    .line 93
    iput-boolean v2, p2, Lk6/j;->f:Z

    .line 94
    .line 95
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->w0:Lorg/jsoup/parser/TokeniserState$66;

    .line 96
    .line 97
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/b;->a(Lorg/jsoup/parser/TokeniserState;)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :array_0
    .array-data 2
        0x9s
        0xas
        0xds
        0xcs
        0x20s
    .end array-data
.end method
