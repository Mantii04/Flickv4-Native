.class public final LM/K0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic b:LM/S0;

.field public final synthetic e:LM/h1;

.field public final synthetic f:LM/h1;

.field public final synthetic j:I

.field public final synthetic m:Landroid/view/View;


# direct methods
.method public constructor <init>(LM/S0;LM/h1;LM/h1;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LM/K0;->b:LM/S0;

    .line 5
    .line 6
    iput-object p2, p0, LM/K0;->e:LM/h1;

    .line 7
    .line 8
    iput-object p3, p0, LM/K0;->f:LM/h1;

    .line 9
    .line 10
    iput p4, p0, LM/K0;->j:I

    .line 11
    .line 12
    iput-object p5, p0, LM/K0;->m:Landroid/view/View;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object v3, v0, LM/K0;->b:LM/S0;

    .line 8
    .line 9
    invoke-virtual {v3, v2}, LM/S0;->setFraction(F)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v3}, LM/S0;->getInterpolatedFraction()F

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    sget-object v4, LM/O0;->e:Landroid/view/animation/PathInterpolator;

    .line 17
    .line 18
    new-instance v4, LM/U0;

    .line 19
    .line 20
    iget-object v5, v0, LM/K0;->e:LM/h1;

    .line 21
    .line 22
    invoke-direct {v4, v5}, LM/U0;-><init>(LM/h1;)V

    .line 23
    .line 24
    .line 25
    const/4 v6, 0x1

    .line 26
    :goto_0
    const/16 v7, 0x100

    .line 27
    .line 28
    if-gt v6, v7, :cond_1

    .line 29
    .line 30
    iget v7, v0, LM/K0;->j:I

    .line 31
    .line 32
    and-int/2addr v7, v6

    .line 33
    if-nez v7, :cond_0

    .line 34
    .line 35
    invoke-virtual {v5, v6}, LM/h1;->getInsets(I)LD/c;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    invoke-virtual {v4, v6, v7}, LM/U0;->setInsets(ILD/c;)LM/U0;

    .line 40
    .line 41
    .line 42
    move/from16 p1, v2

    .line 43
    .line 44
    const/4 v15, 0x1

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    invoke-virtual {v5, v6}, LM/h1;->getInsets(I)LD/c;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    iget-object v8, v0, LM/K0;->f:LM/h1;

    .line 51
    .line 52
    invoke-virtual {v8, v6}, LM/h1;->getInsets(I)LD/c;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    iget v9, v7, LD/c;->a:I

    .line 57
    .line 58
    iget v10, v8, LD/c;->a:I

    .line 59
    .line 60
    sub-int/2addr v9, v10

    .line 61
    int-to-float v9, v9

    .line 62
    const/high16 v10, 0x3f800000    # 1.0f

    .line 63
    .line 64
    sub-float/2addr v10, v2

    .line 65
    mul-float/2addr v9, v10

    .line 66
    float-to-double v11, v9

    .line 67
    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    .line 68
    .line 69
    add-double/2addr v11, v13

    .line 70
    double-to-int v9, v11

    .line 71
    iget v11, v7, LD/c;->b:I

    .line 72
    .line 73
    iget v12, v8, LD/c;->b:I

    .line 74
    .line 75
    sub-int/2addr v11, v12

    .line 76
    int-to-float v11, v11

    .line 77
    mul-float/2addr v11, v10

    .line 78
    float-to-double v11, v11

    .line 79
    add-double/2addr v11, v13

    .line 80
    double-to-int v11, v11

    .line 81
    iget v12, v7, LD/c;->c:I

    .line 82
    .line 83
    iget v15, v8, LD/c;->c:I

    .line 84
    .line 85
    sub-int/2addr v12, v15

    .line 86
    int-to-float v12, v12

    .line 87
    mul-float/2addr v12, v10

    .line 88
    move/from16 p1, v2

    .line 89
    .line 90
    const/4 v15, 0x1

    .line 91
    float-to-double v1, v12

    .line 92
    add-double/2addr v1, v13

    .line 93
    double-to-int v1, v1

    .line 94
    iget v2, v7, LD/c;->d:I

    .line 95
    .line 96
    iget v8, v8, LD/c;->d:I

    .line 97
    .line 98
    sub-int/2addr v2, v8

    .line 99
    int-to-float v2, v2

    .line 100
    mul-float/2addr v2, v10

    .line 101
    move-wide/from16 v16, v13

    .line 102
    .line 103
    float-to-double v13, v2

    .line 104
    add-double v13, v13, v16

    .line 105
    .line 106
    double-to-int v2, v13

    .line 107
    invoke-static {v7, v9, v11, v1, v2}, LM/h1;->a(LD/c;IIII)LD/c;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v4, v6, v1}, LM/U0;->setInsets(ILD/c;)LM/U0;

    .line 112
    .line 113
    .line 114
    :goto_1
    shl-int/2addr v6, v15

    .line 115
    move/from16 v2, p1

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_1
    invoke-virtual {v4}, LM/U0;->build()LM/h1;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    iget-object v3, v0, LM/K0;->m:Landroid/view/View;

    .line 127
    .line 128
    invoke-static {v3, v1, v2}, LM/O0;->c(Landroid/view/View;LM/h1;Ljava/util/List;)V

    .line 129
    .line 130
    .line 131
    return-void
.end method
