.class public final LO2/o;
.super LN2/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LN2/b;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, LN2/q;->setScale(F)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onCreateAnimation()Landroid/animation/ValueAnimator;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    .line 4
    const/4 v2, 0x2

    .line 5
    new-array v3, v2, [F

    .line 6
    .line 7
    fill-array-data v3, :array_0

    .line 8
    .line 9
    .line 10
    new-instance v4, LL2/g;

    .line 11
    .line 12
    invoke-direct {v4, p0}, LL2/g;-><init>(LN2/q;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    new-array v5, v2, [Ljava/lang/Float;

    .line 24
    .line 25
    const/4 v6, 0x0

    .line 26
    aput-object v0, v5, v6

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    aput-object v1, v5, v0

    .line 30
    .line 31
    invoke-virtual {v4, v3, v5}, LL2/g;->scale([F[Ljava/lang/Float;)LL2/g;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const/16 v4, 0xff

    .line 36
    .line 37
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    new-array v2, v2, [Ljava/lang/Integer;

    .line 46
    .line 47
    aput-object v4, v2, v6

    .line 48
    .line 49
    aput-object v5, v2, v0

    .line 50
    .line 51
    invoke-virtual {v1, v3, v2}, LL2/g;->alpha([F[Ljava/lang/Integer;)LL2/g;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-wide/16 v1, 0x3e8

    .line 56
    .line 57
    invoke-virtual {v0, v1, v2}, LL2/g;->duration(J)LL2/g;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0, v3}, LL2/g;->easeInOut([F)LL2/g;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, LL2/g;->build()Landroid/animation/ObjectAnimator;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    return-object v0

    .line 70
    nop

    .line 71
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
