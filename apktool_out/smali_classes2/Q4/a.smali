.class public final synthetic LQ4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:LQ4/d;


# direct methods
.method public synthetic constructor <init>(LQ4/d;I)V
    .locals 0

    .line 1
    iput p2, p0, LQ4/a;->b:I

    iput-object p1, p0, LQ4/a;->e:LQ4/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, LQ4/a;->e:LQ4/d;

    .line 2
    .line 3
    iget v1, p0, LQ4/a;->b:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, LQ4/d;->A:Landroid/widget/TextView;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    iget-object v1, v0, LQ4/d;->A:Landroid/widget/TextView;

    .line 19
    .line 20
    sget v2, Lflix/com/vision/R$color;->white:I

    .line 21
    .line 22
    invoke-static {v1, v2}, LQ4/d;->b(Landroid/widget/TextView;I)V

    .line 23
    .line 24
    .line 25
    iget-object v1, v0, LQ4/d;->A:Landroid/widget/TextView;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    sget v3, Lflix/com/vision/R$color;->color_grey:I

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object v1, v0, LQ4/d;->B:Landroid/widget/TextView;

    .line 41
    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_1

    .line 49
    .line 50
    iget-object v1, v0, LQ4/d;->B:Landroid/widget/TextView;

    .line 51
    .line 52
    sget v2, Lflix/com/vision/R$color;->white:I

    .line 53
    .line 54
    invoke-static {v1, v2}, LQ4/d;->b(Landroid/widget/TextView;I)V

    .line 55
    .line 56
    .line 57
    iget-object v1, v0, LQ4/d;->B:Landroid/widget/TextView;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    sget v3, Lflix/com/vision/R$color;->color_grey:I

    .line 64
    .line 65
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    .line 71
    .line 72
    :cond_1
    iget-object v1, v0, LQ4/d;->C:Landroid/widget/TextView;

    .line 73
    .line 74
    if-eqz v1, :cond_2

    .line 75
    .line 76
    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-nez v1, :cond_2

    .line 81
    .line 82
    iget-object v1, v0, LQ4/d;->C:Landroid/widget/TextView;

    .line 83
    .line 84
    sget v2, Lflix/com/vision/R$color;->white:I

    .line 85
    .line 86
    invoke-static {v1, v2}, LQ4/d;->b(Landroid/widget/TextView;I)V

    .line 87
    .line 88
    .line 89
    iget-object v1, v0, LQ4/d;->C:Landroid/widget/TextView;

    .line 90
    .line 91
    invoke-virtual {v0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    sget v3, Lflix/com/vision/R$color;->color_grey:I

    .line 96
    .line 97
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    .line 103
    .line 104
    :cond_2
    iget-object v1, v0, LQ4/d;->D:Landroid/widget/TextView;

    .line 105
    .line 106
    if-eqz v1, :cond_3

    .line 107
    .line 108
    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-nez v1, :cond_3

    .line 113
    .line 114
    iget-object v1, v0, LQ4/d;->D:Landroid/widget/TextView;

    .line 115
    .line 116
    sget v2, Lflix/com/vision/R$color;->white:I

    .line 117
    .line 118
    invoke-static {v1, v2}, LQ4/d;->b(Landroid/widget/TextView;I)V

    .line 119
    .line 120
    .line 121
    iget-object v1, v0, LQ4/d;->D:Landroid/widget/TextView;

    .line 122
    .line 123
    invoke-virtual {v0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    sget v3, Lflix/com/vision/R$color;->color_grey:I

    .line 128
    .line 129
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    .line 135
    .line 136
    :cond_3
    iget-object v1, v0, LQ4/d;->E:Landroid/widget/TextView;

    .line 137
    .line 138
    if-eqz v1, :cond_4

    .line 139
    .line 140
    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-nez v1, :cond_4

    .line 145
    .line 146
    iget-object v1, v0, LQ4/d;->E:Landroid/widget/TextView;

    .line 147
    .line 148
    sget v2, Lflix/com/vision/R$color;->white:I

    .line 149
    .line 150
    invoke-static {v1, v2}, LQ4/d;->b(Landroid/widget/TextView;I)V

    .line 151
    .line 152
    .line 153
    iget-object v1, v0, LQ4/d;->E:Landroid/widget/TextView;

    .line 154
    .line 155
    invoke-virtual {v0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    sget v3, Lflix/com/vision/R$color;->color_grey:I

    .line 160
    .line 161
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 166
    .line 167
    .line 168
    :cond_4
    iget-object v1, v0, LQ4/d;->F:Landroid/widget/TextView;

    .line 169
    .line 170
    if-eqz v1, :cond_5

    .line 171
    .line 172
    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    if-nez v1, :cond_5

    .line 177
    .line 178
    iget-object v1, v0, LQ4/d;->F:Landroid/widget/TextView;

    .line 179
    .line 180
    sget v2, Lflix/com/vision/R$color;->white:I

    .line 181
    .line 182
    invoke-static {v1, v2}, LQ4/d;->b(Landroid/widget/TextView;I)V

    .line 183
    .line 184
    .line 185
    iget-object v1, v0, LQ4/d;->F:Landroid/widget/TextView;

    .line 186
    .line 187
    invoke-virtual {v0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    sget v3, Lflix/com/vision/R$color;->color_grey:I

    .line 192
    .line 193
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 198
    .line 199
    .line 200
    :cond_5
    iget-object v1, v0, LQ4/d;->H:Landroid/widget/TextView;

    .line 201
    .line 202
    if-eqz v1, :cond_6

    .line 203
    .line 204
    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    if-nez v1, :cond_6

    .line 209
    .line 210
    iget-object v1, v0, LQ4/d;->H:Landroid/widget/TextView;

    .line 211
    .line 212
    sget v2, Lflix/com/vision/R$color;->white:I

    .line 213
    .line 214
    invoke-static {v1, v2}, LQ4/d;->b(Landroid/widget/TextView;I)V

    .line 215
    .line 216
    .line 217
    iget-object v1, v0, LQ4/d;->H:Landroid/widget/TextView;

    .line 218
    .line 219
    invoke-virtual {v0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    sget v3, Lflix/com/vision/R$color;->color_grey:I

    .line 224
    .line 225
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 226
    .line 227
    .line 228
    move-result v2

    .line 229
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 230
    .line 231
    .line 232
    :cond_6
    iget-object v1, v0, LQ4/d;->G:Landroid/widget/TextView;

    .line 233
    .line 234
    if-eqz v1, :cond_7

    .line 235
    .line 236
    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    if-nez v1, :cond_7

    .line 241
    .line 242
    iget-object v1, v0, LQ4/d;->G:Landroid/widget/TextView;

    .line 243
    .line 244
    sget v2, Lflix/com/vision/R$color;->white:I

    .line 245
    .line 246
    invoke-static {v1, v2}, LQ4/d;->b(Landroid/widget/TextView;I)V

    .line 247
    .line 248
    .line 249
    iget-object v1, v0, LQ4/d;->G:Landroid/widget/TextView;

    .line 250
    .line 251
    invoke-virtual {v0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    sget v3, Lflix/com/vision/R$color;->color_grey:I

    .line 256
    .line 257
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 262
    .line 263
    .line 264
    :cond_7
    iget-object v1, v0, LQ4/d;->I:Landroid/widget/TextView;

    .line 265
    .line 266
    if-eqz v1, :cond_8

    .line 267
    .line 268
    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    .line 269
    .line 270
    .line 271
    move-result v1

    .line 272
    if-nez v1, :cond_8

    .line 273
    .line 274
    iget-object v1, v0, LQ4/d;->I:Landroid/widget/TextView;

    .line 275
    .line 276
    sget v2, Lflix/com/vision/R$color;->white:I

    .line 277
    .line 278
    invoke-static {v1, v2}, LQ4/d;->b(Landroid/widget/TextView;I)V

    .line 279
    .line 280
    .line 281
    iget-object v1, v0, LQ4/d;->I:Landroid/widget/TextView;

    .line 282
    .line 283
    invoke-virtual {v0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    sget v3, Lflix/com/vision/R$color;->color_grey:I

    .line 288
    .line 289
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 290
    .line 291
    .line 292
    move-result v2

    .line 293
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 294
    .line 295
    .line 296
    :cond_8
    iget-object v1, v0, LQ4/d;->J:Landroid/widget/TextView;

    .line 297
    .line 298
    if-eqz v1, :cond_9

    .line 299
    .line 300
    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    .line 301
    .line 302
    .line 303
    move-result v1

    .line 304
    if-nez v1, :cond_9

    .line 305
    .line 306
    iget-object v1, v0, LQ4/d;->J:Landroid/widget/TextView;

    .line 307
    .line 308
    sget v2, Lflix/com/vision/R$color;->white:I

    .line 309
    .line 310
    invoke-static {v1, v2}, LQ4/d;->b(Landroid/widget/TextView;I)V

    .line 311
    .line 312
    .line 313
    iget-object v1, v0, LQ4/d;->J:Landroid/widget/TextView;

    .line 314
    .line 315
    invoke-virtual {v0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    sget v2, Lflix/com/vision/R$color;->color_grey:I

    .line 320
    .line 321
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 322
    .line 323
    .line 324
    move-result v0

    .line 325
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 326
    .line 327
    .line 328
    :cond_9
    return-void

    .line 329
    :pswitch_0
    sget-object v1, LQ4/d;->Y:Landroid/graphics/Typeface;

    .line 330
    .line 331
    const/4 v1, 0x1

    .line 332
    invoke-virtual {v0, v1}, Landroid/app/DialogFragment;->setCancelable(Z)V

    .line 333
    .line 334
    .line 335
    return-void

    .line 336
    nop

    .line 337
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
