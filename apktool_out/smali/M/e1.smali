.class public LM/e1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:LM/h1;


# instance fields
.field public final a:LM/h1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LM/U0;

    .line 2
    .line 3
    invoke-direct {v0}, LM/U0;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, LM/U0;->build()LM/h1;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, LM/h1;->consumeDisplayCutout()LM/h1;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, LM/h1;->consumeStableInsets()LM/h1;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, LM/h1;->consumeSystemWindowInsets()LM/h1;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, LM/e1;->b:LM/h1;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(LM/h1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LM/e1;->a:LM/h1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()LM/h1;
    .locals 1

    .line 1
    iget-object v0, p0, LM/e1;->a:LM/h1;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()LM/h1;
    .locals 1

    .line 1
    iget-object v0, p0, LM/e1;->a:LM/h1;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()LM/h1;
    .locals 1

    .line 1
    iget-object v0, p0, LM/e1;->a:LM/h1;

    .line 2
    .line 3
    return-object v0
.end method

.method public d(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public e(LM/h1;)V
    .locals 0

    .line 1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, LM/e1;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, LM/e1;

    .line 12
    .line 13
    invoke-virtual {p0}, LM/e1;->n()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {p1}, LM/e1;->n()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-ne v1, v3, :cond_2

    .line 22
    .line 23
    invoke-virtual {p0}, LM/e1;->m()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {p1}, LM/e1;->m()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-ne v1, v3, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, LM/e1;->j()LD/c;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p1}, LM/e1;->j()LD/c;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-static {v1, v3}, LL/c;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    invoke-virtual {p0}, LM/e1;->h()LD/c;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {p1}, LM/e1;->h()LD/c;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-static {v1, v3}, LL/c;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    invoke-virtual {p0}, LM/e1;->f()LM/q;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {p1}, LM/e1;->f()LM/q;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {v1, p1}, LL/c;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_2

    .line 74
    .line 75
    return v0

    .line 76
    :cond_2
    return v2
.end method

.method public f()LM/q;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public g()LD/c;
    .locals 1

    .line 1
    invoke-virtual {p0}, LM/e1;->j()LD/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getInsets(I)LD/c;
    .locals 0

    .line 1
    sget-object p1, LD/c;->e:LD/c;

    .line 2
    .line 3
    return-object p1
.end method

.method public h()LD/c;
    .locals 1

    .line 1
    sget-object v0, LD/c;->e:LD/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .line 1
    invoke-virtual {p0}, LM/e1;->n()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, LM/e1;->m()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p0}, LM/e1;->j()LD/c;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {p0}, LM/e1;->h()LD/c;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {p0}, LM/e1;->f()LM/q;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    const/4 v5, 0x5

    .line 30
    new-array v5, v5, [Ljava/lang/Object;

    .line 31
    .line 32
    const/4 v6, 0x0

    .line 33
    aput-object v0, v5, v6

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    aput-object v1, v5, v0

    .line 37
    .line 38
    const/4 v0, 0x2

    .line 39
    aput-object v2, v5, v0

    .line 40
    .line 41
    const/4 v0, 0x3

    .line 42
    aput-object v3, v5, v0

    .line 43
    .line 44
    const/4 v0, 0x4

    .line 45
    aput-object v4, v5, v0

    .line 46
    .line 47
    invoke-static {v5}, LL/c;->hash([Ljava/lang/Object;)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    return v0
.end method

.method public i()LD/c;
    .locals 1

    .line 1
    invoke-virtual {p0}, LM/e1;->j()LD/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public j()LD/c;
    .locals 1

    .line 1
    sget-object v0, LD/c;->e:LD/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public k()LD/c;
    .locals 1

    .line 1
    invoke-virtual {p0}, LM/e1;->j()LD/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public l(IIII)LM/h1;
    .locals 0

    .line 1
    sget-object p1, LM/e1;->b:LM/h1;

    .line 2
    .line 3
    return-object p1
.end method

.method public m()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public n()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public o(LD/c;)V
    .locals 0

    .line 1
    return-void
.end method

.method public p(LM/h1;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setOverriddenInsets([LD/c;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setStableInsets(LD/c;)V
    .locals 0

    .line 1
    return-void
.end method
