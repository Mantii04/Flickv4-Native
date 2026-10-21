.class public Lflix/com/vision/activities/player/WebPlayerActivitySuper;
.super Le/v;
.source "SourceFile"

# interfaces
.implements LU4/m;


# static fields
.field public static final synthetic N:I


# instance fields
.field public A:Landroid/widget/TextView;

.field public B:Landroid/graphics/Typeface;

.field public C:Landroid/graphics/Typeface;

.field public D:Lh5/j;

.field public E:Ljava/lang/String;

.field public F:Landroid/widget/RelativeLayout;

.field public G:I

.field public H:I

.field public I:I

.field public J:Ljava/lang/String;

.field public K:Z

.field public L:Landroid/view/View;

.field public M:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field public b:Landroid/view/animation/Animation;

.field public e:Z

.field public f:Landroid/widget/FrameLayout;

.field public j:Landroid/view/View;

.field public m:Lflix/com/vision/helpers/CursorLayout;

.field public n:Landroid/webkit/WebView;

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
    iput-boolean v0, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->e:Z

    .line 6
    .line 7
    iput v0, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->G:I

    .line 8
    .line 9
    iput v0, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->H:I

    .line 10
    .line 11
    iput-boolean v0, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->K:Z

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final e()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->f:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->f:Landroid/widget/FrameLayout;

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
    iput-object v0, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->L:Landroid/view/View;

    .line 20
    .line 21
    iget-object v1, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->M:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-interface {v1}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->M:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->m:Lflix/com/vision/helpers/CursorLayout;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 36
    .line 37
    .line 38
    :cond_2
    iget-object v0, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->n:Landroid/webkit/WebView;

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->n:Landroid/webkit/WebView;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    .line 54
    .line 55
    :cond_3
    return-void
.end method

.method public infoToggle(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->w:Landroid/widget/LinearLayout;

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
    iget-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->w:Landroid/widget/LinearLayout;

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
    new-instance v0, LB4/V;

    .line 33
    .line 34
    invoke-direct {v0, p0}, LB4/V;-><init>(Lflix/com/vision/activities/player/WebPlayerActivitySuper;)V

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
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->L:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->e()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->showDialog()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

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
    iput-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->B:Landroid/graphics/Typeface;

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
    iput-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->C:Landroid/graphics/Typeface;

    .line 29
    .line 30
    new-instance p1, Lh5/j;

    .line 31
    .line 32
    invoke-direct {p1}, Lh5/j;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->D:Lh5/j;

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string v0, "movie"

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Lflix/com/vision/models/Movie;

    .line 48
    .line 49
    iput-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->r:Lflix/com/vision/models/Movie;

    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const-string v0, "runtime"

    .line 56
    .line 57
    const/4 v1, 0x0

    .line 58
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    iput p1, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->I:I

    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const-string v0, "move_clock"

    .line 69
    .line 70
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 71
    .line 72
    .line 73
    sget-boolean p1, Lflix/com/vision/App;->I:Z

    .line 74
    .line 75
    if-eqz p1, :cond_0

    .line 76
    .line 77
    sget p1, Lflix/com/vision/R$layout;->activity_web_player:I

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    sget p1, Lflix/com/vision/R$layout;->activity_web_player_light:I

    .line 81
    .line 82
    :goto_0
    invoke-virtual {p0, p1}, Le/v;->setContentView(I)V

    .line 83
    .line 84
    .line 85
    sget p1, Lflix/com/vision/R$id;->text_view_rating:I

    .line 86
    .line 87
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Landroid/widget/TextView;

    .line 92
    .line 93
    iput-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->A:Landroid/widget/TextView;

    .line 94
    .line 95
    sget p1, Lflix/com/vision/R$id;->fullscreen_frame:I

    .line 96
    .line 97
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Landroid/widget/FrameLayout;

    .line 102
    .line 103
    iput-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->f:Landroid/widget/FrameLayout;

    .line 104
    .line 105
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    const-string v0, "movie_rating"

    .line 110
    .line 111
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    if-eqz p1, :cond_1

    .line 116
    .line 117
    iget-object v0, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->A:Landroid/widget/TextView;

    .line 118
    .line 119
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->A:Landroid/widget/TextView;

    .line 123
    .line 124
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 125
    .line 126
    .line 127
    :cond_1
    sget p1, Lflix/com/vision/R$id;->title_poster_img:I

    .line 128
    .line 129
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    check-cast p1, Landroid/widget/ImageView;

    .line 134
    .line 135
    iput-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->v:Landroid/widget/ImageView;

    .line 136
    .line 137
    sget p1, Lflix/com/vision/R$id;->cursorLayout:I

    .line 138
    .line 139
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    check-cast p1, Lflix/com/vision/helpers/CursorLayout;

    .line 144
    .line 145
    iput-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->m:Lflix/com/vision/helpers/CursorLayout;

    .line 146
    .line 147
    sget p1, Lflix/com/vision/R$id;->poster_image:I

    .line 148
    .line 149
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    check-cast p1, Landroid/widget/ImageView;

    .line 154
    .line 155
    iput-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->u:Landroid/widget/ImageView;

    .line 156
    .line 157
    sget p1, Lflix/com/vision/R$id;->water_mark_view:I

    .line 158
    .line 159
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    iput-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->j:Landroid/view/View;

    .line 164
    .line 165
    sget p1, Lflix/com/vision/R$id;->undertitle:I

    .line 166
    .line 167
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    check-cast p1, Landroid/widget/TextView;

    .line 172
    .line 173
    iput-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->y:Landroid/widget/TextView;

    .line 174
    .line 175
    sget p1, Lflix/com/vision/R$id;->undertitle_episode:I

    .line 176
    .line 177
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    check-cast p1, Landroid/widget/TextView;

    .line 182
    .line 183
    iput-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->z:Landroid/widget/TextView;

    .line 184
    .line 185
    sget p1, Lflix/com/vision/R$id;->background_relative_layout:I

    .line 186
    .line 187
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 192
    .line 193
    iput-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->F:Landroid/widget/RelativeLayout;

    .line 194
    .line 195
    iget-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->m:Lflix/com/vision/helpers/CursorLayout;

    .line 196
    .line 197
    if-eqz p1, :cond_2

    .line 198
    .line 199
    invoke-virtual {p1, p0}, Lflix/com/vision/helpers/CursorLayout;->setActivity(LU4/m;)V

    .line 200
    .line 201
    .line 202
    :try_start_0
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 207
    .line 208
    const-string v0, "mouse_toggle_color"

    .line 209
    .line 210
    sget v2, Lflix/com/vision/R$color;->accent:I

    .line 211
    .line 212
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 213
    .line 214
    .line 215
    move-result p1

    .line 216
    invoke-virtual {p0}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    .line 221
    .line 222
    .line 223
    move-result p1

    .line 224
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    .line 233
    .line 234
    .line 235
    move-result p1

    .line 236
    iget-object v3, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->m:Lflix/com/vision/helpers/CursorLayout;

    .line 237
    .line 238
    invoke-virtual {v3, v0, v2, p1}, Lflix/com/vision/helpers/CursorLayout;->setCursorColor(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    .line 240
    .line 241
    goto :goto_1

    .line 242
    :catch_0
    :try_start_1
    invoke-virtual {p0}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    sget v0, Lflix/com/vision/R$color;->md_deep_orange_500:I

    .line 247
    .line 248
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 249
    .line 250
    .line 251
    move-result p1

    .line 252
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    .line 257
    .line 258
    .line 259
    move-result v2

    .line 260
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    .line 261
    .line 262
    .line 263
    move-result p1

    .line 264
    iget-object v3, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->m:Lflix/com/vision/helpers/CursorLayout;

    .line 265
    .line 266
    invoke-virtual {v3, v0, v2, p1}, Lflix/com/vision/helpers/CursorLayout;->setCursorColor(III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 267
    .line 268
    .line 269
    :catch_1
    :cond_2
    :goto_1
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 274
    .line 275
    const-string v0, "pref_show_time"

    .line 276
    .line 277
    const/4 v2, 0x1

    .line 278
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 279
    .line 280
    .line 281
    sget p1, Lflix/com/vision/R$id;->movie_title_container:I

    .line 282
    .line 283
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    check-cast p1, Landroid/widget/LinearLayout;

    .line 288
    .line 289
    iput-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->w:Landroid/widget/LinearLayout;

    .line 290
    .line 291
    sget p1, Lflix/com/vision/R$id;->movie_title_web_text:I

    .line 292
    .line 293
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    check-cast p1, Landroid/widget/TextView;

    .line 298
    .line 299
    iput-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->x:Landroid/widget/TextView;

    .line 300
    .line 301
    sget p1, Lflix/com/vision/R$id;->mouse_imageview:I

    .line 302
    .line 303
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    check-cast p1, Landroid/widget/ImageView;

    .line 308
    .line 309
    iget-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->D:Lh5/j;

    .line 310
    .line 311
    iget-object v0, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->x:Landroid/widget/TextView;

    .line 312
    .line 313
    iget-object v3, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->C:Landroid/graphics/Typeface;

    .line 314
    .line 315
    invoke-virtual {p1, v0, v3}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 316
    .line 317
    .line 318
    iget-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->D:Lh5/j;

    .line 319
    .line 320
    iget-object v0, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->z:Landroid/widget/TextView;

    .line 321
    .line 322
    iget-object v3, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->B:Landroid/graphics/Typeface;

    .line 323
    .line 324
    invoke-virtual {p1, v0, v3}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 325
    .line 326
    .line 327
    iget-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->D:Lh5/j;

    .line 328
    .line 329
    iget-object v0, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->y:Landroid/widget/TextView;

    .line 330
    .line 331
    iget-object v3, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->B:Landroid/graphics/Typeface;

    .line 332
    .line 333
    invoke-virtual {p1, v0, v3}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 334
    .line 335
    .line 336
    sget p1, Lflix/com/vision/R$id;->webview:I

    .line 337
    .line 338
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 339
    .line 340
    .line 341
    move-result-object p1

    .line 342
    check-cast p1, Landroid/webkit/WebView;

    .line 343
    .line 344
    iput-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->n:Landroid/webkit/WebView;

    .line 345
    .line 346
    :try_start_2
    iget p1, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->I:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 347
    .line 348
    if-lez p1, :cond_4

    .line 349
    .line 350
    const-string v0, "m"

    .line 351
    .line 352
    const/16 v3, 0x3c

    .line 353
    .line 354
    if-le p1, v3, :cond_3

    .line 355
    .line 356
    :try_start_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 357
    .line 358
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    .line 360
    .line 361
    iget v4, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->I:I

    .line 362
    .line 363
    div-int/2addr v4, v3

    .line 364
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    const-string v4, "h "

    .line 368
    .line 369
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    iget v4, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->I:I

    .line 373
    .line 374
    rem-int/2addr v4, v3

    .line 375
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object p1

    .line 385
    goto :goto_2

    .line 386
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 387
    .line 388
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 389
    .line 390
    .line 391
    iget v3, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->I:I

    .line 392
    .line 393
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object p1

    .line 403
    :goto_2
    iget-object v0, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->y:Landroid/widget/TextView;

    .line 404
    .line 405
    new-instance v3, Ljava/lang/StringBuilder;

    .line 406
    .line 407
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 408
    .line 409
    .line 410
    iget-object v4, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->r:Lflix/com/vision/models/Movie;

    .line 411
    .line 412
    invoke-virtual {v4}, Lflix/com/vision/models/Movie;->getYear()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v4

    .line 416
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    const-string v4, "  \u00b7  "

    .line 420
    .line 421
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object p1

    .line 431
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    .line 433
    .line 434
    goto :goto_3

    .line 435
    :cond_4
    iget-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->y:Landroid/widget/TextView;

    .line 436
    .line 437
    iget-object v0, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->r:Lflix/com/vision/models/Movie;

    .line 438
    .line 439
    invoke-virtual {v0}, Lflix/com/vision/models/Movie;->getYear()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 444
    .line 445
    .line 446
    :catch_2
    :goto_3
    sget p1, Lflix/com/vision/R$id;->background_image_web:I

    .line 447
    .line 448
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 449
    .line 450
    .line 451
    move-result-object p1

    .line 452
    check-cast p1, Landroid/widget/ImageView;

    .line 453
    .line 454
    iput-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->t:Landroid/widget/ImageView;

    .line 455
    .line 456
    sget p1, Lflix/com/vision/R$id;->progress_web:I

    .line 457
    .line 458
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 459
    .line 460
    .line 461
    move-result-object p1

    .line 462
    check-cast p1, Landroid/widget/LinearLayout;

    .line 463
    .line 464
    iput-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->p:Landroid/widget/LinearLayout;

    .line 465
    .line 466
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 467
    .line 468
    .line 469
    move-result-object p1

    .line 470
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 471
    .line 472
    .line 473
    move-result-object p1

    .line 474
    iput-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->s:Landroid/view/View;

    .line 475
    .line 476
    const/16 v0, 0x404

    .line 477
    .line 478
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 479
    .line 480
    .line 481
    :try_start_4
    invoke-static {}, Lm4/D;->get()Lm4/D;

    .line 482
    .line 483
    .line 484
    move-result-object p1

    .line 485
    iget-object v0, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->r:Lflix/com/vision/models/Movie;

    .line 486
    .line 487
    invoke-virtual {v0}, Lflix/com/vision/models/Movie;->getImage_url()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    invoke-virtual {p1, v0}, Lm4/D;->load(Ljava/lang/String;)Lm4/J;

    .line 492
    .line 493
    .line 494
    move-result-object p1

    .line 495
    iget-object v0, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->u:Landroid/widget/ImageView;

    .line 496
    .line 497
    new-instance v3, LB4/W;

    .line 498
    .line 499
    invoke-direct {v3, p0}, LB4/W;-><init>(Lflix/com/vision/activities/player/WebPlayerActivitySuper;)V

    .line 500
    .line 501
    .line 502
    invoke-virtual {p1, v0, v3}, Lm4/J;->into(Landroid/widget/ImageView;Lm4/i;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 503
    .line 504
    .line 505
    goto :goto_4

    .line 506
    :catch_3
    move-exception p1

    .line 507
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 508
    .line 509
    .line 510
    :goto_4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 511
    .line 512
    .line 513
    move-result-object p1

    .line 514
    const-string v0, "poster"

    .line 515
    .line 516
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object p1

    .line 520
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 521
    .line 522
    .line 523
    move-result-object v0

    .line 524
    const-string v3, "title"

    .line 525
    .line 526
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 531
    .line 532
    .line 533
    move-result-object v3

    .line 534
    const-string v4, "title_episode"

    .line 535
    .line 536
    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v3

    .line 540
    iput-object v3, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->E:Ljava/lang/String;

    .line 541
    .line 542
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 543
    .line 544
    .line 545
    move-result-object v3

    .line 546
    const-string v4, "episode_number"

    .line 547
    .line 548
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 549
    .line 550
    .line 551
    move-result v3

    .line 552
    iput v3, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->G:I

    .line 553
    .line 554
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 555
    .line 556
    .line 557
    move-result-object v3

    .line 558
    const-string v4, "season_number"

    .line 559
    .line 560
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 561
    .line 562
    .line 563
    move-result v3

    .line 564
    iput v3, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->H:I

    .line 565
    .line 566
    iget-object v3, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->r:Lflix/com/vision/models/Movie;

    .line 567
    .line 568
    invoke-virtual {v3}, Lflix/com/vision/models/Movie;->isSeries()Z

    .line 569
    .line 570
    .line 571
    move-result v3

    .line 572
    if-nez v3, :cond_5

    .line 573
    .line 574
    iget-object v3, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->r:Lflix/com/vision/models/Movie;

    .line 575
    .line 576
    iget-boolean v3, v3, Lflix/com/vision/models/Movie;->anime:Z

    .line 577
    .line 578
    if-eqz v3, :cond_7

    .line 579
    .line 580
    :cond_5
    iget-object v3, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->E:Ljava/lang/String;

    .line 581
    .line 582
    if-eqz v3, :cond_6

    .line 583
    .line 584
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 585
    .line 586
    .line 587
    move-result v3

    .line 588
    if-nez v3, :cond_6

    .line 589
    .line 590
    iget-object v3, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->z:Landroid/widget/TextView;

    .line 591
    .line 592
    iget-object v4, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->E:Ljava/lang/String;

    .line 593
    .line 594
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    .line 596
    .line 597
    goto :goto_5

    .line 598
    :cond_6
    iget-object v3, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->z:Landroid/widget/TextView;

    .line 599
    .line 600
    new-instance v4, Ljava/lang/StringBuilder;

    .line 601
    .line 602
    const-string v5, "Episode "

    .line 603
    .line 604
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 605
    .line 606
    .line 607
    iget v5, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->G:I

    .line 608
    .line 609
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 610
    .line 611
    .line 612
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object v4

    .line 616
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 617
    .line 618
    .line 619
    :goto_5
    iget-object v3, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->z:Landroid/widget/TextView;

    .line 620
    .line 621
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 622
    .line 623
    .line 624
    :cond_7
    if-eqz v0, :cond_8

    .line 625
    .line 626
    iget-object v3, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->x:Landroid/widget/TextView;

    .line 627
    .line 628
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 629
    .line 630
    .line 631
    :cond_8
    if-eqz p1, :cond_9

    .line 632
    .line 633
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 634
    .line 635
    .line 636
    move-result v0

    .line 637
    if-nez v0, :cond_9

    .line 638
    .line 639
    :try_start_5
    invoke-static {}, Lm4/D;->get()Lm4/D;

    .line 640
    .line 641
    .line 642
    move-result-object v0

    .line 643
    invoke-virtual {v0, p1}, Lm4/D;->load(Ljava/lang/String;)Lm4/J;

    .line 644
    .line 645
    .line 646
    move-result-object p1

    .line 647
    invoke-virtual {p1}, Lm4/J;->fit()Lm4/J;

    .line 648
    .line 649
    .line 650
    move-result-object p1

    .line 651
    invoke-virtual {p1}, Lm4/J;->centerCrop()Lm4/J;

    .line 652
    .line 653
    .line 654
    move-result-object p1

    .line 655
    iget-object v0, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->t:Landroid/widget/ImageView;

    .line 656
    .line 657
    invoke-virtual {p1, v0}, Lm4/J;->into(Landroid/widget/ImageView;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 658
    .line 659
    .line 660
    goto :goto_6

    .line 661
    :catch_4
    move-exception p1

    .line 662
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 663
    .line 664
    .line 665
    :cond_9
    :goto_6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 666
    .line 667
    .line 668
    move-result-object p1

    .line 669
    const-string v0, "title_logo"

    .line 670
    .line 671
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 672
    .line 673
    .line 674
    move-result-object p1

    .line 675
    iput-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->J:Ljava/lang/String;

    .line 676
    .line 677
    if-eqz p1, :cond_a

    .line 678
    .line 679
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 680
    .line 681
    .line 682
    move-result p1

    .line 683
    if-nez p1, :cond_a

    .line 684
    .line 685
    iget-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->p:Landroid/widget/LinearLayout;

    .line 686
    .line 687
    const/16 v0, 0x8

    .line 688
    .line 689
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 690
    .line 691
    .line 692
    iput-boolean v2, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->e:Z

    .line 693
    .line 694
    :try_start_6
    invoke-static {}, Lm4/D;->get()Lm4/D;

    .line 695
    .line 696
    .line 697
    move-result-object p1

    .line 698
    iget-object v0, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->J:Ljava/lang/String;

    .line 699
    .line 700
    invoke-virtual {p1, v0}, Lm4/D;->load(Ljava/lang/String;)Lm4/J;

    .line 701
    .line 702
    .line 703
    move-result-object p1

    .line 704
    iget-object v0, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->v:Landroid/widget/ImageView;

    .line 705
    .line 706
    invoke-virtual {p1, v0}, Lm4/J;->into(Landroid/widget/ImageView;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 707
    .line 708
    .line 709
    goto :goto_7

    .line 710
    :catch_5
    move-exception p1

    .line 711
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 712
    .line 713
    .line 714
    :goto_7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 715
    .line 716
    .line 717
    move-result-object p1

    .line 718
    sget v0, Lflix/com/vision/R$anim;->fade_in_infinite:I

    .line 719
    .line 720
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 721
    .line 722
    .line 723
    move-result-object p1

    .line 724
    iput-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->b:Landroid/view/animation/Animation;

    .line 725
    .line 726
    :try_start_7
    iget-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->v:Landroid/widget/ImageView;

    .line 727
    .line 728
    const/high16 v0, 0x3f800000    # 1.0f

    .line 729
    .line 730
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 731
    .line 732
    .line 733
    iget-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->v:Landroid/widget/ImageView;

    .line 734
    .line 735
    iget-object v0, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->b:Landroid/view/animation/Animation;

    .line 736
    .line 737
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 738
    .line 739
    .line 740
    goto :goto_8

    .line 741
    :cond_a
    iget-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->p:Landroid/widget/LinearLayout;

    .line 742
    .line 743
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 744
    .line 745
    .line 746
    :catch_6
    :goto_8
    iget-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->r:Lflix/com/vision/models/Movie;

    .line 747
    .line 748
    if-nez p1, :cond_b

    .line 749
    .line 750
    const-string p1, "Error: Movie data missing."

    .line 751
    .line 752
    invoke-static {p0, p1, v2}, Lh5/i;->makeToastLong(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 753
    .line 754
    .line 755
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 756
    .line 757
    .line 758
    return-void

    .line 759
    :cond_b
    iget v0, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->H:I

    .line 760
    .line 761
    iget v3, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->G:I

    .line 762
    .line 763
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->isSeries()Z

    .line 764
    .line 765
    .line 766
    move-result v4

    .line 767
    const-string v5, "1"

    .line 768
    .line 769
    const-string v6, "tmdb"

    .line 770
    .line 771
    const-wide/16 v7, 0x0

    .line 772
    .line 773
    const-string v9, "video_id"

    .line 774
    .line 775
    const-string v10, "https://multiembed.mov/"

    .line 776
    .line 777
    if-eqz v4, :cond_e

    .line 778
    .line 779
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 780
    .line 781
    .line 782
    move-result-object v4

    .line 783
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 784
    .line 785
    .line 786
    move-result-object v4

    .line 787
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 788
    .line 789
    .line 790
    move-result-wide v10

    .line 791
    cmp-long v7, v10, v7

    .line 792
    .line 793
    if-eqz v7, :cond_c

    .line 794
    .line 795
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 796
    .line 797
    .line 798
    move-result-wide v7

    .line 799
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 800
    .line 801
    .line 802
    move-result-object p1

    .line 803
    invoke-virtual {v4, v9, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 804
    .line 805
    .line 806
    invoke-virtual {v4, v6, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 807
    .line 808
    .line 809
    goto :goto_9

    .line 810
    :cond_c
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getImdbID()Ljava/lang/String;

    .line 811
    .line 812
    .line 813
    move-result-object v5

    .line 814
    if-eqz v5, :cond_d

    .line 815
    .line 816
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getImdbID()Ljava/lang/String;

    .line 817
    .line 818
    .line 819
    move-result-object v5

    .line 820
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 821
    .line 822
    .line 823
    move-result v5

    .line 824
    if-nez v5, :cond_d

    .line 825
    .line 826
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getImdbID()Ljava/lang/String;

    .line 827
    .line 828
    .line 829
    move-result-object p1

    .line 830
    invoke-virtual {v4, v9, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 831
    .line 832
    .line 833
    :cond_d
    :goto_9
    const-string p1, "s"

    .line 834
    .line 835
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 836
    .line 837
    .line 838
    move-result-object v0

    .line 839
    invoke-virtual {v4, p1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 840
    .line 841
    .line 842
    const-string p1, "e"

    .line 843
    .line 844
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 845
    .line 846
    .line 847
    move-result-object v0

    .line 848
    invoke-virtual {v4, p1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 849
    .line 850
    .line 851
    goto :goto_a

    .line 852
    :cond_e
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 853
    .line 854
    .line 855
    move-result-object v0

    .line 856
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 857
    .line 858
    .line 859
    move-result-object v4

    .line 860
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getImdbID()Ljava/lang/String;

    .line 861
    .line 862
    .line 863
    move-result-object v0

    .line 864
    if-eqz v0, :cond_f

    .line 865
    .line 866
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getImdbID()Ljava/lang/String;

    .line 867
    .line 868
    .line 869
    move-result-object v0

    .line 870
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 871
    .line 872
    .line 873
    move-result v0

    .line 874
    if-nez v0, :cond_f

    .line 875
    .line 876
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getImdbID()Ljava/lang/String;

    .line 877
    .line 878
    .line 879
    move-result-object p1

    .line 880
    invoke-virtual {v4, v9, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 881
    .line 882
    .line 883
    goto :goto_a

    .line 884
    :cond_f
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 885
    .line 886
    .line 887
    move-result-wide v10

    .line 888
    cmp-long v0, v10, v7

    .line 889
    .line 890
    if-eqz v0, :cond_10

    .line 891
    .line 892
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 893
    .line 894
    .line 895
    move-result-wide v7

    .line 896
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 897
    .line 898
    .line 899
    move-result-object p1

    .line 900
    invoke-virtual {v4, v9, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 901
    .line 902
    .line 903
    invoke-virtual {v4, v6, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 904
    .line 905
    .line 906
    :cond_10
    :goto_a
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 907
    .line 908
    .line 909
    move-result-object p1

    .line 910
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 911
    .line 912
    .line 913
    move-result-object p1

    .line 914
    iput-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->q:Ljava/lang/String;

    .line 915
    .line 916
    iget-object v0, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->n:Landroid/webkit/WebView;

    .line 917
    .line 918
    if-eqz v0, :cond_11

    .line 919
    .line 920
    if-eqz p1, :cond_11

    .line 921
    .line 922
    const/high16 p1, -0x1000000

    .line 923
    .line 924
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 925
    .line 926
    .line 927
    iget-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->n:Landroid/webkit/WebView;

    .line 928
    .line 929
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 930
    .line 931
    .line 932
    move-result-object p1

    .line 933
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 934
    .line 935
    .line 936
    iget-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->n:Landroid/webkit/WebView;

    .line 937
    .line 938
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 939
    .line 940
    .line 941
    move-result-object p1

    .line 942
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 943
    .line 944
    .line 945
    iget-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->n:Landroid/webkit/WebView;

    .line 946
    .line 947
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 948
    .line 949
    .line 950
    move-result-object p1

    .line 951
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 952
    .line 953
    .line 954
    iget-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->n:Landroid/webkit/WebView;

    .line 955
    .line 956
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 957
    .line 958
    .line 959
    move-result-object p1

    .line 960
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 961
    .line 962
    .line 963
    iget-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->n:Landroid/webkit/WebView;

    .line 964
    .line 965
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 966
    .line 967
    .line 968
    move-result-object p1

    .line 969
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 970
    .line 971
    .line 972
    iget-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->n:Landroid/webkit/WebView;

    .line 973
    .line 974
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 975
    .line 976
    .line 977
    move-result-object p1

    .line 978
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 979
    .line 980
    .line 981
    iget-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->n:Landroid/webkit/WebView;

    .line 982
    .line 983
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 984
    .line 985
    .line 986
    move-result-object p1

    .line 987
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 988
    .line 989
    .line 990
    iget-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->n:Landroid/webkit/WebView;

    .line 991
    .line 992
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 993
    .line 994
    .line 995
    move-result-object p1

    .line 996
    sget-object v0, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    .line 997
    .line 998
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 999
    .line 1000
    .line 1001
    iget-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->n:Landroid/webkit/WebView;

    .line 1002
    .line 1003
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 1004
    .line 1005
    .line 1006
    move-result-object p1

    .line 1007
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 1008
    .line 1009
    .line 1010
    iget-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->n:Landroid/webkit/WebView;

    .line 1011
    .line 1012
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 1013
    .line 1014
    .line 1015
    move-result-object p1

    .line 1016
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 1017
    .line 1018
    .line 1019
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    .line 1020
    .line 1021
    .line 1022
    move-result-object p1

    .line 1023
    invoke-virtual {p1, v2}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 1024
    .line 1025
    .line 1026
    iget-object v0, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->n:Landroid/webkit/WebView;

    .line 1027
    .line 1028
    invoke-virtual {p1, v0, v2}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 1029
    .line 1030
    .line 1031
    iget-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->n:Landroid/webkit/WebView;

    .line 1032
    .line 1033
    new-instance v0, LB4/Y;

    .line 1034
    .line 1035
    invoke-direct {v0, p0}, LB4/Y;-><init>(Lflix/com/vision/activities/player/WebPlayerActivitySuper;)V

    .line 1036
    .line 1037
    .line 1038
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1039
    .line 1040
    .line 1041
    iget-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->n:Landroid/webkit/WebView;

    .line 1042
    .line 1043
    new-instance v0, LB4/X;

    .line 1044
    .line 1045
    invoke-direct {v0, p0}, LB4/X;-><init>(Lflix/com/vision/activities/player/WebPlayerActivitySuper;)V

    .line 1046
    .line 1047
    .line 1048
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1049
    .line 1050
    .line 1051
    iget-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->n:Landroid/webkit/WebView;

    .line 1052
    .line 1053
    iget-object v0, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->q:Ljava/lang/String;

    .line 1054
    .line 1055
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1056
    .line 1057
    .line 1058
    iget-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->p:Landroid/widget/LinearLayout;

    .line 1059
    .line 1060
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1061
    .line 1062
    .line 1063
    goto :goto_b

    .line 1064
    :cond_11
    const-string p1, "Error: Could not load player."

    .line 1065
    .line 1066
    invoke-static {p0, p1, v2}, Lh5/i;->makeToastLong(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1067
    .line 1068
    .line 1069
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1070
    .line 1071
    .line 1072
    :goto_b
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Le/v;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->n:Landroid/webkit/WebView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v1, "about:blank"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->n:Landroid/webkit/WebView;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->n:Landroid/webkit/WebView;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->n:Landroid/webkit/WebView;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->n:Landroid/webkit/WebView;

    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/H;->onResume()V

    .line 2
    .line 3
    .line 4
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
    iget-object p1, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->s:Landroid/view/View;

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
    iget-boolean v0, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->K:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->f:Landroid/widget/FrameLayout;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->L:Landroid/view/View;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->e()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->K:Z

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-static {p0, v1}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const-string v3, "Exit"

    .line 37
    .line 38
    invoke-virtual {v2, v3}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v1}, Landroid/app/DialogFragment;->setCancelable(Z)V

    .line 42
    .line 43
    .line 44
    const-string v3, "Do you really want to stop playback and exit ?"

    .line 45
    .line 46
    invoke-virtual {v2, v3}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    new-instance v3, LB4/U;

    .line 50
    .line 51
    const/4 v4, 0x0

    .line 52
    invoke-direct {v3, p0, v4}, LB4/U;-><init>(Lflix/com/vision/activities/player/WebPlayerActivitySuper;I)V

    .line 53
    .line 54
    .line 55
    const-string v4, "CANCEL"

    .line 56
    .line 57
    invoke-virtual {v2, v4, v3}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 58
    .line 59
    .line 60
    new-instance v3, LB4/U;

    .line 61
    .line 62
    const/4 v4, 0x1

    .line 63
    invoke-direct {v3, p0, v4}, LB4/U;-><init>(Lflix/com/vision/activities/player/WebPlayerActivitySuper;I)V

    .line 64
    .line 65
    .line 66
    const-string v4, "YES"

    .line 67
    .line 68
    invoke-virtual {v2, v4, v3}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 69
    .line 70
    .line 71
    :try_start_0
    const-string v3, ""

    .line 72
    .line 73
    invoke-virtual {v2, v0, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    iput-boolean v1, p0, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->K:Z

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 81
    .line 82
    .line 83
    :goto_0
    return-void
.end method
