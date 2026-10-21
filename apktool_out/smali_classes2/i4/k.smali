.class public final Li4/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh4/a;
.implements Lh4/v;


# instance fields
.field public final synthetic a:Li4/n;


# direct methods
.method public constructor <init>(Li4/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Li4/k;->a:Li4/n;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lh4/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li4/k;->a:Li4/n;

    .line 2
    .line 3
    iget-object v0, v0, Li4/n;->f:Lh4/a;

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
    iget-object v0, p0, Li4/k;->a:Li4/n;

    .line 2
    .line 3
    iget-object v1, v0, Li4/n;->f:Lh4/a;

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
    iget-object v1, v0, Li4/n;->j:Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    iget-object p1, v0, Li4/n;->j:Ljava/util/HashMap;

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
    iput-object p1, v0, Li4/n;->f:Lh4/a;

    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Lh4/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li4/k;->a:Li4/n;

    .line 2
    .line 3
    iget-object v0, v0, Li4/n;->f:Lh4/a;

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
    iget-object v0, p0, Li4/k;->a:Li4/n;

    .line 2
    .line 3
    iget-object v0, v0, Li4/n;->f:Lh4/a;

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
    .locals 9

    .line 1
    invoke-virtual {p1}, Lh4/w;->getAnimatedFraction()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Li4/k;->a:Li4/n;

    .line 6
    .line 7
    iget-object v2, v1, Li4/n;->j:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Li4/m;

    .line 14
    .line 15
    iget v2, p1, Li4/m;->a:I

    .line 16
    .line 17
    and-int/lit16 v2, v2, 0x1ff

    .line 18
    .line 19
    iget-object v3, v1, Li4/n;->c:Ljava/lang/ref/WeakReference;

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

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
    iget-object p1, p1, Li4/m;->b:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    const/4 v4, 0x0

    .line 41
    :goto_0
    if-ge v4, v2, :cond_b

    .line 42
    .line 43
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    check-cast v5, Li4/l;

    .line 48
    .line 49
    iget v6, v5, Li4/l;->b:F

    .line 50
    .line 51
    iget v7, v5, Li4/l;->c:F

    .line 52
    .line 53
    mul-float/2addr v7, v0

    .line 54
    add-float/2addr v7, v6

    .line 55
    iget v5, v5, Li4/l;->a:I

    .line 56
    .line 57
    const/4 v6, 0x1

    .line 58
    iget-object v8, v1, Li4/n;->b:Lj4/a;

    .line 59
    .line 60
    if-eq v5, v6, :cond_a

    .line 61
    .line 62
    const/4 v6, 0x2

    .line 63
    if-eq v5, v6, :cond_9

    .line 64
    .line 65
    const/4 v6, 0x4

    .line 66
    if-eq v5, v6, :cond_8

    .line 67
    .line 68
    const/16 v6, 0x8

    .line 69
    .line 70
    if-eq v5, v6, :cond_7

    .line 71
    .line 72
    const/16 v6, 0x10

    .line 73
    .line 74
    if-eq v5, v6, :cond_6

    .line 75
    .line 76
    const/16 v6, 0x20

    .line 77
    .line 78
    if-eq v5, v6, :cond_5

    .line 79
    .line 80
    const/16 v6, 0x40

    .line 81
    .line 82
    if-eq v5, v6, :cond_4

    .line 83
    .line 84
    const/16 v6, 0x80

    .line 85
    .line 86
    if-eq v5, v6, :cond_3

    .line 87
    .line 88
    const/16 v6, 0x100

    .line 89
    .line 90
    if-eq v5, v6, :cond_2

    .line 91
    .line 92
    const/16 v6, 0x200

    .line 93
    .line 94
    if-eq v5, v6, :cond_1

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_1
    invoke-virtual {v8, v7}, Lj4/a;->setAlpha(F)V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_2
    invoke-virtual {v8, v7}, Lj4/a;->setY(F)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_3
    invoke-virtual {v8, v7}, Lj4/a;->setX(F)V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_4
    invoke-virtual {v8, v7}, Lj4/a;->setRotationY(F)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_5
    invoke-virtual {v8, v7}, Lj4/a;->setRotationX(F)V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_6
    invoke-virtual {v8, v7}, Lj4/a;->setRotation(F)V

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_7
    invoke-virtual {v8, v7}, Lj4/a;->setScaleY(F)V

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_8
    invoke-virtual {v8, v7}, Lj4/a;->setScaleX(F)V

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_9
    invoke-virtual {v8, v7}, Lj4/a;->setTranslationY(F)V

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_a
    invoke-virtual {v8, v7}, Lj4/a;->setTranslationX(F)V

    .line 134
    .line 135
    .line 136
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_b
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    check-cast p1, Landroid/view/View;

    .line 144
    .line 145
    if-eqz p1, :cond_c

    .line 146
    .line 147
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 148
    .line 149
    .line 150
    :cond_c
    return-void
.end method
