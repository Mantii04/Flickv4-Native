.class public Lflix/com/vision/activities/adult/AdultHistoryActivity;
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

.field public f:Landroid/widget/RelativeLayout;

.field public final j:Ljava/util/ArrayList;

.field public m:Lh5/j;

.field public n:Landroid/graphics/Typeface;

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
    iput-object v0, p0, Lflix/com/vision/activities/adult/AdultHistoryActivity;->j:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lflix/com/vision/activities/adult/AdultHistoryActivity;->p:Ljava/util/ArrayList;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lflix/com/vision/activities/adult/AdultHistoryActivity;->s:I

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
    iget-object v0, p0, Lflix/com/vision/activities/adult/AdultHistoryActivity;->u:LQ4/d;

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
    iget-object v0, p0, Lflix/com/vision/activities/adult/AdultHistoryActivity;->j:Ljava/util/ArrayList;

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
    new-instance p1, Lz4/e;

    .line 17
    .line 18
    invoke-direct {p1, p0}, Lz4/e;-><init>(Lflix/com/vision/activities/adult/AdultHistoryActivity;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p1, Lz4/e;->a:Z

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
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultHistoryActivity;->p:Ljava/util/ArrayList;

    .line 14
    .line 15
    iget v1, p0, Lflix/com/vision/activities/adult/AdultHistoryActivity;->s:I

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
    iget v1, p0, Lflix/com/vision/activities/adult/AdultHistoryActivity;->s:I

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
    iget v1, p0, Lflix/com/vision/activities/adult/AdultHistoryActivity;->s:I

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
    invoke-virtual {v0}, LP4/e;->getAdultHistoryFromDb()Ljava/util/ArrayList;

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
    iget-object v1, p0, Lflix/com/vision/activities/adult/AdultHistoryActivity;->p:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lflix/com/vision/activities/adult/AdultHistoryActivity;->r:LC4/h;

    .line 28
    .line 29
    invoke-virtual {v0}, Lm1/V;->notifyDataSetChanged()V

    .line 30
    .line 31
    .line 32
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
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-super {p0, p1}, Lflix/com/vision/activities/base/a;->onCreate(Landroid/os/Bundle;)V

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 17
    .line 18
    const-string v1, "pref_adult_zone_keep_history"

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    const-string p1, "HISTORY IS CURRENTLY OFF. Please enable it in Settings"

    .line 28
    .line 29
    invoke-static {p0, p1, v2}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    sget-object v1, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 37
    .line 38
    const-string v1, "fonts/product_sans_bold.ttf"

    .line 39
    .line 40
    invoke-static {p1, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultHistoryActivity;->n:Landroid/graphics/Typeface;

    .line 45
    .line 46
    new-instance p1, Lh5/j;

    .line 47
    .line 48
    invoke-direct {p1}, Lh5/j;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultHistoryActivity;->m:Lh5/j;

    .line 52
    .line 53
    sget p1, Lflix/com/vision/R$layout;->activity_adult_history:I

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Le/v;->setContentView(I)V

    .line 56
    .line 57
    .line 58
    new-instance p1, LC4/h;

    .line 59
    .line 60
    iget-object v1, p0, Lflix/com/vision/activities/adult/AdultHistoryActivity;->p:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {p1, p0, p0, v1}, LC4/h;-><init>(Landroid/app/Activity;LU4/b;Ljava/util/ArrayList;)V

    .line 63
    .line 64
    .line 65
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultHistoryActivity;->r:LC4/h;

    .line 66
    .line 67
    sget p1, Lflix/com/vision/R$id;->button_adult_clear_history:I

    .line 68
    .line 69
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 74
    .line 75
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultHistoryActivity;->f:Landroid/widget/RelativeLayout;

    .line 76
    .line 77
    sget p1, Lflix/com/vision/R$id;->activity_player:I

    .line 78
    .line 79
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 84
    .line 85
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultHistoryActivity;->e:Landroid/widget/RelativeLayout;

    .line 86
    .line 87
    sget p1, Lflix/com/vision/R$id;->search_button_adult:I

    .line 88
    .line 89
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 94
    .line 95
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultHistoryActivity;->b:Landroid/widget/RelativeLayout;

    .line 96
    .line 97
    sget p1, Lflix/com/vision/R$id;->recyclerview_categories:I

    .line 98
    .line 99
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    check-cast p1, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 104
    .line 105
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultHistoryActivity;->q:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 106
    .line 107
    sget p1, Lflix/com/vision/R$id;->adult_page_title:I

    .line 108
    .line 109
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    check-cast p1, Landroid/widget/TextView;

    .line 114
    .line 115
    iget-object v1, p0, Lflix/com/vision/activities/adult/AdultHistoryActivity;->m:Lh5/j;

    .line 116
    .line 117
    iget-object v3, p0, Lflix/com/vision/activities/adult/AdultHistoryActivity;->n:Landroid/graphics/Typeface;

    .line 118
    .line 119
    invoke-virtual {v1, p1, v3}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultHistoryActivity;->b:Landroid/widget/RelativeLayout;

    .line 123
    .line 124
    new-instance v1, Lz4/d;

    .line 125
    .line 126
    invoke-direct {v1, p0, v0}, Lz4/d;-><init>(Lflix/com/vision/activities/adult/AdultHistoryActivity;I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    .line 131
    .line 132
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultHistoryActivity;->f:Landroid/widget/RelativeLayout;

    .line 133
    .line 134
    new-instance v1, Lz4/d;

    .line 135
    .line 136
    invoke-direct {v1, p0, v2}, Lz4/d;-><init>(Lflix/com/vision/activities/adult/AdultHistoryActivity;I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    .line 141
    .line 142
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultHistoryActivity;->q:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 143
    .line 144
    iget-object v1, p0, Lflix/com/vision/activities/adult/AdultHistoryActivity;->r:LC4/h;

    .line 145
    .line 146
    invoke-virtual {p1, v1}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->setAdapter(Lm1/V;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-static {p1}, Lb/c;->d(Landroid/view/Display;)Landroid/util/DisplayMetrics;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-virtual {p0}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 170
    .line 171
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 172
    .line 173
    int-to-float p1, p1

    .line 174
    div-float/2addr p1, v1

    .line 175
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    iget-object v1, v1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 180
    .line 181
    const-string v2, "pref_adult_show_big_pictures"

    .line 182
    .line 183
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    if-nez v0, :cond_1

    .line 188
    .line 189
    const/16 v0, 0x82

    .line 190
    .line 191
    goto :goto_0

    .line 192
    :cond_1
    const/16 v0, 0x104

    .line 193
    .line 194
    :goto_0
    int-to-float v0, v0

    .line 195
    div-float/2addr p1, v0

    .line 196
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    new-instance v0, Lflix/com/vision/helpers/CenterGridLayoutManager;

    .line 201
    .line 202
    invoke-direct {v0, p0, p1}, Lflix/com/vision/helpers/CenterGridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 203
    .line 204
    .line 205
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultHistoryActivity;->q:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 206
    .line 207
    invoke-virtual {p1, v0}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 208
    .line 209
    .line 210
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultHistoryActivity;->q:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 211
    .line 212
    new-instance v0, LT4/l;

    .line 213
    .line 214
    const/4 v1, 0x5

    .line 215
    invoke-direct {v0, v1}, LT4/l;-><init>(I)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1, v0}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->addItemDecoration(Lm1/d0;)V

    .line 219
    .line 220
    .line 221
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
    const/16 v1, 0xf

    .line 229
    .line 230
    invoke-direct {v0, p0, v1}, Lf1/a;-><init>(Ljava/lang/Object;I)V

    .line 231
    .line 232
    .line 233
    const-wide/16 v1, 0x3e8

    .line 234
    .line 235
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 236
    .line 237
    .line 238
    invoke-virtual {p0}, Lflix/com/vision/activities/adult/AdultHistoryActivity;->setBackgroundColor()V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p0}, Lflix/com/vision/activities/adult/AdultHistoryActivity;->getVideos()V

    .line 242
    .line 243
    .line 244
    return-void
.end method

.method public onHistoryLongPress(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/adult/AdultHistoryActivity;->p:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-ltz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-lt p1, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lflix/com/vision/models/adult/AdultVideo;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-static {p0, v2}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-object v3, v0, Lflix/com/vision/models/adult/AdultVideo;->title:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v2, v3}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v3, "What would you like to Do?"

    .line 35
    .line 36
    invoke-virtual {v2, v3}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance v3, LC4/l;

    .line 40
    .line 41
    const/4 v4, 0x5

    .line 42
    invoke-direct {v3, p0, v0, p1, v4}, LC4/l;-><init>(Lflix/com/vision/activities/base/a;Ljava/lang/Object;II)V

    .line 43
    .line 44
    .line 45
    const-string p1, "DELETE FROM HISTORY"

    .line 46
    .line 47
    invoke-virtual {v2, p1, v3}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 48
    .line 49
    .line 50
    new-instance p1, LA4/m;

    .line 51
    .line 52
    const/16 v3, 0x16

    .line 53
    .line 54
    invoke-direct {p1, v3, p0, v0}, LA4/m;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    const-string v0, "ADD TO FAVORITES"

    .line 58
    .line 59
    invoke-virtual {v2, v0, p1}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 60
    .line 61
    .line 62
    :try_start_0
    const-string p1, ""

    .line 63
    .line 64
    invoke-virtual {v2, v1, p1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :catch_0
    move-exception p1

    .line 69
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v1, "Invalid long press position: "

    .line 76
    .line 77
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    const-string v0, "AdultHistory"

    .line 88
    .line 89
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public onMessageEvent(Lz4/e;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/adult/AdultHistoryActivity;->p:Ljava/util/ArrayList;

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
    iget-boolean p1, p1, Lz4/e;->a:Z

    .line 10
    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultHistoryActivity;->j:Ljava/util/ArrayList;

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
    invoke-virtual {p0, p1}, Lflix/com/vision/activities/adult/AdultHistoryActivity;->playAdultLink(Ljava/lang/String;)V

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
    const/4 v3, 0x4

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
    const/4 v0, 0x6

    .line 117
    invoke-direct {p1, v0}, LB4/c;-><init>(I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, p1}, Le/r;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Le/r;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Le/r;->show()Le/s;

    .line 124
    .line 125
    .line 126
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
    invoke-virtual {p0}, Lflix/com/vision/activities/adult/AdultHistoryActivity;->getVideos()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public openAdultVideo(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/adult/AdultHistoryActivity;->p:Ljava/util/ArrayList;

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
    iput p1, p0, Lflix/com/vision/activities/adult/AdultHistoryActivity;->s:I

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
    iput-object v2, p0, Lflix/com/vision/activities/adult/AdultHistoryActivity;->u:LQ4/d;

    .line 29
    .line 30
    invoke-virtual {v2}, LQ4/d;->setloading()V

    .line 31
    .line 32
    .line 33
    :try_start_0
    iget-object v2, p0, Lflix/com/vision/activities/adult/AdultHistoryActivity;->u:LQ4/d;

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
    invoke-virtual {p0, v4}, Lflix/com/vision/activities/adult/AdultHistoryActivity;->e(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :goto_1
    return-void

    .line 72
    :cond_3
    move-object v4, p1

    .line 73
    invoke-virtual {p0, v4}, Lflix/com/vision/activities/adult/AdultHistoryActivity;->e(Ljava/lang/String;)V

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
    iput v0, p0, Lflix/com/vision/activities/adult/AdultHistoryActivity;->t:I

    .line 5
    .line 6
    new-instance v0, Landroid/animation/ArgbEvaluator;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lflix/com/vision/activities/adult/AdultHistoryActivity;->t:I

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
    const/16 v3, 0x15

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
    iput v2, p0, Lflix/com/vision/activities/adult/AdultHistoryActivity;->t:I

    .line 53
    .line 54
    return-void
.end method
