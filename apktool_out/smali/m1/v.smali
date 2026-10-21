.class public final Lm1/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lm1/x;

    check-cast p2, Lm1/x;

    invoke-virtual {p0, p1, p2}, Lm1/v;->compare(Lm1/x;Lm1/x;)I

    move-result p1

    return p1
.end method

.method public compare(Lm1/x;Lm1/x;)I
    .locals 6

    .line 2
    iget-object v0, p1, Lm1/x;->d:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iget-object v4, p2, Lm1/x;->d:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    const/4 v5, -0x1

    if-eq v3, v4, :cond_3

    if-nez v0, :cond_2

    return v2

    :cond_2
    return v5

    .line 3
    :cond_3
    iget-boolean v0, p1, Lm1/x;->a:Z

    iget-boolean v3, p2, Lm1/x;->a:Z

    if-eq v0, v3, :cond_5

    if-eqz v0, :cond_4

    return v5

    :cond_4
    return v2

    .line 4
    :cond_5
    iget v0, p2, Lm1/x;->b:I

    iget v2, p1, Lm1/x;->b:I

    sub-int/2addr v0, v2

    if-eqz v0, :cond_6

    return v0

    .line 5
    :cond_6
    iget p1, p1, Lm1/x;->c:I

    iget p2, p2, Lm1/x;->c:I

    sub-int/2addr p1, p2

    if-eqz p1, :cond_7

    return p1

    :cond_7
    return v1
.end method
