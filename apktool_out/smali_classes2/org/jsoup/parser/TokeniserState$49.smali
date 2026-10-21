.class final enum Lorg/jsoup/parser/TokeniserState$49;
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
    const-string v0, "CommentEnd"

    .line 2
    .line 3
    const/16 v1, 0x30

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
    .locals 4

    .line 1
    invoke-virtual {p2}, Lk6/a;->c()C

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    sget-object v0, Lorg/jsoup/parser/TokeniserState;->d0:Lorg/jsoup/parser/TokeniserState$47;

    .line 6
    .line 7
    const-string v1, "--"

    .line 8
    .line 9
    if-eqz p2, :cond_4

    .line 10
    .line 11
    const/16 v2, 0x21

    .line 12
    .line 13
    if-eq p2, v2, :cond_3

    .line 14
    .line 15
    const/16 v2, 0x2d

    .line 16
    .line 17
    if-eq p2, v2, :cond_2

    .line 18
    .line 19
    sget-object v2, Lorg/jsoup/parser/TokeniserState;->b:Lorg/jsoup/parser/TokeniserState$1;

    .line 20
    .line 21
    const/16 v3, 0x3e

    .line 22
    .line 23
    if-eq p2, v3, :cond_1

    .line 24
    .line 25
    const v3, 0xffff

    .line 26
    .line 27
    .line 28
    if-eq p2, v3, :cond_0

    .line 29
    .line 30
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->m(Lorg/jsoup/parser/TokeniserState;)V

    .line 31
    .line 32
    .line 33
    iget-object v2, p1, Lorg/jsoup/parser/b;->n:Lk6/i;

    .line 34
    .line 35
    iget-object v2, v2, Lk6/i;->b:Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iput-object v0, p1, Lorg/jsoup/parser/b;->c:Lorg/jsoup/parser/TokeniserState;

    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->l(Lorg/jsoup/parser/TokeniserState;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lorg/jsoup/parser/b;->i()V

    .line 50
    .line 51
    .line 52
    iput-object v2, p1, Lorg/jsoup/parser/b;->c:Lorg/jsoup/parser/TokeniserState;

    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/parser/b;->i()V

    .line 56
    .line 57
    .line 58
    iput-object v2, p1, Lorg/jsoup/parser/b;->c:Lorg/jsoup/parser/TokeniserState;

    .line 59
    .line 60
    return-void

    .line 61
    :cond_2
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->m(Lorg/jsoup/parser/TokeniserState;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p1, Lorg/jsoup/parser/b;->n:Lk6/i;

    .line 65
    .line 66
    iget-object p1, p1, Lk6/i;->b:Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_3
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->m(Lorg/jsoup/parser/TokeniserState;)V

    .line 73
    .line 74
    .line 75
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->g0:Lorg/jsoup/parser/TokeniserState$50;

    .line 76
    .line 77
    iput-object p2, p1, Lorg/jsoup/parser/b;->c:Lorg/jsoup/parser/TokeniserState;

    .line 78
    .line 79
    return-void

    .line 80
    :cond_4
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->m(Lorg/jsoup/parser/TokeniserState;)V

    .line 81
    .line 82
    .line 83
    iget-object p2, p1, Lorg/jsoup/parser/b;->n:Lk6/i;

    .line 84
    .line 85
    iget-object p2, p2, Lk6/i;->b:Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const v1, 0xfffd

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iput-object v0, p1, Lorg/jsoup/parser/b;->c:Lorg/jsoup/parser/TokeniserState;

    .line 97
    .line 98
    return-void
.end method
