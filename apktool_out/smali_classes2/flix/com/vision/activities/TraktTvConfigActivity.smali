.class public Lflix/com/vision/activities/TraktTvConfigActivity;
.super Le/v;
.source "SourceFile"


# static fields
.field public static final synthetic z:I


# instance fields
.field public b:Landroid/widget/LinearLayout;

.field public e:Landroid/widget/LinearLayout;

.field public f:Landroid/widget/LinearLayout;

.field public j:Landroid/widget/LinearLayout;

.field public m:Landroid/widget/LinearLayout;

.field public n:Landroid/widget/LinearLayout;

.field public p:Landroid/widget/LinearLayout;

.field public q:Landroid/widget/CheckBox;

.field public r:Landroid/widget/CheckBox;

.field public s:Landroid/widget/CheckBox;

.field public t:Landroid/widget/CheckBox;

.field public u:Landroid/widget/CheckBox;

.field public v:Landroid/widget/CheckBox;

.field public w:Landroid/widget/CheckBox;

.field public x:Landroid/widget/TextView;

.field public y:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/v;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/H;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lflix/com/vision/R$layout;->activity_trakt_tv_settings:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Le/v;->setContentView(I)V

    .line 7
    .line 8
    .line 9
    sget p1, Lflix/com/vision/R$id;->label_signout_button:I

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroid/widget/TextView;

    .line 16
    .line 17
    iput-object p1, p0, Lflix/com/vision/activities/TraktTvConfigActivity;->x:Landroid/widget/TextView;

    .line 18
    .line 19
    sget p1, Lflix/com/vision/R$id;->setting_add_watched_list:I

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Landroid/widget/LinearLayout;

    .line 26
    .line 27
    iput-object p1, p0, Lflix/com/vision/activities/TraktTvConfigActivity;->p:Landroid/widget/LinearLayout;

    .line 28
    .line 29
    sget p1, Lflix/com/vision/R$id;->setting_check_me_in:I

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Landroid/widget/LinearLayout;

    .line 36
    .line 37
    iput-object p1, p0, Lflix/com/vision/activities/TraktTvConfigActivity;->e:Landroid/widget/LinearLayout;

    .line 38
    .line 39
    sget p1, Lflix/com/vision/R$id;->setting_facebook:I

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Landroid/widget/LinearLayout;

    .line 46
    .line 47
    iput-object p1, p0, Lflix/com/vision/activities/TraktTvConfigActivity;->f:Landroid/widget/LinearLayout;

    .line 48
    .line 49
    sget p1, Lflix/com/vision/R$id;->setting_twitter:I

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Landroid/widget/LinearLayout;

    .line 56
    .line 57
    iput-object p1, p0, Lflix/com/vision/activities/TraktTvConfigActivity;->j:Landroid/widget/LinearLayout;

    .line 58
    .line 59
    sget p1, Lflix/com/vision/R$id;->setting_tumblr:I

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Landroid/widget/LinearLayout;

    .line 66
    .line 67
    iput-object p1, p0, Lflix/com/vision/activities/TraktTvConfigActivity;->m:Landroid/widget/LinearLayout;

    .line 68
    .line 69
    sget p1, Lflix/com/vision/R$id;->setting_add_favorite:I

    .line 70
    .line 71
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Landroid/widget/LinearLayout;

    .line 76
    .line 77
    iput-object p1, p0, Lflix/com/vision/activities/TraktTvConfigActivity;->n:Landroid/widget/LinearLayout;

    .line 78
    .line 79
    sget p1, Lflix/com/vision/R$id;->setting_add_favorite_shows:I

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Landroid/widget/LinearLayout;

    .line 86
    .line 87
    iput-object p1, p0, Lflix/com/vision/activities/TraktTvConfigActivity;->b:Landroid/widget/LinearLayout;

    .line 88
    .line 89
    sget p1, Lflix/com/vision/R$id;->switch_add_favorite_shows:I

    .line 90
    .line 91
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    check-cast p1, Landroid/widget/CheckBox;

    .line 96
    .line 97
    iput-object p1, p0, Lflix/com/vision/activities/TraktTvConfigActivity;->q:Landroid/widget/CheckBox;

    .line 98
    .line 99
    sget p1, Lflix/com/vision/R$id;->switch_check_me_in:I

    .line 100
    .line 101
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    check-cast p1, Landroid/widget/CheckBox;

    .line 106
    .line 107
    iput-object p1, p0, Lflix/com/vision/activities/TraktTvConfigActivity;->r:Landroid/widget/CheckBox;

    .line 108
    .line 109
    sget p1, Lflix/com/vision/R$id;->switch_facebook:I

    .line 110
    .line 111
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    check-cast p1, Landroid/widget/CheckBox;

    .line 116
    .line 117
    iput-object p1, p0, Lflix/com/vision/activities/TraktTvConfigActivity;->s:Landroid/widget/CheckBox;

    .line 118
    .line 119
    sget p1, Lflix/com/vision/R$id;->switch_twitter:I

    .line 120
    .line 121
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    check-cast p1, Landroid/widget/CheckBox;

    .line 126
    .line 127
    iput-object p1, p0, Lflix/com/vision/activities/TraktTvConfigActivity;->t:Landroid/widget/CheckBox;

    .line 128
    .line 129
    sget p1, Lflix/com/vision/R$id;->switch_tumblr:I

    .line 130
    .line 131
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    check-cast p1, Landroid/widget/CheckBox;

    .line 136
    .line 137
    iput-object p1, p0, Lflix/com/vision/activities/TraktTvConfigActivity;->u:Landroid/widget/CheckBox;

    .line 138
    .line 139
    sget p1, Lflix/com/vision/R$id;->switch_add_favorite:I

    .line 140
    .line 141
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    check-cast p1, Landroid/widget/CheckBox;

    .line 146
    .line 147
    iput-object p1, p0, Lflix/com/vision/activities/TraktTvConfigActivity;->v:Landroid/widget/CheckBox;

    .line 148
    .line 149
    sget p1, Lflix/com/vision/R$id;->switch_add_watched_list:I

    .line 150
    .line 151
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    check-cast p1, Landroid/widget/CheckBox;

    .line 156
    .line 157
    iput-object p1, p0, Lflix/com/vision/activities/TraktTvConfigActivity;->w:Landroid/widget/CheckBox;

    .line 158
    .line 159
    sget p1, Lflix/com/vision/R$id;->sign_out:I

    .line 160
    .line 161
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 166
    .line 167
    iput-object p1, p0, Lflix/com/vision/activities/TraktTvConfigActivity;->y:Landroid/widget/RelativeLayout;

    .line 168
    .line 169
    new-instance v0, Ly4/s1;

    .line 170
    .line 171
    const/4 v1, 0x0

    .line 172
    invoke-direct {v0, p0, v1}, Ly4/s1;-><init>(Lflix/com/vision/activities/TraktTvConfigActivity;I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    .line 177
    .line 178
    iget-object p1, p0, Lflix/com/vision/activities/TraktTvConfigActivity;->q:Landroid/widget/CheckBox;

    .line 179
    .line 180
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 185
    .line 186
    const-string v1, "add_favorites_on_shows"

    .line 187
    .line 188
    const/4 v2, 0x1

    .line 189
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 194
    .line 195
    .line 196
    iget-object p1, p0, Lflix/com/vision/activities/TraktTvConfigActivity;->r:Landroid/widget/CheckBox;

    .line 197
    .line 198
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 203
    .line 204
    const-string v1, "check_me_in"

    .line 205
    .line 206
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 211
    .line 212
    .line 213
    iget-object p1, p0, Lflix/com/vision/activities/TraktTvConfigActivity;->t:Landroid/widget/CheckBox;

    .line 214
    .line 215
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 220
    .line 221
    const-string v3, "twitter_on"

    .line 222
    .line 223
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 228
    .line 229
    .line 230
    iget-object p1, p0, Lflix/com/vision/activities/TraktTvConfigActivity;->u:Landroid/widget/CheckBox;

    .line 231
    .line 232
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 237
    .line 238
    const-string v3, "tumblr_on"

    .line 239
    .line 240
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 241
    .line 242
    .line 243
    move-result v0

    .line 244
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 245
    .line 246
    .line 247
    iget-object p1, p0, Lflix/com/vision/activities/TraktTvConfigActivity;->s:Landroid/widget/CheckBox;

    .line 248
    .line 249
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 254
    .line 255
    const-string v3, "facebook_on"

    .line 256
    .line 257
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 258
    .line 259
    .line 260
    move-result v0

    .line 261
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 262
    .line 263
    .line 264
    iget-object p1, p0, Lflix/com/vision/activities/TraktTvConfigActivity;->w:Landroid/widget/CheckBox;

    .line 265
    .line 266
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 271
    .line 272
    const-string v3, "sync_watched_list_on"

    .line 273
    .line 274
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 279
    .line 280
    .line 281
    iget-object p1, p0, Lflix/com/vision/activities/TraktTvConfigActivity;->v:Landroid/widget/CheckBox;

    .line 282
    .line 283
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 288
    .line 289
    const-string v4, "add_favorites_on"

    .line 290
    .line 291
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 296
    .line 297
    .line 298
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 303
    .line 304
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 305
    .line 306
    .line 307
    move-result p1

    .line 308
    const/high16 v0, 0x3f000000    # 0.5f

    .line 309
    .line 310
    if-eqz p1, :cond_0

    .line 311
    .line 312
    iget-object p1, p0, Lflix/com/vision/activities/TraktTvConfigActivity;->p:Landroid/widget/LinearLayout;

    .line 313
    .line 314
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 315
    .line 316
    .line 317
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 318
    .line 319
    .line 320
    move-result-object p1

    .line 321
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 322
    .line 323
    invoke-static {p1, v3, v2}, LA/i;->x(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 324
    .line 325
    .line 326
    goto :goto_0

    .line 327
    :cond_0
    iget-object p1, p0, Lflix/com/vision/activities/TraktTvConfigActivity;->p:Landroid/widget/LinearLayout;

    .line 328
    .line 329
    const/high16 v1, 0x3f800000    # 1.0f

    .line 330
    .line 331
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 332
    .line 333
    .line 334
    iget-object p1, p0, Lflix/com/vision/activities/TraktTvConfigActivity;->f:Landroid/widget/LinearLayout;

    .line 335
    .line 336
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 337
    .line 338
    .line 339
    iget-object p1, p0, Lflix/com/vision/activities/TraktTvConfigActivity;->m:Landroid/widget/LinearLayout;

    .line 340
    .line 341
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 342
    .line 343
    .line 344
    iget-object p1, p0, Lflix/com/vision/activities/TraktTvConfigActivity;->j:Landroid/widget/LinearLayout;

    .line 345
    .line 346
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 347
    .line 348
    .line 349
    :goto_0
    iget-object p1, p0, Lflix/com/vision/activities/TraktTvConfigActivity;->e:Landroid/widget/LinearLayout;

    .line 350
    .line 351
    new-instance v0, Ly4/s1;

    .line 352
    .line 353
    const/4 v1, 0x5

    .line 354
    invoke-direct {v0, p0, v1}, Ly4/s1;-><init>(Lflix/com/vision/activities/TraktTvConfigActivity;I)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    .line 359
    .line 360
    iget-object p1, p0, Lflix/com/vision/activities/TraktTvConfigActivity;->f:Landroid/widget/LinearLayout;

    .line 361
    .line 362
    new-instance v0, Ly4/s1;

    .line 363
    .line 364
    const/4 v1, 0x6

    .line 365
    invoke-direct {v0, p0, v1}, Ly4/s1;-><init>(Lflix/com/vision/activities/TraktTvConfigActivity;I)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    .line 370
    .line 371
    iget-object p1, p0, Lflix/com/vision/activities/TraktTvConfigActivity;->j:Landroid/widget/LinearLayout;

    .line 372
    .line 373
    new-instance v0, Ly4/s1;

    .line 374
    .line 375
    const/4 v1, 0x7

    .line 376
    invoke-direct {v0, p0, v1}, Ly4/s1;-><init>(Lflix/com/vision/activities/TraktTvConfigActivity;I)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    .line 381
    .line 382
    iget-object p1, p0, Lflix/com/vision/activities/TraktTvConfigActivity;->y:Landroid/widget/RelativeLayout;

    .line 383
    .line 384
    new-instance v0, LA4/g;

    .line 385
    .line 386
    const/16 v1, 0xa

    .line 387
    .line 388
    invoke-direct {v0, p0, v1}, LA4/g;-><init>(Ljava/lang/Object;I)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 392
    .line 393
    .line 394
    iget-object p1, p0, Lflix/com/vision/activities/TraktTvConfigActivity;->m:Landroid/widget/LinearLayout;

    .line 395
    .line 396
    new-instance v0, Ly4/s1;

    .line 397
    .line 398
    const/4 v1, 0x1

    .line 399
    invoke-direct {v0, p0, v1}, Ly4/s1;-><init>(Lflix/com/vision/activities/TraktTvConfigActivity;I)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    .line 404
    .line 405
    iget-object p1, p0, Lflix/com/vision/activities/TraktTvConfigActivity;->n:Landroid/widget/LinearLayout;

    .line 406
    .line 407
    new-instance v0, Ly4/s1;

    .line 408
    .line 409
    const/4 v1, 0x2

    .line 410
    invoke-direct {v0, p0, v1}, Ly4/s1;-><init>(Lflix/com/vision/activities/TraktTvConfigActivity;I)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    .line 415
    .line 416
    iget-object p1, p0, Lflix/com/vision/activities/TraktTvConfigActivity;->b:Landroid/widget/LinearLayout;

    .line 417
    .line 418
    new-instance v0, Ly4/s1;

    .line 419
    .line 420
    const/4 v1, 0x3

    .line 421
    invoke-direct {v0, p0, v1}, Ly4/s1;-><init>(Lflix/com/vision/activities/TraktTvConfigActivity;I)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 425
    .line 426
    .line 427
    iget-object p1, p0, Lflix/com/vision/activities/TraktTvConfigActivity;->p:Landroid/widget/LinearLayout;

    .line 428
    .line 429
    new-instance v0, Ly4/s1;

    .line 430
    .line 431
    const/4 v1, 0x4

    .line 432
    invoke-direct {v0, p0, v1}, Ly4/s1;-><init>(Lflix/com/vision/activities/TraktTvConfigActivity;I)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    .line 437
    .line 438
    iget-object p1, p0, Lflix/com/vision/activities/TraktTvConfigActivity;->r:Landroid/widget/CheckBox;

    .line 439
    .line 440
    new-instance v0, Lq3/a;

    .line 441
    .line 442
    const/4 v1, 0x1

    .line 443
    invoke-direct {v0, p0, v1}, Lq3/a;-><init>(Landroid/view/KeyEvent$Callback;I)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 447
    .line 448
    .line 449
    iget-object p1, p0, Lflix/com/vision/activities/TraktTvConfigActivity;->t:Landroid/widget/CheckBox;

    .line 450
    .line 451
    new-instance v0, Ly4/V0;

    .line 452
    .line 453
    const/16 v1, 0xf

    .line 454
    .line 455
    invoke-direct {v0, v1}, Ly4/V0;-><init>(I)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 459
    .line 460
    .line 461
    iget-object p1, p0, Lflix/com/vision/activities/TraktTvConfigActivity;->s:Landroid/widget/CheckBox;

    .line 462
    .line 463
    new-instance v0, Ly4/V0;

    .line 464
    .line 465
    const/16 v1, 0x10

    .line 466
    .line 467
    invoke-direct {v0, v1}, Ly4/V0;-><init>(I)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 471
    .line 472
    .line 473
    iget-object p1, p0, Lflix/com/vision/activities/TraktTvConfigActivity;->u:Landroid/widget/CheckBox;

    .line 474
    .line 475
    new-instance v0, Ly4/V0;

    .line 476
    .line 477
    const/16 v1, 0x11

    .line 478
    .line 479
    invoke-direct {v0, v1}, Ly4/V0;-><init>(I)V

    .line 480
    .line 481
    .line 482
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 483
    .line 484
    .line 485
    iget-object p1, p0, Lflix/com/vision/activities/TraktTvConfigActivity;->v:Landroid/widget/CheckBox;

    .line 486
    .line 487
    new-instance v0, Ly4/V0;

    .line 488
    .line 489
    const/16 v1, 0x12

    .line 490
    .line 491
    invoke-direct {v0, v1}, Ly4/V0;-><init>(I)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 495
    .line 496
    .line 497
    iget-object p1, p0, Lflix/com/vision/activities/TraktTvConfigActivity;->q:Landroid/widget/CheckBox;

    .line 498
    .line 499
    new-instance v0, Ly4/V0;

    .line 500
    .line 501
    const/16 v1, 0x13

    .line 502
    .line 503
    invoke-direct {v0, v1}, Ly4/V0;-><init>(I)V

    .line 504
    .line 505
    .line 506
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 507
    .line 508
    .line 509
    iget-object p1, p0, Lflix/com/vision/activities/TraktTvConfigActivity;->w:Landroid/widget/CheckBox;

    .line 510
    .line 511
    new-instance v0, Ly4/V0;

    .line 512
    .line 513
    const/16 v1, 0x14

    .line 514
    .line 515
    invoke-direct {v0, v1}, Ly4/V0;-><init>(I)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 519
    .line 520
    .line 521
    return-void
.end method
