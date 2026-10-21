.class public Lflix/com/vision/tv/ChannelsListActivity;
.super Lflix/com/vision/activities/base/a;
.source "SourceFile"


# static fields
.field public static final synthetic x:I


# instance fields
.field public b:Ljava/util/HashSet;

.field public e:Landroid/widget/RelativeLayout;

.field public f:Landroid/widget/RelativeLayout;

.field public j:Landroid/widget/RelativeLayout;

.field public m:Lh5/j;

.field public n:Landroid/graphics/Typeface;

.field public p:Landroid/widget/TextView;

.field public q:Landroid/widget/LinearLayout;

.field public r:Landroid/widget/LinearLayout;

.field public s:LC4/u;

.field public t:LC4/u;

.field public u:Landroidx/recyclerview/widget/RecyclerView;

.field public v:Landroidx/recyclerview/widget/RecyclerView;

.field public w:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lflix/com/vision/activities/base/a;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lflix/com/vision/tv/ChannelsListActivity;->b:Ljava/util/HashSet;

    .line 10
    .line 11
    const-string v0, ""

    .line 12
    .line 13
    iput-object v0, p0, Lflix/com/vision/tv/ChannelsListActivity;->w:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public channelLongPress(ILjava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lflix/com/vision/models/ChannelTv;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lflix/com/vision/models/ChannelTv;

    .line 6
    .line 7
    iget-object p2, p0, Lflix/com/vision/tv/ChannelsListActivity;->b:Ljava/util/HashSet;

    .line 8
    .line 9
    iget-object v0, p1, Lflix/com/vision/models/ChannelTv;->label:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    const-string v0, ""

    .line 16
    .line 17
    const-string v1, "PLAY"

    .line 18
    .line 19
    const-string v2, "What would you like to Do?"

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-static {p0, v3}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    iget-object v4, p1, Lflix/com/vision/models/ChannelTv;->label:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v3, v4}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v2}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    new-instance v2, Lf5/b;

    .line 41
    .line 42
    const/4 v4, 0x0

    .line 43
    invoke-direct {v2, p0, p1, v4}, Lf5/b;-><init>(Lflix/com/vision/tv/ChannelsListActivity;Lflix/com/vision/models/ChannelTv;I)V

    .line 44
    .line 45
    .line 46
    const-string v4, "REMOVE FAVORITE"

    .line 47
    .line 48
    invoke-virtual {v3, v4, v2}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 49
    .line 50
    .line 51
    new-instance v2, Lf5/b;

    .line 52
    .line 53
    const/4 v4, 0x1

    .line 54
    invoke-direct {v2, p0, p1, v4}, Lf5/b;-><init>(Lflix/com/vision/tv/ChannelsListActivity;Lflix/com/vision/models/ChannelTv;I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v1, v2}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 58
    .line 59
    .line 60
    :try_start_0
    invoke-virtual {v3, p2, v0}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :catch_0
    move-exception p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-static {p0, v3}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    iget-object v4, p1, Lflix/com/vision/models/ChannelTv;->label:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v3, v4}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v2}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    new-instance v2, Lf5/b;

    .line 86
    .line 87
    const/4 v4, 0x2

    .line 88
    invoke-direct {v2, p0, p1, v4}, Lf5/b;-><init>(Lflix/com/vision/tv/ChannelsListActivity;Lflix/com/vision/models/ChannelTv;I)V

    .line 89
    .line 90
    .line 91
    const-string v4, "ADD TO FAVORITES"

    .line 92
    .line 93
    invoke-virtual {v3, v4, v2}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 94
    .line 95
    .line 96
    new-instance v2, Lf5/b;

    .line 97
    .line 98
    const/4 v4, 0x3

    .line 99
    invoke-direct {v2, p0, p1, v4}, Lf5/b;-><init>(Lflix/com/vision/tv/ChannelsListActivity;Lflix/com/vision/models/ChannelTv;I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3, v1, v2}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 103
    .line 104
    .line 105
    :try_start_1
    invoke-virtual {v3, p2, v0}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :catch_1
    move-exception p1

    .line 110
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 111
    .line 112
    .line 113
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/tv/ChannelsListActivity;->v:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lflix/com/vision/tv/ChannelsListActivity;->v:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

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
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    const/4 v6, 0x1

    .line 2
    const/4 v7, 0x0

    .line 3
    const/4 v8, 0x2

    .line 4
    invoke-super/range {p0 .. p1}, Lflix/com/vision/activities/base/a;->onCreate(Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    sget v0, Lflix/com/vision/R$layout;->channel_list_activity_import:I

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Le/v;->setContentView(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "cat_name"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lflix/com/vision/tv/ChannelsListActivity;->w:Ljava/lang/String;

    .line 23
    .line 24
    new-instance v0, Ljava/util/HashSet;

    .line 25
    .line 26
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v1, v1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 31
    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v4, "pref_tv_channel_fav_"

    .line 35
    .line 36
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v4, p0, Lflix/com/vision/tv/ChannelsListActivity;->w:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    new-instance v4, Ljava/util/HashSet;

    .line 49
    .line 50
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lflix/com/vision/tv/ChannelsListActivity;->b:Ljava/util/HashSet;

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    sget-object v1, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 67
    .line 68
    const-string v1, "fonts/product_sans_bold.ttf"

    .line 69
    .line 70
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iput-object v0, p0, Lflix/com/vision/tv/ChannelsListActivity;->n:Landroid/graphics/Typeface;

    .line 75
    .line 76
    new-instance v0, Lh5/j;

    .line 77
    .line 78
    invoke-direct {v0}, Lh5/j;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object v0, p0, Lflix/com/vision/tv/ChannelsListActivity;->m:Lh5/j;

    .line 82
    .line 83
    sget v0, Lflix/com/vision/R$id;->recyclerview_tv_channels_favorites:I

    .line 84
    .line 85
    invoke-virtual {p0, v0}, Le/v;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 90
    .line 91
    iput-object v0, p0, Lflix/com/vision/tv/ChannelsListActivity;->v:Landroidx/recyclerview/widget/RecyclerView;

    .line 92
    .line 93
    sget v0, Lflix/com/vision/R$id;->tv_favorites_channels_layout:I

    .line 94
    .line 95
    invoke-virtual {p0, v0}, Le/v;->findViewById(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Landroid/widget/LinearLayout;

    .line 100
    .line 101
    iput-object v0, p0, Lflix/com/vision/tv/ChannelsListActivity;->r:Landroid/widget/LinearLayout;

    .line 102
    .line 103
    sget v0, Lflix/com/vision/R$id;->settings_button_adult:I

    .line 104
    .line 105
    invoke-virtual {p0, v0}, Le/v;->findViewById(I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 110
    .line 111
    iput-object v0, p0, Lflix/com/vision/tv/ChannelsListActivity;->j:Landroid/widget/RelativeLayout;

    .line 112
    .line 113
    sget v0, Lflix/com/vision/R$id;->activity_player:I

    .line 114
    .line 115
    invoke-virtual {p0, v0}, Le/v;->findViewById(I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 120
    .line 121
    sget v0, Lflix/com/vision/R$id;->favorites_button_adult:I

    .line 122
    .line 123
    invoke-virtual {p0, v0}, Le/v;->findViewById(I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 128
    .line 129
    iput-object v0, p0, Lflix/com/vision/tv/ChannelsListActivity;->f:Landroid/widget/RelativeLayout;

    .line 130
    .line 131
    sget v0, Lflix/com/vision/R$id;->search_button_adult:I

    .line 132
    .line 133
    invoke-virtual {p0, v0}, Le/v;->findViewById(I)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 138
    .line 139
    iput-object v0, p0, Lflix/com/vision/tv/ChannelsListActivity;->e:Landroid/widget/RelativeLayout;

    .line 140
    .line 141
    sget v0, Lflix/com/vision/R$id;->recyclerview:I

    .line 142
    .line 143
    invoke-virtual {p0, v0}, Le/v;->findViewById(I)Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 148
    .line 149
    iput-object v0, p0, Lflix/com/vision/tv/ChannelsListActivity;->u:Landroidx/recyclerview/widget/RecyclerView;

    .line 150
    .line 151
    sget v0, Lflix/com/vision/R$id;->loader:I

    .line 152
    .line 153
    invoke-virtual {p0, v0}, Le/v;->findViewById(I)Landroid/view/View;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    check-cast v0, Landroid/widget/LinearLayout;

    .line 158
    .line 159
    iput-object v0, p0, Lflix/com/vision/tv/ChannelsListActivity;->q:Landroid/widget/LinearLayout;

    .line 160
    .line 161
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 162
    .line 163
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 175
    .line 176
    .line 177
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 178
    .line 179
    int-to-float v1, v1

    .line 180
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 181
    .line 182
    div-float/2addr v1, v0

    .line 183
    const/high16 v0, 0x435c0000    # 220.0f

    .line 184
    .line 185
    div-float/2addr v1, v0

    .line 186
    float-to-int v0, v1

    .line 187
    if-ge v0, v8, :cond_0

    .line 188
    .line 189
    move v0, v8

    .line 190
    :cond_0
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 191
    .line 192
    invoke-direct {v1, p0, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 193
    .line 194
    .line 195
    iget-object v0, p0, Lflix/com/vision/tv/ChannelsListActivity;->u:Landroidx/recyclerview/widget/RecyclerView;

    .line 196
    .line 197
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 198
    .line 199
    .line 200
    new-instance v0, LC4/u;

    .line 201
    .line 202
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    iget-object v2, v2, Lflix/com/vision/App;->m:Ljava/util/ArrayList;

    .line 211
    .line 212
    const/16 v4, 0x231d

    .line 213
    .line 214
    const/16 v5, 0x64

    .line 215
    .line 216
    move-object v3, p0

    .line 217
    invoke-direct/range {v0 .. v5}, LC4/u;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/app/Activity;II)V

    .line 218
    .line 219
    .line 220
    iput-object v0, p0, Lflix/com/vision/tv/ChannelsListActivity;->s:LC4/u;

    .line 221
    .line 222
    invoke-virtual {v0, p0}, LC4/u;->setImportActivity(Lflix/com/vision/tv/ChannelsListActivity;)V

    .line 223
    .line 224
    .line 225
    iget-object v0, p0, Lflix/com/vision/tv/ChannelsListActivity;->u:Landroidx/recyclerview/widget/RecyclerView;

    .line 226
    .line 227
    iget-object v1, p0, Lflix/com/vision/tv/ChannelsListActivity;->s:LC4/u;

    .line 228
    .line 229
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lm1/V;)V

    .line 230
    .line 231
    .line 232
    new-instance v0, LC4/u;

    .line 233
    .line 234
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    iget-object v2, v2, Lflix/com/vision/App;->n:Ljava/util/ArrayList;

    .line 243
    .line 244
    invoke-direct/range {v0 .. v5}, LC4/u;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/app/Activity;II)V

    .line 245
    .line 246
    .line 247
    iput-object v0, p0, Lflix/com/vision/tv/ChannelsListActivity;->t:LC4/u;

    .line 248
    .line 249
    invoke-virtual {v0, p0}, LC4/u;->setImportActivity(Lflix/com/vision/tv/ChannelsListActivity;)V

    .line 250
    .line 251
    .line 252
    iget-object v0, p0, Lflix/com/vision/tv/ChannelsListActivity;->v:Landroidx/recyclerview/widget/RecyclerView;

    .line 253
    .line 254
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 255
    .line 256
    invoke-direct {v1, p0, v7, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 260
    .line 261
    .line 262
    iget-object v0, p0, Lflix/com/vision/tv/ChannelsListActivity;->v:Landroidx/recyclerview/widget/RecyclerView;

    .line 263
    .line 264
    iget-object v1, p0, Lflix/com/vision/tv/ChannelsListActivity;->t:LC4/u;

    .line 265
    .line 266
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lm1/V;)V

    .line 267
    .line 268
    .line 269
    sget v0, Lflix/com/vision/R$id;->adult_page_title:I

    .line 270
    .line 271
    invoke-virtual {p0, v0}, Le/v;->findViewById(I)Landroid/view/View;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    check-cast v0, Landroid/widget/TextView;

    .line 276
    .line 277
    iput-object v0, p0, Lflix/com/vision/tv/ChannelsListActivity;->p:Landroid/widget/TextView;

    .line 278
    .line 279
    iget-object v1, p0, Lflix/com/vision/tv/ChannelsListActivity;->m:Lh5/j;

    .line 280
    .line 281
    iget-object v2, p0, Lflix/com/vision/tv/ChannelsListActivity;->n:Landroid/graphics/Typeface;

    .line 282
    .line 283
    invoke-virtual {v1, v0, v2}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 284
    .line 285
    .line 286
    iget-object v0, p0, Lflix/com/vision/tv/ChannelsListActivity;->e:Landroid/widget/RelativeLayout;

    .line 287
    .line 288
    new-instance v1, Lf5/a;

    .line 289
    .line 290
    invoke-direct {v1, p0, v7}, Lf5/a;-><init>(Lflix/com/vision/tv/ChannelsListActivity;I)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    .line 295
    .line 296
    iget-object v0, p0, Lflix/com/vision/tv/ChannelsListActivity;->f:Landroid/widget/RelativeLayout;

    .line 297
    .line 298
    new-instance v1, Lf5/a;

    .line 299
    .line 300
    invoke-direct {v1, p0, v6}, Lf5/a;-><init>(Lflix/com/vision/tv/ChannelsListActivity;I)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    .line 305
    .line 306
    iget-object v0, p0, Lflix/com/vision/tv/ChannelsListActivity;->j:Landroid/widget/RelativeLayout;

    .line 307
    .line 308
    new-instance v1, Lf5/a;

    .line 309
    .line 310
    invoke-direct {v1, p0, v8}, Lf5/a;-><init>(Lflix/com/vision/tv/ChannelsListActivity;I)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    .line 315
    .line 316
    iget-object v0, p0, Lflix/com/vision/tv/ChannelsListActivity;->s:LC4/u;

    .line 317
    .line 318
    invoke-virtual {v0}, Lm1/V;->notifyDataSetChanged()V

    .line 319
    .line 320
    .line 321
    invoke-virtual {p0}, Lflix/com/vision/tv/ChannelsListActivity;->updateFavoritesBar()V

    .line 322
    .line 323
    .line 324
    iget-object v0, p0, Lflix/com/vision/tv/ChannelsListActivity;->j:Landroid/widget/RelativeLayout;

    .line 325
    .line 326
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 327
    .line 328
    .line 329
    iget-object v0, p0, Lflix/com/vision/tv/ChannelsListActivity;->e:Landroid/widget/RelativeLayout;

    .line 330
    .line 331
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 332
    .line 333
    .line 334
    iget-object v0, p0, Lflix/com/vision/tv/ChannelsListActivity;->u:Landroidx/recyclerview/widget/RecyclerView;

    .line 335
    .line 336
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 337
    .line 338
    .line 339
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 344
    .line 345
    const-string v1, "hint_tv_channels_shown"

    .line 346
    .line 347
    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 348
    .line 349
    .line 350
    move-result v0

    .line 351
    if-nez v0, :cond_1

    .line 352
    .line 353
    const-string v0, "You can long press on a Channel to pin it at the top of the list"

    .line 354
    .line 355
    invoke-static {p0, v0, v6}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 356
    .line 357
    .line 358
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 363
    .line 364
    invoke-static {v0, v1, v6}, LA/i;->x(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 365
    .line 366
    .line 367
    :cond_1
    sget-boolean v0, Lflix/com/vision/App;->I:Z

    .line 368
    .line 369
    if-eqz v0, :cond_2

    .line 370
    .line 371
    sget v0, Lflix/com/vision/R$id;->toast_view:I

    .line 372
    .line 373
    invoke-virtual {p0, v0}, Le/v;->findViewById(I)Landroid/view/View;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 378
    .line 379
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .line 380
    .line 381
    const/high16 v1, 0x3f800000    # 1.0f

    .line 382
    .line 383
    const/4 v2, 0x0

    .line 384
    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 385
    .line 386
    .line 387
    sget v0, Lflix/com/vision/R$id;->customToastText:I

    .line 388
    .line 389
    invoke-virtual {p0, v0}, Le/v;->findViewById(I)Landroid/view/View;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    check-cast v0, Landroid/widget/TextView;

    .line 394
    .line 395
    new-instance v0, Landroid/os/Handler;

    .line 396
    .line 397
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 398
    .line 399
    .line 400
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    const-string v1, "url"

    .line 405
    .line 406
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    const-string v1, "label"

    .line 414
    .line 415
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    iget-object v0, p0, Lflix/com/vision/tv/ChannelsListActivity;->q:Landroid/widget/LinearLayout;

    .line 419
    .line 420
    const/16 v1, 0x8

    .line 421
    .line 422
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 423
    .line 424
    .line 425
    iget-object v0, p0, Lflix/com/vision/tv/ChannelsListActivity;->p:Landroid/widget/TextView;

    .line 426
    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    .line 428
    .line 429
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 430
    .line 431
    .line 432
    iget-object v2, p0, Lflix/com/vision/tv/ChannelsListActivity;->w:Ljava/lang/String;

    .line 433
    .line 434
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    const-string v2, " \u00b7 "

    .line 438
    .line 439
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 443
    .line 444
    .line 445
    move-result-object v2

    .line 446
    iget-object v2, v2, Lflix/com/vision/App;->m:Ljava/util/ArrayList;

    .line 447
    .line 448
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 449
    .line 450
    .line 451
    move-result v2

    .line 452
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v1

    .line 459
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    .line 461
    .line 462
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

.method public updateFavoritesBar()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iget-object v1, v1, Lflix/com/vision/App;->n:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v1, v1, Lflix/com/vision/App;->m:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lflix/com/vision/models/ChannelTv;

    .line 32
    .line 33
    iget-object v3, p0, Lflix/com/vision/tv/ChannelsListActivity;->b:Ljava/util/HashSet;

    .line 34
    .line 35
    iget-object v4, v2, Lflix/com/vision/models/ChannelTv;->label:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_0

    .line 42
    .line 43
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    iget-object v3, v3, Lflix/com/vision/App;->n:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception v1

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iget-object v1, v1, Lflix/com/vision/App;->n:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 62
    .line 63
    .line 64
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iget-object v1, v1, Lflix/com/vision/App;->n:Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-nez v1, :cond_2

    .line 75
    .line 76
    iget-object v1, p0, Lflix/com/vision/tv/ChannelsListActivity;->r:Landroid/widget/LinearLayout;

    .line 77
    .line 78
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lflix/com/vision/tv/ChannelsListActivity;->t:LC4/u;

    .line 82
    .line 83
    invoke-virtual {v1}, Lm1/V;->notifyDataSetChanged()V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_2
    iget-object v1, p0, Lflix/com/vision/tv/ChannelsListActivity;->r:Landroid/widget/LinearLayout;

    .line 88
    .line 89
    const/16 v2, 0x8

    .line 90
    .line 91
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string v3, "ERROR: "

    .line 98
    .line 99
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-static {p0, v1, v0}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 114
    .line 115
    .line 116
    return-void
.end method
