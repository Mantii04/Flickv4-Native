.class public final Landroidx/leanback/transition/e;
.super La/c;
.source "SourceFile"


# virtual methods
.method public getGoneY(Landroidx/leanback/transition/FadeAndShortSlide;Landroid/view/ViewGroup;Landroid/view/View;[I)F
    .locals 0

    .line 1
    invoke-virtual {p3}, Landroid/view/View;->getTranslationY()F

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    invoke-virtual {p1, p2}, Landroidx/leanback/transition/FadeAndShortSlide;->b(Landroid/view/ViewGroup;)F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    sub-float/2addr p3, p1

    .line 10
    return p3
.end method
