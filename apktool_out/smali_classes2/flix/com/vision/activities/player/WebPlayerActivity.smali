.class public Lflix/com/vision/activities/player/WebPlayerActivity;
.super Le/v;
.source "SourceFile"

# interfaces
.implements LU4/m;


# static fields
.field public static final synthetic O:I


# instance fields
.field public A:Landroid/widget/TextView;

.field public B:Landroid/graphics/Typeface;

.field public C:Landroid/graphics/Typeface;

.field public D:Lh5/j;

.field public E:Ljava/lang/String;

.field public F:Landroid/widget/RelativeLayout;

.field public G:I

.field public H:I

.field public I:Landroid/webkit/WebView;

.field public J:Ljava/lang/String;

.field public K:Z

.field public L:Z

.field public M:Landroid/view/View;

.field public N:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field public b:Landroid/view/animation/Animation;

.field public e:Z

.field public f:Landroid/widget/FrameLayout;

.field public j:Landroid/view/View;

.field public m:Lflix/com/vision/helpers/CursorLayout;

.field public n:I

.field public p:Landroid/widget/LinearLayout;

.field public q:Ljava/lang/String;

.field public r:Lflix/com/vision/models/Movie;

.field public s:Landroid/view/View;

.field public t:Landroid/widget/ImageView;

.field public u:Landroid/widget/ImageView;

.field public v:Landroid/widget/ImageView;

.field public w:Landroid/widget/LinearLayout;

.field public x:Landroid/widget/TextView;

.field public y:Landroid/widget/TextView;

.field public z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/v;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->e:Z

    .line 6
    .line 7
    iput v0, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->n:I

    .line 8
    .line 9
    iput v0, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->G:I

    .line 10
    .line 11
    iput-boolean v0, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->K:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->L:Z

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final e()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->f:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->f:Landroid/widget/FrameLayout;

    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->M:Landroid/view/View;

    .line 20
    .line 21
    iget-object v0, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->N:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->I:Landroid/webkit/WebView;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->I:Landroid/webkit/WebView;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 43
    .line 44
    .line 45
    :cond_2
    return-void
.end method

.method public infoToggle(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->w:Landroid/widget/LinearLayout;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/16 p1, 0x8

    .line 10
    .line 11
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    iget-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->w:Landroid/widget/LinearLayout;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-wide/16 v0, 0x190

    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    new-instance v0, LB4/O;

    .line 33
    .line 34
    invoke-direct {v0, p0}, LB4/O;-><init>(Lflix/com/vision/activities/player/WebPlayerActivity;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public onBackPressed()V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lflix/com/vision/activities/player/WebPlayerActivity;->showDialog()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/H;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    sget-object v0, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 9
    .line 10
    const-string v0, "fonts/pproduct_sans_rregular.ttf"

    .line 11
    .line 12
    invoke-static {p1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->B:Landroid/graphics/Typeface;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v0, "fonts/product_sans_bold.ttf"

    .line 23
    .line 24
    invoke-static {p1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->C:Landroid/graphics/Typeface;

    .line 29
    .line 30
    new-instance p1, Lh5/j;

    .line 31
    .line 32
    invoke-direct {p1}, Lh5/j;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->D:Lh5/j;

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string v0, "episode_number"

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    iput p1, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->G:I

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string v0, "season_number"

    .line 55
    .line 56
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    iput p1, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->n:I

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    const-string v0, "movie"

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Lflix/com/vision/models/Movie;

    .line 73
    .line 74
    iput-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->r:Lflix/com/vision/models/Movie;

    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    const-string v0, "runtime"

    .line 81
    .line 82
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    iput p1, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->H:I

    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    const-string v0, "move_clock"

    .line 93
    .line 94
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 95
    .line 96
    .line 97
    sget-boolean p1, Lflix/com/vision/App;->I:Z

    .line 98
    .line 99
    if-eqz p1, :cond_0

    .line 100
    .line 101
    sget p1, Lflix/com/vision/R$layout;->activity_web_player:I

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_0
    sget p1, Lflix/com/vision/R$layout;->activity_web_player_light:I

    .line 105
    .line 106
    :goto_0
    invoke-virtual {p0, p1}, Le/v;->setContentView(I)V

    .line 107
    .line 108
    .line 109
    sget p1, Lflix/com/vision/R$id;->text_view_rating:I

    .line 110
    .line 111
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    check-cast p1, Landroid/widget/TextView;

    .line 116
    .line 117
    iput-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->A:Landroid/widget/TextView;

    .line 118
    .line 119
    sget p1, Lflix/com/vision/R$id;->fullscreen_frame:I

    .line 120
    .line 121
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    check-cast p1, Landroid/widget/FrameLayout;

    .line 126
    .line 127
    iput-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->f:Landroid/widget/FrameLayout;

    .line 128
    .line 129
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    const-string v0, "movie_rating"

    .line 134
    .line 135
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    if-eqz p1, :cond_1

    .line 140
    .line 141
    iget-object v0, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->A:Landroid/widget/TextView;

    .line 142
    .line 143
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    .line 145
    .line 146
    iget-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->A:Landroid/widget/TextView;

    .line 147
    .line 148
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 149
    .line 150
    .line 151
    :cond_1
    sget p1, Lflix/com/vision/R$id;->title_poster_img:I

    .line 152
    .line 153
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    check-cast p1, Landroid/widget/ImageView;

    .line 158
    .line 159
    iput-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->v:Landroid/widget/ImageView;

    .line 160
    .line 161
    sget p1, Lflix/com/vision/R$id;->cursorLayout:I

    .line 162
    .line 163
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    check-cast p1, Lflix/com/vision/helpers/CursorLayout;

    .line 168
    .line 169
    iput-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->m:Lflix/com/vision/helpers/CursorLayout;

    .line 170
    .line 171
    sget p1, Lflix/com/vision/R$id;->poster_image:I

    .line 172
    .line 173
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    check-cast p1, Landroid/widget/ImageView;

    .line 178
    .line 179
    iput-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->u:Landroid/widget/ImageView;

    .line 180
    .line 181
    sget p1, Lflix/com/vision/R$id;->water_mark_view:I

    .line 182
    .line 183
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    iput-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->j:Landroid/view/View;

    .line 188
    .line 189
    sget p1, Lflix/com/vision/R$id;->undertitle:I

    .line 190
    .line 191
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    check-cast p1, Landroid/widget/TextView;

    .line 196
    .line 197
    iput-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->y:Landroid/widget/TextView;

    .line 198
    .line 199
    sget p1, Lflix/com/vision/R$id;->undertitle_episode:I

    .line 200
    .line 201
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    check-cast p1, Landroid/widget/TextView;

    .line 206
    .line 207
    iput-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->z:Landroid/widget/TextView;

    .line 208
    .line 209
    sget p1, Lflix/com/vision/R$id;->background_relative_layout:I

    .line 210
    .line 211
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 216
    .line 217
    iput-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->F:Landroid/widget/RelativeLayout;

    .line 218
    .line 219
    iget-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->m:Lflix/com/vision/helpers/CursorLayout;

    .line 220
    .line 221
    if-eqz p1, :cond_2

    .line 222
    .line 223
    invoke-virtual {p1, p0}, Lflix/com/vision/helpers/CursorLayout;->setActivity(LU4/m;)V

    .line 224
    .line 225
    .line 226
    :try_start_0
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 231
    .line 232
    const-string v0, "mouse_toggle_color"

    .line 233
    .line 234
    sget v2, Lflix/com/vision/R$color;->accent:I

    .line 235
    .line 236
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 237
    .line 238
    .line 239
    move-result p1

    .line 240
    invoke-virtual {p0}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    .line 245
    .line 246
    .line 247
    move-result p1

    .line 248
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    .line 253
    .line 254
    .line 255
    move-result v2

    .line 256
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    .line 257
    .line 258
    .line 259
    move-result p1

    .line 260
    iget-object v3, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->m:Lflix/com/vision/helpers/CursorLayout;

    .line 261
    .line 262
    invoke-virtual {v3, v0, v2, p1}, Lflix/com/vision/helpers/CursorLayout;->setCursorColor(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    .line 264
    .line 265
    goto :goto_1

    .line 266
    :catch_0
    :try_start_1
    invoke-virtual {p0}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    sget v0, Lflix/com/vision/R$color;->md_deep_orange_500:I

    .line 271
    .line 272
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 273
    .line 274
    .line 275
    move-result p1

    .line 276
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    .line 285
    .line 286
    .line 287
    move-result p1

    .line 288
    iget-object v3, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->m:Lflix/com/vision/helpers/CursorLayout;

    .line 289
    .line 290
    invoke-virtual {v3, v0, v2, p1}, Lflix/com/vision/helpers/CursorLayout;->setCursorColor(III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 291
    .line 292
    .line 293
    :catch_1
    :cond_2
    :goto_1
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 298
    .line 299
    const-string v0, "pref_show_time"

    .line 300
    .line 301
    const/4 v2, 0x1

    .line 302
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 303
    .line 304
    .line 305
    sget p1, Lflix/com/vision/R$id;->movie_title_container:I

    .line 306
    .line 307
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 308
    .line 309
    .line 310
    move-result-object p1

    .line 311
    check-cast p1, Landroid/widget/LinearLayout;

    .line 312
    .line 313
    iput-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->w:Landroid/widget/LinearLayout;

    .line 314
    .line 315
    sget p1, Lflix/com/vision/R$id;->movie_title_web_text:I

    .line 316
    .line 317
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 318
    .line 319
    .line 320
    move-result-object p1

    .line 321
    check-cast p1, Landroid/widget/TextView;

    .line 322
    .line 323
    iput-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->x:Landroid/widget/TextView;

    .line 324
    .line 325
    sget p1, Lflix/com/vision/R$id;->mouse_imageview:I

    .line 326
    .line 327
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 328
    .line 329
    .line 330
    move-result-object p1

    .line 331
    check-cast p1, Landroid/widget/ImageView;

    .line 332
    .line 333
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 334
    .line 335
    .line 336
    move-result-object p1

    .line 337
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 338
    .line 339
    .line 340
    move-result-object p1

    .line 341
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 342
    .line 343
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 344
    .line 345
    .line 346
    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 347
    .line 348
    .line 349
    iget-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->D:Lh5/j;

    .line 350
    .line 351
    iget-object v0, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->x:Landroid/widget/TextView;

    .line 352
    .line 353
    iget-object v3, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->C:Landroid/graphics/Typeface;

    .line 354
    .line 355
    invoke-virtual {p1, v0, v3}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 356
    .line 357
    .line 358
    iget-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->D:Lh5/j;

    .line 359
    .line 360
    iget-object v0, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->z:Landroid/widget/TextView;

    .line 361
    .line 362
    iget-object v3, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->B:Landroid/graphics/Typeface;

    .line 363
    .line 364
    invoke-virtual {p1, v0, v3}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 365
    .line 366
    .line 367
    iget-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->D:Lh5/j;

    .line 368
    .line 369
    iget-object v0, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->y:Landroid/widget/TextView;

    .line 370
    .line 371
    iget-object v3, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->B:Landroid/graphics/Typeface;

    .line 372
    .line 373
    invoke-virtual {p1, v0, v3}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 374
    .line 375
    .line 376
    new-instance p1, Landroid/os/Handler;

    .line 377
    .line 378
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 379
    .line 380
    .line 381
    sget p1, Lflix/com/vision/R$id;->mouse_pointer:I

    .line 382
    .line 383
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 384
    .line 385
    .line 386
    move-result-object p1

    .line 387
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 388
    .line 389
    sget p1, Lflix/com/vision/R$id;->webview:I

    .line 390
    .line 391
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 392
    .line 393
    .line 394
    move-result-object p1

    .line 395
    check-cast p1, Landroid/webkit/WebView;

    .line 396
    .line 397
    iput-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->I:Landroid/webkit/WebView;

    .line 398
    .line 399
    :try_start_2
    iget p1, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->H:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 400
    .line 401
    if-lez p1, :cond_4

    .line 402
    .line 403
    const-string v0, "m"

    .line 404
    .line 405
    const/16 v3, 0x3c

    .line 406
    .line 407
    if-le p1, v3, :cond_3

    .line 408
    .line 409
    :try_start_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 410
    .line 411
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 412
    .line 413
    .line 414
    iget v4, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->H:I

    .line 415
    .line 416
    div-int/2addr v4, v3

    .line 417
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    const-string v4, "h "

    .line 421
    .line 422
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    iget v4, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->H:I

    .line 426
    .line 427
    rem-int/2addr v4, v3

    .line 428
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object p1

    .line 438
    goto :goto_2

    .line 439
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 440
    .line 441
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 442
    .line 443
    .line 444
    iget v3, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->H:I

    .line 445
    .line 446
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object p1

    .line 456
    :goto_2
    iget-object v0, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->y:Landroid/widget/TextView;

    .line 457
    .line 458
    new-instance v3, Ljava/lang/StringBuilder;

    .line 459
    .line 460
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 461
    .line 462
    .line 463
    iget-object v4, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->r:Lflix/com/vision/models/Movie;

    .line 464
    .line 465
    invoke-virtual {v4}, Lflix/com/vision/models/Movie;->getYear()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v4

    .line 469
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    const-string v4, "  \u00b7  "

    .line 473
    .line 474
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object p1

    .line 484
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    .line 486
    .line 487
    goto :goto_3

    .line 488
    :cond_4
    iget-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->y:Landroid/widget/TextView;

    .line 489
    .line 490
    iget-object v0, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->r:Lflix/com/vision/models/Movie;

    .line 491
    .line 492
    invoke-virtual {v0}, Lflix/com/vision/models/Movie;->getYear()Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 497
    .line 498
    .line 499
    :catch_2
    :goto_3
    sget p1, Lflix/com/vision/R$id;->background_image_web:I

    .line 500
    .line 501
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 502
    .line 503
    .line 504
    move-result-object p1

    .line 505
    check-cast p1, Landroid/widget/ImageView;

    .line 506
    .line 507
    iput-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->t:Landroid/widget/ImageView;

    .line 508
    .line 509
    sget p1, Lflix/com/vision/R$id;->progress_web:I

    .line 510
    .line 511
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 512
    .line 513
    .line 514
    move-result-object p1

    .line 515
    check-cast p1, Landroid/widget/LinearLayout;

    .line 516
    .line 517
    iput-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->p:Landroid/widget/LinearLayout;

    .line 518
    .line 519
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 520
    .line 521
    .line 522
    move-result-object p1

    .line 523
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 524
    .line 525
    .line 526
    move-result-object p1

    .line 527
    iput-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->s:Landroid/view/View;

    .line 528
    .line 529
    const/16 v0, 0x404

    .line 530
    .line 531
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 532
    .line 533
    .line 534
    :try_start_4
    invoke-static {}, Lm4/D;->get()Lm4/D;

    .line 535
    .line 536
    .line 537
    move-result-object p1

    .line 538
    iget-object v0, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->r:Lflix/com/vision/models/Movie;

    .line 539
    .line 540
    invoke-virtual {v0}, Lflix/com/vision/models/Movie;->getImage_url()Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    invoke-virtual {p1, v0}, Lm4/D;->load(Ljava/lang/String;)Lm4/J;

    .line 545
    .line 546
    .line 547
    move-result-object p1

    .line 548
    iget-object v0, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->u:Landroid/widget/ImageView;

    .line 549
    .line 550
    new-instance v3, LB4/P;

    .line 551
    .line 552
    invoke-direct {v3, p0}, LB4/P;-><init>(Lflix/com/vision/activities/player/WebPlayerActivity;)V

    .line 553
    .line 554
    .line 555
    invoke-virtual {p1, v0, v3}, Lm4/J;->into(Landroid/widget/ImageView;Lm4/i;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 556
    .line 557
    .line 558
    goto :goto_4

    .line 559
    :catch_3
    move-exception p1

    .line 560
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 561
    .line 562
    .line 563
    :goto_4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 564
    .line 565
    .line 566
    move-result-object p1

    .line 567
    const-string v0, "poster"

    .line 568
    .line 569
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object p1

    .line 573
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 574
    .line 575
    .line 576
    move-result-object v0

    .line 577
    const-string v3, "title"

    .line 578
    .line 579
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 580
    .line 581
    .line 582
    move-result-object v0

    .line 583
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 584
    .line 585
    .line 586
    move-result-object v3

    .line 587
    const-string v4, "title_episode"

    .line 588
    .line 589
    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object v3

    .line 593
    iput-object v3, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->E:Ljava/lang/String;

    .line 594
    .line 595
    iget-object v3, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->r:Lflix/com/vision/models/Movie;

    .line 596
    .line 597
    invoke-virtual {v3}, Lflix/com/vision/models/Movie;->isSeries()Z

    .line 598
    .line 599
    .line 600
    move-result v3

    .line 601
    if-nez v3, :cond_5

    .line 602
    .line 603
    iget-object v3, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->r:Lflix/com/vision/models/Movie;

    .line 604
    .line 605
    iget-boolean v3, v3, Lflix/com/vision/models/Movie;->anime:Z

    .line 606
    .line 607
    if-eqz v3, :cond_7

    .line 608
    .line 609
    :cond_5
    iget-object v3, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->E:Ljava/lang/String;

    .line 610
    .line 611
    if-eqz v3, :cond_6

    .line 612
    .line 613
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 614
    .line 615
    .line 616
    move-result v3

    .line 617
    if-nez v3, :cond_6

    .line 618
    .line 619
    iget-object v3, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->z:Landroid/widget/TextView;

    .line 620
    .line 621
    iget-object v4, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->E:Ljava/lang/String;

    .line 622
    .line 623
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 624
    .line 625
    .line 626
    goto :goto_5

    .line 627
    :cond_6
    iget-object v3, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->z:Landroid/widget/TextView;

    .line 628
    .line 629
    new-instance v4, Ljava/lang/StringBuilder;

    .line 630
    .line 631
    const-string v5, "Episode "

    .line 632
    .line 633
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 634
    .line 635
    .line 636
    iget v5, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->G:I

    .line 637
    .line 638
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 639
    .line 640
    .line 641
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v4

    .line 645
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 646
    .line 647
    .line 648
    :goto_5
    iget-object v3, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->z:Landroid/widget/TextView;

    .line 649
    .line 650
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 651
    .line 652
    .line 653
    :cond_7
    if-eqz v0, :cond_8

    .line 654
    .line 655
    iget-object v3, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->x:Landroid/widget/TextView;

    .line 656
    .line 657
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 658
    .line 659
    .line 660
    :cond_8
    if-eqz p1, :cond_9

    .line 661
    .line 662
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 663
    .line 664
    .line 665
    move-result v0

    .line 666
    if-nez v0, :cond_9

    .line 667
    .line 668
    :try_start_5
    invoke-static {}, Lm4/D;->get()Lm4/D;

    .line 669
    .line 670
    .line 671
    move-result-object v0

    .line 672
    invoke-virtual {v0, p1}, Lm4/D;->load(Ljava/lang/String;)Lm4/J;

    .line 673
    .line 674
    .line 675
    move-result-object p1

    .line 676
    invoke-virtual {p1}, Lm4/J;->fit()Lm4/J;

    .line 677
    .line 678
    .line 679
    move-result-object p1

    .line 680
    invoke-virtual {p1}, Lm4/J;->centerCrop()Lm4/J;

    .line 681
    .line 682
    .line 683
    move-result-object p1

    .line 684
    iget-object v0, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->t:Landroid/widget/ImageView;

    .line 685
    .line 686
    invoke-virtual {p1, v0}, Lm4/J;->into(Landroid/widget/ImageView;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 687
    .line 688
    .line 689
    goto :goto_6

    .line 690
    :catch_4
    move-exception p1

    .line 691
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 692
    .line 693
    .line 694
    :cond_9
    :goto_6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 695
    .line 696
    .line 697
    move-result-object p1

    .line 698
    const-string v0, "url"

    .line 699
    .line 700
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 701
    .line 702
    .line 703
    move-result-object p1

    .line 704
    iput-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->q:Ljava/lang/String;

    .line 705
    .line 706
    iget-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->r:Lflix/com/vision/models/Movie;

    .line 707
    .line 708
    iget-object p1, p1, Lflix/com/vision/models/Movie;->logoUrl:Ljava/lang/String;

    .line 709
    .line 710
    iput-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->J:Ljava/lang/String;

    .line 711
    .line 712
    if-eqz p1, :cond_a

    .line 713
    .line 714
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 715
    .line 716
    .line 717
    move-result p1

    .line 718
    if-nez p1, :cond_a

    .line 719
    .line 720
    iget-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->p:Landroid/widget/LinearLayout;

    .line 721
    .line 722
    const/16 v0, 0x8

    .line 723
    .line 724
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 725
    .line 726
    .line 727
    iput-boolean v2, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->e:Z

    .line 728
    .line 729
    :try_start_6
    invoke-static {}, Lm4/D;->get()Lm4/D;

    .line 730
    .line 731
    .line 732
    move-result-object p1

    .line 733
    iget-object v0, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->J:Ljava/lang/String;

    .line 734
    .line 735
    invoke-virtual {p1, v0}, Lm4/D;->load(Ljava/lang/String;)Lm4/J;

    .line 736
    .line 737
    .line 738
    move-result-object p1

    .line 739
    iget-object v0, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->v:Landroid/widget/ImageView;

    .line 740
    .line 741
    invoke-virtual {p1, v0}, Lm4/J;->into(Landroid/widget/ImageView;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 742
    .line 743
    .line 744
    goto :goto_7

    .line 745
    :catch_5
    move-exception p1

    .line 746
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 747
    .line 748
    .line 749
    :goto_7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 750
    .line 751
    .line 752
    move-result-object p1

    .line 753
    sget v0, Lflix/com/vision/R$anim;->fade_in_infinite:I

    .line 754
    .line 755
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 756
    .line 757
    .line 758
    move-result-object p1

    .line 759
    iput-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->b:Landroid/view/animation/Animation;

    .line 760
    .line 761
    :try_start_7
    iget-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->v:Landroid/widget/ImageView;

    .line 762
    .line 763
    const/high16 v0, 0x3f800000    # 1.0f

    .line 764
    .line 765
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 766
    .line 767
    .line 768
    iget-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->v:Landroid/widget/ImageView;

    .line 769
    .line 770
    iget-object v0, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->b:Landroid/view/animation/Animation;

    .line 771
    .line 772
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 773
    .line 774
    .line 775
    goto :goto_8

    .line 776
    :cond_a
    iget-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->p:Landroid/widget/LinearLayout;

    .line 777
    .line 778
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 779
    .line 780
    .line 781
    :catch_6
    :goto_8
    iget-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->I:Landroid/webkit/WebView;

    .line 782
    .line 783
    const/high16 v0, -0x1000000

    .line 784
    .line 785
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 786
    .line 787
    .line 788
    iget-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->I:Landroid/webkit/WebView;

    .line 789
    .line 790
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 791
    .line 792
    .line 793
    move-result-object p1

    .line 794
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 795
    .line 796
    .line 797
    iget-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->I:Landroid/webkit/WebView;

    .line 798
    .line 799
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 800
    .line 801
    .line 802
    move-result-object p1

    .line 803
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 804
    .line 805
    .line 806
    iget-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->I:Landroid/webkit/WebView;

    .line 807
    .line 808
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 809
    .line 810
    .line 811
    move-result-object p1

    .line 812
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 813
    .line 814
    .line 815
    iget-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->I:Landroid/webkit/WebView;

    .line 816
    .line 817
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 818
    .line 819
    .line 820
    move-result-object p1

    .line 821
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 822
    .line 823
    .line 824
    iget-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->I:Landroid/webkit/WebView;

    .line 825
    .line 826
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 827
    .line 828
    .line 829
    move-result-object p1

    .line 830
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 831
    .line 832
    .line 833
    iget-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->I:Landroid/webkit/WebView;

    .line 834
    .line 835
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 836
    .line 837
    .line 838
    move-result-object p1

    .line 839
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 840
    .line 841
    .line 842
    iget-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->I:Landroid/webkit/WebView;

    .line 843
    .line 844
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 845
    .line 846
    .line 847
    move-result-object p1

    .line 848
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 849
    .line 850
    .line 851
    iget-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->I:Landroid/webkit/WebView;

    .line 852
    .line 853
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 854
    .line 855
    .line 856
    move-result-object p1

    .line 857
    sget-object v0, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    .line 858
    .line 859
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 860
    .line 861
    .line 862
    iget-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->I:Landroid/webkit/WebView;

    .line 863
    .line 864
    new-instance v0, LB4/T;

    .line 865
    .line 866
    invoke-direct {v0, p0}, LB4/T;-><init>(Lflix/com/vision/activities/player/WebPlayerActivity;)V

    .line 867
    .line 868
    .line 869
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 870
    .line 871
    .line 872
    iget-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->I:Landroid/webkit/WebView;

    .line 873
    .line 874
    new-instance v0, LB4/S;

    .line 875
    .line 876
    invoke-direct {v0, p0}, LB4/S;-><init>(Lflix/com/vision/activities/player/WebPlayerActivity;)V

    .line 877
    .line 878
    .line 879
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 880
    .line 881
    .line 882
    iget-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->I:Landroid/webkit/WebView;

    .line 883
    .line 884
    iget-object v0, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->q:Ljava/lang/String;

    .line 885
    .line 886
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 887
    .line 888
    .line 889
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Le/v;->onDestroy()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/H;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->L:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 13
    .line 14
    const-string v1, "pref_hide_watermark"

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    new-instance v0, Lflix/com/vision/models/VideoSource;

    .line 24
    .line 25
    invoke-direct {v0}, Lflix/com/vision/models/VideoSource;-><init>()V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->q:Ljava/lang/String;

    .line 29
    .line 30
    iput-object v1, v0, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0}, Lflix/com/vision/models/VideoSource;->hasMultiSubtitles()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    iget-object v0, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->j:Landroid/view/View;

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Le/v;->onStop()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->s:Landroid/view/View;

    .line 7
    .line 8
    const/16 v0, 0x1706

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public showDialog()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->K:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->f:Landroid/widget/FrameLayout;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lflix/com/vision/activities/player/WebPlayerActivity;->e()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->K:Z

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-static {p0, v1}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const-string v3, "Exit"

    .line 33
    .line 34
    invoke-virtual {v2, v3}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v1}, Landroid/app/DialogFragment;->setCancelable(Z)V

    .line 38
    .line 39
    .line 40
    const-string v3, "Do you really want to stop playback and exit ?"

    .line 41
    .line 42
    invoke-virtual {v2, v3}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance v3, LB4/M;

    .line 46
    .line 47
    const/4 v4, 0x0

    .line 48
    invoke-direct {v3, p0, v4}, LB4/M;-><init>(Lflix/com/vision/activities/player/WebPlayerActivity;I)V

    .line 49
    .line 50
    .line 51
    const-string v4, "CANCEL"

    .line 52
    .line 53
    invoke-virtual {v2, v4, v3}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 54
    .line 55
    .line 56
    new-instance v3, LB4/M;

    .line 57
    .line 58
    const/4 v4, 0x1

    .line 59
    invoke-direct {v3, p0, v4}, LB4/M;-><init>(Lflix/com/vision/activities/player/WebPlayerActivity;I)V

    .line 60
    .line 61
    .line 62
    const-string v4, "YES"

    .line 63
    .line 64
    invoke-virtual {v2, v4, v3}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 65
    .line 66
    .line 67
    :try_start_0
    const-string v3, ""

    .line 68
    .line 69
    invoke-virtual {v2, v0, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    iput-boolean v1, p0, Lflix/com/vision/activities/player/WebPlayerActivity;->K:Z

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 77
    .line 78
    .line 79
    :goto_0
    return-void
.end method
