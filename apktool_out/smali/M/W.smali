.class public abstract LM/W;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/WeakHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, LM/W;->a:Ljava/util/Map;

    .line 11
    .line 12
    return-void
.end method

.method public static addMovement(Landroid/view/VelocityTracker;Landroid/view/MotionEvent;)V
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2
    .line 3
    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v1, 0x22

    .line 7
    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/high16 v1, 0x400000

    .line 16
    .line 17
    if-ne v0, v1, :cond_4

    .line 18
    .line 19
    sget-object v0, LM/W;->a:Ljava/util/Map;

    .line 20
    .line 21
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    new-instance v1, LM/X;

    .line 28
    .line 29
    invoke-direct {v1}, LM/X;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, LM/X;

    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 45
    .line 46
    .line 47
    move-result-wide v0

    .line 48
    iget v2, p0, LM/X;->d:I

    .line 49
    .line 50
    iget-object v3, p0, LM/X;->b:[J

    .line 51
    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    iget v2, p0, LM/X;->e:I

    .line 55
    .line 56
    aget-wide v4, v3, v2

    .line 57
    .line 58
    sub-long v4, v0, v4

    .line 59
    .line 60
    const-wide/16 v6, 0x28

    .line 61
    .line 62
    cmp-long v2, v4, v6

    .line 63
    .line 64
    if-lez v2, :cond_2

    .line 65
    .line 66
    const/4 v2, 0x0

    .line 67
    iput v2, p0, LM/X;->d:I

    .line 68
    .line 69
    const/4 v2, 0x0

    .line 70
    iput v2, p0, LM/X;->c:F

    .line 71
    .line 72
    :cond_2
    iget v2, p0, LM/X;->e:I

    .line 73
    .line 74
    add-int/lit8 v2, v2, 0x1

    .line 75
    .line 76
    const/16 v4, 0x14

    .line 77
    .line 78
    rem-int/2addr v2, v4

    .line 79
    iput v2, p0, LM/X;->e:I

    .line 80
    .line 81
    iget v5, p0, LM/X;->d:I

    .line 82
    .line 83
    if-eq v5, v4, :cond_3

    .line 84
    .line 85
    add-int/lit8 v5, v5, 0x1

    .line 86
    .line 87
    iput v5, p0, LM/X;->d:I

    .line 88
    .line 89
    :cond_3
    const/16 v4, 0x1a

    .line 90
    .line 91
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    iget-object v4, p0, LM/X;->a:[F

    .line 96
    .line 97
    aput p1, v4, v2

    .line 98
    .line 99
    iget p0, p0, LM/X;->e:I

    .line 100
    .line 101
    aput-wide v0, v3, p0

    .line 102
    .line 103
    :cond_4
    :goto_0
    return-void
.end method

.method public static computeCurrentVelocity(Landroid/view/VelocityTracker;I)V
    .locals 1

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 28
    invoke-static {p0, p1, v0}, LM/W;->computeCurrentVelocity(Landroid/view/VelocityTracker;IF)V

    return-void
.end method

.method public static computeCurrentVelocity(Landroid/view/VelocityTracker;IF)V
    .locals 17

    .line 1
    invoke-virtual/range {p0 .. p2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2
    sget-object v0, LM/W;->a:Ljava/util/Map;

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM/X;

    if-eqz v0, :cond_b

    .line 3
    iget v1, v0, LM/X;->d:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    :goto_0
    move/from16 v1, p1

    goto/16 :goto_4

    .line 4
    :cond_0
    iget v4, v0, LM/X;->e:I

    add-int/lit8 v5, v4, 0x14

    const/4 v6, 0x1

    sub-int/2addr v1, v6

    sub-int/2addr v5, v1

    rem-int/lit8 v5, v5, 0x14

    .line 5
    iget-object v1, v0, LM/X;->b:[J

    aget-wide v7, v1, v4

    .line 6
    :goto_1
    aget-wide v9, v1, v5

    sub-long v11, v7, v9

    const-wide/16 v13, 0x64

    cmp-long v4, v11, v13

    if-lez v4, :cond_1

    .line 7
    iget v4, v0, LM/X;->d:I

    sub-int/2addr v4, v6

    iput v4, v0, LM/X;->d:I

    add-int/lit8 v5, v5, 0x1

    .line 8
    rem-int/lit8 v5, v5, 0x14

    goto :goto_1

    .line 9
    :cond_1
    iget v4, v0, LM/X;->d:I

    if-ge v4, v3, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    iget-object v7, v0, LM/X;->a:[F

    if-ne v4, v3, :cond_4

    add-int/2addr v5, v6

    .line 11
    rem-int/lit8 v5, v5, 0x14

    .line 12
    aget-wide v3, v1, v5

    cmp-long v1, v9, v3

    if-nez v1, :cond_3

    goto :goto_0

    .line 13
    :cond_3
    aget v1, v7, v5

    sub-long/2addr v3, v9

    long-to-float v2, v3

    div-float v2, v1, v2

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    move v8, v2

    move v4, v3

    .line 14
    :goto_2
    iget v9, v0, LM/X;->d:I

    sub-int/2addr v9, v6

    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, -0x40800000    # -1.0f

    if-ge v3, v9, :cond_8

    add-int v9, v3, v5

    .line 15
    rem-int/lit8 v13, v9, 0x14

    aget-wide v13, v1, v13

    add-int/2addr v9, v6

    .line 16
    rem-int/lit8 v9, v9, 0x14

    .line 17
    aget-wide v15, v1, v9

    cmp-long v15, v15, v13

    if-nez v15, :cond_5

    move/from16 p0, v2

    move v15, v3

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    cmpg-float v15, v8, v2

    if-gez v15, :cond_6

    move v11, v12

    .line 18
    :cond_6
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v12

    mul-float/2addr v12, v10

    move/from16 p0, v2

    move v15, v3

    float-to-double v2, v12

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v11, v2

    .line 19
    aget v2, v7, v9

    .line 20
    aget-wide v9, v1, v9

    sub-long/2addr v9, v13

    long-to-float v3, v9

    div-float/2addr v2, v3

    sub-float v3, v2, v11

    .line 21
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v2, v3

    add-float/2addr v8, v2

    if-ne v4, v6, :cond_7

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v8, v2

    :cond_7
    :goto_3
    add-int/lit8 v3, v15, 0x1

    move/from16 v2, p0

    goto :goto_2

    :cond_8
    move/from16 p0, v2

    cmpg-float v1, v8, p0

    if-gez v1, :cond_9

    move v11, v12

    .line 22
    :cond_9
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v1, v10

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v2, v11, v1

    goto/16 :goto_0

    :goto_4
    int-to-float v1, v1

    mul-float/2addr v2, v1

    .line 23
    iput v2, v0, LM/X;->c:F

    .line 24
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    neg-float v1, v1

    cmpg-float v1, v2, v1

    if-gez v1, :cond_a

    .line 25
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    neg-float v1, v1

    iput v1, v0, LM/X;->c:F

    return-void

    .line 26
    :cond_a
    iget v1, v0, LM/X;->c:F

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_b

    .line 27
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iput v1, v0, LM/X;->c:F

    :cond_b
    return-void
.end method

.method public static getAxisVelocity(Landroid/view/VelocityTracker;I)F
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x22

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1}, LM/V;->a(Landroid/view/VelocityTracker;I)F

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    if-nez p1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0

    .line 19
    :cond_1
    const/4 v0, 0x1

    .line 20
    if-ne p1, v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0

    .line 27
    :cond_2
    sget-object v0, LM/W;->a:Ljava/util/Map;

    .line 28
    .line 29
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, LM/X;

    .line 34
    .line 35
    if-eqz p0, :cond_4

    .line 36
    .line 37
    const/16 v0, 0x1a

    .line 38
    .line 39
    if-eq p1, v0, :cond_3

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    iget p0, p0, LM/X;->c:F

    .line 43
    .line 44
    return p0

    .line 45
    :cond_4
    :goto_0
    const/4 p0, 0x0

    .line 46
    return p0
.end method
