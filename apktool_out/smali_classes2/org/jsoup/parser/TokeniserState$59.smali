.class final enum Lorg/jsoup/parser/TokeniserState$59;
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
    const-string v0, "AfterDoctypePublicIdentifier"

    .line 2
    .line 3
    const/16 v1, 0x3a

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
    invoke-virtual {p2}, Lk6/a;->c()C

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/16 v0, 0x9

    .line 6
    .line 7
    if-eq p2, v0, :cond_4

    .line 8
    .line 9
    const/16 v0, 0xa

    .line 10
    .line 11
    if-eq p2, v0, :cond_4

    .line 12
    .line 13
    const/16 v0, 0xc

    .line 14
    .line 15
    if-eq p2, v0, :cond_4

    .line 16
    .line 17
    const/16 v0, 0xd

    .line 18
    .line 19
    if-eq p2, v0, :cond_4

    .line 20
    .line 21
    const/16 v0, 0x20

    .line 22
    .line 23
    if-eq p2, v0, :cond_4

    .line 24
    .line 25
    const/16 v0, 0x22

    .line 26
    .line 27
    if-eq p2, v0, :cond_3

    .line 28
    .line 29
    const/16 v0, 0x27

    .line 30
    .line 31
    if-eq p2, v0, :cond_2

    .line 32
    .line 33
    sget-object v0, Lorg/jsoup/parser/TokeniserState;->b:Lorg/jsoup/parser/TokeniserState$1;

    .line 34
    .line 35
    const/16 v1, 0x3e

    .line 36
    .line 37
    if-eq p2, v1, :cond_1

    .line 38
    .line 39
    const v1, 0xffff

    .line 40
    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    if-eq p2, v1, :cond_0

    .line 44
    .line 45
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->m(Lorg/jsoup/parser/TokeniserState;)V

    .line 46
    .line 47
    .line 48
    iget-object p2, p1, Lorg/jsoup/parser/b;->m:Lk6/j;

    .line 49
    .line 50
    iput-boolean v2, p2, Lk6/j;->f:Z

    .line 51
    .line 52
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->w0:Lorg/jsoup/parser/TokeniserState$66;

    .line 53
    .line 54
    iput-object p2, p1, Lorg/jsoup/parser/b;->c:Lorg/jsoup/parser/TokeniserState;

    .line 55
    .line 56
    return-void

    .line 57
    :cond_0
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->l(Lorg/jsoup/parser/TokeniserState;)V

    .line 58
    .line 59
    .line 60
    iget-object p2, p1, Lorg/jsoup/parser/b;->m:Lk6/j;

    .line 61
    .line 62
    iput-boolean v2, p2, Lk6/j;->f:Z

    .line 63
    .line 64
    invoke-virtual {p1}, Lorg/jsoup/parser/b;->j()V

    .line 65
    .line 66
    .line 67
    iput-object v0, p1, Lorg/jsoup/parser/b;->c:Lorg/jsoup/parser/TokeniserState;

    .line 68
    .line 69
    return-void

    .line 70
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/parser/b;->j()V

    .line 71
    .line 72
    .line 73
    iput-object v0, p1, Lorg/jsoup/parser/b;->c:Lorg/jsoup/parser/TokeniserState;

    .line 74
    .line 75
    return-void

    .line 76
    :cond_2
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->m(Lorg/jsoup/parser/TokeniserState;)V

    .line 77
    .line 78
    .line 79
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->u0:Lorg/jsoup/parser/TokeniserState$64;

    .line 80
    .line 81
    iput-object p2, p1, Lorg/jsoup/parser/b;->c:Lorg/jsoup/parser/TokeniserState;

    .line 82
    .line 83
    return-void

    .line 84
    :cond_3
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->m(Lorg/jsoup/parser/TokeniserState;)V

    .line 85
    .line 86
    .line 87
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->t0:Lorg/jsoup/parser/TokeniserState$63;

    .line 88
    .line 89
    iput-object p2, p1, Lorg/jsoup/parser/b;->c:Lorg/jsoup/parser/TokeniserState;

    .line 90
    .line 91
    return-void

    .line 92
    :cond_4
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->q0:Lorg/jsoup/parser/TokeniserState$60;

    .line 93
    .line 94
    iput-object p2, p1, Lorg/jsoup/parser/b;->c:Lorg/jsoup/parser/TokeniserState;

    .line 95
    .line 96
    return-void
.end method
