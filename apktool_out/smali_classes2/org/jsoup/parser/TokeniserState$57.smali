.class final enum Lorg/jsoup/parser/TokeniserState$57;
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
    const-string v0, "DoctypePublicIdentifier_doubleQuoted"

    .line 2
    .line 3
    const/16 v1, 0x38

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
    if-eqz p2, :cond_3

    .line 6
    .line 7
    const/16 v0, 0x22

    .line 8
    .line 9
    if-eq p2, v0, :cond_2

    .line 10
    .line 11
    sget-object v0, Lorg/jsoup/parser/TokeniserState;->b:Lorg/jsoup/parser/TokeniserState$1;

    .line 12
    .line 13
    const/16 v1, 0x3e

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    if-eq p2, v1, :cond_1

    .line 17
    .line 18
    const v1, 0xffff

    .line 19
    .line 20
    .line 21
    if-eq p2, v1, :cond_0

    .line 22
    .line 23
    iget-object p1, p1, Lorg/jsoup/parser/b;->m:Lk6/j;

    .line 24
    .line 25
    iget-object p1, p1, Lk6/j;->d:Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->l(Lorg/jsoup/parser/TokeniserState;)V

    .line 32
    .line 33
    .line 34
    iget-object p2, p1, Lorg/jsoup/parser/b;->m:Lk6/j;

    .line 35
    .line 36
    iput-boolean v2, p2, Lk6/j;->f:Z

    .line 37
    .line 38
    invoke-virtual {p1}, Lorg/jsoup/parser/b;->j()V

    .line 39
    .line 40
    .line 41
    iput-object v0, p1, Lorg/jsoup/parser/b;->c:Lorg/jsoup/parser/TokeniserState;

    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->m(Lorg/jsoup/parser/TokeniserState;)V

    .line 45
    .line 46
    .line 47
    iget-object p2, p1, Lorg/jsoup/parser/b;->m:Lk6/j;

    .line 48
    .line 49
    iput-boolean v2, p2, Lk6/j;->f:Z

    .line 50
    .line 51
    invoke-virtual {p1}, Lorg/jsoup/parser/b;->j()V

    .line 52
    .line 53
    .line 54
    iput-object v0, p1, Lorg/jsoup/parser/b;->c:Lorg/jsoup/parser/TokeniserState;

    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->p0:Lorg/jsoup/parser/TokeniserState$59;

    .line 58
    .line 59
    iput-object p2, p1, Lorg/jsoup/parser/b;->c:Lorg/jsoup/parser/TokeniserState;

    .line 60
    .line 61
    return-void

    .line 62
    :cond_3
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->m(Lorg/jsoup/parser/TokeniserState;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p1, Lorg/jsoup/parser/b;->m:Lk6/j;

    .line 66
    .line 67
    iget-object p1, p1, Lk6/j;->d:Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const p2, 0xfffd

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    return-void
.end method
