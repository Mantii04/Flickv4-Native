.class public Lflix/com/vision/activities/AnimeSearchResultActivityClassic;
.super Lflix/com/vision/activities/base/a;
.source "SourceFile"

# interfaces
.implements LU4/d;


# instance fields
.field public b:Landroid/widget/ProgressBar;

.field public e:Ljava/util/ArrayList;

.field public f:LC4/k;

.field public j:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

.field public final m:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lflix/com/vision/activities/base/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x64

    .line 5
    .line 6
    iput v0, p0, Lflix/com/vision/activities/AnimeSearchResultActivityClassic;->m:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lflix/com/vision/activities/base/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lflix/com/vision/R$layout;->activity_search_result_activty_anime:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Le/v;->setContentView(I)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lflix/com/vision/activities/AnimeSearchResultActivityClassic;->e:Ljava/util/ArrayList;

    .line 15
    .line 16
    new-instance v0, LC4/k;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v2, p0, Lflix/com/vision/activities/AnimeSearchResultActivityClassic;->e:Ljava/util/ArrayList;

    .line 23
    .line 24
    iget v4, p0, Lflix/com/vision/activities/AnimeSearchResultActivityClassic;->m:I

    .line 25
    .line 26
    move-object v5, p0

    .line 27
    move-object v3, p0

    .line 28
    invoke-direct/range {v0 .. v5}, LC4/k;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/app/Activity;ILU4/d;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, v3, Lflix/com/vision/activities/AnimeSearchResultActivityClassic;->f:LC4/k;

    .line 32
    .line 33
    sget p1, Lflix/com/vision/R$id;->recyclerview:I

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 40
    .line 41
    iput-object p1, v3, Lflix/com/vision/activities/AnimeSearchResultActivityClassic;->j:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 42
    .line 43
    sget p1, Lflix/com/vision/R$id;->loader:I

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Landroid/widget/ProgressBar;

    .line 50
    .line 51
    iput-object p1, v3, Lflix/com/vision/activities/AnimeSearchResultActivityClassic;->b:Landroid/widget/ProgressBar;

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {p1}, Lb/c;->d(Landroid/view/Display;)Landroid/util/DisplayMetrics;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p0}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 74
    .line 75
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 76
    .line 77
    int-to-float p1, p1

    .line 78
    div-float/2addr p1, v0

    .line 79
    const/high16 v0, 0x430c0000    # 140.0f

    .line 80
    .line 81
    div-float/2addr p1, v0

    .line 82
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    new-instance v0, Lflix/com/vision/helpers/CenterGridLayoutManager;

    .line 87
    .line 88
    invoke-direct {v0, p0, p1}, Lflix/com/vision/helpers/CenterGridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 89
    .line 90
    .line 91
    iget-object p1, v3, Lflix/com/vision/activities/AnimeSearchResultActivityClassic;->j:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 94
    .line 95
    .line 96
    iget-object p1, v3, Lflix/com/vision/activities/AnimeSearchResultActivityClassic;->j:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 97
    .line 98
    new-instance v0, LT4/k;

    .line 99
    .line 100
    const/16 v1, 0xc

    .line 101
    .line 102
    invoke-direct {v0, v1}, LT4/k;-><init>(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v0}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->addItemDecoration(Lm1/d0;)V

    .line 106
    .line 107
    .line 108
    iget-object p1, v3, Lflix/com/vision/activities/AnimeSearchResultActivityClassic;->j:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 109
    .line 110
    iget-object v0, v3, Lflix/com/vision/activities/AnimeSearchResultActivityClassic;->f:LC4/k;

    .line 111
    .line 112
    invoke-virtual {p1, v0}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->setAdapter(Lm1/V;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    const-string v0, "query"

    .line 120
    .line 121
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    sget v0, Lflix/com/vision/R$id;->toolbar:I

    .line 126
    .line 127
    invoke-virtual {p0, v0}, Le/v;->findViewById(I)Landroid/view/View;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 132
    .line 133
    invoke-virtual {p0, v0}, Le/v;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Le/v;->getSupportActionBar()Le/b;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    const-string v2, "Results for \""

    .line 143
    .line 144
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v2, "\""

    .line 151
    .line 152
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {v0, v1}, Le/b;->setTitle(Ljava/lang/CharSequence;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0}, Le/v;->getSupportActionBar()Le/b;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    const/4 v1, 0x1

    .line 167
    invoke-virtual {v0, v1}, Le/b;->setDisplayHomeAsUpEnabled(Z)V

    .line 168
    .line 169
    .line 170
    const-string v0, "\'"

    .line 171
    .line 172
    const-string v2, ""

    .line 173
    .line 174
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    iget-object v0, v3, Lflix/com/vision/activities/AnimeSearchResultActivityClassic;->e:Ljava/util/ArrayList;

    .line 179
    .line 180
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    iget-object v2, v2, Lflix/com/vision/App;->r:LP4/e;

    .line 185
    .line 186
    invoke-virtual {v2, p1}, LP4/e;->searchGoAnime(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 191
    .line 192
    .line 193
    iget-object p1, v3, Lflix/com/vision/activities/AnimeSearchResultActivityClassic;->e:Ljava/util/ArrayList;

    .line 194
    .line 195
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    const/16 v2, 0x8

    .line 200
    .line 201
    if-ge p1, v1, :cond_0

    .line 202
    .line 203
    iget-object p1, v3, Lflix/com/vision/activities/AnimeSearchResultActivityClassic;->b:Landroid/widget/ProgressBar;

    .line 204
    .line 205
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 206
    .line 207
    .line 208
    new-instance p1, Le/r;

    .line 209
    .line 210
    invoke-direct {p1, p0}, Le/r;-><init>(Landroid/content/Context;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1}, Le/r;->create()Le/s;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    sget v0, Lflix/com/vision/R$string;->no_result_mess:I

    .line 218
    .line 219
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-virtual {p1, v0}, Le/s;->setTitle(Ljava/lang/CharSequence;)V

    .line 224
    .line 225
    .line 226
    sget v0, Lflix/com/vision/R$drawable;->ic_action_sentiment_very_dissatisfied:I

    .line 227
    .line 228
    invoke-virtual {p1, v0}, Le/s;->setIcon(I)V

    .line 229
    .line 230
    .line 231
    sget v0, Lflix/com/vision/R$string;->go_back_check_query_mess:I

    .line 232
    .line 233
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-virtual {p1, v0}, Le/s;->setMessage(Ljava/lang/CharSequence;)V

    .line 238
    .line 239
    .line 240
    sget v0, Lflix/com/vision/R$string;->ok_label:I

    .line 241
    .line 242
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    new-instance v1, Ly4/g;

    .line 247
    .line 248
    invoke-direct {v1, p0}, Ly4/g;-><init>(Lflix/com/vision/activities/AnimeSearchResultActivityClassic;)V

    .line 249
    .line 250
    .line 251
    const/4 v4, -0x3

    .line 252
    invoke-virtual {p1, v4, v0, v1}, Le/s;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 253
    .line 254
    .line 255
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    .line 257
    .line 258
    goto :goto_0

    .line 259
    :catch_0
    move-exception v0

    .line 260
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 261
    .line 262
    .line 263
    :goto_0
    const/4 v0, 0x0

    .line 264
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 265
    .line 266
    .line 267
    new-instance v0, Ly4/h;

    .line 268
    .line 269
    invoke-direct {v0, p0}, Ly4/h;-><init>(Lflix/com/vision/activities/AnimeSearchResultActivityClassic;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 273
    .line 274
    .line 275
    :cond_0
    iget-object p1, v3, Lflix/com/vision/activities/AnimeSearchResultActivityClassic;->e:Ljava/util/ArrayList;

    .line 276
    .line 277
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 278
    .line 279
    .line 280
    iget-object p1, v3, Lflix/com/vision/activities/AnimeSearchResultActivityClassic;->j:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 281
    .line 282
    invoke-virtual {p1}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->getAdapter()Lm1/V;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    invoke-virtual {p1}, Lm1/V;->notifyDataSetChanged()V

    .line 287
    .line 288
    .line 289
    iget-object p1, v3, Lflix/com/vision/activities/AnimeSearchResultActivityClassic;->j:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 290
    .line 291
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 292
    .line 293
    .line 294
    iget-object p1, v3, Lflix/com/vision/activities/AnimeSearchResultActivityClassic;->b:Landroid/widget/ProgressBar;

    .line 295
    .line 296
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 297
    .line 298
    .line 299
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/v;->getMenuInflater()Landroid/view/MenuInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Lflix/com/vision/R$menu;->anime_search_menu:I

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    return p1
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lflix/com/vision/activities/base/a;->onDestroy()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const v0, 0x102002c

    .line 6
    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 11
    .line 12
    .line 13
    :cond_0
    sget v0, Lflix/com/vision/R$id;->action_sort_anime:I

    .line 14
    .line 15
    if-ne p1, v0, :cond_1

    .line 16
    .line 17
    new-instance p1, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lflix/com/vision/activities/AnimeSearchResultActivityClassic;->e:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lflix/com/vision/activities/AnimeSearchResultActivityClassic;->e:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lflix/com/vision/activities/AnimeSearchResultActivityClassic;->f:LC4/k;

    .line 33
    .line 34
    invoke-virtual {v0}, Lm1/V;->notifyDataSetChanged()V

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 38
    .line 39
    .line 40
    new-instance v0, Landroid/os/Handler;

    .line 41
    .line 42
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 43
    .line 44
    .line 45
    new-instance v1, Ly4/i;

    .line 46
    .line 47
    invoke-direct {v1, p0, p1}, Ly4/i;-><init>(Lflix/com/vision/activities/AnimeSearchResultActivityClassic;Ljava/util/ArrayList;)V

    .line 48
    .line 49
    .line 50
    const-wide/16 v2, 0x12c

    .line 51
    .line 52
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 53
    .line 54
    .line 55
    :cond_1
    const/4 p1, 0x1

    .line 56
    return p1
.end method

.method public onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/H;->onPause()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lflix/com/vision/activities/base/a;->onResume()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public openAnime(Lflix/com/vision/models/Anime;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lflix/com/vision/activities/AnimeDetailActivity;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "anime"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const/high16 p1, 0x10000000

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
