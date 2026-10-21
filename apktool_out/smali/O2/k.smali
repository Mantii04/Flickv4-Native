.class public final LO2/k;
.super LN2/c;
.source "SourceFile"


# virtual methods
.method public onCreateAnimation()Landroid/animation/ValueAnimator;
    .locals 12

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v1, v0, [F

    .line 3
    .line 4
    fill-array-data v1, :array_0

    .line 5
    .line 6
    .line 7
    new-instance v2, LL2/g;

    .line 8
    .line 9
    invoke-direct {v2, p0}, LL2/g;-><init>(LN2/q;)V

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    const/16 v5, 0xff

    .line 18
    .line 19
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    new-array v6, v0, [Ljava/lang/Integer;

    .line 24
    .line 25
    aput-object v4, v6, v3

    .line 26
    .line 27
    const/4 v7, 0x1

    .line 28
    aput-object v4, v6, v7

    .line 29
    .line 30
    const/4 v8, 0x2

    .line 31
    aput-object v5, v6, v8

    .line 32
    .line 33
    const/4 v9, 0x3

    .line 34
    aput-object v5, v6, v9

    .line 35
    .line 36
    const/4 v5, 0x4

    .line 37
    aput-object v4, v6, v5

    .line 38
    .line 39
    const/4 v10, 0x5

    .line 40
    aput-object v4, v6, v10

    .line 41
    .line 42
    invoke-virtual {v2, v1, v6}, LL2/g;->alpha([F[Ljava/lang/Integer;)LL2/g;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const/16 v6, -0xb4

    .line 47
    .line 48
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    new-array v11, v0, [Ljava/lang/Integer;

    .line 53
    .line 54
    aput-object v6, v11, v3

    .line 55
    .line 56
    aput-object v6, v11, v7

    .line 57
    .line 58
    aput-object v4, v11, v8

    .line 59
    .line 60
    aput-object v4, v11, v9

    .line 61
    .line 62
    aput-object v4, v11, v5

    .line 63
    .line 64
    aput-object v4, v11, v10

    .line 65
    .line 66
    invoke-virtual {v2, v1, v11}, LL2/g;->rotateX([F[Ljava/lang/Integer;)LL2/g;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    const/16 v6, 0xb4

    .line 71
    .line 72
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    new-array v0, v0, [Ljava/lang/Integer;

    .line 77
    .line 78
    aput-object v4, v0, v3

    .line 79
    .line 80
    aput-object v4, v0, v7

    .line 81
    .line 82
    aput-object v4, v0, v8

    .line 83
    .line 84
    aput-object v4, v0, v9

    .line 85
    .line 86
    aput-object v6, v0, v5

    .line 87
    .line 88
    aput-object v6, v0, v10

    .line 89
    .line 90
    invoke-virtual {v2, v1, v0}, LL2/g;->rotateY([F[Ljava/lang/Integer;)LL2/g;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    const-wide/16 v1, 0x960

    .line 95
    .line 96
    invoke-virtual {v0, v1, v2}, LL2/g;->duration(J)LL2/g;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    .line 101
    .line 102
    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1}, LL2/g;->interpolator(Landroid/view/animation/Interpolator;)LL2/g;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v0}, LL2/g;->build()Landroid/animation/ObjectAnimator;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    return-object v0

    .line 114
    nop

    .line 115
    :array_0
    .array-data 4
        0x0
        0x3dcccccd    # 0.1f
        0x3e800000    # 0.25f
        0x3f400000    # 0.75f
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data
.end method
