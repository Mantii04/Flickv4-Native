.class public final Lcom/skydoves/powerspinner/PowerSpinnerPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"


# instance fields
.field public final t:Lcom/skydoves/powerspinner/PowerSpinnerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 1
    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/skydoves/powerspinner/PowerSpinnerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/g;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-direct {v0, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->t:Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 5
    sget p1, Lcom/skydoves/powerspinner/R$layout;->layout_preference_power_spinner_library:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    if-eqz p2, :cond_0

    .line 6
    sget p1, Landroidx/preference/R$attr;->preferenceStyle:I

    if-eq p3, p1, :cond_0

    .line 7
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 8
    sget-object v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView:[I

    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "context.obtainStyledAttr\u2026fStyleAttr,\n      0\n    )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->b(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2

    :cond_0
    if-eqz p2, :cond_1

    .line 12
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p3, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "context.obtainStyledAttr\u2026yleable.PowerSpinnerView)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->b(Landroid/content/res/TypedArray;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_1
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2

    :cond_1
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/g;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 2
    sget p3, Landroidx/preference/R$attr;->preferenceStyle:I

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/skydoves/powerspinner/PowerSpinnerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final b(Landroid/content/res/TypedArray;)V
    .locals 4

    .line 1
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_arrow_show:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->t:Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getShowArrow()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {v1, v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setShowArrow(Z)V

    .line 14
    .line 15
    .line 16
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_arrow_gravity:I

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getArrowGravity()Lcom/skydoves/powerspinner/SpinnerGravity;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Lcom/skydoves/powerspinner/SpinnerGravity;->getValue()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    sget-object v2, Lcom/skydoves/powerspinner/SpinnerGravity;->e:Lcom/skydoves/powerspinner/SpinnerGravity;

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/skydoves/powerspinner/SpinnerGravity;->getValue()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-ne v0, v3, :cond_0

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setArrowGravity(Lcom/skydoves/powerspinner/SpinnerGravity;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    sget-object v2, Lcom/skydoves/powerspinner/SpinnerGravity;->f:Lcom/skydoves/powerspinner/SpinnerGravity;

    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/skydoves/powerspinner/SpinnerGravity;->getValue()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-ne v0, v3, :cond_1

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setArrowGravity(Lcom/skydoves/powerspinner/SpinnerGravity;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    sget-object v2, Lcom/skydoves/powerspinner/SpinnerGravity;->j:Lcom/skydoves/powerspinner/SpinnerGravity;

    .line 55
    .line 56
    invoke-virtual {v2}, Lcom/skydoves/powerspinner/SpinnerGravity;->getValue()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-ne v0, v3, :cond_2

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setArrowGravity(Lcom/skydoves/powerspinner/SpinnerGravity;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    sget-object v2, Lcom/skydoves/powerspinner/SpinnerGravity;->m:Lcom/skydoves/powerspinner/SpinnerGravity;

    .line 67
    .line 68
    invoke-virtual {v2}, Lcom/skydoves/powerspinner/SpinnerGravity;->getValue()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-ne v0, v3, :cond_3

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setArrowGravity(Lcom/skydoves/powerspinner/SpinnerGravity;)V

    .line 75
    .line 76
    .line 77
    :cond_3
    :goto_0
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_arrow_padding:I

    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getArrowPadding()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    invoke-virtual {v1, v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setArrowPadding(I)V

    .line 88
    .line 89
    .line 90
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_arrow_animate:I

    .line 91
    .line 92
    invoke-virtual {v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getArrowAnimate()Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    invoke-virtual {v1, v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setArrowAnimate(Z)V

    .line 101
    .line 102
    .line 103
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_arrow_animate_duration:I

    .line 104
    .line 105
    invoke-virtual {v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getArrowAnimationDuration()J

    .line 106
    .line 107
    .line 108
    move-result-wide v2

    .line 109
    long-to-int v2, v2

    .line 110
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    int-to-long v2, v0

    .line 115
    invoke-virtual {v1, v2, v3}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setArrowAnimationDuration(J)V

    .line 116
    .line 117
    .line 118
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_divider_show:I

    .line 119
    .line 120
    invoke-virtual {v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getShowDivider()Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    invoke-virtual {v1, v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setShowDivider(Z)V

    .line 129
    .line 130
    .line 131
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_divider_size:I

    .line 132
    .line 133
    invoke-virtual {v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getDividerSize()I

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    invoke-virtual {v1, v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setDividerSize(I)V

    .line 142
    .line 143
    .line 144
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_divider_color:I

    .line 145
    .line 146
    invoke-virtual {v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getDividerColor()I

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    invoke-virtual {v1, v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setDividerColor(I)V

    .line 155
    .line 156
    .line 157
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_popup_background:I

    .line 158
    .line 159
    invoke-virtual {v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerPopupBackgroundColor()I

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    invoke-virtual {v1, v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setSpinnerPopupBackgroundColor(I)V

    .line 168
    .line 169
    .line 170
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_popup_animation:I

    .line 171
    .line 172
    invoke-virtual {v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerPopupAnimation()Lcom/skydoves/powerspinner/SpinnerAnimation;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-virtual {v2}, Lcom/skydoves/powerspinner/SpinnerAnimation;->getValue()I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    sget-object v2, Lcom/skydoves/powerspinner/SpinnerAnimation;->e:Lcom/skydoves/powerspinner/SpinnerAnimation;

    .line 185
    .line 186
    invoke-virtual {v2}, Lcom/skydoves/powerspinner/SpinnerAnimation;->getValue()I

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    if-ne v0, v3, :cond_4

    .line 191
    .line 192
    invoke-virtual {v1, v2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setSpinnerPopupAnimation(Lcom/skydoves/powerspinner/SpinnerAnimation;)V

    .line 193
    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_4
    sget-object v2, Lcom/skydoves/powerspinner/SpinnerAnimation;->f:Lcom/skydoves/powerspinner/SpinnerAnimation;

    .line 197
    .line 198
    invoke-virtual {v2}, Lcom/skydoves/powerspinner/SpinnerAnimation;->getValue()I

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    if-ne v0, v3, :cond_5

    .line 203
    .line 204
    invoke-virtual {v1, v2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setSpinnerPopupAnimation(Lcom/skydoves/powerspinner/SpinnerAnimation;)V

    .line 205
    .line 206
    .line 207
    goto :goto_1

    .line 208
    :cond_5
    sget-object v2, Lcom/skydoves/powerspinner/SpinnerAnimation;->j:Lcom/skydoves/powerspinner/SpinnerAnimation;

    .line 209
    .line 210
    invoke-virtual {v2}, Lcom/skydoves/powerspinner/SpinnerAnimation;->getValue()I

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    if-ne v0, v3, :cond_6

    .line 215
    .line 216
    invoke-virtual {v1, v2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setSpinnerPopupAnimation(Lcom/skydoves/powerspinner/SpinnerAnimation;)V

    .line 217
    .line 218
    .line 219
    :cond_6
    :goto_1
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_popup_animation_style:I

    .line 220
    .line 221
    invoke-virtual {v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerPopupAnimationStyle()I

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    invoke-virtual {v1, v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setSpinnerPopupAnimationStyle(I)V

    .line 230
    .line 231
    .line 232
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_popup_width:I

    .line 233
    .line 234
    invoke-virtual {v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerPopupWidth()I

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    invoke-virtual {v1, v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setSpinnerPopupWidth(I)V

    .line 243
    .line 244
    .line 245
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_popup_height:I

    .line 246
    .line 247
    invoke-virtual {v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerPopupHeight()I

    .line 248
    .line 249
    .line 250
    move-result v2

    .line 251
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    invoke-virtual {v1, v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setSpinnerPopupHeight(I)V

    .line 256
    .line 257
    .line 258
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_popup_elevation:I

    .line 259
    .line 260
    invoke-virtual {v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerPopupElevation()I

    .line 261
    .line 262
    .line 263
    move-result v2

    .line 264
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    invoke-virtual {v1, v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setSpinnerPopupElevation(I)V

    .line 269
    .line 270
    .line 271
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_item_array:I

    .line 272
    .line 273
    const/4 v2, -0x1

    .line 274
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    if-eq v0, v2, :cond_7

    .line 279
    .line 280
    invoke-virtual {v1, v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setItems(I)V

    .line 281
    .line 282
    .line 283
    :cond_7
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_dismiss_notified_select:I

    .line 284
    .line 285
    invoke-virtual {v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getDismissWhenNotifiedItemSelected()Z

    .line 286
    .line 287
    .line 288
    move-result v2

    .line 289
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 290
    .line 291
    .line 292
    move-result p1

    .line 293
    invoke-virtual {v1, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setDismissWhenNotifiedItemSelected(Z)V

    .line 294
    .line 295
    .line 296
    return-void
.end method

.method public onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    .line 1
    const-string v0, "a"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
