.class public Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;
.super Lflix/com/vision/activities/base/a;
.source "SourceFile"

# interfaces
.implements LU4/a;
.implements LU4/b;


# static fields
.field public static final synthetic v:I


# instance fields
.field public b:Landroid/widget/RelativeLayout;

.field public e:Landroid/widget/RelativeLayout;

.field public final f:Ljava/util/ArrayList;

.field public j:Lh5/j;

.field public m:Landroid/graphics/Typeface;

.field public n:Landroid/widget/TextView;

.field public final p:Ljava/util/ArrayList;

.field public q:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

.field public r:LC4/h;

.field public s:I

.field public t:I

.field public u:LQ4/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lflix/com/vision/activities/base/a;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;->f:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;->p:Ljava/util/ArrayList;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;->s:I

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public OnStreamResolvedSuccess(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lflix/com/vision/models/adult/AdultLink;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;->u:LQ4/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    :cond_0
    iget-object v0, p0, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;->f:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 14
    .line 15
    .line 16
    new-instance p1, Lz4/k;

    .line 17
    .line 18
    invoke-direct {p1, p0}, Lz4/k;-><init>(Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p1, Lz4/k;->a:Z

    .line 23
    .line 24
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "url"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;->p:Ljava/util/ArrayList;

    .line 14
    .line 15
    iget v1, p0, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;->s:I

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lflix/com/vision/models/adult/AdultVideo;

    .line 22
    .line 23
    iget-object v1, v1, Lflix/com/vision/models/adult/AdultVideo;->url:Ljava/lang/String;

    .line 24
    .line 25
    const-string v2, "videoUrl"

    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    iget v1, p0, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;->s:I

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lflix/com/vision/models/adult/AdultVideo;

    .line 37
    .line 38
    iget-object v1, v1, Lflix/com/vision/models/adult/AdultVideo;->title:Ljava/lang/String;

    .line 39
    .line 40
    const-string v2, "title"

    .line 41
    .line 42
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    iget v1, p0, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;->s:I

    .line 46
    .line 47
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Lflix/com/vision/models/adult/AdultVideo;

    .line 52
    .line 53
    iget-object p1, p1, Lflix/com/vision/models/adult/AdultVideo;->img_url:Ljava/lang/String;

    .line 54
    .line 55
    const-string v1, "image_url"

    .line 56
    .line 57
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public getVideos()V
    .locals 2

    .line 1
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lflix/com/vision/App;->r:LP4/e;

    .line 6
    .line 7
    invoke-virtual {v0}, LP4/e;->getAdultVideosFavoritesFromDb()Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-lez v1, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;->p:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;->r:LC4/h;

    .line 25
    .line 26
    invoke-virtual {v0}, Lm1/V;->notifyDataSetChanged()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

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
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lflix/com/vision/activities/base/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    sget-object v0, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 16
    .line 17
    const-string v0, "fonts/product_sans_bold.ttf"

    .line 18
    .line 19
    invoke-static {p1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;->m:Landroid/graphics/Typeface;

    .line 24
    .line 25
    new-instance p1, Lh5/j;

    .line 26
    .line 27
    invoke-direct {p1}, Lh5/j;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;->j:Lh5/j;

    .line 31
    .line 32
    sget p1, Lflix/com/vision/R$layout;->activity_adult_video_favorites:I

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Le/v;->setContentView(I)V

    .line 35
    .line 36
    .line 37
    new-instance p1, LC4/h;

    .line 38
    .line 39
    iget-object v0, p0, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;->p:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {p1, p0, p0, v0}, LC4/h;-><init>(Landroid/app/Activity;LU4/b;Ljava/util/ArrayList;)V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;->r:LC4/h;

    .line 45
    .line 46
    sget p1, Lflix/com/vision/R$id;->activity_player:I

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 53
    .line 54
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;->e:Landroid/widget/RelativeLayout;

    .line 55
    .line 56
    sget p1, Lflix/com/vision/R$id;->search_button_adult:I

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 63
    .line 64
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;->b:Landroid/widget/RelativeLayout;

    .line 65
    .line 66
    sget p1, Lflix/com/vision/R$id;->recyclerview_categories:I

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 73
    .line 74
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;->q:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 75
    .line 76
    sget p1, Lflix/com/vision/R$id;->adult_page_title:I

    .line 77
    .line 78
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Landroid/widget/TextView;

    .line 83
    .line 84
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;->n:Landroid/widget/TextView;

    .line 85
    .line 86
    iget-object v0, p0, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;->j:Lh5/j;

    .line 87
    .line 88
    iget-object v1, p0, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;->m:Landroid/graphics/Typeface;

    .line 89
    .line 90
    invoke-virtual {v0, p1, v1}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;->b:Landroid/widget/RelativeLayout;

    .line 94
    .line 95
    new-instance v0, LB4/a;

    .line 96
    .line 97
    const/16 v1, 0x11

    .line 98
    .line 99
    invoke-direct {v0, p0, v1}, LB4/a;-><init>(Ljava/lang/Object;I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;->q:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 106
    .line 107
    iget-object v0, p0, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;->r:LC4/h;

    .line 108
    .line 109
    invoke-virtual {p1, v0}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->setAdapter(Lm1/V;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-static {p1}, Lb/c;->d(Landroid/view/Display;)Landroid/util/DisplayMetrics;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {p0}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 133
    .line 134
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 135
    .line 136
    int-to-float p1, p1

    .line 137
    div-float/2addr p1, v0

    .line 138
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 143
    .line 144
    const-string v1, "pref_adult_show_big_pictures"

    .line 145
    .line 146
    const/4 v2, 0x0

    .line 147
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-nez v0, :cond_0

    .line 152
    .line 153
    const/16 v0, 0x82

    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_0
    const/16 v0, 0x104

    .line 157
    .line 158
    :goto_0
    int-to-float v0, v0

    .line 159
    div-float/2addr p1, v0

    .line 160
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    new-instance v0, Lflix/com/vision/helpers/CenterGridLayoutManager;

    .line 165
    .line 166
    invoke-direct {v0, p0, p1}, Lflix/com/vision/helpers/CenterGridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 167
    .line 168
    .line 169
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;->q:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 170
    .line 171
    invoke-virtual {p1, v0}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 172
    .line 173
    .line 174
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;->q:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 175
    .line 176
    new-instance v0, LT4/l;

    .line 177
    .line 178
    const/4 v1, 0x5

    .line 179
    invoke-direct {v0, v1}, LT4/l;-><init>(I)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1, v0}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->addItemDecoration(Lm1/d0;)V

    .line 183
    .line 184
    .line 185
    new-instance p1, Landroid/os/Handler;

    .line 186
    .line 187
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 188
    .line 189
    .line 190
    new-instance v0, Lf1/a;

    .line 191
    .line 192
    const/16 v1, 0x10

    .line 193
    .line 194
    invoke-direct {v0, p0, v1}, Lf1/a;-><init>(Ljava/lang/Object;I)V

    .line 195
    .line 196
    .line 197
    const-wide/16 v1, 0x3e8

    .line 198
    .line 199
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0}, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;->setBackgroundColor()V

    .line 203
    .line 204
    .line 205
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;->n:Landroid/widget/TextView;

    .line 206
    .line 207
    const-string v0, "Adult Zone \u00b7 Favorites"

    .line 208
    .line 209
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0}, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;->getVideos()V

    .line 213
    .line 214
    .line 215
    return-void
.end method

.method public onFavoritesLongPress(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;->p:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-lt p1, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lflix/com/vision/models/adult/AdultVideo;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-static {p0, v2}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget-object v3, v0, Lflix/com/vision/models/adult/AdultVideo;->title:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v2, v3}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v3, "What would you like to Do?"

    .line 31
    .line 32
    invoke-virtual {v2, v3}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance v3, LC4/l;

    .line 36
    .line 37
    const/4 v4, 0x6

    .line 38
    invoke-direct {v3, p0, v0, p1, v4}, LC4/l;-><init>(Lflix/com/vision/activities/base/a;Ljava/lang/Object;II)V

    .line 39
    .line 40
    .line 41
    const-string p1, "REMOVE FAVORITE"

    .line 42
    .line 43
    invoke-virtual {v2, p1, v3}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 44
    .line 45
    .line 46
    new-instance p1, LA4/q;

    .line 47
    .line 48
    const/16 v0, 0xd

    .line 49
    .line 50
    invoke-direct {p1, v0}, LA4/q;-><init>(I)V

    .line 51
    .line 52
    .line 53
    const-string v0, "CANCEL"

    .line 54
    .line 55
    invoke-virtual {v2, v0, p1}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 56
    .line 57
    .line 58
    :try_start_0
    const-string p1, ""

    .line 59
    .line 60
    invoke-virtual {v2, v1, p1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
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
    :goto_0
    return-void
.end method

.method public onMessageEvent(Lz4/k;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;->p:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-boolean p1, p1, Lz4/k;->a:Z

    .line 10
    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;->f:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 20
    .line 21
    const-string v1, "pref_adult_zone_always_play_best"

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v1, 0x0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-lez v0, :cond_0

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Lflix/com/vision/models/adult/AdultLink;

    .line 42
    .line 43
    iget-object p1, p1, Lflix/com/vision/models/adult/AdultLink;->stream_url:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;->playAdultLink(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-ge v1, v2, :cond_1

    .line 59
    .line 60
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Lflix/com/vision/models/adult/AdultLink;

    .line 65
    .line 66
    iget-object v2, v2, Lflix/com/vision/models/adult/AdultLink;->label:Ljava/lang/String;

    .line 67
    .line 68
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 69
    .line 70
    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    add-int/lit8 v1, v1, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, [Ljava/lang/CharSequence;

    .line 91
    .line 92
    new-instance v1, Le/r;

    .line 93
    .line 94
    new-instance v2, Landroid/view/ContextThemeWrapper;

    .line 95
    .line 96
    sget v3, Lflix/com/vision/R$style;->AlertDialogCustom:I

    .line 97
    .line 98
    invoke-direct {v2, p0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 99
    .line 100
    .line 101
    invoke-direct {v1, v2}, Le/r;-><init>(Landroid/content/Context;)V

    .line 102
    .line 103
    .line 104
    new-instance v2, LB4/b;

    .line 105
    .line 106
    const/4 v3, 0x6

    .line 107
    invoke-direct {v2, v3, p0, p1}, LB4/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    const/4 p1, -0x1

    .line 111
    invoke-virtual {v1, v0, p1, v2}, Le/r;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Le/r;

    .line 112
    .line 113
    .line 114
    new-instance p1, LB4/c;

    .line 115
    .line 116
    const/16 v0, 0x8

    .line 117
    .line 118
    invoke-direct {p1, v0}, LB4/c;-><init>(I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, p1}, Le/r;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Le/r;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Le/r;->show()Le/s;

    .line 125
    .line 126
    .line 127
    :cond_2
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

.method public openAdultVideo(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;->p:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-lt p1, v1, :cond_0

    .line 9
    .line 10
    move p1, v2

    .line 11
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    iput p1, p0, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;->s:I

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {p0, v2}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iput-object v2, p0, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;->u:LQ4/d;

    .line 29
    .line 30
    invoke-virtual {v2}, LQ4/d;->setloading()V

    .line 31
    .line 32
    .line 33
    :try_start_0
    iget-object v2, p0, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;->u:LQ4/d;

    .line 34
    .line 35
    const-string v3, ""

    .line 36
    .line 37
    invoke-virtual {v2, v1, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception v1

    .line 42
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 43
    .line 44
    .line 45
    :goto_0
    new-instance v1, LX4/c;

    .line 46
    .line 47
    invoke-direct {v1, p0, p0}, LX4/c;-><init>(Landroid/content/Context;LU4/a;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Lflix/com/vision/models/adult/AdultVideo;

    .line 55
    .line 56
    iget-object p1, p1, Lflix/com/vision/models/adult/AdultVideo;->url:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v1, p1}, LX4/c;->process(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public playAdultLink(Ljava/lang/String;)V
    .locals 14

    .line 1
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 6
    .line 7
    const-string v1, "pref_adult_zone_player"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-lez v0, :cond_3

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    if-eq v0, v1, :cond_2

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    if-eq v0, v2, :cond_1

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    if-eq v0, v2, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    :try_start_0
    invoke-static {p0, v0, p1}, LT4/o;->PlayXPlayer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :catch_0
    move-object v4, p1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v3, 0x0

    .line 34
    const/4 v5, 0x0

    .line 35
    const/4 v6, 0x0

    .line 36
    const/4 v7, -0x1

    .line 37
    move-object v2, p0

    .line 38
    move-object v4, p1

    .line 39
    :try_start_1
    invoke-static/range {v2 .. v7}, LT4/o;->PlayVLC(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_2
    move-object v4, p1

    .line 44
    const/4 v9, 0x0

    .line 45
    const/4 v11, 0x0

    .line 46
    const/4 v12, 0x0

    .line 47
    const/4 v13, -0x1

    .line 48
    move-object v8, p0

    .line 49
    move-object v10, v4

    .line 50
    :try_start_2
    invoke-static/range {v8 .. v13}, LT4/o;->PlayMXPlayer(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :catch_1
    move-object v4, v10

    .line 55
    :catch_2
    :goto_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const-string v0, "Failed to load external Player, Make sure it is installed"

    .line 60
    .line 61
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v4}, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;->e(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :goto_1
    return-void

    .line 72
    :cond_3
    move-object v4, p1

    .line 73
    invoke-virtual {p0, v4}, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;->e(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public setBackgroundColor()V
    .locals 5

    .line 1
    const v0, 0x263984

    .line 2
    .line 3
    .line 4
    iput v0, p0, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;->t:I

    .line 5
    .line 6
    new-instance v0, Landroid/animation/ArgbEvaluator;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;->t:I

    .line 12
    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const/4 v4, 0x2

    .line 23
    new-array v4, v4, [Ljava/lang/Object;

    .line 24
    .line 25
    aput-object v1, v4, v2

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    aput-object v3, v4, v1

    .line 29
    .line 30
    invoke-static {v0, v4}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-wide/16 v3, 0x7d0

    .line 35
    .line 36
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 37
    .line 38
    .line 39
    new-instance v1, LA3/a;

    .line 40
    .line 41
    const/16 v3, 0x17

    .line 42
    .line 43
    invoke-direct {v1, p0, v3}, LA3/a;-><init>(Ljava/lang/Object;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 50
    .line 51
    .line 52
    iput v2, p0, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;->t:I

    .line 53
    .line 54
    return-void
.end method
