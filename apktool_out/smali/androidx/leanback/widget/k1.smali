.class public final Landroidx/leanback/widget/k1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Landroidx/leanback/widget/l1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/leanback/widget/k1;->d:Z

    .line 6
    .line 7
    sget-object v0, Landroidx/leanback/widget/l1;->a:Landroidx/leanback/widget/l1;

    .line 8
    .line 9
    iput-object v0, p0, Landroidx/leanback/widget/k1;->f:Landroidx/leanback/widget/l1;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;)Landroidx/leanback/widget/m1;
    .locals 6

    .line 1
    new-instance v0, Landroidx/leanback/widget/m1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput v1, v0, Landroidx/leanback/widget/m1;->a:I

    .line 8
    .line 9
    iget-boolean v2, p0, Landroidx/leanback/widget/k1;->a:Z

    .line 10
    .line 11
    iput-boolean v2, v0, Landroidx/leanback/widget/m1;->b:Z

    .line 12
    .line 13
    iget-boolean v2, p0, Landroidx/leanback/widget/k1;->b:Z

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-static {}, Landroidx/leanback/widget/m1;->supportsRoundedCorner()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    move v2, v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v2, v3

    .line 27
    :goto_0
    iput-boolean v2, v0, Landroidx/leanback/widget/m1;->c:Z

    .line 28
    .line 29
    iget-boolean v2, p0, Landroidx/leanback/widget/k1;->c:Z

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    invoke-static {}, Landroidx/leanback/widget/m1;->supportsShadow()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    move v2, v1

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move v2, v3

    .line 42
    :goto_1
    iput-boolean v2, v0, Landroidx/leanback/widget/m1;->d:Z

    .line 43
    .line 44
    iget-boolean v2, v0, Landroidx/leanback/widget/m1;->c:Z

    .line 45
    .line 46
    if-eqz v2, :cond_3

    .line 47
    .line 48
    iget-object v2, p0, Landroidx/leanback/widget/k1;->f:Landroidx/leanback/widget/l1;

    .line 49
    .line 50
    invoke-virtual {v2}, Landroidx/leanback/widget/l1;->getRoundedCornerRadius()I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-nez v4, :cond_2

    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    sget v4, Landroidx/leanback/R$dimen;->lb_rounded_rect_corner_radius:I

    .line 61
    .line 62
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    iput v2, v0, Landroidx/leanback/widget/m1;->f:I

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_2
    invoke-virtual {v2}, Landroidx/leanback/widget/l1;->getRoundedCornerRadius()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    iput v2, v0, Landroidx/leanback/widget/m1;->f:I

    .line 74
    .line 75
    :cond_3
    :goto_2
    iget-boolean v2, v0, Landroidx/leanback/widget/m1;->d:Z

    .line 76
    .line 77
    if-eqz v2, :cond_9

    .line 78
    .line 79
    iget-boolean v2, p0, Landroidx/leanback/widget/k1;->d:Z

    .line 80
    .line 81
    if-eqz v2, :cond_8

    .line 82
    .line 83
    invoke-static {}, Landroidx/leanback/widget/m1;->supportsDynamicShadow()Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-nez v2, :cond_4

    .line 88
    .line 89
    goto :goto_5

    .line 90
    :cond_4
    const/4 v2, 0x3

    .line 91
    iput v2, v0, Landroidx/leanback/widget/m1;->a:I

    .line 92
    .line 93
    iget-object v2, p0, Landroidx/leanback/widget/k1;->f:Landroidx/leanback/widget/l1;

    .line 94
    .line 95
    invoke-virtual {v2}, Landroidx/leanback/widget/l1;->getDynamicShadowUnfocusedZ()F

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    const/4 v5, 0x0

    .line 100
    cmpg-float v4, v4, v5

    .line 101
    .line 102
    if-gez v4, :cond_5

    .line 103
    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    sget v2, Landroidx/leanback/R$dimen;->lb_material_shadow_focused_z:I

    .line 109
    .line 110
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    iput v2, v0, Landroidx/leanback/widget/m1;->h:F

    .line 115
    .line 116
    sget v2, Landroidx/leanback/R$dimen;->lb_material_shadow_normal_z:I

    .line 117
    .line 118
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    iput p1, v0, Landroidx/leanback/widget/m1;->g:F

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_5
    invoke-virtual {v2}, Landroidx/leanback/widget/l1;->getDynamicShadowFocusedZ()F

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    iput p1, v0, Landroidx/leanback/widget/m1;->h:F

    .line 130
    .line 131
    invoke-virtual {v2}, Landroidx/leanback/widget/l1;->getDynamicShadowUnfocusedZ()F

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    iput p1, v0, Landroidx/leanback/widget/m1;->g:F

    .line 136
    .line 137
    :goto_3
    invoke-static {}, Landroidx/leanback/widget/m1;->supportsForeground()Z

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    if-eqz p1, :cond_6

    .line 142
    .line 143
    iget-boolean p1, p0, Landroidx/leanback/widget/k1;->e:Z

    .line 144
    .line 145
    if-eqz p1, :cond_7

    .line 146
    .line 147
    :cond_6
    iget-boolean p1, v0, Landroidx/leanback/widget/m1;->b:Z

    .line 148
    .line 149
    if-eqz p1, :cond_7

    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_7
    move v1, v3

    .line 153
    :goto_4
    iput-boolean v1, v0, Landroidx/leanback/widget/m1;->e:Z

    .line 154
    .line 155
    return-object v0

    .line 156
    :cond_8
    :goto_5
    const/4 p1, 0x2

    .line 157
    iput p1, v0, Landroidx/leanback/widget/m1;->a:I

    .line 158
    .line 159
    iput-boolean v1, v0, Landroidx/leanback/widget/m1;->e:Z

    .line 160
    .line 161
    return-object v0

    .line 162
    :cond_9
    iput v1, v0, Landroidx/leanback/widget/m1;->a:I

    .line 163
    .line 164
    invoke-static {}, Landroidx/leanback/widget/m1;->supportsForeground()Z

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    if-eqz p1, :cond_a

    .line 169
    .line 170
    iget-boolean p1, p0, Landroidx/leanback/widget/k1;->e:Z

    .line 171
    .line 172
    if-eqz p1, :cond_b

    .line 173
    .line 174
    :cond_a
    iget-boolean p1, v0, Landroidx/leanback/widget/m1;->b:Z

    .line 175
    .line 176
    if-eqz p1, :cond_b

    .line 177
    .line 178
    goto :goto_6

    .line 179
    :cond_b
    move v1, v3

    .line 180
    :goto_6
    iput-boolean v1, v0, Landroidx/leanback/widget/m1;->e:Z

    .line 181
    .line 182
    return-object v0
.end method

.method public keepForegroundDrawable(Z)Landroidx/leanback/widget/k1;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/leanback/widget/k1;->e:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public needsOverlay(Z)Landroidx/leanback/widget/k1;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/leanback/widget/k1;->a:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public needsRoundedCorner(Z)Landroidx/leanback/widget/k1;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/leanback/widget/k1;->b:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public needsShadow(Z)Landroidx/leanback/widget/k1;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/leanback/widget/k1;->c:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public options(Landroidx/leanback/widget/l1;)Landroidx/leanback/widget/k1;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/leanback/widget/k1;->f:Landroidx/leanback/widget/l1;

    .line 2
    .line 3
    return-object p0
.end method

.method public preferZOrder(Z)Landroidx/leanback/widget/k1;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/leanback/widget/k1;->d:Z

    .line 2
    .line 3
    return-object p0
.end method
