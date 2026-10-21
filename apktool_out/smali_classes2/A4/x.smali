.class public final LA4/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lflix/com/vision/activities/leanback/SlideshowActivity;


# direct methods
.method public constructor <init>(Lflix/com/vision/activities/leanback/SlideshowActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LA4/x;->b:Lflix/com/vision/activities/leanback/SlideshowActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    iget-object v1, p0, LA4/x;->b:Lflix/com/vision/activities/leanback/SlideshowActivity;

    .line 3
    .line 4
    iget-object v2, v1, Lflix/com/vision/activities/leanback/SlideshowActivity;->q:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v2, v1, Lflix/com/vision/activities/leanback/SlideshowActivity;->s:Landroid/animation/AnimatorSet;

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    iget-object v2, v1, Lflix/com/vision/activities/leanback/SlideshowActivity;->s:Landroid/animation/AnimatorSet;

    .line 24
    .line 25
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v2, v1, Lflix/com/vision/activities/leanback/SlideshowActivity;->e:Landroid/widget/ImageView;

    .line 29
    .line 30
    new-array v3, v0, [F

    .line 31
    .line 32
    fill-array-data v3, :array_0

    .line 33
    .line 34
    .line 35
    const-string v4, "alpha"

    .line 36
    .line 37
    invoke-static {v2, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const-wide/16 v5, 0x3e8

    .line 42
    .line 43
    invoke-virtual {v2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 44
    .line 45
    .line 46
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    .line 47
    .line 48
    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 52
    .line 53
    .line 54
    iget-object v3, v1, Lflix/com/vision/activities/leanback/SlideshowActivity;->f:Landroid/widget/ImageView;

    .line 55
    .line 56
    new-array v7, v0, [F

    .line 57
    .line 58
    fill-array-data v7, :array_1

    .line 59
    .line 60
    .line 61
    invoke-static {v3, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 66
    .line 67
    .line 68
    new-instance v7, Landroid/view/animation/AccelerateInterpolator;

    .line 69
    .line 70
    invoke-direct {v7}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 74
    .line 75
    .line 76
    new-instance v7, LA4/w;

    .line 77
    .line 78
    invoke-direct {v7, p0}, LA4/w;-><init>(LA4/x;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 82
    .line 83
    .line 84
    iget-object v7, v1, Lflix/com/vision/activities/leanback/SlideshowActivity;->j:Landroid/widget/ImageView;

    .line 85
    .line 86
    new-array v8, v0, [F

    .line 87
    .line 88
    fill-array-data v8, :array_2

    .line 89
    .line 90
    .line 91
    invoke-static {v7, v4, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    invoke-virtual {v7, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 96
    .line 97
    .line 98
    new-instance v8, Landroid/view/animation/AccelerateInterpolator;

    .line 99
    .line 100
    invoke-direct {v8}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v7, v8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 104
    .line 105
    .line 106
    iget-object v8, v1, Lflix/com/vision/activities/leanback/SlideshowActivity;->m:Landroid/view/View;

    .line 107
    .line 108
    new-array v0, v0, [F

    .line 109
    .line 110
    fill-array-data v0, :array_3

    .line 111
    .line 112
    .line 113
    invoke-static {v8, v4, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 118
    .line 119
    .line 120
    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    .line 121
    .line 122
    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v7}, Landroid/animation/ObjectAnimator;->start()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 138
    .line 139
    .line 140
    iget-object v0, v1, Lflix/com/vision/activities/leanback/SlideshowActivity;->p:Landroid/os/Handler;

    .line 141
    .line 142
    const-wide/16 v1, 0x36b0

    .line 143
    .line 144
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    nop

    .line 149
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
