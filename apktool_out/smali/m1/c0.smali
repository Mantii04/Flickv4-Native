.class public final Lm1/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm1/c0;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationFinished(Lm1/B0;)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lm1/B0;->setIsRecyclable(Z)V

    .line 3
    .line 4
    .line 5
    iget-object v1, p1, Lm1/B0;->h:Lm1/B0;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p1, Lm1/B0;->i:Lm1/B0;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    iput-object v2, p1, Lm1/B0;->h:Lm1/B0;

    .line 15
    .line 16
    :cond_0
    iput-object v2, p1, Lm1/B0;->i:Lm1/B0;

    .line 17
    .line 18
    iget v1, p1, Lm1/B0;->j:I

    .line 19
    .line 20
    and-int/lit8 v1, v1, 0x10

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    goto/16 :goto_3

    .line 25
    .line 26
    :cond_1
    iget-object v1, p0, Lm1/c0;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->b0()V

    .line 29
    .line 30
    .line 31
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->n:Lm1/d;

    .line 32
    .line 33
    iget-object v3, v2, Lm1/d;->b:Lm1/c;

    .line 34
    .line 35
    iget-object v4, v2, Lm1/d;->a:Lm1/T;

    .line 36
    .line 37
    iget v5, v2, Lm1/d;->d:I

    .line 38
    .line 39
    iget-object v6, p1, Lm1/B0;->a:Landroid/view/View;

    .line 40
    .line 41
    const/4 v7, 0x0

    .line 42
    if-ne v5, v0, :cond_3

    .line 43
    .line 44
    iget-object v0, v2, Lm1/d;->e:Landroid/view/View;

    .line 45
    .line 46
    if-ne v0, v6, :cond_2

    .line 47
    .line 48
    :goto_0
    move v0, v7

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string v0, "Cannot call removeViewIfHidden within removeView(At) for a different view"

    .line 53
    .line 54
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1

    .line 58
    :cond_3
    const/4 v8, 0x2

    .line 59
    if-eq v5, v8, :cond_8

    .line 60
    .line 61
    :try_start_0
    iput v8, v2, Lm1/d;->d:I

    .line 62
    .line 63
    invoke-virtual {v4, v6}, Lm1/T;->indexOfChild(Landroid/view/View;)I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    const/4 v8, -0x1

    .line 68
    if-ne v5, v8, :cond_4

    .line 69
    .line 70
    invoke-virtual {v2, v6}, Lm1/d;->g(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    .line 73
    :goto_1
    iput v7, v2, Lm1/d;->d:I

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :catchall_0
    move-exception p1

    .line 77
    goto :goto_4

    .line 78
    :cond_4
    :try_start_1
    invoke-virtual {v3, v5}, Lm1/c;->d(I)Z

    .line 79
    .line 80
    .line 81
    move-result v8

    .line 82
    if-eqz v8, :cond_5

    .line 83
    .line 84
    invoke-virtual {v3, v5}, Lm1/c;->f(I)Z

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v6}, Lm1/d;->g(Landroid/view/View;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4, v5}, Lm1/T;->removeViewAt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_5
    iput v7, v2, Lm1/d;->d:I

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :goto_2
    if-eqz v0, :cond_6

    .line 98
    .line 99
    invoke-static {v6}, Landroidx/recyclerview/widget/RecyclerView;->E(Landroid/view/View;)Lm1/B0;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->f:Lm1/p0;

    .line 104
    .line 105
    invoke-virtual {v3, v2}, Lm1/p0;->j(Lm1/B0;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3, v2}, Lm1/p0;->g(Lm1/B0;)V

    .line 109
    .line 110
    .line 111
    sget-boolean v2, Landroidx/recyclerview/widget/RecyclerView;->K0:Z

    .line 112
    .line 113
    if-eqz v2, :cond_6

    .line 114
    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string v3, "after removing animated view: "

    .line 118
    .line 119
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v3, ", "

    .line 126
    .line 127
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    const-string v3, "RecyclerView"

    .line 138
    .line 139
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    :cond_6
    xor-int/lit8 v2, v0, 0x1

    .line 143
    .line 144
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->c0(Z)V

    .line 145
    .line 146
    .line 147
    if-nez v0, :cond_7

    .line 148
    .line 149
    invoke-virtual {p1}, Lm1/B0;->h()Z

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    if-eqz p1, :cond_7

    .line 154
    .line 155
    invoke-virtual {v1, v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 156
    .line 157
    .line 158
    :cond_7
    :goto_3
    return-void

    .line 159
    :goto_4
    iput v7, v2, Lm1/d;->d:I

    .line 160
    .line 161
    throw p1

    .line 162
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 163
    .line 164
    const-string v0, "Cannot call removeViewIfHidden within removeViewIfHidden"

    .line 165
    .line 166
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    throw p1
.end method
