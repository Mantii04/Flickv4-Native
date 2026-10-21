.class final enum Lorg/jsoup/parser/TokeniserState$1;
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
    const-string v0, "Data"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final f(Lorg/jsoup/parser/b;Lk6/a;)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Lk6/a;->current()C

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_6

    .line 6
    .line 7
    const/16 v1, 0x26

    .line 8
    .line 9
    if-eq v0, v1, :cond_5

    .line 10
    .line 11
    const/16 v2, 0x3c

    .line 12
    .line 13
    if-eq v0, v2, :cond_4

    .line 14
    .line 15
    const v3, 0xffff

    .line 16
    .line 17
    .line 18
    if-eq v0, v3, :cond_3

    .line 19
    .line 20
    invoke-virtual {p2}, Lk6/a;->a()V

    .line 21
    .line 22
    .line 23
    iget v0, p2, Lk6/a;->e:I

    .line 24
    .line 25
    iget v3, p2, Lk6/a;->c:I

    .line 26
    .line 27
    :goto_0
    iget v4, p2, Lk6/a;->e:I

    .line 28
    .line 29
    iget-object v5, p2, Lk6/a;->a:[C

    .line 30
    .line 31
    if-ge v4, v3, :cond_1

    .line 32
    .line 33
    aget-char v6, v5, v4

    .line 34
    .line 35
    if-eq v6, v1, :cond_1

    .line 36
    .line 37
    if-eq v6, v2, :cond_1

    .line 38
    .line 39
    if-nez v6, :cond_0

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 43
    .line 44
    iput v4, p2, Lk6/a;->e:I

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    :goto_1
    if-le v4, v0, :cond_2

    .line 48
    .line 49
    iget-object p2, p2, Lk6/a;->h:[Ljava/lang/String;

    .line 50
    .line 51
    sub-int/2addr v4, v0

    .line 52
    invoke-static {v5, p2, v0, v4}, Lk6/a;->b([C[Ljava/lang/String;II)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    const-string p2, ""

    .line 58
    .line 59
    :goto_2
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/b;->g(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_3
    new-instance p2, Lk6/k;

    .line 64
    .line 65
    invoke-direct {p2}, Lk6/k;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/b;->h(Lk6/o;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_4
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->q:Lorg/jsoup/parser/TokeniserState$8;

    .line 73
    .line 74
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/b;->a(Lorg/jsoup/parser/TokeniserState;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_5
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->e:Lorg/jsoup/parser/TokeniserState$2;

    .line 79
    .line 80
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/b;->a(Lorg/jsoup/parser/TokeniserState;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_6
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->m(Lorg/jsoup/parser/TokeniserState;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2}, Lk6/a;->c()C

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/b;->f(C)V

    .line 92
    .line 93
    .line 94
    return-void
.end method
