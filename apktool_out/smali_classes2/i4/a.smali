.class public abstract Li4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static setAlpha(Landroid/view/View;F)V
    .locals 1

    .line 1
    sget-boolean v0, Lj4/a;->w:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lj4/a;->wrap(Landroid/view/View;)Lj4/a;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0, p1}, Lj4/a;->setAlpha(F)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static setTranslationX(Landroid/view/View;F)V
    .locals 1

    .line 1
    sget-boolean v0, Lj4/a;->w:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lj4/a;->wrap(Landroid/view/View;)Lj4/a;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0, p1}, Lj4/a;->setTranslationX(F)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
