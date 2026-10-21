.class public abstract Lm1/E0;
.super Lm1/b0;
.source "SourceFile"


# instance fields
.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lm1/b0;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lm1/E0;->g:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public abstract animateAdd(Lm1/B0;)Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation
.end method

.method public animateAppearance(Lm1/B0;Lm1/a0;Lm1/a0;)Z
    .locals 6

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget v2, p2, Lm1/a0;->a:I

    .line 4
    .line 5
    iget v4, p3, Lm1/a0;->a:I

    .line 6
    .line 7
    if-ne v2, v4, :cond_1

    .line 8
    .line 9
    iget v0, p2, Lm1/a0;->b:I

    .line 10
    .line 11
    iget v1, p3, Lm1/a0;->b:I

    .line 12
    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v1, p1

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    iget v3, p2, Lm1/a0;->b:I

    .line 19
    .line 20
    iget v5, p3, Lm1/a0;->b:I

    .line 21
    .line 22
    move-object v0, p0

    .line 23
    move-object v1, p1

    .line 24
    invoke-virtual/range {v0 .. v5}, Lm1/E0;->animateMove(Lm1/B0;IIII)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1

    .line 29
    :goto_1
    invoke-virtual {p0, v1}, Lm1/E0;->animateAdd(Lm1/B0;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    return p1
.end method

.method public abstract animateChange(Lm1/B0;Lm1/B0;IIII)Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation
.end method

.method public animateChange(Lm1/B0;Lm1/B0;Lm1/a0;Lm1/a0;)Z
    .locals 7

    .line 1
    iget v3, p3, Lm1/a0;->a:I

    .line 2
    iget v4, p3, Lm1/a0;->b:I

    .line 3
    invoke-virtual {p2}, Lm1/B0;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget p4, p3, Lm1/a0;->a:I

    .line 5
    iget p3, p3, Lm1/a0;->b:I

    move v6, p3

    move v5, p4

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    goto :goto_1

    .line 6
    :cond_0
    iget p3, p4, Lm1/a0;->a:I

    .line 7
    iget p4, p4, Lm1/a0;->b:I

    move v5, p3

    move v6, p4

    goto :goto_0

    .line 8
    :goto_1
    invoke-virtual/range {v0 .. v6}, Lm1/E0;->animateChange(Lm1/B0;Lm1/B0;IIII)Z

    move-result p1

    return p1
.end method

.method public animateDisappearance(Lm1/B0;Lm1/a0;Lm1/a0;)Z
    .locals 6

    .line 1
    iget v2, p2, Lm1/a0;->a:I

    .line 2
    .line 3
    iget v3, p2, Lm1/a0;->b:I

    .line 4
    .line 5
    iget-object p2, p1, Lm1/B0;->a:Landroid/view/View;

    .line 6
    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    :goto_0
    move v4, v0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    iget v0, p3, Lm1/a0;->a:I

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :goto_1
    if-nez p3, :cond_1

    .line 19
    .line 20
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    :goto_2
    move v5, p3

    .line 25
    goto :goto_3

    .line 26
    :cond_1
    iget p3, p3, Lm1/a0;->b:I

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :goto_3
    invoke-virtual {p1}, Lm1/B0;->f()Z

    .line 30
    .line 31
    .line 32
    move-result p3

    .line 33
    if-nez p3, :cond_2

    .line 34
    .line 35
    if-ne v2, v4, :cond_3

    .line 36
    .line 37
    if-eq v3, v5, :cond_2

    .line 38
    .line 39
    goto :goto_4

    .line 40
    :cond_2
    move-object v1, p1

    .line 41
    goto :goto_5

    .line 42
    :cond_3
    :goto_4
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 43
    .line 44
    .line 45
    move-result p3

    .line 46
    add-int/2addr p3, v4

    .line 47
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    add-int/2addr v0, v5

    .line 52
    invoke-virtual {p2, v4, v5, p3, v0}, Landroid/view/View;->layout(IIII)V

    .line 53
    .line 54
    .line 55
    move-object v0, p0

    .line 56
    move-object v1, p1

    .line 57
    invoke-virtual/range {v0 .. v5}, Lm1/E0;->animateMove(Lm1/B0;IIII)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    return p1

    .line 62
    :goto_5
    invoke-virtual {p0, v1}, Lm1/E0;->animateRemove(Lm1/B0;)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    return p1
.end method

.method public abstract animateMove(Lm1/B0;IIII)Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation
.end method

.method public animatePersistence(Lm1/B0;Lm1/a0;Lm1/a0;)Z
    .locals 6

    .line 1
    iget v2, p2, Lm1/a0;->a:I

    .line 2
    .line 3
    iget v4, p3, Lm1/a0;->a:I

    .line 4
    .line 5
    if-ne v2, v4, :cond_1

    .line 6
    .line 7
    iget v0, p2, Lm1/a0;->b:I

    .line 8
    .line 9
    iget v1, p3, Lm1/a0;->b:I

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0, p1}, Lm1/E0;->dispatchMoveFinished(Lm1/B0;)V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    return p1

    .line 19
    :cond_1
    :goto_0
    iget v3, p2, Lm1/a0;->b:I

    .line 20
    .line 21
    iget v5, p3, Lm1/a0;->b:I

    .line 22
    .line 23
    move-object v0, p0

    .line 24
    move-object v1, p1

    .line 25
    invoke-virtual/range {v0 .. v5}, Lm1/E0;->animateMove(Lm1/B0;IIII)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1
.end method

.method public abstract animateRemove(Lm1/B0;)Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation
.end method

.method public canReuseUpdatedViewHolder(Lm1/B0;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lm1/E0;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p1}, Lm1/B0;->e()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return p1

    .line 14
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 15
    return p1
.end method

.method public final dispatchAddFinished(Lm1/B0;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lm1/E0;->onAddFinished(Lm1/B0;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lm1/b0;->dispatchAnimationFinished(Lm1/B0;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final dispatchAddStarting(Lm1/B0;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lm1/E0;->onAddStarting(Lm1/B0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final dispatchChangeFinished(Lm1/B0;Z)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lm1/E0;->onChangeFinished(Lm1/B0;Z)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lm1/b0;->dispatchAnimationFinished(Lm1/B0;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final dispatchChangeStarting(Lm1/B0;Z)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lm1/E0;->onChangeStarting(Lm1/B0;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final dispatchMoveFinished(Lm1/B0;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lm1/E0;->onMoveFinished(Lm1/B0;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lm1/b0;->dispatchAnimationFinished(Lm1/B0;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final dispatchMoveStarting(Lm1/B0;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lm1/E0;->onMoveStarting(Lm1/B0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final dispatchRemoveFinished(Lm1/B0;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lm1/E0;->onRemoveFinished(Lm1/B0;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lm1/b0;->dispatchAnimationFinished(Lm1/B0;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final dispatchRemoveStarting(Lm1/B0;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lm1/E0;->onRemoveStarting(Lm1/B0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onAddFinished(Lm1/B0;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public onAddStarting(Lm1/B0;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public onChangeFinished(Lm1/B0;Z)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public onChangeStarting(Lm1/B0;Z)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public onMoveFinished(Lm1/B0;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public onMoveStarting(Lm1/B0;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public onRemoveFinished(Lm1/B0;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public onRemoveStarting(Lm1/B0;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public setSupportsChangeAnimations(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lm1/E0;->g:Z

    .line 2
    .line 3
    return-void
.end method
