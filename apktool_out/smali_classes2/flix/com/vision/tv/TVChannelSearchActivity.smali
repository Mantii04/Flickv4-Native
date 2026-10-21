.class public Lflix/com/vision/tv/TVChannelSearchActivity;
.super Le/v;
.source "SourceFile"


# instance fields
.field public b:Lflix/com/vision/materialsearchview/MaterialSearchView;

.field public e:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

.field public f:LC4/u;

.field public j:Ljava/util/ArrayList;

.field public m:Landroid/app/ProgressDialog;


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
.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/tv/TVChannelSearchActivity;->b:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lflix/com/vision/materialsearchview/MaterialSearchView;->isOpen()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lflix/com/vision/tv/TVChannelSearchActivity;->b:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 10
    .line 11
    invoke-virtual {v0}, Lflix/com/vision/materialsearchview/MaterialSearchView;->closeSearch()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 19
    .line 20
    .line 21
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
    new-instance p1, Lh5/j;

    .line 16
    .line 17
    invoke-direct {p1}, Lh5/j;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance p1, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lflix/com/vision/tv/TVChannelSearchActivity;->j:Ljava/util/ArrayList;

    .line 26
    .line 27
    sget p1, Lflix/com/vision/R$layout;->activity_tv_channels_search_import:I

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Le/v;->setContentView(I)V

    .line 30
    .line 31
    .line 32
    new-instance v0, LC4/u;

    .line 33
    .line 34
    iget-object v2, p0, Lflix/com/vision/tv/TVChannelSearchActivity;->j:Ljava/util/ArrayList;

    .line 35
    .line 36
    const/4 v4, 0x1

    .line 37
    const/16 v5, 0x64

    .line 38
    .line 39
    move-object v3, p0

    .line 40
    move-object v1, p0

    .line 41
    invoke-direct/range {v0 .. v5}, LC4/u;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/app/Activity;II)V

    .line 42
    .line 43
    .line 44
    iput-object v0, v1, Lflix/com/vision/tv/TVChannelSearchActivity;->f:LC4/u;

    .line 45
    .line 46
    sget p1, Lflix/com/vision/R$id;->search_view:I

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 53
    .line 54
    iput-object p1, v1, Lflix/com/vision/tv/TVChannelSearchActivity;->b:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    invoke-virtual {p1, v0}, Lflix/com/vision/materialsearchview/MaterialSearchView;->setShouldKeepHistory(Z)V

    .line 58
    .line 59
    .line 60
    iget-object p1, v1, Lflix/com/vision/tv/TVChannelSearchActivity;->b:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 61
    .line 62
    const/4 v0, 0x1

    .line 63
    invoke-virtual {p1, v0}, Lflix/com/vision/materialsearchview/MaterialSearchView;->setTintAlpha(I)V

    .line 64
    .line 65
    .line 66
    iget-object p1, v1, Lflix/com/vision/tv/TVChannelSearchActivity;->b:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 67
    .line 68
    const-string v2, "Search in all channels..."

    .line 69
    .line 70
    invoke-virtual {p1, v2}, Lflix/com/vision/materialsearchview/MaterialSearchView;->setHint(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    iget-object p1, v1, Lflix/com/vision/tv/TVChannelSearchActivity;->b:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 74
    .line 75
    new-instance v2, Lf5/G;

    .line 76
    .line 77
    invoke-direct {v2, p0}, Lf5/G;-><init>(Lflix/com/vision/tv/TVChannelSearchActivity;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v2}, Lflix/com/vision/materialsearchview/MaterialSearchView;->setOnQueryTextListener(Lflix/com/vision/materialsearchview/MaterialSearchView$OnQueryTextListener;)V

    .line 81
    .line 82
    .line 83
    sget p1, Lflix/com/vision/R$id;->activity_player:I

    .line 84
    .line 85
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 90
    .line 91
    sget p1, Lflix/com/vision/R$id;->toolbar:I

    .line 92
    .line 93
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 98
    .line 99
    invoke-virtual {p0, p1}, Le/v;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Le/v;->getSupportActionBar()Le/b;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p1, v0}, Le/b;->setDisplayHomeAsUpEnabled(Z)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Le/v;->getSupportActionBar()Le/b;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    const-string v0, "TV Channel Search"

    .line 114
    .line 115
    invoke-virtual {p1, v0}, Le/b;->setTitle(Ljava/lang/CharSequence;)V

    .line 116
    .line 117
    .line 118
    sget p1, Lflix/com/vision/R$id;->recyclerview_categories:I

    .line 119
    .line 120
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    check-cast p1, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 125
    .line 126
    iput-object p1, v1, Lflix/com/vision/tv/TVChannelSearchActivity;->e:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 127
    .line 128
    iget-object v0, v1, Lflix/com/vision/tv/TVChannelSearchActivity;->f:LC4/u;

    .line 129
    .line 130
    invoke-virtual {p1, v0}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->setAdapter(Lm1/V;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-static {p1}, Lb/c;->d(Landroid/view/Display;)Landroid/util/DisplayMetrics;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {p0}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 154
    .line 155
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 156
    .line 157
    int-to-float p1, p1

    .line 158
    div-float/2addr p1, v0

    .line 159
    const/16 v0, 0x8c

    .line 160
    .line 161
    int-to-float v0, v0

    .line 162
    div-float/2addr p1, v0

    .line 163
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    new-instance v0, Lflix/com/vision/helpers/CenterGridLayoutManager;

    .line 168
    .line 169
    invoke-direct {v0, p0, p1}, Lflix/com/vision/helpers/CenterGridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 170
    .line 171
    .line 172
    iget-object p1, v1, Lflix/com/vision/tv/TVChannelSearchActivity;->e:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 173
    .line 174
    invoke-virtual {p1, v0}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 175
    .line 176
    .line 177
    iget-object p1, v1, Lflix/com/vision/tv/TVChannelSearchActivity;->e:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 178
    .line 179
    new-instance v0, LT4/l;

    .line 180
    .line 181
    const/4 v2, 0x5

    .line 182
    invoke-direct {v0, v2}, LT4/l;-><init>(I)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1, v0}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->addItemDecoration(Lm1/d0;)V

    .line 186
    .line 187
    .line 188
    sget-boolean p1, Lflix/com/vision/App;->I:Z

    .line 189
    .line 190
    if-eqz p1, :cond_0

    .line 191
    .line 192
    sget p1, Lflix/com/vision/R$id;->toast_view:I

    .line 193
    .line 194
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 199
    .line 200
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    .line 201
    .line 202
    const/high16 v0, 0x3f800000    # 1.0f

    .line 203
    .line 204
    const/4 v2, 0x0

    .line 205
    invoke-direct {p1, v0, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 206
    .line 207
    .line 208
    sget p1, Lflix/com/vision/R$id;->customToastText:I

    .line 209
    .line 210
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    check-cast p1, Landroid/widget/TextView;

    .line 215
    .line 216
    new-instance p1, Landroid/os/Handler;

    .line 217
    .line 218
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 219
    .line 220
    .line 221
    :cond_0
    new-instance p1, Landroid/os/Handler;

    .line 222
    .line 223
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 224
    .line 225
    .line 226
    new-instance v0, Lf1/a;

    .line 227
    .line 228
    const/4 v2, 0x6

    .line 229
    invoke-direct {v0, p0, v2}, Lf1/a;-><init>(Ljava/lang/Object;I)V

    .line 230
    .line 231
    .line 232
    const-wide/16 v2, 0x1f4

    .line 233
    .line 234
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 235
    .line 236
    .line 237
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
    sget v1, Lflix/com/vision/R$menu;->adult_search_menu:I

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

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget v1, Lflix/com/vision/R$id;->action_search:I

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lflix/com/vision/tv/TVChannelSearchActivity;->b:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 10
    .line 11
    invoke-virtual {v0}, Lflix/com/vision/materialsearchview/MaterialSearchView;->openSearch()V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1
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

.method public playChannel(Lflix/com/vision/models/ChannelTv;)V
    .locals 8

    .line 1
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    iget-object v1, v1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 6
    .line 7
    const-string v2, "player_index"

    .line 8
    .line 9
    const/4 v7, 0x0

    .line 10
    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    new-instance v1, Lflix/com/vision/models/StreamUrl;

    .line 17
    .line 18
    invoke-direct {v1}, Lflix/com/vision/models/StreamUrl;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object v3, p1, Lflix/com/vision/models/ChannelTv;->url:Ljava/lang/String;

    .line 22
    .line 23
    iput-object v3, v1, Lflix/com/vision/models/StreamUrl;->stream_url:Ljava/lang/String;

    .line 24
    .line 25
    :try_start_0
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    iget-object v3, v3, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 30
    .line 31
    invoke-interface {v3, v2, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    const/4 v4, 0x1

    .line 36
    if-ne v3, v4, :cond_0

    .line 37
    .line 38
    iget-object v2, p1, Lflix/com/vision/models/ChannelTv;->label:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v3, v1, Lflix/com/vision/models/StreamUrl;->stream_url:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v4, v1, Lflix/com/vision/models/StreamUrl;->player_user_agent:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v5, v1, Lflix/com/vision/models/StreamUrl;->player_referer:Ljava/lang/String;

    .line 45
    .line 46
    const/4 v6, -0x1

    .line 47
    move-object v1, p0

    .line 48
    invoke-static/range {v1 .. v6}, LT4/o;->PlayMXPlayer(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    iget-object v3, v3, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 57
    .line 58
    invoke-interface {v3, v2, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    const/4 v4, 0x2

    .line 63
    if-ne v3, v4, :cond_1

    .line 64
    .line 65
    iget-object v2, p1, Lflix/com/vision/models/ChannelTv;->label:Ljava/lang/String;

    .line 66
    .line 67
    iget-object v3, v1, Lflix/com/vision/models/StreamUrl;->stream_url:Ljava/lang/String;

    .line 68
    .line 69
    iget-object v4, v1, Lflix/com/vision/models/StreamUrl;->player_user_agent:Ljava/lang/String;

    .line 70
    .line 71
    iget-object v5, v1, Lflix/com/vision/models/StreamUrl;->player_referer:Ljava/lang/String;

    .line 72
    .line 73
    const/4 v6, -0x1

    .line 74
    move-object v1, p0

    .line 75
    invoke-static/range {v1 .. v6}, LT4/o;->PlayVLC(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_1
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    iget-object v4, v4, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 84
    .line 85
    invoke-interface {v4, v2, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    const/4 v4, 0x3

    .line 90
    if-ne v2, v4, :cond_3

    .line 91
    .line 92
    iget-object v0, p1, Lflix/com/vision/models/ChannelTv;->label:Ljava/lang/String;

    .line 93
    .line 94
    iget-object v1, v1, Lflix/com/vision/models/StreamUrl;->stream_url:Ljava/lang/String;

    .line 95
    .line 96
    invoke-static {p0, v0, v1}, LT4/o;->PlayXPlayer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :catch_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    const-string v1, "Failed to load channel"

    .line 105
    .line 106
    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_2
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    .line 115
    .line 116
    const-class v2, Lflix/com/vision/activities/player/PlayerActivityLiveTV;

    .line 117
    .line 118
    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 119
    .line 120
    .line 121
    const-string v2, "channel"

    .line 122
    .line 123
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :catch_1
    move-exception v0

    .line 131
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 132
    .line 133
    .line 134
    :cond_3
    :goto_0
    return-void
.end method
