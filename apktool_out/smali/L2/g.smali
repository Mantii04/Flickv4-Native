.class public final LL2/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LN2/q;

.field public b:Landroid/view/animation/Interpolator;

.field public c:J

.field public d:I

.field public final e:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(LN2/q;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x7d0

    .line 5
    .line 6
    iput-wide v0, p0, LL2/g;->c:J

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, LL2/g;->d:I

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, LL2/g;->e:Ljava/util/HashMap;

    .line 17
    .line 18
    iput-object p1, p0, LL2/g;->a:LN2/q;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a([FLL2/b;[Ljava/lang/Float;)V
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    array-length v1, p3

    .line 3
    if-ne v0, v1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, LL2/g;->e:Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/util/Property;->getName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, LL2/d;

    .line 12
    .line 13
    invoke-direct {v2, p0, p1, p2, p3}, LL2/d;-><init>(LL2/g;[FLandroid/util/Property;[Ljava/lang/Float;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/4 v1, 0x2

    .line 35
    new-array v1, v1, [Ljava/lang/Object;

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    aput-object p3, v1, v2

    .line 39
    .line 40
    const/4 p3, 0x1

    .line 41
    aput-object v0, v1, p3

    .line 42
    .line 43
    const-string p3, "The fractions.length must equal values.length, fraction.length[%d], values.length[%d]"

    .line 44
    .line 45
    invoke-static {p2, p3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1
.end method

.method public varargs alpha([F[Ljava/lang/Integer;)LL2/g;
    .locals 1

    .line 1
    sget-object v0, LN2/q;->J:LN2/g;

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0, p2}, LL2/g;->b([FLL2/c;[Ljava/lang/Integer;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final b([FLL2/c;[Ljava/lang/Integer;)V
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    array-length v1, p3

    .line 3
    if-ne v0, v1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, LL2/g;->e:Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/util/Property;->getName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, LL2/f;

    .line 12
    .line 13
    invoke-direct {v2, p0, p1, p2, p3}, LL2/f;-><init>(LL2/g;[FLandroid/util/Property;[Ljava/lang/Integer;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/4 v1, 0x2

    .line 35
    new-array v1, v1, [Ljava/lang/Object;

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    aput-object p3, v1, v2

    .line 39
    .line 40
    const/4 p3, 0x1

    .line 41
    aput-object v0, v1, p3

    .line 42
    .line 43
    const-string p3, "The fractions.length must equal values.length, fraction.length[%d], values.length[%d]"

    .line 44
    .line 45
    invoke-static {p2, p3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1
.end method

.method public build()Landroid/animation/ObjectAnimator;
    .locals 13

    .line 1
    iget-object v0, p0, LL2/g;->e:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_4

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Ljava/util/Map$Entry;

    .line 29
    .line 30
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, LL2/e;

    .line 35
    .line 36
    iget-object v4, v3, LL2/e;->a:[F

    .line 37
    .line 38
    array-length v5, v4

    .line 39
    new-array v5, v5, [Landroid/animation/Keyframe;

    .line 40
    .line 41
    iget v6, p0, LL2/g;->d:I

    .line 42
    .line 43
    aget v7, v4, v6

    .line 44
    .line 45
    :goto_1
    iget v8, p0, LL2/g;->d:I

    .line 46
    .line 47
    iget-object v9, v3, LL2/e;->c:[Ljava/lang/Object;

    .line 48
    .line 49
    array-length v10, v9

    .line 50
    add-int/2addr v10, v8

    .line 51
    if-ge v6, v10, :cond_3

    .line 52
    .line 53
    sub-int v8, v6, v8

    .line 54
    .line 55
    array-length v10, v9

    .line 56
    rem-int v10, v6, v10

    .line 57
    .line 58
    aget v11, v4, v10

    .line 59
    .line 60
    sub-float/2addr v11, v7

    .line 61
    const/4 v12, 0x0

    .line 62
    cmpg-float v12, v11, v12

    .line 63
    .line 64
    if-gez v12, :cond_0

    .line 65
    .line 66
    array-length v12, v4

    .line 67
    add-int/lit8 v12, v12, -0x1

    .line 68
    .line 69
    aget v12, v4, v12

    .line 70
    .line 71
    add-float/2addr v11, v12

    .line 72
    :cond_0
    instance-of v12, v3, LL2/f;

    .line 73
    .line 74
    if-eqz v12, :cond_1

    .line 75
    .line 76
    aget-object v9, v9, v10

    .line 77
    .line 78
    check-cast v9, Ljava/lang/Integer;

    .line 79
    .line 80
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 81
    .line 82
    .line 83
    move-result v9

    .line 84
    invoke-static {v11, v9}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    .line 85
    .line 86
    .line 87
    move-result-object v9

    .line 88
    aput-object v9, v5, v8

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_1
    instance-of v12, v3, LL2/d;

    .line 92
    .line 93
    if-eqz v12, :cond_2

    .line 94
    .line 95
    aget-object v9, v9, v10

    .line 96
    .line 97
    check-cast v9, Ljava/lang/Float;

    .line 98
    .line 99
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    .line 100
    .line 101
    .line 102
    move-result v9

    .line 103
    invoke-static {v11, v9}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    .line 104
    .line 105
    .line 106
    move-result-object v9

    .line 107
    aput-object v9, v5, v8

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_2
    aget-object v9, v9, v10

    .line 111
    .line 112
    invoke-static {v11, v9}, Landroid/animation/Keyframe;->ofObject(FLjava/lang/Object;)Landroid/animation/Keyframe;

    .line 113
    .line 114
    .line 115
    move-result-object v9

    .line 116
    aput-object v9, v5, v8

    .line 117
    .line 118
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_3
    iget-object v3, v3, LL2/e;->b:Landroid/util/Property;

    .line 122
    .line 123
    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    aput-object v3, v1, v2

    .line 128
    .line 129
    add-int/lit8 v2, v2, 0x1

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_4
    iget-object v0, p0, LL2/g;->a:LN2/q;

    .line 133
    .line 134
    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    iget-wide v1, p0, LL2/g;->c:J

    .line 139
    .line 140
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 141
    .line 142
    .line 143
    const/4 v1, -0x1

    .line 144
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 145
    .line 146
    .line 147
    iget-object v1, p0, LL2/g;->b:Landroid/view/animation/Interpolator;

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 150
    .line 151
    .line 152
    return-object v0
.end method

.method public duration(J)LL2/g;
    .locals 0

    .line 1
    iput-wide p1, p0, LL2/g;->c:J

    .line 2
    .line 3
    return-object p0
.end method

.method public varargs easeInOut([F)LL2/g;
    .locals 0

    .line 1
    invoke-static {p1}, LM2/b;->easeInOut([F)LM2/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, LL2/g;->interpolator(Landroid/view/animation/Interpolator;)LL2/g;

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public interpolator(Landroid/view/animation/Interpolator;)LL2/g;
    .locals 0

    .line 1
    iput-object p1, p0, LL2/g;->b:Landroid/view/animation/Interpolator;

    .line 2
    .line 3
    return-object p0
.end method

.method public varargs rotate([F[Ljava/lang/Integer;)LL2/g;
    .locals 1

    .line 1
    sget-object v0, LN2/q;->D:LN2/i;

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0, p2}, LL2/g;->b([FLL2/c;[Ljava/lang/Integer;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public varargs rotateX([F[Ljava/lang/Integer;)LL2/g;
    .locals 1

    .line 1
    sget-object v0, LN2/q;->C:LN2/h;

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0, p2}, LL2/g;->b([FLL2/c;[Ljava/lang/Integer;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public varargs rotateY([F[Ljava/lang/Integer;)LL2/g;
    .locals 1

    .line 1
    sget-object v0, LN2/q;->E:LN2/j;

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0, p2}, LL2/g;->b([FLL2/c;[Ljava/lang/Integer;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public varargs scale([F[Ljava/lang/Float;)LL2/g;
    .locals 1

    .line 1
    sget-object v0, LN2/q;->I:LN2/f;

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0, p2}, LL2/g;->a([FLL2/b;[Ljava/lang/Float;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public varargs scaleY([F[Ljava/lang/Float;)LL2/g;
    .locals 1

    .line 1
    sget-object v0, LN2/q;->H:LN2/p;

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0, p2}, LL2/g;->a([FLL2/b;[Ljava/lang/Float;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public startFrame(I)LL2/g;
    .locals 1

    .line 1
    if-gez p1, :cond_0

    .line 2
    .line 3
    const-string p1, "SpriteAnimatorBuilder"

    .line 4
    .line 5
    const-string v0, "startFrame should always be non-negative"

    .line 6
    .line 7
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    :cond_0
    iput p1, p0, LL2/g;->d:I

    .line 12
    .line 13
    return-object p0
.end method

.method public varargs translateXPercentage([F[Ljava/lang/Float;)LL2/g;
    .locals 1

    .line 1
    sget-object v0, LN2/q;->F:LN2/m;

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0, p2}, LL2/g;->a([FLL2/b;[Ljava/lang/Float;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public varargs translateYPercentage([F[Ljava/lang/Float;)LL2/g;
    .locals 1

    .line 1
    sget-object v0, LN2/q;->G:LN2/n;

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0, p2}, LL2/g;->a([FLL2/b;[Ljava/lang/Float;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
