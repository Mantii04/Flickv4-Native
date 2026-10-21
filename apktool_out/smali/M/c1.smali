.class public LM/c1;
.super LM/b1;
.source "SourceFile"


# instance fields
.field public n:LD/c;

.field public o:LD/c;

.field public p:LD/c;


# direct methods
.method public constructor <init>(LM/h1;LM/c1;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, LM/b1;-><init>(LM/h1;LM/b1;)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, LM/c1;->n:LD/c;

    .line 7
    iput-object p1, p0, LM/c1;->o:LD/c;

    .line 8
    iput-object p1, p0, LM/c1;->p:LD/c;

    return-void
.end method

.method public constructor <init>(LM/h1;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LM/b1;-><init>(LM/h1;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, LM/c1;->n:LD/c;

    .line 3
    iput-object p1, p0, LM/c1;->o:LD/c;

    .line 4
    iput-object p1, p0, LM/c1;->p:LD/c;

    return-void
.end method


# virtual methods
.method public g()LD/c;
    .locals 1

    .line 1
    iget-object v0, p0, LM/c1;->o:LD/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, LM/Z0;->c:Landroid/view/WindowInsets;

    .line 6
    .line 7
    invoke-static {v0}, LI3/v;->v(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, LD/c;->toCompatInsets(Landroid/graphics/Insets;)LD/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, LM/c1;->o:LD/c;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, LM/c1;->o:LD/c;

    .line 18
    .line 19
    return-object v0
.end method

.method public i()LD/c;
    .locals 1

    .line 1
    iget-object v0, p0, LM/c1;->n:LD/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, LM/Z0;->c:Landroid/view/WindowInsets;

    .line 6
    .line 7
    invoke-static {v0}, LI3/v;->y(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, LD/c;->toCompatInsets(Landroid/graphics/Insets;)LD/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, LM/c1;->n:LD/c;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, LM/c1;->n:LD/c;

    .line 18
    .line 19
    return-object v0
.end method

.method public k()LD/c;
    .locals 1

    .line 1
    iget-object v0, p0, LM/c1;->p:LD/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, LM/Z0;->c:Landroid/view/WindowInsets;

    .line 6
    .line 7
    invoke-static {v0}, LI3/v;->d(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, LD/c;->toCompatInsets(Landroid/graphics/Insets;)LD/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, LM/c1;->p:LD/c;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, LM/c1;->p:LD/c;

    .line 18
    .line 19
    return-object v0
.end method

.method public l(IIII)LM/h1;
    .locals 1

    .line 1
    iget-object v0, p0, LM/Z0;->c:Landroid/view/WindowInsets;

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3, p4}, LI3/v;->k(Landroid/view/WindowInsets;IIII)Landroid/view/WindowInsets;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, LM/h1;->toWindowInsetsCompat(Landroid/view/WindowInsets;)LM/h1;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public setStableInsets(LD/c;)V
    .locals 0

    .line 1
    return-void
.end method
