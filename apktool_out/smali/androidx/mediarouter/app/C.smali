.class public final Landroidx/mediarouter/app/C;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# instance fields
.field public final b:F

.field public final synthetic e:Landroidx/mediarouter/app/D;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/D;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lf1/U;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/C;->e:Landroidx/mediarouter/app/D;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p2, p1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Landroidx/mediarouter/app/o0;->c(Landroid/content/Context;)F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iput p1, p0, Landroidx/mediarouter/app/C;->b:F

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Landroidx/mediarouter/app/C;->e:Landroidx/mediarouter/app/D;

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    sget v2, Landroidx/mediarouter/R$layout;->mr_controller_volume_item:I

    .line 15
    .line 16
    invoke-virtual {p2, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    sget v2, Landroidx/mediarouter/R$id;->volume_item_container:I

    .line 25
    .line 26
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Landroid/widget/LinearLayout;

    .line 31
    .line 32
    iget v3, v1, Landroidx/mediarouter/app/D;->Z:I

    .line 33
    .line 34
    invoke-static {v2, v3}, Landroidx/mediarouter/app/D;->k(Landroid/view/View;I)V

    .line 35
    .line 36
    .line 37
    sget v2, Landroidx/mediarouter/R$id;->mr_volume_item_icon:I

    .line 38
    .line 39
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    iget v4, v1, Landroidx/mediarouter/app/D;->Y:I

    .line 48
    .line 49
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 50
    .line 51
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Lf1/U;

    .line 61
    .line 62
    if-eqz p1, :cond_6

    .line 63
    .line 64
    invoke-virtual {p1}, Lf1/U;->isEnabled()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    sget v3, Landroidx/mediarouter/R$id;->mr_name:I

    .line 69
    .line 70
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    check-cast v3, Landroid/widget/TextView;

    .line 75
    .line 76
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Lf1/U;->getName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    sget v3, Landroidx/mediarouter/R$id;->mr_volume_slider:I

    .line 87
    .line 88
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    check-cast v3, Landroidx/mediarouter/app/MediaRouteVolumeSlider;

    .line 93
    .line 94
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 95
    .line 96
    .line 97
    move-result-object p3

    .line 98
    iget-object v4, v1, Landroidx/mediarouter/app/D;->P:Landroidx/mediarouter/app/OverlayListView;

    .line 99
    .line 100
    invoke-static {p3, v0}, Landroidx/mediarouter/app/o0;->b(Landroid/content/Context;I)I

    .line 101
    .line 102
    .line 103
    move-result p3

    .line 104
    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    const/16 v6, 0xff

    .line 109
    .line 110
    if-eq v5, v6, :cond_1

    .line 111
    .line 112
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    check-cast v4, Ljava/lang/Integer;

    .line 117
    .line 118
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    invoke-static {p3, v4}, LD/a;->compositeColors(II)I

    .line 123
    .line 124
    .line 125
    move-result p3

    .line 126
    :cond_1
    invoke-virtual {v3, p3}, Landroidx/mediarouter/app/MediaRouteVolumeSlider;->setColor(I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    iget-object p3, v1, Landroidx/mediarouter/app/D;->c0:Ljava/util/HashMap;

    .line 133
    .line 134
    invoke-virtual {p3, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    xor-int/lit8 p3, v2, 0x1

    .line 138
    .line 139
    invoke-virtual {v3, p3}, Landroidx/mediarouter/app/MediaRouteVolumeSlider;->setHideThumb(Z)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 143
    .line 144
    .line 145
    const/4 p3, 0x1

    .line 146
    if-eqz v2, :cond_3

    .line 147
    .line 148
    iget-boolean v4, v1, Landroidx/mediarouter/app/D;->J:Z

    .line 149
    .line 150
    if-eqz v4, :cond_2

    .line 151
    .line 152
    invoke-virtual {p1}, Lf1/U;->getVolumeHandling()I

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    if-ne v4, p3, :cond_2

    .line 157
    .line 158
    invoke-virtual {p1}, Lf1/U;->getVolumeMax()I

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1}, Lf1/U;->getVolume()I

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 170
    .line 171
    .line 172
    iget-object v4, v1, Landroidx/mediarouter/app/D;->W:Landroidx/mediarouter/app/B;

    .line 173
    .line 174
    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 175
    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_2
    const/16 v4, 0x64

    .line 179
    .line 180
    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 187
    .line 188
    .line 189
    :cond_3
    :goto_1
    sget v3, Landroidx/mediarouter/R$id;->mr_volume_item_icon:I

    .line 190
    .line 191
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    check-cast v3, Landroid/widget/ImageView;

    .line 196
    .line 197
    if-eqz v2, :cond_4

    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_4
    const/high16 v2, 0x437f0000    # 255.0f

    .line 201
    .line 202
    iget v4, p0, Landroidx/mediarouter/app/C;->b:F

    .line 203
    .line 204
    mul-float/2addr v4, v2

    .line 205
    float-to-int v6, v4

    .line 206
    :goto_2
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 207
    .line 208
    .line 209
    sget v2, Landroidx/mediarouter/R$id;->volume_item_container:I

    .line 210
    .line 211
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    check-cast v2, Landroid/widget/LinearLayout;

    .line 216
    .line 217
    iget-object v3, v1, Landroidx/mediarouter/app/D;->U:Ljava/util/HashSet;

    .line 218
    .line 219
    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v3

    .line 223
    if-eqz v3, :cond_5

    .line 224
    .line 225
    const/4 v0, 0x4

    .line 226
    :cond_5
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 227
    .line 228
    .line 229
    iget-object v0, v1, Landroidx/mediarouter/app/D;->S:Ljava/util/Set;

    .line 230
    .line 231
    if-eqz v0, :cond_6

    .line 232
    .line 233
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result p1

    .line 237
    if-eqz p1, :cond_6

    .line 238
    .line 239
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    .line 240
    .line 241
    const/4 v0, 0x0

    .line 242
    invoke-direct {p1, v0, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 243
    .line 244
    .line 245
    const-wide/16 v0, 0x0

    .line 246
    .line 247
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p1, p3}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p1, p3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p2}, Landroid/view/View;->clearAnimation()V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p2, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 260
    .line 261
    .line 262
    :cond_6
    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
