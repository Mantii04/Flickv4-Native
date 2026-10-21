.class public final Lx1/E;
.super Lx1/y;
.source "SourceFile"


# instance fields
.field public a:Lx1/F;


# virtual methods
.method public onTransitionEnd(Landroidx/transition/e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lx1/E;->a:Lx1/F;

    .line 2
    .line 3
    iget v1, v0, Lx1/F;->M:I

    .line 4
    .line 5
    add-int/lit8 v1, v1, -0x1

    .line 6
    .line 7
    iput v1, v0, Lx1/F;->M:I

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-boolean v1, v0, Lx1/F;->N:Z

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/transition/e;->end()V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p1, p0}, Landroidx/transition/e;->removeListener(Lx1/w;)Landroidx/transition/e;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onTransitionStart(Landroidx/transition/e;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lx1/E;->a:Lx1/F;

    .line 2
    .line 3
    iget-boolean v0, p1, Lx1/F;->N:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/transition/e;->start()V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p1, Lx1/F;->N:Z

    .line 12
    .line 13
    :cond_0
    return-void
.end method
