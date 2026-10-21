.class public final Lcom/skydoves/powerspinner/PowerSpinnerView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/s;


# instance fields
.field public A:J

.field public B:I

.field public C:Z

.field public D:Lcom/skydoves/powerspinner/SpinnerGravity;

.field public E:I

.field public F:I

.field public G:Z

.field public H:I

.field public I:I

.field public J:I

.field public K:I

.field public L:I

.field public M:I

.field public N:I

.field public O:Z

.field public P:Lk4/g;

.field public Q:Lk4/e;

.field public R:Lcom/skydoves/powerspinner/SpinnerAnimation;

.field public S:Ljava/lang/String;

.field public T:Landroidx/lifecycle/t;

.field public final q:Ll4/b;

.field public final r:Landroid/widget/PopupWindow;

.field public s:Z

.field public t:I

.field public u:Lk4/h;

.field public v:Z

.field public w:J

.field public x:Landroid/graphics/drawable/Drawable;

.field public y:J

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-static {p1, v1, v2}, Ll4/b;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ll4/b;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v2, "LayoutBodyPowerSpinnerLi\u2026om(context), null, false)"

    .line 24
    .line 25
    invoke-static {p1, v2}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->q:Ll4/b;

    .line 29
    .line 30
    const/4 v2, -0x1

    .line 31
    iput v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->t:I

    .line 32
    .line 33
    new-instance v3, Lk4/d;

    .line 34
    .line 35
    invoke-direct {v3, p0}, Lk4/d;-><init>(Lcom/skydoves/powerspinner/PowerSpinnerView;)V

    .line 36
    .line 37
    .line 38
    iput-object v3, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->u:Lk4/h;

    .line 39
    .line 40
    const/4 v3, 0x1

    .line 41
    iput-boolean v3, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->v:Z

    .line 42
    .line 43
    const-wide/16 v4, 0xfa

    .line 44
    .line 45
    iput-wide v4, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->w:J

    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-static {v4, v0}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    sget v0, Lcom/skydoves/powerspinner/R$drawable;->arrow_power_spinner_library:I

    .line 55
    .line 56
    invoke-static {v4, v0}, Lk4/a;->contextDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-eqz v0, :cond_0

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    :cond_0
    iput-object v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->x:Landroid/graphics/drawable/Drawable;

    .line 67
    .line 68
    const-wide/16 v0, 0x96

    .line 69
    .line 70
    iput-wide v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->y:J

    .line 71
    .line 72
    const/high16 v0, -0x80000000

    .line 73
    .line 74
    iput v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->B:I

    .line 75
    .line 76
    iput-boolean v3, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->C:Z

    .line 77
    .line 78
    sget-object v1, Lcom/skydoves/powerspinner/SpinnerGravity;->j:Lcom/skydoves/powerspinner/SpinnerGravity;

    .line 79
    .line 80
    iput-object v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->D:Lcom/skydoves/powerspinner/SpinnerGravity;

    .line 81
    .line 82
    iput v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->F:I

    .line 83
    .line 84
    const/high16 v1, 0x3f000000    # 0.5f

    .line 85
    .line 86
    invoke-static {p0, v1}, Lk4/a;->dp2Px(Landroid/view/View;F)I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    iput v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->H:I

    .line 91
    .line 92
    iput v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->I:I

    .line 93
    .line 94
    const v1, 0x10013

    .line 95
    .line 96
    .line 97
    iput v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->J:I

    .line 98
    .line 99
    const/4 v1, 0x4

    .line 100
    invoke-static {p0, v1}, Lk4/a;->dp2Px(Landroid/view/View;I)I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    iput v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->K:I

    .line 105
    .line 106
    iput v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->L:I

    .line 107
    .line 108
    iput v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->M:I

    .line 109
    .line 110
    iput v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->N:I

    .line 111
    .line 112
    iput-boolean v3, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->O:Z

    .line 113
    .line 114
    sget-object v0, Lcom/skydoves/powerspinner/SpinnerAnimation;->m:Lcom/skydoves/powerspinner/SpinnerAnimation;

    .line 115
    .line 116
    iput-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->R:Lcom/skydoves/powerspinner/SpinnerAnimation;

    .line 117
    .line 118
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->u:Lk4/h;

    .line 119
    .line 120
    instance-of v0, v0, Lm1/V;

    .line 121
    .line 122
    if-eqz v0, :cond_2

    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->u:Lk4/h;

    .line 129
    .line 130
    if-eqz v1, :cond_1

    .line 131
    .line 132
    check-cast v1, Lm1/V;

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lm1/V;)V

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 139
    .line 140
    const-string v0, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.Adapter<*>"

    .line 141
    .line 142
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw p1

    .line 146
    :cond_2
    :goto_0
    new-instance v0, Landroid/widget/PopupWindow;

    .line 147
    .line 148
    iget-object p1, p1, Ll4/b;->a:Landroid/widget/FrameLayout;

    .line 149
    .line 150
    const/4 v1, -0x2

    .line 151
    invoke-direct {v0, p1, v2, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 152
    .line 153
    .line 154
    iput-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->r:Landroid/widget/PopupWindow;

    .line 155
    .line 156
    new-instance p1, Lk4/k;

    .line 157
    .line 158
    invoke-direct {p1, p0}, Lk4/k;-><init>(Lcom/skydoves/powerspinner/PowerSpinnerView;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    if-nez p1, :cond_3

    .line 169
    .line 170
    const/16 p1, 0x10

    .line 171
    .line 172
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 173
    .line 174
    .line 175
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->T:Landroidx/lifecycle/t;

    .line 180
    .line 181
    if-nez v0, :cond_4

    .line 182
    .line 183
    instance-of v0, p1, Landroidx/lifecycle/t;

    .line 184
    .line 185
    if-eqz v0, :cond_4

    .line 186
    .line 187
    check-cast p1, Landroidx/lifecycle/t;

    .line 188
    .line 189
    invoke-virtual {p0, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setLifecycleOwner(Landroidx/lifecycle/t;)V

    .line 190
    .line 191
    .line 192
    :cond_4
    return-void
.end method

.method public static final access$animateArrow(Lcom/skydoves/powerspinner/PowerSpinnerView;Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->v:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    const/16 v0, 0x2710

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    move v2, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v2, v0

    .line 13
    :goto_0
    if-eqz p1, :cond_1

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    move v0, v1

    .line 17
    :goto_1
    iget-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->x:Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    const-string v1, "level"

    .line 20
    .line 21
    filled-new-array {v2, v0}, [I

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-wide v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->w:J

    .line 30
    .line 31
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 35
    .line 36
    .line 37
    :cond_2
    return-void
.end method

.method public static final access$applyWindowAnimation(Lcom/skydoves/powerspinner/PowerSpinnerView;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->L:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->r:Landroid/widget/PopupWindow;

    .line 4
    .line 5
    const/high16 v2, -0x80000000

    .line 6
    .line 7
    if-ne v0, v2, :cond_3

    .line 8
    .line 9
    iget-object p0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->R:Lcom/skydoves/powerspinner/SpinnerAnimation;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_2

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    if-eq p0, v0, :cond_1

    .line 19
    .line 20
    const/4 v0, 0x2

    .line 21
    if-eq p0, v0, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    sget p0, Lcom/skydoves/powerspinner/R$style;->Elastic_PowerSpinner:I

    .line 25
    .line 26
    invoke-virtual {v1, p0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    sget p0, Lcom/skydoves/powerspinner/R$style;->Fade_PowerSpinner:I

    .line 31
    .line 32
    invoke-virtual {v1, p0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    sget p0, Lcom/skydoves/powerspinner/R$style;->DropDown_PowerSpinner:I

    .line 37
    .line 38
    invoke-virtual {v1, p0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_3
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public static final synthetic access$getBinding$p(Lcom/skydoves/powerspinner/PowerSpinnerView;)Ll4/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->q:Ll4/b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getSpinnerWindow$p(Lcom/skydoves/powerspinner/PowerSpinnerView;)Landroid/widget/PopupWindow;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->r:Landroid/widget/PopupWindow;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$setShowing$p(Lcom/skydoves/powerspinner/PowerSpinnerView;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->s:Z

    .line 2
    .line 3
    return-void
.end method

.method private final setTypeArray(Landroid/content/res/TypedArray;)V
    .locals 3

    .line 1
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_arrow_drawable:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_arrow_drawable:I

    .line 10
    .line 11
    iget v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->B:I

    .line 12
    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->B:I

    .line 18
    .line 19
    :cond_0
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_arrow_show:I

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_arrow_show:I

    .line 28
    .line 29
    iget-boolean v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->C:Z

    .line 30
    .line 31
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput-boolean v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->C:Z

    .line 36
    .line 37
    :cond_1
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_arrow_gravity:I

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_6

    .line 44
    .line 45
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_arrow_gravity:I

    .line 46
    .line 47
    iget-object v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->D:Lcom/skydoves/powerspinner/SpinnerGravity;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/skydoves/powerspinner/SpinnerGravity;->getValue()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    sget-object v1, Lcom/skydoves/powerspinner/SpinnerGravity;->e:Lcom/skydoves/powerspinner/SpinnerGravity;

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/skydoves/powerspinner/SpinnerGravity;->getValue()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-ne v0, v2, :cond_2

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    sget-object v1, Lcom/skydoves/powerspinner/SpinnerGravity;->f:Lcom/skydoves/powerspinner/SpinnerGravity;

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/skydoves/powerspinner/SpinnerGravity;->getValue()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-ne v0, v2, :cond_3

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    sget-object v1, Lcom/skydoves/powerspinner/SpinnerGravity;->j:Lcom/skydoves/powerspinner/SpinnerGravity;

    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/skydoves/powerspinner/SpinnerGravity;->getValue()I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-ne v0, v2, :cond_4

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_4
    sget-object v1, Lcom/skydoves/powerspinner/SpinnerGravity;->m:Lcom/skydoves/powerspinner/SpinnerGravity;

    .line 85
    .line 86
    invoke-virtual {v1}, Lcom/skydoves/powerspinner/SpinnerGravity;->getValue()I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-ne v0, v2, :cond_5

    .line 91
    .line 92
    :goto_0
    iput-object v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->D:Lcom/skydoves/powerspinner/SpinnerGravity;

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 96
    .line 97
    const-string v0, "unknown argument: spinner_arrow_gravity"

    .line 98
    .line 99
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p1

    .line 103
    :cond_6
    :goto_1
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_arrow_padding:I

    .line 104
    .line 105
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_7

    .line 110
    .line 111
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_arrow_padding:I

    .line 112
    .line 113
    iget v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->E:I

    .line 114
    .line 115
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    iput v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->E:I

    .line 120
    .line 121
    :cond_7
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_arrow_tint:I

    .line 122
    .line 123
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_8

    .line 128
    .line 129
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_arrow_tint:I

    .line 130
    .line 131
    iget v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->F:I

    .line 132
    .line 133
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    iput v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->F:I

    .line 138
    .line 139
    :cond_8
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_arrow_animate:I

    .line 140
    .line 141
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-eqz v0, :cond_9

    .line 146
    .line 147
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_arrow_animate:I

    .line 148
    .line 149
    iget-boolean v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->v:Z

    .line 150
    .line 151
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    iput-boolean v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->v:Z

    .line 156
    .line 157
    :cond_9
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_arrow_animate_duration:I

    .line 158
    .line 159
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-eqz v0, :cond_a

    .line 164
    .line 165
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_arrow_animate_duration:I

    .line 166
    .line 167
    iget-wide v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->w:J

    .line 168
    .line 169
    long-to-int v1, v1

    .line 170
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    int-to-long v0, v0

    .line 175
    iput-wide v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->w:J

    .line 176
    .line 177
    :cond_a
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_divider_show:I

    .line 178
    .line 179
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-eqz v0, :cond_b

    .line 184
    .line 185
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_divider_show:I

    .line 186
    .line 187
    iget-boolean v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->G:Z

    .line 188
    .line 189
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    iput-boolean v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->G:Z

    .line 194
    .line 195
    :cond_b
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_divider_size:I

    .line 196
    .line 197
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    if-eqz v0, :cond_c

    .line 202
    .line 203
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_divider_size:I

    .line 204
    .line 205
    iget v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->H:I

    .line 206
    .line 207
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    iput v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->H:I

    .line 212
    .line 213
    :cond_c
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_divider_color:I

    .line 214
    .line 215
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    if-eqz v0, :cond_d

    .line 220
    .line 221
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_divider_color:I

    .line 222
    .line 223
    iget v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->I:I

    .line 224
    .line 225
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    iput v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->I:I

    .line 230
    .line 231
    :cond_d
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_popup_background:I

    .line 232
    .line 233
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    if-eqz v0, :cond_e

    .line 238
    .line 239
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_popup_background:I

    .line 240
    .line 241
    iget v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->J:I

    .line 242
    .line 243
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    iput v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->J:I

    .line 248
    .line 249
    :cond_e
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_popup_animation:I

    .line 250
    .line 251
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    if-eqz v0, :cond_13

    .line 256
    .line 257
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_popup_animation:I

    .line 258
    .line 259
    iget-object v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->R:Lcom/skydoves/powerspinner/SpinnerAnimation;

    .line 260
    .line 261
    invoke-virtual {v1}, Lcom/skydoves/powerspinner/SpinnerAnimation;->getValue()I

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    sget-object v1, Lcom/skydoves/powerspinner/SpinnerAnimation;->e:Lcom/skydoves/powerspinner/SpinnerAnimation;

    .line 270
    .line 271
    invoke-virtual {v1}, Lcom/skydoves/powerspinner/SpinnerAnimation;->getValue()I

    .line 272
    .line 273
    .line 274
    move-result v2

    .line 275
    if-ne v0, v2, :cond_f

    .line 276
    .line 277
    goto :goto_2

    .line 278
    :cond_f
    sget-object v1, Lcom/skydoves/powerspinner/SpinnerAnimation;->f:Lcom/skydoves/powerspinner/SpinnerAnimation;

    .line 279
    .line 280
    invoke-virtual {v1}, Lcom/skydoves/powerspinner/SpinnerAnimation;->getValue()I

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    if-ne v0, v2, :cond_10

    .line 285
    .line 286
    goto :goto_2

    .line 287
    :cond_10
    sget-object v1, Lcom/skydoves/powerspinner/SpinnerAnimation;->j:Lcom/skydoves/powerspinner/SpinnerAnimation;

    .line 288
    .line 289
    invoke-virtual {v1}, Lcom/skydoves/powerspinner/SpinnerAnimation;->getValue()I

    .line 290
    .line 291
    .line 292
    move-result v2

    .line 293
    if-ne v0, v2, :cond_11

    .line 294
    .line 295
    goto :goto_2

    .line 296
    :cond_11
    sget-object v1, Lcom/skydoves/powerspinner/SpinnerAnimation;->m:Lcom/skydoves/powerspinner/SpinnerAnimation;

    .line 297
    .line 298
    invoke-virtual {v1}, Lcom/skydoves/powerspinner/SpinnerAnimation;->getValue()I

    .line 299
    .line 300
    .line 301
    move-result v2

    .line 302
    if-ne v0, v2, :cond_12

    .line 303
    .line 304
    :goto_2
    iput-object v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->R:Lcom/skydoves/powerspinner/SpinnerAnimation;

    .line 305
    .line 306
    goto :goto_3

    .line 307
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 308
    .line 309
    const-string v0, "unknown argument: spinner_popup_animation"

    .line 310
    .line 311
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    throw p1

    .line 315
    :cond_13
    :goto_3
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_popup_animation_style:I

    .line 316
    .line 317
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 318
    .line 319
    .line 320
    move-result v0

    .line 321
    if-eqz v0, :cond_14

    .line 322
    .line 323
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_popup_animation_style:I

    .line 324
    .line 325
    iget v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->L:I

    .line 326
    .line 327
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 328
    .line 329
    .line 330
    move-result v0

    .line 331
    iput v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->L:I

    .line 332
    .line 333
    :cond_14
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_popup_width:I

    .line 334
    .line 335
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 336
    .line 337
    .line 338
    move-result v0

    .line 339
    if-eqz v0, :cond_15

    .line 340
    .line 341
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_popup_width:I

    .line 342
    .line 343
    iget v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->M:I

    .line 344
    .line 345
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 346
    .line 347
    .line 348
    move-result v0

    .line 349
    iput v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->M:I

    .line 350
    .line 351
    :cond_15
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_popup_height:I

    .line 352
    .line 353
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 354
    .line 355
    .line 356
    move-result v0

    .line 357
    if-eqz v0, :cond_16

    .line 358
    .line 359
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_popup_height:I

    .line 360
    .line 361
    iget v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->N:I

    .line 362
    .line 363
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 364
    .line 365
    .line 366
    move-result v0

    .line 367
    iput v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->N:I

    .line 368
    .line 369
    :cond_16
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_popup_elevation:I

    .line 370
    .line 371
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 372
    .line 373
    .line 374
    move-result v0

    .line 375
    if-eqz v0, :cond_17

    .line 376
    .line 377
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_popup_elevation:I

    .line 378
    .line 379
    iget v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->K:I

    .line 380
    .line 381
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 382
    .line 383
    .line 384
    move-result v0

    .line 385
    iput v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->K:I

    .line 386
    .line 387
    :cond_17
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_item_array:I

    .line 388
    .line 389
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 390
    .line 391
    .line 392
    move-result v0

    .line 393
    if-eqz v0, :cond_18

    .line 394
    .line 395
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_item_array:I

    .line 396
    .line 397
    const/high16 v1, -0x80000000

    .line 398
    .line 399
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 400
    .line 401
    .line 402
    move-result v0

    .line 403
    if-eq v0, v1, :cond_18

    .line 404
    .line 405
    invoke-virtual {p0, v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setItems(I)V

    .line 406
    .line 407
    .line 408
    :cond_18
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_dismiss_notified_select:I

    .line 409
    .line 410
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 411
    .line 412
    .line 413
    move-result v0

    .line 414
    if-eqz v0, :cond_19

    .line 415
    .line 416
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_dismiss_notified_select:I

    .line 417
    .line 418
    iget-boolean v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->O:Z

    .line 419
    .line 420
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 421
    .line 422
    .line 423
    move-result v0

    .line 424
    iput-boolean v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->O:Z

    .line 425
    .line 426
    :cond_19
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_debounce_duration:I

    .line 427
    .line 428
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 429
    .line 430
    .line 431
    move-result v0

    .line 432
    if-eqz v0, :cond_1a

    .line 433
    .line 434
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_debounce_duration:I

    .line 435
    .line 436
    iget-wide v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->y:J

    .line 437
    .line 438
    long-to-int v1, v1

    .line 439
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 440
    .line 441
    .line 442
    move-result v0

    .line 443
    int-to-long v0, v0

    .line 444
    iput-wide v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->y:J

    .line 445
    .line 446
    :cond_1a
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_preference_name:I

    .line 447
    .line 448
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 449
    .line 450
    .line 451
    move-result v0

    .line 452
    if-eqz v0, :cond_1b

    .line 453
    .line 454
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_preference_name:I

    .line 455
    .line 456
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    invoke-virtual {p0, v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setPreferenceName(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    :cond_1b
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_popup_focusable:I

    .line 464
    .line 465
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 466
    .line 467
    .line 468
    move-result v0

    .line 469
    if-eqz v0, :cond_1c

    .line 470
    .line 471
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_popup_focusable:I

    .line 472
    .line 473
    const/4 v1, 0x0

    .line 474
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 475
    .line 476
    .line 477
    move-result p1

    .line 478
    invoke-virtual {p0, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setIsFocusable(Z)V

    .line 479
    .line 480
    .line 481
    :cond_1c
    return-void
.end method

.method public static synthetic showOrDismiss$default(Lcom/skydoves/powerspinner/PowerSpinnerView;IIILjava/lang/Object;)V
    .locals 1

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p4, :cond_0

    .line 5
    .line 6
    move p1, v0

    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    move p2, v0

    .line 12
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->showOrDismiss(II)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 7

    .line 1
    new-instance v0, Lcom/skydoves/powerspinner/PowerSpinnerView$dismiss$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/skydoves/powerspinner/PowerSpinnerView$dismiss$1;-><init>(Lcom/skydoves/powerspinner/PowerSpinnerView;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    iget-wide v3, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->A:J

    .line 11
    .line 12
    sub-long v3, v1, v3

    .line 13
    .line 14
    iget-wide v5, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->y:J

    .line 15
    .line 16
    cmp-long v3, v3, v5

    .line 17
    .line 18
    if-lez v3, :cond_0

    .line 19
    .line 20
    iput-wide v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->A:J

    .line 21
    .line 22
    invoke-interface {v0}, LH5/a;->invoke()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final getArrowAnimate()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->v:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getArrowAnimationDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->w:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getArrowDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->x:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getArrowGravity()Lcom/skydoves/powerspinner/SpinnerGravity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->D:Lcom/skydoves/powerspinner/SpinnerGravity;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getArrowPadding()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->E:I

    .line 2
    .line 3
    return v0
.end method

.method public final getArrowResource()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->B:I

    .line 2
    .line 3
    return v0
.end method

.method public final getArrowSize()Lk4/s;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final getArrowTint()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->F:I

    .line 2
    .line 3
    return v0
.end method

.method public final getDebounceDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->y:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getDisableChangeTextWhenNotified()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->z:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getDismissWhenNotifiedItemSelected()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->O:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getDividerColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->I:I

    .line 2
    .line 3
    return v0
.end method

.method public final getDividerSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->H:I

    .line 2
    .line 3
    return v0
.end method

.method public final getLifecycleOwner()Landroidx/lifecycle/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->T:Landroidx/lifecycle/t;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOnSpinnerDismissListener()Lk4/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->Q:Lk4/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPreferenceName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->S:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSelectedIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->t:I

    .line 2
    .line 3
    return v0
.end method

.method public final getShowArrow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->C:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getShowDivider()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->G:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getSpinnerAdapter()Lk4/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lk4/h;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->u:Lk4/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    const-string v1, "null cannot be cast to non-null type com.skydoves.powerspinner.PowerSpinnerInterface<T>"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public final getSpinnerBodyView()Landroid/widget/FrameLayout;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->q:Ll4/b;

    .line 2
    .line 3
    iget-object v0, v0, Ll4/b;->a:Landroid/widget/FrameLayout;

    .line 4
    .line 5
    const-string v1, "binding.body"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final getSpinnerOutsideTouchListener()Lk4/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->P:Lk4/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSpinnerPopupAnimation()Lcom/skydoves/powerspinner/SpinnerAnimation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->R:Lcom/skydoves/powerspinner/SpinnerAnimation;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSpinnerPopupAnimationStyle()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->L:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSpinnerPopupBackgroundColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->J:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSpinnerPopupElevation()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->K:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSpinnerPopupHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->N:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSpinnerPopupWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->M:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSpinnerRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->q:Ll4/b;

    .line 2
    .line 3
    iget-object v0, v0, Ll4/b;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    const-string v1, "binding.recyclerView"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final isShowing()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->s:Z

    .line 2
    .line 3
    return v0
.end method

.method public final n()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getArrowResource()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, -0x80000000

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "context"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getArrowResource()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-static {v0, v1}, Lk4/a;->contextDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move-object v0, v2

    .line 35
    :goto_0
    iput-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->x:Landroid/graphics/drawable/Drawable;

    .line 36
    .line 37
    :cond_1
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getArrowPadding()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getArrowSize()Lk4/s;

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->x:Landroid/graphics/drawable/Drawable;

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getShowArrow()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_7

    .line 54
    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    invoke-static {v0}, LE/c;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const-string v3, "DrawableCompat.wrap(it).mutate()"

    .line 66
    .line 67
    invoke-static {v1, v3}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getArrowTint()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    invoke-static {v1, v3}, LE/c;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 78
    .line 79
    .line 80
    :cond_2
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getArrowGravity()Lcom/skydoves/powerspinner/SpinnerGravity;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_6

    .line 89
    .line 90
    const/4 v3, 0x1

    .line 91
    if-eq v1, v3, :cond_5

    .line 92
    .line 93
    const/4 v3, 0x2

    .line 94
    if-eq v1, v3, :cond_4

    .line 95
    .line 96
    const/4 v3, 0x3

    .line 97
    if-eq v1, v3, :cond_3

    .line 98
    .line 99
    return-void

    .line 100
    :cond_3
    invoke-virtual {p0, v2, v2, v2, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_4
    invoke-virtual {p0, v2, v2, v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_5
    invoke-virtual {p0, v2, v0, v2, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :cond_6
    invoke-virtual {p0, v0, v2, v2, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_7
    invoke-virtual {p0, v2, v2, v2, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method public final notifyItemSelected(ILjava/lang/CharSequence;)V
    .locals 2

    .line 1
    const-string v0, "changedText"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->t:I

    .line 7
    .line 8
    iget-boolean p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->z:Z

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-boolean p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->O:Z

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->dismiss()V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->S:Ljava/lang/String;

    .line 23
    .line 24
    if-eqz p1, :cond_3

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-nez p2, :cond_2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    sget-object p2, Lk4/j;->c:Lk4/i;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, "context"

    .line 40
    .line 41
    invoke-static {v0, v1}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, v0}, Lk4/i;->getInstance(Landroid/content/Context;)Lk4/j;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    iget v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->t:I

    .line 49
    .line 50
    invoke-virtual {p2, p1, v0}, Lk4/j;->persistSelectedIndex(Ljava/lang/String;I)V

    .line 51
    .line 52
    .line 53
    :cond_3
    :goto_0
    return-void
.end method

.method public final o()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->u:Lk4/h;

    .line 2
    .line 3
    check-cast v0, Lk4/d;

    .line 4
    .line 5
    invoke-virtual {v0}, Lk4/d;->getItemCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->S:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    sget-object v1, Lk4/j;->c:Lk4/i;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const-string v3, "context"

    .line 29
    .line 30
    invoke-static {v2, v3}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Lk4/i;->getInstance(Landroid/content/Context;)Lk4/j;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2, v0}, Lk4/j;->getSelectedIndex(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    const/4 v4, -0x1

    .line 42
    if-eq v2, v4, :cond_1

    .line 43
    .line 44
    iget-object v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->u:Lk4/h;

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-static {v4, v3}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v4}, Lk4/i;->getInstance(Landroid/content/Context;)Lk4/j;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1, v0}, Lk4/j;->getSelectedIndex(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    check-cast v2, Lk4/d;

    .line 62
    .line 63
    invoke-virtual {v2, v0}, Lk4/d;->notifyItemSelected(I)V

    .line 64
    .line 65
    .line 66
    :cond_1
    :goto_0
    return-void
.end method

.method public final onDestroy()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/G;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->dismiss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onFinishInflate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->p()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->n()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->o()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final p()V
    .locals 1

    .line 1
    new-instance v0, Lk4/r;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lk4/r;-><init>(Lcom/skydoves/powerspinner/PowerSpinnerView;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setArrowAnimate(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->v:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setArrowAnimationDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->w:J

    .line 2
    .line 3
    return-void
.end method

.method public final setArrowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->x:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-void
.end method

.method public final setArrowGravity(Lcom/skydoves/powerspinner/SpinnerGravity;)V
    .locals 1

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->D:Lcom/skydoves/powerspinner/SpinnerGravity;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->n()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setArrowPadding(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->E:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->n()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setArrowResource(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->B:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->n()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setArrowSize(Lk4/s;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->n()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final setArrowTint(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->F:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->n()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setDisableChangeTextWhenNotified(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->z:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setDismissWhenNotifiedItemSelected(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->O:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setDividerColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->I:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->p()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setDividerSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->H:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->p()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setIsFocusable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->r:Landroid/widget/PopupWindow;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lk4/l;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lk4/l;-><init>(Lcom/skydoves/powerspinner/PowerSpinnerView;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->Q:Lk4/e;

    .line 12
    .line 13
    return-void
.end method

.method public final setItems(I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->u:Lk4/h;

    instance-of v0, v0, Lk4/d;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.resources.getStringArray(resource)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lv5/n;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setItems(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final setItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "itemList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->u:Lk4/h;

    if-eqz v0, :cond_0

    check-cast v0, Lk4/d;

    invoke-virtual {v0, p1}, Lk4/d;->setItems(Ljava/util/List;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type com.skydoves.powerspinner.PowerSpinnerInterface<T>"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setLifecycleOwner(Landroidx/lifecycle/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->T:Landroidx/lifecycle/t;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Landroidx/lifecycle/t;->getLifecycle()Landroidx/lifecycle/o;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1, p0}, Landroidx/lifecycle/o;->addObserver(Landroidx/lifecycle/s;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final synthetic setOnSpinnerDismissListener(LH5/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LH5/a;",
            ")V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lk4/m;

    invoke-direct {v0, p1}, Lk4/m;-><init>(LH5/a;)V

    iput-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->Q:Lk4/e;

    return-void
.end method

.method public final setOnSpinnerDismissListener(Lk4/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->Q:Lk4/e;

    return-void
.end method

.method public final synthetic setOnSpinnerItemSelectedListener(LH5/r;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LH5/r;",
            ")V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->u:Lk4/h;

    if-eqz v0, :cond_0

    .line 5
    new-instance v1, Lk4/n;

    invoke-direct {v1, p1}, Lk4/n;-><init>(LH5/r;)V

    check-cast v0, Lk4/d;

    invoke-virtual {v0, v1}, Lk4/d;->setOnSpinnerItemSelectedListener(Lk4/f;)V

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type com.skydoves.powerspinner.PowerSpinnerInterface<T>"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setOnSpinnerItemSelectedListener(Lk4/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lk4/f;",
            ")V"
        }
    .end annotation

    const-string v0, "onSpinnerItemSelectedListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->u:Lk4/h;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Lk4/d;

    invoke-virtual {v0, p1}, Lk4/d;->setOnSpinnerItemSelectedListener(Lk4/f;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type com.skydoves.powerspinner.PowerSpinnerInterface<T>"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic setOnSpinnerOutsideTouchListener(LH5/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LH5/p;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "block"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lk4/o;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lk4/o;-><init>(LH5/p;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->P:Lk4/g;

    .line 12
    .line 13
    return-void
.end method

.method public final setPreferenceName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->S:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->o()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setShowArrow(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->C:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->n()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setShowDivider(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->G:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->p()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setSpinnerAdapter(Lk4/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lk4/h;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "powerSpinnerInterface"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->u:Lk4/h;

    .line 7
    .line 8
    instance-of p1, p1, Lm1/V;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->u:Lk4/h;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    check-cast v0, Lm1/V;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lm1/V;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 27
    .line 28
    const-string v0, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.Adapter<*>"

    .line 29
    .line 30
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :cond_1
    return-void
.end method

.method public final setSpinnerOutsideTouchListener(Lk4/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->P:Lk4/g;

    .line 2
    .line 3
    return-void
.end method

.method public final setSpinnerPopupAnimation(Lcom/skydoves/powerspinner/SpinnerAnimation;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->R:Lcom/skydoves/powerspinner/SpinnerAnimation;

    .line 7
    .line 8
    return-void
.end method

.method public final setSpinnerPopupAnimationStyle(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->L:I

    .line 2
    .line 3
    return-void
.end method

.method public final setSpinnerPopupBackgroundColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->J:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->p()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setSpinnerPopupElevation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->K:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->p()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setSpinnerPopupHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->N:I

    .line 2
    .line 3
    return-void
.end method

.method public final setSpinnerPopupWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->M:I

    .line 2
    .line 3
    return-void
.end method

.method public final show(II)V
    .locals 5

    .line 1
    new-instance v0, Lcom/skydoves/powerspinner/PowerSpinnerView$show$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/skydoves/powerspinner/PowerSpinnerView$show$1;-><init>(Lcom/skydoves/powerspinner/PowerSpinnerView;II)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide p1

    .line 10
    iget-wide v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->A:J

    .line 11
    .line 12
    sub-long v1, p1, v1

    .line 13
    .line 14
    iget-wide v3, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->y:J

    .line 15
    .line 16
    cmp-long v1, v1, v3

    .line 17
    .line 18
    if-lez v1, :cond_0

    .line 19
    .line 20
    iput-wide p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->A:J

    .line 21
    .line 22
    invoke-interface {v0}, LH5/a;->invoke()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final showOrDismiss(II)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lm1/V;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const-string v1, "getSpinnerRecyclerView().adapter ?: return"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-boolean v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->s:Z

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Lm1/V;->getItemCount()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-lez v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->show(II)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->dismiss()V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method
