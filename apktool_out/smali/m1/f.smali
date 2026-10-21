.class public final Lm1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic e:Lm1/o;


# direct methods
.method public constructor <init>(Lm1/o;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm1/f;->e:Lm1/o;

    .line 5
    .line 6
    iput-object p2, p0, Lm1/f;->b:Ljava/util/ArrayList;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lm1/f;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget-object v3, p0, Lm1/f;->e:Lm1/o;

    .line 12
    .line 13
    if-eqz v2, :cond_4

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lm1/m;

    .line 20
    .line 21
    iget-object v4, v2, Lm1/m;->a:Lm1/B0;

    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    if-nez v4, :cond_1

    .line 25
    .line 26
    move-object v4, v5

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    iget-object v4, v4, Lm1/B0;->a:Landroid/view/View;

    .line 29
    .line 30
    :goto_1
    iget-object v6, v2, Lm1/m;->b:Lm1/B0;

    .line 31
    .line 32
    if-eqz v6, :cond_2

    .line 33
    .line 34
    iget-object v5, v6, Lm1/B0;->a:Landroid/view/View;

    .line 35
    .line 36
    :cond_2
    iget-object v6, v3, Lm1/o;->r:Ljava/util/ArrayList;

    .line 37
    .line 38
    const/4 v7, 0x0

    .line 39
    if-eqz v4, :cond_3

    .line 40
    .line 41
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    invoke-virtual {v3}, Lm1/b0;->getChangeDuration()J

    .line 46
    .line 47
    .line 48
    move-result-wide v9

    .line 49
    invoke-virtual {v8, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    iget-object v9, v2, Lm1/m;->a:Lm1/B0;

    .line 54
    .line 55
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    iget v9, v2, Lm1/m;->e:I

    .line 59
    .line 60
    iget v10, v2, Lm1/m;->c:I

    .line 61
    .line 62
    sub-int/2addr v9, v10

    .line 63
    int-to-float v9, v9

    .line 64
    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 65
    .line 66
    .line 67
    iget v9, v2, Lm1/m;->f:I

    .line 68
    .line 69
    iget v10, v2, Lm1/m;->d:I

    .line 70
    .line 71
    sub-int/2addr v9, v10

    .line 72
    int-to-float v9, v9

    .line 73
    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v8, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    new-instance v10, Lm1/k;

    .line 81
    .line 82
    invoke-direct {v10, v3, v2, v8, v4}, Lm1/k;-><init>(Lm1/o;Lm1/m;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v9, v10}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 90
    .line 91
    .line 92
    :cond_3
    if-eqz v5, :cond_0

    .line 93
    .line 94
    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    iget-object v8, v2, Lm1/m;->b:Lm1/B0;

    .line 99
    .line 100
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4, v7}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    invoke-virtual {v3}, Lm1/b0;->getChangeDuration()J

    .line 112
    .line 113
    .line 114
    move-result-wide v7

    .line 115
    invoke-virtual {v6, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    const/high16 v7, 0x3f800000    # 1.0f

    .line 120
    .line 121
    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    new-instance v7, Lm1/l;

    .line 126
    .line 127
    invoke-direct {v7, v3, v2, v4, v5}, Lm1/l;-><init>(Lm1/o;Lm1/m;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 135
    .line 136
    .line 137
    goto/16 :goto_0

    .line 138
    .line 139
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 140
    .line 141
    .line 142
    iget-object v1, v3, Lm1/o;->n:Ljava/util/ArrayList;

    .line 143
    .line 144
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    return-void
.end method
