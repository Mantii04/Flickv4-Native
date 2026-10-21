.class public final Lx1/K;
.super Landroid/util/Property;
.source "SourceFile"


# virtual methods
.method public get(Landroid/view/View;)Ljava/lang/Float;
    .locals 1

    .line 2
    sget-object v0, Lx1/M;->a:Lx1/W;

    invoke-virtual {v0, p1}, Lx1/O;->getTransitionAlpha(Landroid/view/View;)F

    move-result p1

    .line 3
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lx1/K;->get(Landroid/view/View;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public set(Landroid/view/View;Ljava/lang/Float;)V
    .locals 1

    .line 2
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 3
    sget-object v0, Lx1/M;->a:Lx1/W;

    invoke-virtual {v0, p1, p2}, Lx1/O;->setTransitionAlpha(Landroid/view/View;F)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lx1/K;->set(Landroid/view/View;Ljava/lang/Float;)V

    return-void
.end method
