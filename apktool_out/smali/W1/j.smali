.class public final LW1/j;
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

    .line 9
    invoke-virtual {p0}, LW1/f;->getCurrentKeyframe()Lg2/a;

    move-result-object v0

    invoke-virtual {p0}, LW1/f;->getInterpolatedCurrentKeyframeProgress()F

    move-result v1

    invoke-virtual {p0, v0, v1}, LW1/j;->getIntValue(Lg2/a;F)I

    move-result v0

    return v0
.end method

.method public final getIntValue(Lg2/a;F)I
    .locals 9

    .line 1
    iget-object v0, p1, Lg2/a;->b:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lg2/a;->c:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 2
    iget-object v1, p0, LW1/f;->e:Lg2/c;

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p1, Lg2/a;->f:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v5, p1, Lg2/a;->c:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, LW1/f;->b()F

    move-result v7

    invoke-virtual {p0}, LW1/f;->getProgress()F

    move-result v8

    .line 5
    iget v2, p1, Lg2/a;->e:F

    iget-object v4, p1, Lg2/a;->b:Ljava/lang/Object;

    move v6, p2

    invoke-virtual/range {v1 .. v8}, Lg2/c;->getValueInternal(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    move v6, p2

    .line 7
    :cond_1
    invoke-virtual {p1}, Lg2/a;->getStartValueInt()I

    move-result p2

    invoke-virtual {p1}, Lg2/a;->getEndValueInt()I

    move-result p1

    invoke-static {p2, p1, v6}, Lf2/g;->lerp(IIF)I

    move-result p1

    return p1

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Missing values for keyframe."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getValue(Lg2/a;F)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, LW1/j;->getIntValue(Lg2/a;F)I

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
