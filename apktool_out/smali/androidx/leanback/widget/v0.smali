.class public final Landroidx/leanback/widget/v0;
.super Landroid/util/Property;
.source "SourceFile"


# virtual methods
.method public get(Landroidx/leanback/widget/y0;)Ljava/lang/Float;
    .locals 0

    .line 2
    invoke-virtual {p1}, Landroidx/leanback/widget/y0;->getAlpha()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/leanback/widget/y0;

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/v0;->get(Landroidx/leanback/widget/y0;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public set(Landroidx/leanback/widget/y0;Ljava/lang/Float;)V
    .locals 0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/leanback/widget/y0;->setAlpha(F)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/leanback/widget/y0;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/v0;->set(Landroidx/leanback/widget/y0;Ljava/lang/Float;)V

    return-void
.end method
