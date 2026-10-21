.class public final LO2/w;
.super LN2/c;
.source "SourceFile"


# virtual methods
.method public onCreateAnimation()Landroid/animation/ValueAnimator;
    .locals 6

    .line 1
    const v0, 0x3ecccccd    # 0.4f

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/high16 v1, 0x3f800000    # 1.0f

    .line 9
    .line 10
    const/4 v2, 0x4

    .line 11
    new-array v3, v2, [F

    .line 12
    .line 13
    fill-array-data v3, :array_0

    .line 14
    .line 15
    .line 16
    new-instance v4, LL2/g;

    .line 17
    .line 18
    invoke-direct {v4, p0}, LL2/g;-><init>(LN2/q;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    new-array v2, v2, [Ljava/lang/Float;

    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    aput-object v0, v2, v5

    .line 29
    .line 30
    const/4 v5, 0x1

    .line 31
    aput-object v1, v2, v5

    .line 32
    .line 33
    const/4 v1, 0x2

    .line 34
    aput-object v0, v2, v1

    .line 35
    .line 36
    const/4 v1, 0x3

    .line 37
    aput-object v0, v2, v1

    .line 38
    .line 39
    invoke-virtual {v4, v3, v2}, LL2/g;->scaleY([F[Ljava/lang/Float;)LL2/g;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-wide/16 v1, 0x4b0

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, LL2/g;->duration(J)LL2/g;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0, v3}, LL2/g;->easeInOut([F)LL2/g;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, LL2/g;->build()Landroid/animation/ObjectAnimator;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    return-object v0

    .line 58
    nop

    .line 59
    :array_0
    .array-data 4
        0x0
        0x3e4ccccd    # 0.2f
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
    .end array-data
.end method
