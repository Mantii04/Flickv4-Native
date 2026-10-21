.class final enum Lorg/jsoup/parser/TokeniserState$52;
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
    const-string v0, "BeforeDoctypeName"

    .line 2
    .line 3
    const/16 v1, 0x33

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
    .locals 2

    .line 1
    invoke-virtual {p2}, Lk6/a;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lorg/jsoup/parser/TokeniserState;->j0:Lorg/jsoup/parser/TokeniserState$53;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p2, p1, Lorg/jsoup/parser/b;->m:Lk6/j;

    .line 10
    .line 11
    invoke-virtual {p2}, Lk6/j;->f()Lk6/o;

    .line 12
    .line 13
    .line 14
    iput-object v1, p1, Lorg/jsoup/parser/b;->c:Lorg/jsoup/parser/TokeniserState;

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {p2}, Lk6/a;->c()C

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-eqz p2, :cond_3

    .line 22
    .line 23
    const/16 v0, 0x20

    .line 24
    .line 25
    if-eq p2, v0, :cond_2

    .line 26
    .line 27
    const v0, 0xffff

    .line 28
    .line 29
    .line 30
    if-eq p2, v0, :cond_1

    .line 31
    .line 32
    const/16 v0, 0x9

    .line 33
    .line 34
    if-eq p2, v0, :cond_2

    .line 35
    .line 36
    const/16 v0, 0xa

    .line 37
    .line 38
    if-eq p2, v0, :cond_2

    .line 39
    .line 40
    const/16 v0, 0xc

    .line 41
    .line 42
    if-eq p2, v0, :cond_2

    .line 43
    .line 44
    const/16 v0, 0xd

    .line 45
    .line 46
    if-eq p2, v0, :cond_2

    .line 47
    .line 48
    iget-object v0, p1, Lorg/jsoup/parser/b;->m:Lk6/j;

    .line 49
    .line 50
    invoke-virtual {v0}, Lk6/j;->f()Lk6/o;

    .line 51
    .line 52
    .line 53
    iget-object v0, p1, Lorg/jsoup/parser/b;->m:Lk6/j;

    .line 54
    .line 55
    iget-object v0, v0, Lk6/j;->b:Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iput-object v1, p1, Lorg/jsoup/parser/b;->c:Lorg/jsoup/parser/TokeniserState;

    .line 61
    .line 62
    return-void

    .line 63
    :cond_1
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->l(Lorg/jsoup/parser/TokeniserState;)V

    .line 64
    .line 65
    .line 66
    iget-object p2, p1, Lorg/jsoup/parser/b;->m:Lk6/j;

    .line 67
    .line 68
    invoke-virtual {p2}, Lk6/j;->f()Lk6/o;

    .line 69
    .line 70
    .line 71
    iget-object p2, p1, Lorg/jsoup/parser/b;->m:Lk6/j;

    .line 72
    .line 73
    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p2, Lk6/j;->f:Z

    .line 75
    .line 76
    invoke-virtual {p1}, Lorg/jsoup/parser/b;->j()V

    .line 77
    .line 78
    .line 79
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->b:Lorg/jsoup/parser/TokeniserState$1;

    .line 80
    .line 81
    iput-object p2, p1, Lorg/jsoup/parser/b;->c:Lorg/jsoup/parser/TokeniserState;

    .line 82
    .line 83
    :cond_2
    return-void

    .line 84
    :cond_3
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->m(Lorg/jsoup/parser/TokeniserState;)V

    .line 85
    .line 86
    .line 87
    iget-object p2, p1, Lorg/jsoup/parser/b;->m:Lk6/j;

    .line 88
    .line 89
    invoke-virtual {p2}, Lk6/j;->f()Lk6/o;

    .line 90
    .line 91
    .line 92
    iget-object p2, p1, Lorg/jsoup/parser/b;->m:Lk6/j;

    .line 93
    .line 94
    iget-object p2, p2, Lk6/j;->b:Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const v0, 0xfffd

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    iput-object v1, p1, Lorg/jsoup/parser/b;->c:Lorg/jsoup/parser/TokeniserState;

    .line 103
    .line 104
    return-void
.end method
