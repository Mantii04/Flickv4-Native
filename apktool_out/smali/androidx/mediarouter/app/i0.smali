.class public final Landroidx/mediarouter/app/i0;
.super Landroidx/mediarouter/app/Y;
.source "SourceFile"


# instance fields
.field public final A:Landroid/widget/ProgressBar;

.field public final B:Landroid/widget/TextView;

.field public final C:Landroid/widget/RelativeLayout;

.field public final D:Landroid/widget/CheckBox;

.field public final E:F

.field public final F:I

.field public final G:Landroidx/mediarouter/app/h0;

.field public final synthetic H:Landroidx/mediarouter/app/j0;

.field public final y:Landroid/view/View;

.field public final z:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/j0;Landroid/view/View;)V
    .locals 4

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/i0;->H:Landroidx/mediarouter/app/j0;

    .line 2
    .line 3
    iget-object p1, p1, Landroidx/mediarouter/app/j0;->m:Landroidx/mediarouter/app/m0;

    .line 4
    .line 5
    sget v0, Landroidx/mediarouter/R$id;->mr_cast_mute_button:I

    .line 6
    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/ImageButton;

    .line 12
    .line 13
    sget v1, Landroidx/mediarouter/R$id;->mr_cast_volume_slider:I

    .line 14
    .line 15
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroidx/mediarouter/app/MediaRouteVolumeSlider;

    .line 20
    .line 21
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/mediarouter/app/Y;-><init>(Landroidx/mediarouter/app/m0;Landroid/view/View;Landroid/widget/ImageButton;Landroidx/mediarouter/app/MediaRouteVolumeSlider;)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Landroidx/mediarouter/app/h0;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Landroidx/mediarouter/app/h0;-><init>(Landroidx/mediarouter/app/i0;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Landroidx/mediarouter/app/i0;->G:Landroidx/mediarouter/app/h0;

    .line 30
    .line 31
    iput-object p2, p0, Landroidx/mediarouter/app/i0;->y:Landroid/view/View;

    .line 32
    .line 33
    sget v0, Landroidx/mediarouter/R$id;->mr_cast_route_icon:I

    .line 34
    .line 35
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroid/widget/ImageView;

    .line 40
    .line 41
    iput-object v0, p0, Landroidx/mediarouter/app/i0;->z:Landroid/widget/ImageView;

    .line 42
    .line 43
    sget v0, Landroidx/mediarouter/R$id;->mr_cast_route_progress_bar:I

    .line 44
    .line 45
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Landroid/widget/ProgressBar;

    .line 50
    .line 51
    iput-object v0, p0, Landroidx/mediarouter/app/i0;->A:Landroid/widget/ProgressBar;

    .line 52
    .line 53
    sget v1, Landroidx/mediarouter/R$id;->mr_cast_route_name:I

    .line 54
    .line 55
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Landroid/widget/TextView;

    .line 60
    .line 61
    iput-object v1, p0, Landroidx/mediarouter/app/i0;->B:Landroid/widget/TextView;

    .line 62
    .line 63
    sget v1, Landroidx/mediarouter/R$id;->mr_cast_volume_layout:I

    .line 64
    .line 65
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 70
    .line 71
    iput-object v1, p0, Landroidx/mediarouter/app/i0;->C:Landroid/widget/RelativeLayout;

    .line 72
    .line 73
    sget v1, Landroidx/mediarouter/R$id;->mr_cast_checkbox:I

    .line 74
    .line 75
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    check-cast p2, Landroid/widget/CheckBox;

    .line 80
    .line 81
    iput-object p2, p0, Landroidx/mediarouter/app/i0;->D:Landroid/widget/CheckBox;

    .line 82
    .line 83
    iget-object v1, p1, Landroidx/mediarouter/app/m0;->w:Landroid/content/Context;

    .line 84
    .line 85
    sget v2, Landroidx/mediarouter/R$drawable;->mr_cast_checkbox:I

    .line 86
    .line 87
    invoke-static {v1, v2}, Lf/a;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-static {v2}, LE/c;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-static {v1}, Landroidx/mediarouter/app/o0;->h(Landroid/content/Context;)Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-eqz v3, :cond_0

    .line 100
    .line 101
    sget v3, Landroidx/mediarouter/app/o0;->a:I

    .line 102
    .line 103
    invoke-static {v1, v3}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    invoke-static {v2, v1}, LE/c;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 108
    .line 109
    .line 110
    :cond_0
    invoke-virtual {p2, v2}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    .line 112
    .line 113
    iget-object p2, p1, Landroidx/mediarouter/app/m0;->w:Landroid/content/Context;

    .line 114
    .line 115
    invoke-static {p2, v0}, Landroidx/mediarouter/app/o0;->i(Landroid/content/Context;Landroid/widget/ProgressBar;)V

    .line 116
    .line 117
    .line 118
    iget-object p2, p1, Landroidx/mediarouter/app/m0;->w:Landroid/content/Context;

    .line 119
    .line 120
    invoke-static {p2}, Landroidx/mediarouter/app/o0;->c(Landroid/content/Context;)F

    .line 121
    .line 122
    .line 123
    move-result p2

    .line 124
    iput p2, p0, Landroidx/mediarouter/app/i0;->E:F

    .line 125
    .line 126
    iget-object p1, p1, Landroidx/mediarouter/app/m0;->w:Landroid/content/Context;

    .line 127
    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    new-instance v0, Landroid/util/TypedValue;

    .line 137
    .line 138
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 139
    .line 140
    .line 141
    sget v1, Landroidx/mediarouter/R$dimen;->mr_dynamic_dialog_row_height:I

    .line 142
    .line 143
    const/4 v2, 0x1

    .line 144
    invoke-virtual {p1, v1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, p2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    float-to-int p1, p1

    .line 152
    iput p1, p0, Landroidx/mediarouter/app/i0;->F:I

    .line 153
    .line 154
    return-void
.end method


# virtual methods
.method public final p(Lf1/U;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lf1/U;->isSelected()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/app/i0;->H:Landroidx/mediarouter/app/j0;

    .line 10
    .line 11
    iget-object v0, v0, Landroidx/mediarouter/app/j0;->m:Landroidx/mediarouter/app/m0;

    .line 12
    .line 13
    iget-object v0, v0, Landroidx/mediarouter/app/m0;->r:Lf1/U;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lf1/U;->getDynamicGroupState(Lf1/U;)Lf1/T;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Lf1/T;->getSelectionState()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const/4 v0, 0x3

    .line 26
    if-ne p1, v0, :cond_1

    .line 27
    .line 28
    return v1

    .line 29
    :cond_1
    const/4 p1, 0x0

    .line 30
    return p1
.end method

.method public final q(ZZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/i0;->D:Landroid/widget/CheckBox;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v2, p0, Landroidx/mediarouter/app/i0;->y:Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 13
    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/mediarouter/app/i0;->z:Landroid/widget/ImageView;

    .line 18
    .line 19
    const/4 v2, 0x4

    .line 20
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Landroidx/mediarouter/app/i0;->A:Landroid/widget/ProgressBar;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    if-eqz p2, :cond_2

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    iget v1, p0, Landroidx/mediarouter/app/i0;->F:I

    .line 33
    .line 34
    :cond_1
    iget-object p1, p0, Landroidx/mediarouter/app/i0;->H:Landroidx/mediarouter/app/j0;

    .line 35
    .line 36
    iget-object p2, p0, Landroidx/mediarouter/app/i0;->C:Landroid/widget/RelativeLayout;

    .line 37
    .line 38
    invoke-virtual {p1, p2, v1}, Landroidx/mediarouter/app/j0;->a(Landroid/view/View;I)V

    .line 39
    .line 40
    .line 41
    :cond_2
    return-void
.end method
