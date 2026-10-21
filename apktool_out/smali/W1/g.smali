.class public final LW1/g;
.super LW1/k;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lg2/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, LW1/f;-><init>(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getIntValue()I
    .locals 2

    .line 11
    invoke-virtual {p0}, LW1/f;->getCurrentKeyframe()Lg2/a;

    move-result-object v0

    invoke-virtual {p0}, LW1/f;->getInterpolatedCurrentKeyframeProgress()F

    move-result v1

    invoke-virtual {p0, v0, v1}, LW1/g;->getIntValue(Lg2/a;F)I

    move-result v0

    return v0
.end method

.method public getIntValue(Lg2/a;F)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg2/a;",
            "F)I"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lg2/a;->b:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v1, p1, Lg2/a;->c:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 2
    move-object v5, v0

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3
    iget-object v1, p1, Lg2/a;->c:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4
    iget-object v2, p0, LW1/f;->e:Lg2/c;

    if-eqz v2, :cond_0

    .line 5
    iget-object v3, p1, Lg2/a;->f:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 6
    invoke-virtual {p0}, LW1/f;->b()F

    move-result v8

    invoke-virtual {p0}, LW1/f;->getProgress()F

    move-result v9

    .line 7
    iget v3, p1, Lg2/a;->e:F

    move v7, p2

    invoke-virtual/range {v2 .. v9}, Lg2/c;->getValueInternal(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    move v7, p2

    :cond_1
    const/4 p1, 0x0

    const/high16 p2, 0x3f800000    # 1.0f

    .line 9
    invoke-static {v7, p1, p2}, Lf2/g;->clamp(FFF)F

    move-result p1

    invoke-static {p1, v0, v1}, Lf2/b;->evaluate(FII)I

    move-result p1

    return p1

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Missing values for keyframe."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getValue(Lg2/a;F)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, LW1/g;->getIntValue(Lg2/a;F)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
