.class public final Landroidx/leanback/transition/g;
.super Landroidx/leanback/transition/n;
.source "SourceFile"


# virtual methods
.method public getGone(Landroid/view/View;)F
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    int-to-float p1, p1

    .line 10
    sub-float/2addr v0, p1

    .line 11
    return v0
.end method
