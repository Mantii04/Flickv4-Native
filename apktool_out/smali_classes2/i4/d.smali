.class public final Li4/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh4/a;
.implements Lh4/v;


# instance fields
.field public final synthetic a:Li4/g;


# direct methods
.method public constructor <init>(Li4/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Li4/d;->a:Li4/g;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lh4/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li4/d;->a:Li4/g;

    .line 2
    .line 3
    iget-object v0, v0, Li4/g;->e:Lh4/a;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lh4/a;->onAnimationCancel(Lh4/b;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Lh4/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li4/d;->a:Li4/g;

    .line 2
    .line 3
    iget-object v1, v0, Li4/g;->e:Lh4/a;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-interface {v1, p1}, Lh4/a;->onAnimationEnd(Lh4/b;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v1, v0, Li4/g;->i:Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    iget-object p1, v0, Li4/g;->i:Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    iput-object p1, v0, Li4/g;->e:Lh4/a;

    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Lh4/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li4/d;->a:Li4/g;

    .line 2
    .line 3
    iget-object v0, v0, Li4/g;->e:Lh4/a;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lh4/a;->onAnimationRepeat(Lh4/b;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onAnimationStart(Lh4/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li4/d;->a:Li4/g;

    .line 2
    .line 3
    iget-object v0, v0, Li4/g;->e:Lh4/a;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lh4/a;->onAnimationStart(Lh4/b;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onAnimationUpdate(Lh4/w;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lh4/w;->getAnimatedFraction()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Li4/d;->a:Li4/g;

    .line 6
    .line 7
    iget-object v2, v1, Li4/g;->i:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Li4/f;

    .line 14
    .line 15
    iget v2, p1, Li4/f;->a:I

    .line 16
    .line 17
    and-int/lit16 v2, v2, 0x1ff

    .line 18
    .line 19
    iget-object v1, v1, Li4/g;->b:Ljava/lang/ref/WeakReference;

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Landroid/view/View;

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object p1, p1, Li4/f;->b:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    const/4 v3, 0x0

    .line 41
    :goto_0
    if-ge v3, v2, :cond_c

    .line 42
    .line 43
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Li4/e;

    .line 48
    .line 49
    iget v5, v4, Li4/e;->b:F

    .line 50
    .line 51
    iget v6, v4, Li4/e;->c:F

    .line 52
    .line 53
    mul-float/2addr v6, v0

    .line 54
    add-float/2addr v6, v5

    .line 55
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    check-cast v5, Landroid/view/View;

    .line 60
    .line 61
    if-eqz v5, :cond_b

    .line 62
    .line 63
    iget v4, v4, Li4/e;->a:I

    .line 64
    .line 65
    const/4 v7, 0x1

    .line 66
    if-eq v4, v7, :cond_a

    .line 67
    .line 68
    const/4 v7, 0x2

    .line 69
    if-eq v4, v7, :cond_9

    .line 70
    .line 71
    const/4 v7, 0x4

    .line 72
    if-eq v4, v7, :cond_8

    .line 73
    .line 74
    const/16 v7, 0x8

    .line 75
    .line 76
    if-eq v4, v7, :cond_7

    .line 77
    .line 78
    const/16 v7, 0x10

    .line 79
    .line 80
    if-eq v4, v7, :cond_6

    .line 81
    .line 82
    const/16 v7, 0x20

    .line 83
    .line 84
    if-eq v4, v7, :cond_5

    .line 85
    .line 86
    const/16 v7, 0x40

    .line 87
    .line 88
    if-eq v4, v7, :cond_4

    .line 89
    .line 90
    const/16 v7, 0x80

    .line 91
    .line 92
    if-eq v4, v7, :cond_3

    .line 93
    .line 94
    const/16 v7, 0x100

    .line 95
    .line 96
    if-eq v4, v7, :cond_2

    .line 97
    .line 98
    const/16 v7, 0x200

    .line 99
    .line 100
    if-eq v4, v7, :cond_1

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_1
    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_2
    invoke-virtual {v5, v6}, Landroid/view/View;->setY(F)V

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_3
    invoke-virtual {v5, v6}, Landroid/view/View;->setX(F)V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_4
    invoke-virtual {v5, v6}, Landroid/view/View;->setRotationY(F)V

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_5
    invoke-virtual {v5, v6}, Landroid/view/View;->setRotationX(F)V

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_6
    invoke-virtual {v5, v6}, Landroid/view/View;->setRotation(F)V

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_7
    invoke-virtual {v5, v6}, Landroid/view/View;->setScaleY(F)V

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_8
    invoke-virtual {v5, v6}, Landroid/view/View;->setScaleX(F)V

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_9
    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_a
    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 140
    .line 141
    .line 142
    :cond_b
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_c
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    check-cast p1, Landroid/view/View;

    .line 150
    .line 151
    if-eqz p1, :cond_d

    .line 152
    .line 153
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 154
    .line 155
    .line 156
    :cond_d
    return-void
.end method
