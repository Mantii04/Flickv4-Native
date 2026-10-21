.class public final Landroidx/leanback/widget/u1;
.super Landroid/util/Property;
.source "SourceFile"


# virtual methods
.method public get(Landroidx/leanback/widget/w1;)Ljava/lang/Integer;
    .locals 0

    .line 2
    invoke-virtual {p1}, Landroidx/leanback/widget/w1;->getStreamPosition()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/leanback/widget/w1;

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/u1;->get(Landroidx/leanback/widget/w1;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public set(Landroidx/leanback/widget/w1;Ljava/lang/Integer;)V
    .locals 0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/leanback/widget/w1;->setStreamPosition(I)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/leanback/widget/w1;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/u1;->set(Landroidx/leanback/widget/w1;Ljava/lang/Integer;)V

    return-void
.end method
