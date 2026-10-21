.class public final Ly1/f;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# instance fields
.field public a:Ly1/v;

.field public b:Landroid/animation/AnimatorSet;

.field public c:Ljava/util/ArrayList;

.field public d:Lp/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ly1/f;Landroid/graphics/drawable/Drawable$Callback;Landroid/content/res/Resources;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_3

    .line 5
    .line 6
    iget-object p1, p2, Ly1/f;->a:Ly1/v;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Ly1/v;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p4, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1, p4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Ly1/v;

    .line 22
    .line 23
    iput-object p1, p0, Ly1/f;->a:Ly1/v;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Ly1/v;

    .line 31
    .line 32
    iput-object p1, p0, Ly1/f;->a:Ly1/v;

    .line 33
    .line 34
    :goto_0
    iget-object p1, p0, Ly1/f;->a:Ly1/v;

    .line 35
    .line 36
    invoke-virtual {p1}, Ly1/v;->mutate()Landroid/graphics/drawable/Drawable;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Ly1/v;

    .line 41
    .line 42
    iput-object p1, p0, Ly1/f;->a:Ly1/v;

    .line 43
    .line 44
    invoke-virtual {p1, p3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Ly1/f;->a:Ly1/v;

    .line 48
    .line 49
    iget-object p3, p2, Ly1/f;->a:Ly1/v;

    .line 50
    .line 51
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 52
    .line 53
    .line 54
    move-result-object p3

    .line 55
    invoke-virtual {p1, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Ly1/f;->a:Ly1/v;

    .line 59
    .line 60
    iput-boolean v0, p1, Ly1/v;->n:Z

    .line 61
    .line 62
    :cond_1
    iget-object p1, p2, Ly1/f;->c:Ljava/util/ArrayList;

    .line 63
    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    new-instance p3, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 73
    .line 74
    .line 75
    iput-object p3, p0, Ly1/f;->c:Ljava/util/ArrayList;

    .line 76
    .line 77
    new-instance p3, Lp/g;

    .line 78
    .line 79
    invoke-direct {p3, p1}, Lp/g;-><init>(I)V

    .line 80
    .line 81
    .line 82
    iput-object p3, p0, Ly1/f;->d:Lp/g;

    .line 83
    .line 84
    :goto_1
    if-ge v0, p1, :cond_2

    .line 85
    .line 86
    iget-object p3, p2, Ly1/f;->c:Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p3

    .line 92
    check-cast p3, Landroid/animation/Animator;

    .line 93
    .line 94
    invoke-virtual {p3}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    .line 95
    .line 96
    .line 97
    move-result-object p4

    .line 98
    iget-object v1, p2, Ly1/f;->d:Lp/g;

    .line 99
    .line 100
    invoke-virtual {v1, p3}, Lp/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p3

    .line 104
    check-cast p3, Ljava/lang/String;

    .line 105
    .line 106
    iget-object v1, p0, Ly1/f;->a:Ly1/v;

    .line 107
    .line 108
    iget-object v1, v1, Ly1/v;->e:Ly1/t;

    .line 109
    .line 110
    iget-object v1, v1, Ly1/t;->b:Ly1/s;

    .line 111
    .line 112
    iget-object v1, v1, Ly1/s;->o:Lp/g;

    .line 113
    .line 114
    invoke-virtual {v1, p3}, Lp/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {p4, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    iget-object v1, p0, Ly1/f;->c:Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    iget-object v1, p0, Ly1/f;->d:Lp/g;

    .line 127
    .line 128
    invoke-virtual {v1, p4, p3}, Lp/q;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    add-int/lit8 v0, v0, 0x1

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_2
    invoke-virtual {p0}, Ly1/f;->setupAnimatorSet()V

    .line 135
    .line 136
    .line 137
    :cond_3
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No constant state support for SDK < 24."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No constant state support for SDK < 24."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setupAnimatorSet()V
    .locals 2

    .line 1
    iget-object v0, p0, Ly1/f;->b:Landroid/animation/AnimatorSet;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Ly1/f;->b:Landroid/animation/AnimatorSet;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Ly1/f;->b:Landroid/animation/AnimatorSet;

    .line 13
    .line 14
    iget-object v1, p0, Ly1/f;->c:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
