.class public final LM/h1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:LM/h1;


# instance fields
.field public final a:LM/e1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    sget-object v0, LM/d1;->q:LM/h1;

    .line 8
    .line 9
    sput-object v0, LM/h1;->b:LM/h1;

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    sget-object v0, LM/e1;->b:LM/h1;

    .line 13
    .line 14
    sput-object v0, LM/h1;->b:LM/h1;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(LM/h1;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_5

    .line 8
    iget-object p1, p1, LM/h1;->a:LM/e1;

    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    instance-of v1, p1, LM/d1;

    if-eqz v1, :cond_0

    .line 10
    new-instance v0, LM/d1;

    move-object v1, p1

    check-cast v1, LM/d1;

    invoke-direct {v0, p0, v1}, LM/d1;-><init>(LM/h1;LM/d1;)V

    iput-object v0, p0, LM/h1;->a:LM/e1;

    goto :goto_0

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 11
    instance-of v1, p1, LM/c1;

    if-eqz v1, :cond_1

    .line 12
    new-instance v0, LM/c1;

    move-object v1, p1

    check-cast v1, LM/c1;

    invoke-direct {v0, p0, v1}, LM/c1;-><init>(LM/h1;LM/c1;)V

    iput-object v0, p0, LM/h1;->a:LM/e1;

    goto :goto_0

    :cond_1
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2

    .line 13
    instance-of v0, p1, LM/b1;

    if-eqz v0, :cond_2

    .line 14
    new-instance v0, LM/b1;

    move-object v1, p1

    check-cast v1, LM/b1;

    invoke-direct {v0, p0, v1}, LM/b1;-><init>(LM/h1;LM/b1;)V

    iput-object v0, p0, LM/h1;->a:LM/e1;

    goto :goto_0

    .line 15
    :cond_2
    instance-of v0, p1, LM/a1;

    if-eqz v0, :cond_3

    .line 16
    new-instance v0, LM/a1;

    move-object v1, p1

    check-cast v1, LM/a1;

    invoke-direct {v0, p0, v1}, LM/a1;-><init>(LM/h1;LM/a1;)V

    iput-object v0, p0, LM/h1;->a:LM/e1;

    goto :goto_0

    .line 17
    :cond_3
    instance-of v0, p1, LM/Z0;

    if-eqz v0, :cond_4

    .line 18
    new-instance v0, LM/Z0;

    move-object v1, p1

    check-cast v1, LM/Z0;

    invoke-direct {v0, p0, v1}, LM/Z0;-><init>(LM/h1;LM/Z0;)V

    iput-object v0, p0, LM/h1;->a:LM/e1;

    goto :goto_0

    .line 19
    :cond_4
    new-instance v0, LM/e1;

    invoke-direct {v0, p0}, LM/e1;-><init>(LM/h1;)V

    iput-object v0, p0, LM/h1;->a:LM/e1;

    .line 20
    :goto_0
    invoke-virtual {p1, p0}, LM/e1;->e(LM/h1;)V

    return-void

    .line 21
    :cond_5
    new-instance p1, LM/e1;

    invoke-direct {p1, p0}, LM/e1;-><init>(LM/h1;)V

    iput-object p1, p0, LM/h1;->a:LM/e1;

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsets;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 3
    new-instance v0, LM/d1;

    invoke-direct {v0, p0, p1}, LM/d1;-><init>(LM/h1;Landroid/view/WindowInsets;)V

    iput-object v0, p0, LM/h1;->a:LM/e1;

    return-void

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 4
    new-instance v0, LM/c1;

    invoke-direct {v0, p0, p1}, LM/c1;-><init>(LM/h1;Landroid/view/WindowInsets;)V

    iput-object v0, p0, LM/h1;->a:LM/e1;

    return-void

    :cond_1
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2

    .line 5
    new-instance v0, LM/b1;

    invoke-direct {v0, p0, p1}, LM/b1;-><init>(LM/h1;Landroid/view/WindowInsets;)V

    iput-object v0, p0, LM/h1;->a:LM/e1;

    return-void

    .line 6
    :cond_2
    new-instance v0, LM/a1;

    invoke-direct {v0, p0, p1}, LM/a1;-><init>(LM/h1;Landroid/view/WindowInsets;)V

    iput-object v0, p0, LM/h1;->a:LM/e1;

    return-void
.end method

.method public static a(LD/c;IIII)LD/c;
    .locals 5

    .line 1
    iget v0, p0, LD/c;->a:I

    .line 2
    .line 3
    sub-int/2addr v0, p1

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v2, p0, LD/c;->b:I

    .line 10
    .line 11
    sub-int/2addr v2, p2

    .line 12
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    iget v3, p0, LD/c;->c:I

    .line 17
    .line 18
    sub-int/2addr v3, p3

    .line 19
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    iget v4, p0, LD/c;->d:I

    .line 24
    .line 25
    sub-int/2addr v4, p4

    .line 26
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-ne v0, p1, :cond_0

    .line 31
    .line 32
    if-ne v2, p2, :cond_0

    .line 33
    .line 34
    if-ne v3, p3, :cond_0

    .line 35
    .line 36
    if-ne v1, p4, :cond_0

    .line 37
    .line 38
    return-object p0

    .line 39
    :cond_0
    invoke-static {v0, v2, v3, v1}, LD/c;->of(IIII)LD/c;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method

.method public static toWindowInsetsCompat(Landroid/view/WindowInsets;)LM/h1;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, LM/h1;->toWindowInsetsCompat(Landroid/view/WindowInsets;Landroid/view/View;)LM/h1;

    move-result-object p0

    return-object p0
.end method

.method public static toWindowInsetsCompat(Landroid/view/WindowInsets;Landroid/view/View;)LM/h1;
    .locals 2

    .line 2
    new-instance v0, LM/h1;

    invoke-static {p0}, LL/h;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowInsets;

    invoke-direct {v0, p0}, LM/h1;-><init>(Landroid/view/WindowInsets;)V

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4
    invoke-static {p1}, LM/p0;->getRootWindowInsets(Landroid/view/View;)LM/h1;

    move-result-object p0

    .line 5
    iget-object v1, v0, LM/h1;->a:LM/e1;

    invoke-virtual {v1, p0}, LM/e1;->p(LM/h1;)V

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    .line 7
    invoke-virtual {v1, p0}, LM/e1;->d(Landroid/view/View;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public consumeDisplayCutout()LM/h1;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, LM/h1;->a:LM/e1;

    .line 2
    .line 3
    invoke-virtual {v0}, LM/e1;->a()LM/h1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public consumeStableInsets()LM/h1;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, LM/h1;->a:LM/e1;

    .line 2
    .line 3
    invoke-virtual {v0}, LM/e1;->b()LM/h1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public consumeSystemWindowInsets()LM/h1;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, LM/h1;->a:LM/e1;

    .line 2
    .line 3
    invoke-virtual {v0}, LM/e1;->c()LM/h1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    instance-of v0, p1, LM/h1;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_1
    check-cast p1, LM/h1;

    .line 12
    .line 13
    iget-object v0, p0, LM/h1;->a:LM/e1;

    .line 14
    .line 15
    iget-object p1, p1, LM/h1;->a:LM/e1;

    .line 16
    .line 17
    invoke-static {v0, p1}, LL/c;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public getDisplayCutout()LM/q;
    .locals 1

    .line 1
    iget-object v0, p0, LM/h1;->a:LM/e1;

    .line 2
    .line 3
    invoke-virtual {v0}, LM/e1;->f()LM/q;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getInsets(I)LD/c;
    .locals 1

    .line 1
    iget-object v0, p0, LM/h1;->a:LM/e1;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LM/e1;->getInsets(I)LD/c;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getStableInsets()LD/c;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, LM/h1;->a:LM/e1;

    .line 2
    .line 3
    invoke-virtual {v0}, LM/e1;->h()LD/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getSystemGestureInsets()LD/c;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, LM/h1;->a:LM/e1;

    .line 2
    .line 3
    invoke-virtual {v0}, LM/e1;->i()LD/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getSystemWindowInsetBottom()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, LM/h1;->a:LM/e1;

    .line 2
    .line 3
    invoke-virtual {v0}, LM/e1;->j()LD/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v0, v0, LD/c;->d:I

    .line 8
    .line 9
    return v0
.end method

.method public getSystemWindowInsetLeft()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, LM/h1;->a:LM/e1;

    .line 2
    .line 3
    invoke-virtual {v0}, LM/e1;->j()LD/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v0, v0, LD/c;->a:I

    .line 8
    .line 9
    return v0
.end method

.method public getSystemWindowInsetRight()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, LM/h1;->a:LM/e1;

    .line 2
    .line 3
    invoke-virtual {v0}, LM/e1;->j()LD/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v0, v0, LD/c;->c:I

    .line 8
    .line 9
    return v0
.end method

.method public getSystemWindowInsetTop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, LM/h1;->a:LM/e1;

    .line 2
    .line 3
    invoke-virtual {v0}, LM/e1;->j()LD/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v0, v0, LD/c;->b:I

    .line 8
    .line 9
    return v0
.end method

.method public hasSystemWindowInsets()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, LM/h1;->a:LM/e1;

    .line 2
    .line 3
    invoke-virtual {v0}, LM/e1;->j()LD/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, LD/c;->e:LD/c;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, LD/c;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    xor-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, LM/h1;->a:LM/e1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, LM/e1;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public inset(IIII)LM/h1;
    .locals 1

    .line 1
    iget-object v0, p0, LM/h1;->a:LM/e1;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, LM/e1;->l(IIII)LM/h1;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public isConsumed()Z
    .locals 1

    .line 1
    iget-object v0, p0, LM/h1;->a:LM/e1;

    .line 2
    .line 3
    invoke-virtual {v0}, LM/e1;->m()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public replaceSystemWindowInsets(IIII)LM/h1;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, LM/U0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, LM/U0;-><init>(LM/h1;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2, p3, p4}, LD/c;->of(IIII)LD/c;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, LM/U0;->setSystemWindowInsets(LD/c;)LM/U0;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, LM/U0;->build()LM/h1;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public toWindowInsets()Landroid/view/WindowInsets;
    .locals 2

    .line 1
    iget-object v0, p0, LM/h1;->a:LM/e1;

    .line 2
    .line 3
    instance-of v1, v0, LM/Z0;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, LM/Z0;

    .line 8
    .line 9
    iget-object v0, v0, LM/Z0;->c:Landroid/view/WindowInsets;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method
