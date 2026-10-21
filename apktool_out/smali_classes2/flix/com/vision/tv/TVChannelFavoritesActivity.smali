.class public Lflix/com/vision/tv/TVChannelFavoritesActivity;
.super Le/v;
.source "SourceFile"


# instance fields
.field public b:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

.field public e:LC4/u;

.field public f:Ljava/util/ArrayList;


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
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

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
    iput-object p1, p0, Lflix/com/vision/tv/TVChannelFavoritesActivity;->f:Ljava/util/ArrayList;

    .line 26
    .line 27
    sget p1, Lflix/com/vision/R$layout;->activity_tv_channels_search_import:I

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Le/v;->setContentView(I)V

    .line 30
    .line 31
    .line 32
    sget p1, Lflix/com/vision/R$id;->toolbar:I

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Le/v;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Le/v;->getSupportActionBar()Le/b;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const/4 v0, 0x1

    .line 48
    invoke-virtual {p1, v0}, Le/b;->setDisplayHomeAsUpEnabled(Z)V

    .line 49
    .line 50
    .line 51
    :try_start_0
    invoke-virtual {p0}, Le/v;->getSupportActionBar()Le/b;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const-string v0, "FAVORITES"

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Le/b;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    :catch_0
    sget p1, Lflix/com/vision/R$id;->recyclerview_categories:I

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 67
    .line 68
    iput-object p1, p0, Lflix/com/vision/tv/TVChannelFavoritesActivity;->b:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-static {p1}, Lb/c;->d(Landroid/view/Display;)Landroid/util/DisplayMetrics;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p0}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 91
    .line 92
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 93
    .line 94
    int-to-float p1, p1

    .line 95
    div-float/2addr p1, v0

    .line 96
    const/16 v0, 0x8c

    .line 97
    .line 98
    int-to-float v0, v0

    .line 99
    div-float/2addr p1, v0

    .line 100
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    new-instance v0, Lflix/com/vision/helpers/CenterGridLayoutManager;

    .line 105
    .line 106
    invoke-direct {v0, p0, p1}, Lflix/com/vision/helpers/CenterGridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lflix/com/vision/tv/TVChannelFavoritesActivity;->b:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 110
    .line 111
    invoke-virtual {p1, v0}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 112
    .line 113
    .line 114
    iget-object p1, p0, Lflix/com/vision/tv/TVChannelFavoritesActivity;->b:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 115
    .line 116
    new-instance v0, LT4/l;

    .line 117
    .line 118
    const/4 v1, 0x5

    .line 119
    invoke-direct {v0, v1}, LT4/l;-><init>(I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v0}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->addItemDecoration(Lm1/d0;)V

    .line 123
    .line 124
    .line 125
    iget-object p1, p0, Lflix/com/vision/tv/TVChannelFavoritesActivity;->f:Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    iget-object v0, v0, Lflix/com/vision/App;->r:LP4/e;

    .line 132
    .line 133
    invoke-virtual {v0}, LP4/e;->getFavoritesChannels()Ljava/util/ArrayList;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 138
    .line 139
    .line 140
    new-instance v1, LC4/u;

    .line 141
    .line 142
    iget-object v3, p0, Lflix/com/vision/tv/TVChannelFavoritesActivity;->f:Ljava/util/ArrayList;

    .line 143
    .line 144
    const/4 v5, 0x1

    .line 145
    const/16 v6, 0x64

    .line 146
    .line 147
    move-object v4, p0

    .line 148
    move-object v2, p0

    .line 149
    invoke-direct/range {v1 .. v6}, LC4/u;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/app/Activity;II)V

    .line 150
    .line 151
    .line 152
    iput-object v1, v2, Lflix/com/vision/tv/TVChannelFavoritesActivity;->e:LC4/u;

    .line 153
    .line 154
    iget-object p1, v2, Lflix/com/vision/tv/TVChannelFavoritesActivity;->b:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 155
    .line 156
    invoke-virtual {p1, v1}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->setAdapter(Lm1/V;)V

    .line 157
    .line 158
    .line 159
    iget-object p1, v2, Lflix/com/vision/tv/TVChannelFavoritesActivity;->e:LC4/u;

    .line 160
    .line 161
    invoke-virtual {p1}, Lm1/V;->notifyDataSetChanged()V

    .line 162
    .line 163
    .line 164
    sget-boolean p1, Lflix/com/vision/App;->I:Z

    .line 165
    .line 166
    if-eqz p1, :cond_0

    .line 167
    .line 168
    sget p1, Lflix/com/vision/R$id;->toast_view:I

    .line 169
    .line 170
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 175
    .line 176
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    .line 177
    .line 178
    const/high16 v0, 0x3f800000    # 1.0f

    .line 179
    .line 180
    const/4 v1, 0x0

    .line 181
    invoke-direct {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 182
    .line 183
    .line 184
    sget p1, Lflix/com/vision/R$id;->customToastText:I

    .line 185
    .line 186
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    check-cast p1, Landroid/widget/TextView;

    .line 191
    .line 192
    new-instance p1, Landroid/os/Handler;

    .line 193
    .line 194
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 195
    .line 196
    .line 197
    :cond_0
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
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
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
