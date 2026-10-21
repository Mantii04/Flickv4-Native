.class public final LN2/o;
.super LL2/b;
.source "SourceFile"


# virtual methods
.method public get(LN2/q;)Ljava/lang/Float;
    .locals 0

    .line 2
    invoke-virtual {p1}, LN2/q;->getScaleX()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, LN2/q;

    invoke-virtual {p0, p1}, LN2/o;->get(LN2/q;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(LN2/q;F)V
    .locals 0

    .line 2
    invoke-virtual {p1, p2}, LN2/q;->setScaleX(F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 1
    check-cast p1, LN2/q;

    invoke-virtual {p0, p1, p2}, LN2/o;->setValue(LN2/q;F)V

    return-void
.end method
