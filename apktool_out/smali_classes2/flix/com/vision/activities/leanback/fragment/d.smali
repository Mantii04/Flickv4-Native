.class public Lflix/com/vision/activities/leanback/fragment/d;
.super Landroidx/fragment/app/C;
.source "SourceFile"


# instance fields
.field public final f0:Lflix/com/vision/activities/leanback/MainActivityLeanback;

.field public g0:Landroidx/fragment/app/FragmentContainerView;

.field public h0:Landroid/view/View;

.field public i0:Lh5/j;

.field public j0:Landroid/graphics/Typeface;

.field public k0:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;

.field public l0:Landroid/widget/TextView;

.field public m0:Landroid/widget/TextView;

.field public n0:Landroid/widget/TextView;

.field public o0:Lme/grantland/widget/AutofitTextView;

.field public p0:Landroid/widget/ImageView;

.field public q0:Landroid/widget/ImageView;

.field public final r0:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$ContentTypeLB;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroidx/fragment/app/C;-><init>()V

    .line 5
    sget-object v0, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$ContentTypeLB;->b:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$ContentTypeLB;

    iput-object v0, p0, Lflix/com/vision/activities/leanback/fragment/d;->r0:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$ContentTypeLB;

    return-void
.end method

.method public constructor <init>(Lflix/com/vision/activities/leanback/MainActivityLeanback;Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$ContentTypeLB;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/C;-><init>()V

    .line 2
    iput-object p1, p0, Lflix/com/vision/activities/leanback/fragment/d;->f0:Lflix/com/vision/activities/leanback/MainActivityLeanback;

    .line 3
    iput-object p2, p0, Lflix/com/vision/activities/leanback/fragment/d;->r0:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$ContentTypeLB;

    return-void
.end method


# virtual methods
.method public dispatchKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/leanback/fragment/d;->k0:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/C;->isAdded()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lflix/com/vision/activities/leanback/fragment/d;->k0:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->dispatchKeyDown(ILandroid/view/KeyEvent;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    return p1
.end method

.method public finished()V
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/leanback/fragment/d;->f0:Lflix/com/vision/activities/leanback/MainActivityLeanback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->finished()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public getSelectedPosition()I
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/leanback/fragment/d;->k0:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/leanback/app/h;->getSelectedPosition()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, -0x1

    .line 11
    return v0
.end method

.method public final i()V
    .locals 8

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/leanback/fragment/d;->o0:Lme/grantland/widget/AutofitTextView;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v2, v1, [F

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    const-string v3, "alpha"

    .line 10
    .line 11
    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v2, p0, Lflix/com/vision/activities/leanback/fragment/d;->l0:Landroid/widget/TextView;

    .line 16
    .line 17
    new-array v4, v1, [F

    .line 18
    .line 19
    fill-array-data v4, :array_1

    .line 20
    .line 21
    .line 22
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget-object v4, p0, Lflix/com/vision/activities/leanback/fragment/d;->m0:Landroid/widget/TextView;

    .line 27
    .line 28
    new-array v5, v1, [F

    .line 29
    .line 30
    fill-array-data v5, :array_2

    .line 31
    .line 32
    .line 33
    invoke-static {v4, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    iget-object v5, p0, Lflix/com/vision/activities/leanback/fragment/d;->n0:Landroid/widget/TextView;

    .line 38
    .line 39
    new-array v6, v1, [F

    .line 40
    .line 41
    fill-array-data v6, :array_3

    .line 42
    .line 43
    .line 44
    invoke-static {v5, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    iget-object v6, p0, Lflix/com/vision/activities/leanback/fragment/d;->p0:Landroid/widget/ImageView;

    .line 49
    .line 50
    new-array v1, v1, [F

    .line 51
    .line 52
    fill-array-data v1, :array_4

    .line 53
    .line 54
    .line 55
    invoke-static {v6, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const-wide/16 v6, 0x12c

    .line 60
    .line 61
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 62
    .line 63
    .line 64
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    .line 65
    .line 66
    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 73
    .line 74
    .line 75
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    .line 76
    .line 77
    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 84
    .line 85
    .line 86
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    .line 87
    .line 88
    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 95
    .line 96
    .line 97
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    .line 98
    .line 99
    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v5, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 106
    .line 107
    .line 108
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    .line 109
    .line 110
    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    nop

    .line 133
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final j(Ljava/lang/Runnable;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/leanback/fragment/d;->o0:Lme/grantland/widget/AutofitTextView;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v2, v1, [F

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    const-string v3, "alpha"

    .line 10
    .line 11
    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v2, p0, Lflix/com/vision/activities/leanback/fragment/d;->l0:Landroid/widget/TextView;

    .line 16
    .line 17
    new-array v4, v1, [F

    .line 18
    .line 19
    fill-array-data v4, :array_1

    .line 20
    .line 21
    .line 22
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget-object v4, p0, Lflix/com/vision/activities/leanback/fragment/d;->m0:Landroid/widget/TextView;

    .line 27
    .line 28
    new-array v5, v1, [F

    .line 29
    .line 30
    fill-array-data v5, :array_2

    .line 31
    .line 32
    .line 33
    invoke-static {v4, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    iget-object v5, p0, Lflix/com/vision/activities/leanback/fragment/d;->n0:Landroid/widget/TextView;

    .line 38
    .line 39
    new-array v6, v1, [F

    .line 40
    .line 41
    fill-array-data v6, :array_3

    .line 42
    .line 43
    .line 44
    invoke-static {v5, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    iget-object v6, p0, Lflix/com/vision/activities/leanback/fragment/d;->p0:Landroid/widget/ImageView;

    .line 49
    .line 50
    new-array v1, v1, [F

    .line 51
    .line 52
    fill-array-data v1, :array_4

    .line 53
    .line 54
    .line 55
    invoke-static {v6, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const-wide/16 v6, 0xc8

    .line 60
    .line 61
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 62
    .line 63
    .line 64
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    .line 65
    .line 66
    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 73
    .line 74
    .line 75
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    .line 76
    .line 77
    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 84
    .line 85
    .line 86
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    .line 87
    .line 88
    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 95
    .line 96
    .line 97
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    .line 98
    .line 99
    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v5, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 106
    .line 107
    .line 108
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    .line 109
    .line 110
    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 114
    .line 115
    .line 116
    new-instance v3, Lflix/com/vision/activities/leanback/fragment/b;

    .line 117
    .line 118
    invoke-direct {v3, p1}, Lflix/com/vision/activities/leanback/fragment/b;-><init>(Ljava/lang/Runnable;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    nop

    .line 141
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    :array_1
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
    :array_2
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
    :array_3
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
    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    sget p3, Lflix/com/vision/R$layout;->fragment_home:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public onMovieClicked(Lflix/com/vision/models/Movie;)V
    .locals 3

    .line 1
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, v0, Lflix/com/vision/App;->e:Z

    .line 7
    .line 8
    iget-object v0, p0, Lflix/com/vision/activities/leanback/fragment/d;->f0:Lflix/com/vision/activities/leanback/MainActivityLeanback;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->openMovieintent(Lflix/com/vision/models/Movie;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/C;->getActivity()Landroidx/fragment/app/H;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-class v2, Lflix/com/vision/activities/MovieDetailActivity;

    .line 23
    .line 24
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    .line 26
    .line 27
    const-string v1, "movie"

    .line 28
    .line 29
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    const/high16 p1, 0x10000000

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Landroidx/fragment/app/C;->startActivity(Landroid/content/Intent;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public onMovieSelected(Lflix/com/vision/models/Movie;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/leanback/fragment/d;->q0:Landroid/widget/ImageView;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lflix/com/vision/activities/leanback/fragment/d;->o0:Lme/grantland/widget/AutofitTextView;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lflix/com/vision/activities/leanback/fragment/d;->o0:Lme/grantland/widget/AutofitTextView;

    .line 14
    .line 15
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getTitle()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    const-wide/16 v2, 0x0

    .line 27
    .line 28
    cmp-long v0, v0, v2

    .line 29
    .line 30
    if-gtz v0, :cond_0

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getType()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    const-string v0, "movie"

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const-string v0, "tv"

    .line 43
    .line 44
    :goto_0
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 45
    .line 46
    .line 47
    move-result-wide v1

    .line 48
    invoke-static {v0, v1, v2}, LD4/a;->getMediaImages(Ljava/lang/String;J)Lio/reactivex/Observable;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    new-instance v1, LA4/u;

    .line 69
    .line 70
    const/4 v2, 0x5

    .line 71
    invoke-direct {v1, v2, p0, p1}, LA4/u;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    new-instance v2, LA4/c;

    .line 75
    .line 76
    const/16 v3, 0x16

    .line 77
    .line 78
    invoke-direct {v2, v3}, LA4/c;-><init>(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 82
    .line 83
    .line 84
    :goto_1
    new-instance v0, Lflix/com/vision/activities/leanback/fragment/a;

    .line 85
    .line 86
    const/4 v1, 0x0

    .line 87
    invoke-direct {v0, v1, p0, p1}, Lflix/com/vision/activities/leanback/fragment/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v0}, Lflix/com/vision/activities/leanback/fragment/d;->j(Ljava/lang/Runnable;)V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public onNetworkClicked(Lflix/com/vision/models/tmdb/Network;)V
    .locals 4

    .line 1
    iget v0, p1, Lflix/com/vision/models/tmdb/Network;->id:I

    .line 2
    .line 3
    const/16 v1, 0x2707

    .line 4
    .line 5
    const/high16 v2, 0x10000000

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    new-instance p1, Landroid/content/Intent;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/C;->getActivity()Landroidx/fragment/app/H;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-class v1, Lflix/com/vision/activities/DramaHomeActivity;

    .line 16
    .line 17
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroidx/fragment/app/C;->startActivity(Landroid/content/Intent;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/C;->getActivity()Landroidx/fragment/app/H;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-class v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;

    .line 34
    .line 35
    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    .line 37
    .line 38
    const-string v1, "network"

    .line 39
    .line 40
    iget p1, p1, Lflix/com/vision/models/tmdb/Network;->id:I

    .line 41
    .line 42
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0}, Landroidx/fragment/app/C;->startActivity(Landroid/content/Intent;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public onNetworkSelected(Lflix/com/vision/models/tmdb/Network;)V
    .locals 2

    .line 1
    new-instance v0, Lflix/com/vision/activities/leanback/fragment/a;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1, p0, p1}, Lflix/com/vision/activities/leanback/fragment/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lflix/com/vision/activities/leanback/fragment/d;->j(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/C;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p2, Lflix/com/vision/R$id;->type_text_view:I

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    check-cast p2, Landroid/widget/TextView;

    .line 11
    .line 12
    iput-object p2, p0, Lflix/com/vision/activities/leanback/fragment/d;->n0:Landroid/widget/TextView;

    .line 13
    .line 14
    sget p2, Lflix/com/vision/R$id;->list_fragment:I

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    check-cast p2, Landroidx/fragment/app/FragmentContainerView;

    .line 21
    .line 22
    iput-object p2, p0, Lflix/com/vision/activities/leanback/fragment/d;->g0:Landroidx/fragment/app/FragmentContainerView;

    .line 23
    .line 24
    sget p2, Lflix/com/vision/R$id;->gradient_horizontal:I

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    iput-object p2, p0, Lflix/com/vision/activities/leanback/fragment/d;->h0:Landroid/view/View;

    .line 31
    .line 32
    sget p2, Lflix/com/vision/R$id;->img_banner:I

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    check-cast p2, Landroid/widget/ImageView;

    .line 39
    .line 40
    iput-object p2, p0, Lflix/com/vision/activities/leanback/fragment/d;->p0:Landroid/widget/ImageView;

    .line 41
    .line 42
    sget p2, Lflix/com/vision/R$id;->title_logo:I

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    check-cast p2, Landroid/widget/ImageView;

    .line 49
    .line 50
    iput-object p2, p0, Lflix/com/vision/activities/leanback/fragment/d;->q0:Landroid/widget/ImageView;

    .line 51
    .line 52
    sget p2, Lflix/com/vision/R$id;->title:I

    .line 53
    .line 54
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    check-cast p2, Lme/grantland/widget/AutofitTextView;

    .line 59
    .line 60
    iput-object p2, p0, Lflix/com/vision/activities/leanback/fragment/d;->o0:Lme/grantland/widget/AutofitTextView;

    .line 61
    .line 62
    sget p2, Lflix/com/vision/R$id;->subtitle:I

    .line 63
    .line 64
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    check-cast p2, Landroid/widget/TextView;

    .line 69
    .line 70
    iput-object p2, p0, Lflix/com/vision/activities/leanback/fragment/d;->l0:Landroid/widget/TextView;

    .line 71
    .line 72
    sget p2, Lflix/com/vision/R$id;->description:I

    .line 73
    .line 74
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Landroid/widget/TextView;

    .line 79
    .line 80
    iput-object p1, p0, Lflix/com/vision/activities/leanback/fragment/d;->m0:Landroid/widget/TextView;

    .line 81
    .line 82
    new-instance p1, Lh5/j;

    .line 83
    .line 84
    invoke-direct {p1}, Lh5/j;-><init>()V

    .line 85
    .line 86
    .line 87
    iput-object p1, p0, Lflix/com/vision/activities/leanback/fragment/d;->i0:Lh5/j;

    .line 88
    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/C;->getActivity()Landroidx/fragment/app/H;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    sget-object p2, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 98
    .line 99
    const-string p2, "fonts/pproduct_sans_rregular.ttf"

    .line 100
    .line 101
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    iput-object p1, p0, Lflix/com/vision/activities/leanback/fragment/d;->j0:Landroid/graphics/Typeface;

    .line 106
    .line 107
    invoke-virtual {p0}, Landroidx/fragment/app/C;->getActivity()Landroidx/fragment/app/H;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    const-string p2, "fonts/product_sans_bold.ttf"

    .line 116
    .line 117
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    iget-object p2, p0, Lflix/com/vision/activities/leanback/fragment/d;->i0:Lh5/j;

    .line 122
    .line 123
    iget-object v0, p0, Lflix/com/vision/activities/leanback/fragment/d;->o0:Lme/grantland/widget/AutofitTextView;

    .line 124
    .line 125
    invoke-virtual {p2, v0, p1}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 126
    .line 127
    .line 128
    iget-object p1, p0, Lflix/com/vision/activities/leanback/fragment/d;->i0:Lh5/j;

    .line 129
    .line 130
    iget-object p2, p0, Lflix/com/vision/activities/leanback/fragment/d;->l0:Landroid/widget/TextView;

    .line 131
    .line 132
    iget-object v0, p0, Lflix/com/vision/activities/leanback/fragment/d;->j0:Landroid/graphics/Typeface;

    .line 133
    .line 134
    invoke-virtual {p1, p2, v0}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 135
    .line 136
    .line 137
    iget-object p1, p0, Lflix/com/vision/activities/leanback/fragment/d;->i0:Lh5/j;

    .line 138
    .line 139
    iget-object p2, p0, Lflix/com/vision/activities/leanback/fragment/d;->m0:Landroid/widget/TextView;

    .line 140
    .line 141
    iget-object v0, p0, Lflix/com/vision/activities/leanback/fragment/d;->j0:Landroid/graphics/Typeface;

    .line 142
    .line 143
    invoke-virtual {p1, p2, v0}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 144
    .line 145
    .line 146
    new-instance p1, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;

    .line 147
    .line 148
    iget-object p2, p0, Lflix/com/vision/activities/leanback/fragment/d;->r0:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$ContentTypeLB;

    .line 149
    .line 150
    invoke-direct {p1, p2}, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;-><init>(Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain$ContentTypeLB;)V

    .line 151
    .line 152
    .line 153
    iput-object p1, p0, Lflix/com/vision/activities/leanback/fragment/d;->k0:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;

    .line 154
    .line 155
    invoke-virtual {p1, p0}, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->setOnContentSelectedListener(Lflix/com/vision/activities/leanback/fragment/d;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Landroidx/fragment/app/C;->getChildFragmentManager()Landroidx/fragment/app/i0;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-virtual {p1}, Landroidx/fragment/app/i0;->beginTransaction()Landroidx/fragment/app/v0;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    sget p2, Lflix/com/vision/R$id;->list_fragment:I

    .line 167
    .line 168
    iget-object v0, p0, Lflix/com/vision/activities/leanback/fragment/d;->k0:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;

    .line 169
    .line 170
    invoke-virtual {p1, p2, v0}, Landroidx/fragment/app/v0;->add(ILandroidx/fragment/app/C;)Landroidx/fragment/app/v0;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1}, Landroidx/fragment/app/v0;->commit()I

    .line 174
    .line 175
    .line 176
    return-void
.end method

.method public reloadWatchedHistory()V
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/leanback/fragment/d;->k0:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->reloadWatchedHistory()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public requestFocus1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/leanback/fragment/d;->g0:Landroidx/fragment/app/FragmentContainerView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setHome()V
    .locals 0

    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/leanback/fragment/d;->k0:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, v1}, Landroidx/leanback/app/h;->setSelectedPosition(IZ)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
