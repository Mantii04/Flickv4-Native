.class public final Landroidx/fragment/app/J0;
.super Landroidx/fragment/app/L0;
.source "SourceFile"


# instance fields
.field public final h:Landroidx/fragment/app/s0;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;Landroidx/fragment/app/s0;LI/f;)V
    .locals 1

    .line 1
    iget-object v0, p3, Landroidx/fragment/app/s0;->c:Landroidx/fragment/app/C;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, v0, p4}, Landroidx/fragment/app/L0;-><init>(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;Landroidx/fragment/app/C;LI/f;)V

    .line 4
    .line 5
    .line 6
    iput-object p3, p0, Landroidx/fragment/app/J0;->h:Landroidx/fragment/app/s0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/L0;->b:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 2
    .line 3
    sget-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->e:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 4
    .line 5
    const-string v2, " for Fragment "

    .line 6
    .line 7
    const-string v3, "FragmentManager"

    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    iget-object v5, p0, Landroidx/fragment/app/J0;->h:Landroidx/fragment/app/s0;

    .line 11
    .line 12
    if-ne v0, v1, :cond_4

    .line 13
    .line 14
    iget-object v0, v5, Landroidx/fragment/app/s0;->c:Landroidx/fragment/app/C;

    .line 15
    .line 16
    iget-object v1, v0, Landroidx/fragment/app/C;->Q:Landroid/view/View;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/fragment/app/C;->b()Landroidx/fragment/app/B;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    iput-object v1, v6, Landroidx/fragment/app/B;->m:Landroid/view/View;

    .line 29
    .line 30
    invoke-static {v4}, Landroidx/fragment/app/i0;->isLoggingEnabled(I)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_0

    .line 35
    .line 36
    new-instance v4, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v6, "requestFocus: Saved focused view "

    .line 39
    .line 40
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/L0;->getFragment()Landroidx/fragment/app/C;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1}, Landroidx/fragment/app/C;->requireView()Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    const/4 v3, 0x0

    .line 72
    if-nez v2, :cond_1

    .line 73
    .line 74
    invoke-virtual {v5}, Landroidx/fragment/app/s0;->b()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 78
    .line 79
    .line 80
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    cmpl-float v2, v2, v3

    .line 85
    .line 86
    if-nez v2, :cond_2

    .line 87
    .line 88
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-nez v2, :cond_2

    .line 93
    .line 94
    const/4 v2, 0x4

    .line 95
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 96
    .line 97
    .line 98
    :cond_2
    iget-object v0, v0, Landroidx/fragment/app/C;->T:Landroidx/fragment/app/B;

    .line 99
    .line 100
    if-nez v0, :cond_3

    .line 101
    .line 102
    const/high16 v0, 0x3f800000    # 1.0f

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_3
    iget v0, v0, Landroidx/fragment/app/B;->l:F

    .line 106
    .line 107
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :cond_4
    sget-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->f:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 112
    .line 113
    if-ne v0, v1, :cond_6

    .line 114
    .line 115
    iget-object v0, v5, Landroidx/fragment/app/s0;->c:Landroidx/fragment/app/C;

    .line 116
    .line 117
    invoke-virtual {v0}, Landroidx/fragment/app/C;->requireView()Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-static {v4}, Landroidx/fragment/app/i0;->isLoggingEnabled(I)Z

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    if-eqz v4, :cond_5

    .line 126
    .line 127
    new-instance v4, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    const-string v5, "Clearing focus "

    .line 130
    .line 131
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string v5, " on view "

    .line 142
    .line 143
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 163
    .line 164
    .line 165
    :cond_6
    return-void
.end method

.method public complete()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/L0;->complete()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/fragment/app/J0;->h:Landroidx/fragment/app/s0;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/fragment/app/s0;->k()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
