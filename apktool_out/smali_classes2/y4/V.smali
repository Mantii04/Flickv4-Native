.class public final synthetic Ly4/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/LinksActivity;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/LinksActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly4/V;->b:I

    iput-object p1, p0, Ly4/V;->e:Lflix/com/vision/activities/LinksActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 6

    .line 1
    const p1, 0x3f83d70a    # 1.03f

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x64

    .line 5
    .line 6
    const/high16 v2, 0x3f800000    # 1.0f

    .line 7
    .line 8
    iget-object v3, p0, Ly4/V;->e:Lflix/com/vision/activities/LinksActivity;

    .line 9
    .line 10
    iget v4, p0, Ly4/V;->b:I

    .line 11
    .line 12
    packed-switch v4, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    iget-object p1, v3, Lflix/com/vision/activities/LinksActivity;->A:Landroid/widget/ImageView;

    .line 18
    .line 19
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    .line 20
    .line 21
    sget v0, Lflix/com/vision/R$color;->white:I

    .line 22
    .line 23
    invoke-static {v3, v0}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 28
    .line 29
    invoke-direct {p2, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, v3, Lflix/com/vision/activities/LinksActivity;->m:Landroid/widget/TextView;

    .line 36
    .line 37
    invoke-virtual {v3}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    sget v0, Lflix/com/vision/R$color;->white:I

    .line 42
    .line 43
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    .line 49
    .line 50
    iget-object p1, v3, Lflix/com/vision/activities/LinksActivity;->e:Landroid/widget/RelativeLayout;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 61
    .line 62
    .line 63
    iget-object p1, v3, Lflix/com/vision/activities/LinksActivity;->e:Landroid/widget/RelativeLayout;

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    iget-object p2, v3, Lflix/com/vision/activities/LinksActivity;->A:Landroid/widget/ImageView;

    .line 78
    .line 79
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    .line 80
    .line 81
    sget v4, Lflix/com/vision/R$color;->black:I

    .line 82
    .line 83
    invoke-static {v3, v4}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 88
    .line 89
    invoke-direct {v2, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 93
    .line 94
    .line 95
    iget-object p2, v3, Lflix/com/vision/activities/LinksActivity;->m:Landroid/widget/TextView;

    .line 96
    .line 97
    invoke-virtual {v3}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    sget v4, Lflix/com/vision/R$color;->black:I

    .line 102
    .line 103
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    .line 109
    .line 110
    iget-object p2, v3, Lflix/com/vision/activities/LinksActivity;->e:Landroid/widget/RelativeLayout;

    .line 111
    .line 112
    invoke-static {p2, v0, v1, p1}, Lb/c;->r(Landroid/widget/RelativeLayout;JF)V

    .line 113
    .line 114
    .line 115
    iget-object p2, v3, Lflix/com/vision/activities/LinksActivity;->e:Landroid/widget/RelativeLayout;

    .line 116
    .line 117
    invoke-static {p2, v0, v1, p1}, Lb/c;->w(Landroid/widget/RelativeLayout;JF)V

    .line 118
    .line 119
    .line 120
    :goto_0
    return-void

    .line 121
    :pswitch_0
    if-nez p2, :cond_1

    .line 122
    .line 123
    iget-object p1, v3, Lflix/com/vision/activities/LinksActivity;->z:Landroid/widget/ImageView;

    .line 124
    .line 125
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    .line 126
    .line 127
    sget v0, Lflix/com/vision/R$color;->white:I

    .line 128
    .line 129
    invoke-static {v3, v0}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 134
    .line 135
    invoke-direct {p2, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 139
    .line 140
    .line 141
    iget-object p1, v3, Lflix/com/vision/activities/LinksActivity;->p:Landroid/widget/TextView;

    .line 142
    .line 143
    invoke-virtual {v3}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    sget v0, Lflix/com/vision/R$color;->white:I

    .line 148
    .line 149
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 150
    .line 151
    .line 152
    move-result p2

    .line 153
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    .line 155
    .line 156
    iget-object p1, v3, Lflix/com/vision/activities/LinksActivity;->f:Landroid/widget/RelativeLayout;

    .line 157
    .line 158
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 167
    .line 168
    .line 169
    iget-object p1, v3, Lflix/com/vision/activities/LinksActivity;->f:Landroid/widget/RelativeLayout;

    .line 170
    .line 171
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 180
    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_1
    iget-object p2, v3, Lflix/com/vision/activities/LinksActivity;->z:Landroid/widget/ImageView;

    .line 184
    .line 185
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    .line 186
    .line 187
    sget v4, Lflix/com/vision/R$color;->black:I

    .line 188
    .line 189
    invoke-static {v3, v4}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 190
    .line 191
    .line 192
    move-result v4

    .line 193
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 194
    .line 195
    invoke-direct {v2, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 199
    .line 200
    .line 201
    iget-object p2, v3, Lflix/com/vision/activities/LinksActivity;->p:Landroid/widget/TextView;

    .line 202
    .line 203
    invoke-virtual {v3}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    sget v4, Lflix/com/vision/R$color;->black:I

    .line 208
    .line 209
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 214
    .line 215
    .line 216
    iget-object p2, v3, Lflix/com/vision/activities/LinksActivity;->f:Landroid/widget/RelativeLayout;

    .line 217
    .line 218
    invoke-static {p2, v0, v1, p1}, Lb/c;->r(Landroid/widget/RelativeLayout;JF)V

    .line 219
    .line 220
    .line 221
    iget-object p2, v3, Lflix/com/vision/activities/LinksActivity;->f:Landroid/widget/RelativeLayout;

    .line 222
    .line 223
    invoke-static {p2, v0, v1, p1}, Lb/c;->w(Landroid/widget/RelativeLayout;JF)V

    .line 224
    .line 225
    .line 226
    :goto_1
    return-void

    .line 227
    :pswitch_1
    sget p1, Lflix/com/vision/activities/LinksActivity;->b0:I

    .line 228
    .line 229
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 230
    .line 231
    .line 232
    if-eqz p2, :cond_2

    .line 233
    .line 234
    :try_start_0
    iget-object p1, v3, Lflix/com/vision/activities/LinksActivity;->B:Landroid/widget/ImageView;

    .line 235
    .line 236
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    .line 237
    .line 238
    sget v0, Lflix/com/vision/R$color;->black:I

    .line 239
    .line 240
    invoke-static {v3, v0}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 241
    .line 242
    .line 243
    move-result v0

    .line 244
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 245
    .line 246
    invoke-direct {p2, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 250
    .line 251
    .line 252
    goto :goto_2

    .line 253
    :cond_2
    iget-object p1, v3, Lflix/com/vision/activities/LinksActivity;->B:Landroid/widget/ImageView;

    .line 254
    .line 255
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    .line 256
    .line 257
    sget v0, Lflix/com/vision/R$color;->white:I

    .line 258
    .line 259
    invoke-static {v3, v0}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 264
    .line 265
    invoke-direct {p2, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .line 270
    .line 271
    :catch_0
    :goto_2
    return-void

    .line 272
    nop

    .line 273
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
