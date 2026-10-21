.class public final LG2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/Object;


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget v0, p0, LG2/b;->a:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_2

    .line 5
    .line 6
    iget v0, p0, LG2/b;->b:I

    .line 7
    .line 8
    if-lez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, LG2/b;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lp/p;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lp/p;->maxSize()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget v1, p0, LG2/b;->b:I

    .line 21
    .line 22
    if-eq v0, v1, :cond_5

    .line 23
    .line 24
    :cond_0
    new-instance v0, Lp/p;

    .line 25
    .line 26
    iget v1, p0, LG2/b;->b:I

    .line 27
    .line 28
    invoke-direct {v0, v1}, Lp/p;-><init>(I)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, LG2/b;->c:Ljava/lang/Object;

    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 37
    .line 38
    .line 39
    throw v0

    .line 40
    :cond_2
    const/4 v1, 0x3

    .line 41
    if-eq v0, v1, :cond_4

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    if-ne v0, v1, :cond_3

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, LG2/b;->c:Ljava/lang/Object;

    .line 49
    .line 50
    return-void

    .line 51
    :cond_4
    :goto_0
    iget-object v0, p0, LG2/b;->c:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v0, Lp/p;

    .line 54
    .line 55
    const v1, 0x7fffffff

    .line 56
    .line 57
    .line 58
    if-eqz v0, :cond_6

    .line 59
    .line 60
    invoke-virtual {v0}, Lp/p;->maxSize()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eq v0, v1, :cond_5

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_5
    return-void

    .line 68
    :cond_6
    :goto_1
    new-instance v0, Lp/p;

    .line 69
    .line 70
    invoke-direct {v0, v1}, Lp/p;-><init>(I)V

    .line 71
    .line 72
    .line 73
    iput-object v0, p0, LG2/b;->c:Ljava/lang/Object;

    .line 74
    .line 75
    return-void
.end method
