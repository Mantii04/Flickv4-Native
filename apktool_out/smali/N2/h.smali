.class public final LN2/h;
.super LL2/c;
.source "SourceFile"


# virtual methods
.method public get(LN2/q;)Ljava/lang/Integer;
    .locals 0

    .line 2
    invoke-virtual {p1}, LN2/q;->getRotateX()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, LN2/q;

    invoke-virtual {p0, p1}, LN2/h;->get(LN2/q;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public setValue(LN2/q;I)V
    .locals 0

    .line 2
    invoke-virtual {p1, p2}, LN2/q;->setRotateX(I)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, LN2/q;

    invoke-virtual {p0, p1, p2}, LN2/h;->setValue(LN2/q;I)V

    return-void
.end method
