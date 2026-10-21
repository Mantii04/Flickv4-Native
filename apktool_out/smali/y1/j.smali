.class public final Ly1/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# instance fields
.field public a:[LD/f;


# virtual methods
.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, [LD/f;

    check-cast p3, [LD/f;

    invoke-virtual {p0, p1, p2, p3}, Ly1/j;->evaluate(F[LD/f;[LD/f;)[LD/f;

    move-result-object p1

    return-object p1
.end method

.method public evaluate(F[LD/f;[LD/f;)[LD/f;
    .locals 4

    .line 2
    invoke-static {p2, p3}, LD/g;->canMorph([LD/f;[LD/f;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Ly1/j;->a:[LD/f;

    invoke-static {v0, p2}, LD/g;->canMorph([LD/f;[LD/f;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {p2}, LD/g;->deepCopyNodes([LD/f;)[LD/f;

    move-result-object v0

    iput-object v0, p0, Ly1/j;->a:[LD/f;

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 6
    iget-object v1, p0, Ly1/j;->a:[LD/f;

    aget-object v1, v1, v0

    aget-object v2, p2, v0

    aget-object v3, p3, v0

    invoke-virtual {v1, v2, v3, p1}, LD/f;->interpolatePathDataNode(LD/f;LD/f;F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Ly1/j;->a:[LD/f;

    return-object p1

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t interpolate between two incompatible pathData"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
