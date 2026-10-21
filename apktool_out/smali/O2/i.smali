.class public final LO2/i;
.super LN2/b;
.source "SourceFile"


# virtual methods
.method public onCreateAnimation()Landroid/animation/ValueAnimator;
    .locals 6

    .line 1
    const/4 v0, 0x4

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
    new-array v0, v0, [Ljava/lang/Integer;

    .line 24
    .line 25
    aput-object v4, v0, v3

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    aput-object v4, v0, v3

    .line 29
    .line 30
    const/4 v3, 0x2

    .line 31
    aput-object v5, v0, v3

    .line 32
    .line 33
    const/4 v3, 0x3

    .line 34
    aput-object v4, v0, v3

    .line 35
    .line 36
    invoke-virtual {v2, v1, v0}, LL2/g;->alpha([F[Ljava/lang/Integer;)LL2/g;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-wide/16 v2, 0x4b0

    .line 41
    .line 42
    invoke-virtual {v0, v2, v3}, LL2/g;->duration(J)LL2/g;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0, v1}, LL2/g;->easeInOut([F)LL2/g;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, LL2/g;->build()Landroid/animation/ObjectAnimator;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    return-object v0

    .line 55
    :array_0
    .array-data 4
        0x0
        0x3ec7ae14    # 0.39f
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
    .end array-data
.end method
