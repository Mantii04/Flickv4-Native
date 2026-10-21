.class public abstract Lf2/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/graphics/PathMeasure;

.field public static final b:Landroid/graphics/Path;

.field public static final c:Landroid/graphics/Path;

.field public static final d:[F

.field public static final e:F

.field public static f:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/PathMeasure;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lf2/h;->a:Landroid/graphics/PathMeasure;

    .line 7
    .line 8
    new-instance v0, Landroid/graphics/Path;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lf2/h;->b:Landroid/graphics/Path;

    .line 14
    .line 15
    new-instance v0, Landroid/graphics/Path;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lf2/h;->c:Landroid/graphics/Path;

    .line 21
    .line 22
    const/4 v0, 0x4

    .line 23
    new-array v0, v0, [F

    .line 24
    .line 25
    sput-object v0, Lf2/h;->d:[F

    .line 26
    .line 27
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 28
    .line 29
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    div-double/2addr v2, v0

    .line 34
    double-to-float v0, v2

    .line 35
    sput v0, Lf2/h;->e:F

    .line 36
    .line 37
    const/high16 v0, -0x40800000    # -1.0f

    .line 38
    .line 39
    sput v0, Lf2/h;->f:F

    .line 40
    .line 41
    return-void
.end method

.method public static applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V
    .locals 8

    .line 6
    const-string v0, "applyTrimPathIfNeeded"

    invoke-static {v0}, LT1/c;->beginSection(Ljava/lang/String;)V

    .line 7
    sget-object v1, Lf2/h;->a:Landroid/graphics/PathMeasure;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 8
    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, p1, v3

    const/4 v5, 0x0

    if-nez v4, :cond_0

    cmpl-float v4, p2, v5

    if-nez v4, :cond_0

    .line 9
    invoke-static {v0}, LT1/c;->endSection(Ljava/lang/String;)F

    return-void

    :cond_0
    cmpg-float v4, v2, v3

    if-ltz v4, :cond_9

    sub-float v4, p2, p1

    sub-float/2addr v4, v3

    .line 10
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v3, v3, v6

    if-gez v3, :cond_1

    goto :goto_1

    :cond_1
    mul-float/2addr p1, v2

    mul-float/2addr p2, v2

    .line 11
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 12
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    mul-float/2addr p3, v2

    add-float/2addr v3, p3

    add-float/2addr p1, p3

    cmpl-float p2, v3, v2

    if-ltz p2, :cond_2

    cmpl-float p2, p1, v2

    if-ltz p2, :cond_2

    .line 13
    invoke-static {v3, v2}, Lf2/g;->a(FF)I

    move-result p2

    int-to-float v3, p2

    .line 14
    invoke-static {p1, v2}, Lf2/g;->a(FF)I

    move-result p1

    int-to-float p1, p1

    :cond_2
    cmpg-float p2, v3, v5

    if-gez p2, :cond_3

    .line 15
    invoke-static {v3, v2}, Lf2/g;->a(FF)I

    move-result p2

    int-to-float v3, p2

    :cond_3
    cmpg-float p2, p1, v5

    if-gez p2, :cond_4

    .line 16
    invoke-static {p1, v2}, Lf2/g;->a(FF)I

    move-result p1

    int-to-float p1, p1

    :cond_4
    cmpl-float p2, v3, p1

    if-nez p2, :cond_5

    .line 17
    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    .line 18
    invoke-static {v0}, LT1/c;->endSection(Ljava/lang/String;)F

    return-void

    :cond_5
    if-ltz p2, :cond_6

    sub-float/2addr v3, v2

    .line 19
    :cond_6
    sget-object p2, Lf2/h;->b:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    const/4 p3, 0x1

    .line 20
    invoke-virtual {v1, v3, p1, p2, p3}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    cmpl-float v4, p1, v2

    .line 21
    sget-object v6, Lf2/h;->c:Landroid/graphics/Path;

    if-lez v4, :cond_7

    .line 22
    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    rem-float/2addr p1, v2

    .line 23
    invoke-virtual {v1, v5, p1, v6, p3}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 24
    invoke-virtual {p2, v6}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    goto :goto_0

    :cond_7
    cmpg-float p1, v3, v5

    if-gez p1, :cond_8

    .line 25
    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    add-float/2addr v3, v2

    .line 26
    invoke-virtual {v1, v3, v2, v6, p3}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 27
    invoke-virtual {p2, v6}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 28
    :cond_8
    :goto_0
    invoke-virtual {p0, p2}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 29
    invoke-static {v0}, LT1/c;->endSection(Ljava/lang/String;)F

    return-void

    .line 30
    :cond_9
    :goto_1
    invoke-static {v0}, LT1/c;->endSection(Ljava/lang/String;)F

    return-void
.end method

.method public static applyTrimPathIfNeeded(Landroid/graphics/Path;LV1/t;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, LV1/t;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, LV1/t;->getStart()LW1/f;

    move-result-object v0

    check-cast v0, LW1/h;

    invoke-virtual {v0}, LW1/h;->getFloatValue()F

    move-result v0

    .line 3
    invoke-virtual {p1}, LV1/t;->getEnd()LW1/f;

    move-result-object v1

    check-cast v1, LW1/h;

    invoke-virtual {v1}, LW1/h;->getFloatValue()F

    move-result v1

    .line 4
    invoke-virtual {p1}, LV1/t;->getOffset()LW1/f;

    move-result-object p1

    check-cast p1, LW1/h;

    invoke-virtual {p1}, LW1/h;->getFloatValue()F

    move-result p1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x43b40000    # 360.0f

    div-float/2addr p1, v2

    .line 5
    invoke-static {p0, v0, v1, p1}, Lf2/h;->applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p0

    .line 8
    throw p0

    .line 9
    :catch_1
    :cond_0
    return-void
.end method

.method public static createPath(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/Path;
    .locals 7

    .line 1
    new-instance v0, Landroid/graphics/Path;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Landroid/graphics/PointF;->x:F

    .line 7
    .line 8
    iget v2, p0, Landroid/graphics/PointF;->y:F

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 11
    .line 12
    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    if-eqz p3, :cond_1

    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/graphics/PointF;->length()F

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x0

    .line 22
    cmpl-float v1, v1, v2

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p3}, Landroid/graphics/PointF;->length()F

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    cmpl-float v1, v1, v2

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    :cond_0
    iget v1, p0, Landroid/graphics/PointF;->x:F

    .line 35
    .line 36
    iget v2, p2, Landroid/graphics/PointF;->x:F

    .line 37
    .line 38
    add-float/2addr v1, v2

    .line 39
    iget p0, p0, Landroid/graphics/PointF;->y:F

    .line 40
    .line 41
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 42
    .line 43
    add-float v2, p0, p2

    .line 44
    .line 45
    iget v5, p1, Landroid/graphics/PointF;->x:F

    .line 46
    .line 47
    iget p0, p3, Landroid/graphics/PointF;->x:F

    .line 48
    .line 49
    add-float v3, v5, p0

    .line 50
    .line 51
    iget v6, p1, Landroid/graphics/PointF;->y:F

    .line 52
    .line 53
    iget p0, p3, Landroid/graphics/PointF;->y:F

    .line 54
    .line 55
    add-float v4, v6, p0

    .line 56
    .line 57
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 58
    .line 59
    .line 60
    return-object v0

    .line 61
    :cond_1
    iget p0, p1, Landroid/graphics/PointF;->x:F

    .line 62
    .line 63
    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 64
    .line 65
    invoke-virtual {v0, p0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 66
    .line 67
    .line 68
    return-object v0
.end method

.method public static dpScale()F
    .locals 2

    .line 1
    sget v0, Lf2/h;->f:F

    .line 2
    .line 3
    const/high16 v1, -0x40800000    # -1.0f

    .line 4
    .line 5
    cmpl-float v0, v0, v1

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 18
    .line 19
    sput v0, Lf2/h;->f:F

    .line 20
    .line 21
    :cond_0
    sget v0, Lf2/h;->f:F

    .line 22
    .line 23
    return v0
.end method

.method public static getAnimationScale(Landroid/content/Context;)F
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "animator_duration_scale"

    .line 6
    .line 7
    const/high16 v1, 0x3f800000    # 1.0f

    .line 8
    .line 9
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static getScale(Landroid/graphics/Matrix;)F
    .locals 6

    .line 1
    sget-object v0, Lf2/h;->d:[F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    aput v2, v0, v1

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    aput v2, v0, v3

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    sget v4, Lf2/h;->e:F

    .line 12
    .line 13
    aput v4, v0, v2

    .line 14
    .line 15
    const/4 v5, 0x3

    .line 16
    aput v4, v0, v5

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 19
    .line 20
    .line 21
    aget p0, v0, v2

    .line 22
    .line 23
    aget v1, v0, v1

    .line 24
    .line 25
    sub-float/2addr p0, v1

    .line 26
    aget v1, v0, v5

    .line 27
    .line 28
    aget v0, v0, v3

    .line 29
    .line 30
    sub-float/2addr v1, v0

    .line 31
    float-to-double v2, p0

    .line 32
    float-to-double v0, v1

    .line 33
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    double-to-float p0, v0

    .line 38
    return p0
.end method

.method public static hasZeroScaleAxis(Landroid/graphics/Matrix;)Z
    .locals 6

    .line 1
    sget-object v0, Lf2/h;->d:[F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    aput v2, v0, v1

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    aput v2, v0, v3

    .line 9
    .line 10
    const v2, 0x471212bb

    .line 11
    .line 12
    .line 13
    const/4 v4, 0x2

    .line 14
    aput v2, v0, v4

    .line 15
    .line 16
    const v2, 0x471a973c

    .line 17
    .line 18
    .line 19
    const/4 v5, 0x3

    .line 20
    aput v2, v0, v5

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 23
    .line 24
    .line 25
    aget p0, v0, v1

    .line 26
    .line 27
    aget v2, v0, v4

    .line 28
    .line 29
    cmpl-float p0, p0, v2

    .line 30
    .line 31
    if-eqz p0, :cond_1

    .line 32
    .line 33
    aget p0, v0, v3

    .line 34
    .line 35
    aget v0, v0, v5

    .line 36
    .line 37
    cmpl-float p0, p0, v0

    .line 38
    .line 39
    if-nez p0, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    return v1

    .line 43
    :cond_1
    :goto_0
    return v3
.end method

.method public static hashFor(FFFF)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v1, p0, v0

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    const/16 v1, 0x20f

    .line 7
    .line 8
    int-to-float v1, v1

    .line 9
    mul-float/2addr v1, p0

    .line 10
    float-to-int p0, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/16 p0, 0x11

    .line 13
    .line 14
    :goto_0
    cmpl-float v1, p1, v0

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    mul-int/lit8 p0, p0, 0x1f

    .line 19
    .line 20
    int-to-float p0, p0

    .line 21
    mul-float/2addr p0, p1

    .line 22
    float-to-int p0, p0

    .line 23
    :cond_1
    cmpl-float p1, p2, v0

    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    mul-int/lit8 p0, p0, 0x1f

    .line 28
    .line 29
    int-to-float p0, p0

    .line 30
    mul-float/2addr p0, p2

    .line 31
    float-to-int p0, p0

    .line 32
    :cond_2
    cmpl-float p1, p3, v0

    .line 33
    .line 34
    if-eqz p1, :cond_3

    .line 35
    .line 36
    mul-int/lit8 p0, p0, 0x1f

    .line 37
    .line 38
    int-to-float p0, p0

    .line 39
    mul-float/2addr p0, p3

    .line 40
    float-to-int p0, p0

    .line 41
    :cond_3
    return p0
.end method

.method public static isAtLeastVersion(IIIIII)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-ge p0, p3, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x1

    .line 6
    if-le p0, p3, :cond_1

    .line 7
    .line 8
    return v1

    .line 9
    :cond_1
    if-ge p1, p4, :cond_2

    .line 10
    .line 11
    return v0

    .line 12
    :cond_2
    if-le p1, p4, :cond_3

    .line 13
    .line 14
    return v1

    .line 15
    :cond_3
    if-lt p2, p5, :cond_4

    .line 16
    .line 17
    return v1

    .line 18
    :cond_4
    return v0
.end method

.method public static isNetworkException(Ljava/lang/Throwable;)Z
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/net/SocketException;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    instance-of v0, p0, Ljava/nio/channels/ClosedChannelException;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    instance-of v0, p0, Ljava/io/InterruptedIOException;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    instance-of v0, p0, Ljava/net/ProtocolException;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    instance-of v0, p0, Ljavax/net/ssl/SSLException;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    instance-of v0, p0, Ljava/net/UnknownHostException;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    instance-of p0, p0, Ljava/net/UnknownServiceException;

    .line 26
    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    return p0

    .line 32
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 33
    return p0
.end method

.method public static resizeBitmapIfNeeded(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ne v0, p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-ne v0, p2, :cond_0

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 20
    .line 21
    .line 22
    return-object p1
.end method

.method public static saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 1

    const/16 v0, 0x1f

    .line 1
    invoke-static {p0, p1, p2, v0}, Lf2/h;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    return-void
.end method

.method public static saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V
    .locals 0

    .line 2
    const-string p3, "Utils#saveLayer"

    invoke-static {p3}, LT1/c;->beginSection(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 4
    invoke-static {p3}, LT1/c;->endSection(Ljava/lang/String;)F

    return-void
.end method
