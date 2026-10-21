.class public final Lo4/c;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final b:Lorg/greenrobot/eventbus/EventBus;

.field public final e:Landroid/widget/ImageView;

.field public final f:I

.field public j:Z

.field public m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IZLorg/greenrobot/eventbus/EventBus;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lo4/c;->m:I

    .line 6
    .line 7
    iput p2, p0, Lo4/c;->f:I

    .line 8
    .line 9
    iput-boolean p3, p0, Lo4/c;->j:Z

    .line 10
    .line 11
    iput-object p4, p0, Lo4/c;->b:Lorg/greenrobot/eventbus/EventBus;

    .line 12
    .line 13
    invoke-virtual {p0}, Lo4/c;->b()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p4, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    sget p3, Lcom/thebluealliance/spectrum/R$layout;->color_item:I

    .line 31
    .line 32
    const/4 p4, 0x1

    .line 33
    invoke-virtual {p1, p3, p0, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    sget p1, Lcom/thebluealliance/spectrum/R$id;->selected_checkmark:I

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Landroid/widget/ImageView;

    .line 43
    .line 44
    iput-object p1, p0, Lo4/c;->e:Landroid/widget/ImageView;

    .line 45
    .line 46
    invoke-static {p2}, Lo4/d;->isColorDark(I)Z

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    if-eqz p2, :cond_0

    .line 51
    .line 52
    const/4 p2, -0x1

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const/high16 p2, -0x1000000

    .line 55
    .line 56
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 57
    .line 58
    .line 59
    iget-boolean p1, p0, Lo4/c;->j:Z

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Lo4/c;->setChecked(Z)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public static synthetic a(Lo4/c;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lo4/c;->setItemCheckmarkAttributes(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private setItemCheckmarkAttributes(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo4/c;->e:Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lo4/c;->e:Landroid/widget/ImageView;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lo4/c;->e:Landroid/widget/ImageView;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 6

    .line 1
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 8
    .line 9
    .line 10
    const/high16 v2, -0x1000000

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 13
    .line 14
    .line 15
    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    .line 16
    .line 17
    iget v4, p0, Lo4/c;->f:I

    .line 18
    .line 19
    invoke-static {v4}, Lo4/d;->getRippleColor(I)I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    const/4 v5, 0x0

    .line 28
    invoke-direct {v3, v4, v5, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v3}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 32
    .line 33
    .line 34
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 35
    .line 36
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 40
    .line 41
    .line 42
    iget v1, p0, Lo4/c;->m:I

    .line 43
    .line 44
    iget v3, p0, Lo4/c;->f:I

    .line 45
    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    invoke-static {v3}, Lo4/d;->isColorDark(I)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_0

    .line 53
    .line 54
    const/4 v2, -0x1

    .line 55
    :cond_0
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance p1, Lo4/e;

    .line 2
    .line 3
    iget v0, p0, Lo4/c;->f:I

    .line 4
    .line 5
    invoke-direct {p1, v0}, Lo4/e;-><init>(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lo4/c;->b:Lorg/greenrobot/eventbus/EventBus;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onSelectedColorChanged(Lo4/e;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lo4/e;->getSelectedColor()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget v0, p0, Lo4/c;->f:I

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    invoke-virtual {p0, p1}, Lo4/c;->setChecked(Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setChecked(Z)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lo4/c;->j:Z

    .line 2
    .line 3
    iput-boolean p1, p0, Lo4/c;->j:Z

    .line 4
    .line 5
    const-wide/16 v1, 0xfa

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    const/high16 v5, 0x3f800000    # 1.0f

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-direct {p0, v4}, Lo4/c;->setItemCheckmarkAttributes(F)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lo4/c;->e:Landroid/widget/ImageView;

    .line 19
    .line 20
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lo4/c;->e:Landroid/widget/ImageView;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    new-instance v0, Lo4/a;

    .line 46
    .line 47
    invoke-direct {v0, p0}, Lo4/a;-><init>(Lo4/c;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_0
    if-eqz v0, :cond_1

    .line 59
    .line 60
    if-nez p1, :cond_1

    .line 61
    .line 62
    iget-object p1, p0, Lo4/c;->e:Landroid/widget/ImageView;

    .line 63
    .line 64
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    invoke-direct {p0, v5}, Lo4/c;->setItemCheckmarkAttributes(F)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lo4/c;->e:Landroid/widget/ImageView;

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    new-instance v0, Lo4/b;

    .line 93
    .line 94
    invoke-direct {v0, p0}, Lo4/b;-><init>(Lo4/c;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lo4/c;->e:Landroid/widget/ImageView;

    .line 106
    .line 107
    if-eqz p1, :cond_2

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_2
    const/4 v3, 0x4

    .line 111
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    .line 113
    .line 114
    invoke-direct {p0, v5}, Lo4/c;->setItemCheckmarkAttributes(F)V

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method public setOutlineWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lo4/c;->m:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lo4/c;->b()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
