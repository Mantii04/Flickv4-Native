.class public final LS2/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP2/e;


# instance fields
.field public final a:LS2/E;

.field public final b:Ljava/lang/String;

.field public final c:LP2/b;

.field public final d:LP2/d;

.field public final e:LS2/H;


# direct methods
.method public constructor <init>(LS2/E;Ljava/lang/String;LP2/b;LP2/d;LS2/H;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LS2/G;->a:LS2/E;

    .line 5
    .line 6
    iput-object p2, p0, LS2/G;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, LS2/G;->c:LP2/b;

    .line 9
    .line 10
    iput-object p4, p0, LS2/G;->d:LP2/d;

    .line 11
    .line 12
    iput-object p5, p0, LS2/G;->e:LS2/H;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public schedule(LP2/c;LP2/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LP2/c;",
            "LP2/g;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, LS2/C;->builder()LS2/B;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, LS2/G;->a:LS2/E;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, LS2/B;->setTransportContext(LS2/E;)LS2/B;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, LS2/k;

    .line 12
    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    iput-object p1, v0, LS2/k;->c:LP2/c;

    .line 16
    .line 17
    iget-object p1, p0, LS2/G;->b:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, LS2/k;->setTransportName(Ljava/lang/String;)LS2/B;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, LS2/k;

    .line 24
    .line 25
    iget-object v0, p0, LS2/G;->d:LP2/d;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iput-object v0, p1, LS2/k;->d:LP2/d;

    .line 30
    .line 31
    iget-object v0, p0, LS2/G;->c:LP2/b;

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    iput-object v0, p1, LS2/k;->e:LP2/b;

    .line 36
    .line 37
    invoke-virtual {p1}, LS2/k;->build()LS2/C;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object v0, p0, LS2/G;->e:LS2/H;

    .line 42
    .line 43
    invoke-virtual {v0, p1, p2}, LS2/H;->send(LS2/C;LP2/g;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 48
    .line 49
    const-string p2, "Null encoding"

    .line 50
    .line 51
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    new-instance p1, Ljava/lang/NullPointerException;

    .line 59
    .line 60
    const-string p2, "Null transformer"

    .line 61
    .line 62
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1

    .line 66
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    new-instance p1, Ljava/lang/NullPointerException;

    .line 70
    .line 71
    const-string p2, "Null event"

    .line 72
    .line 73
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p1
.end method

.method public send(LP2/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LP2/c;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, LJ0/g;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-direct {v0, v1}, LJ0/g;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, LS2/G;->schedule(LP2/c;LP2/g;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
