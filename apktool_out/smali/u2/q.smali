.class public final Lu2/q;
.super Lu2/u;
.source "SourceFile"


# virtual methods
.method public getSampleSizeRounding(IIII)Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lu2/q;->getScaleFactor(IIII)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    .line 7
    cmpl-float v0, v0, v1

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object p1, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;->e:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    sget-object v0, Lu2/u;->a:Lu2/s;

    .line 15
    .line 16
    invoke-virtual {v0, p1, p2, p3, p4}, Lu2/s;->getSampleSizeRounding(IIII)Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public getScaleFactor(IIII)F
    .locals 1

    .line 1
    sget-object v0, Lu2/u;->a:Lu2/s;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lu2/s;->getScaleFactor(IIII)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/high16 p2, 0x3f800000    # 1.0f

    .line 8
    .line 9
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method
