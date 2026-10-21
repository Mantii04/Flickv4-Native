.class public final LI3/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LI3/t;


# direct methods
.method public constructor <init>(LI3/t;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LI3/o;->b:LI3/t;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    iget-object v3, p0, LI3/o;->b:LI3/t;

    .line 5
    .line 6
    iget-object v4, v3, LI3/t;->i:LI3/s;

    .line 7
    .line 8
    if-nez v4, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    iget-object v5, v3, LI3/t;->i:LI3/s;

    .line 16
    .line 17
    if-eqz v4, :cond_1

    .line 18
    .line 19
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-virtual {v5}, LI3/s;->getAnimationMode()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-ne v4, v0, :cond_2

    .line 27
    .line 28
    new-array v4, v2, [F

    .line 29
    .line 30
    fill-array-data v4, :array_0

    .line 31
    .line 32
    .line 33
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    iget-object v5, v3, LI3/t;->d:Landroid/animation/TimeInterpolator;

    .line 38
    .line 39
    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 40
    .line 41
    .line 42
    new-instance v5, LI3/b;

    .line 43
    .line 44
    invoke-direct {v5, v3}, LI3/b;-><init>(LI3/t;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 48
    .line 49
    .line 50
    new-array v5, v2, [F

    .line 51
    .line 52
    fill-array-data v5, :array_1

    .line 53
    .line 54
    .line 55
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    iget-object v6, v3, LI3/t;->f:Landroid/animation/TimeInterpolator;

    .line 60
    .line 61
    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 62
    .line 63
    .line 64
    new-instance v6, LI3/c;

    .line 65
    .line 66
    invoke-direct {v6, v3}, LI3/c;-><init>(LI3/t;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 70
    .line 71
    .line 72
    new-instance v6, Landroid/animation/AnimatorSet;

    .line 73
    .line 74
    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 75
    .line 76
    .line 77
    new-array v2, v2, [Landroid/animation/Animator;

    .line 78
    .line 79
    aput-object v4, v2, v1

    .line 80
    .line 81
    aput-object v5, v2, v0

    .line 82
    .line 83
    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 84
    .line 85
    .line 86
    iget v0, v3, LI3/t;->a:I

    .line 87
    .line 88
    int-to-long v0, v0

    .line 89
    invoke-virtual {v6, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 90
    .line 91
    .line 92
    new-instance v0, LI3/p;

    .line 93
    .line 94
    invoke-direct {v0, v3}, LI3/p;-><init>(LI3/t;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v6, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    instance-of v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 113
    .line 114
    if-eqz v4, :cond_3

    .line 115
    .line 116
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 117
    .line 118
    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 119
    .line 120
    add-int/2addr v0, v2

    .line 121
    :cond_3
    int-to-float v2, v0

    .line 122
    invoke-virtual {v5, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 123
    .line 124
    .line 125
    new-instance v2, Landroid/animation/ValueAnimator;

    .line 126
    .line 127
    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    .line 128
    .line 129
    .line 130
    filled-new-array {v0, v1}, [I

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 135
    .line 136
    .line 137
    iget-object v1, v3, LI3/t;->e:Landroid/animation/TimeInterpolator;

    .line 138
    .line 139
    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 140
    .line 141
    .line 142
    iget v1, v3, LI3/t;->c:I

    .line 143
    .line 144
    int-to-long v4, v1

    .line 145
    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 146
    .line 147
    .line 148
    new-instance v1, LI3/d;

    .line 149
    .line 150
    invoke-direct {v1, v3}, LI3/d;-><init>(LI3/t;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 154
    .line 155
    .line 156
    new-instance v1, LI3/e;

    .line 157
    .line 158
    invoke-direct {v1, v3, v0}, LI3/e;-><init>(LI3/t;I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 165
    .line 166
    .line 167
    return-void

    .line 168
    nop

    .line 169
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    :array_1
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method
