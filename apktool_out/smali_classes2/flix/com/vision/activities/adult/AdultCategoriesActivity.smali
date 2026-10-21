.class public Lflix/com/vision/activities/adult/AdultCategoriesActivity;
.super Lflix/com/vision/activities/base/a;
.source "SourceFile"


# static fields
.field public static final synthetic w:I


# instance fields
.field public b:Landroid/widget/RelativeLayout;

.field public e:Landroid/widget/RelativeLayout;

.field public f:Landroid/widget/RelativeLayout;

.field public j:Landroid/widget/RelativeLayout;

.field public m:Landroid/widget/RelativeLayout;

.field public n:Lh5/j;

.field public p:Landroid/graphics/Typeface;

.field public q:Lio/reactivex/disposables/Disposable;

.field public final r:Ljava/util/ArrayList;

.field public s:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

.field public t:LC4/d;

.field public u:Z

.field public v:I


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
    iput-object v0, p0, Lflix/com/vision/activities/adult/AdultCategoriesActivity;->r:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lflix/com/vision/activities/adult/AdultCategoriesActivity;->u:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final e()V
    .locals 2

    .line 1
    invoke-static {p0}, Lf5/m;->loadJSONFromAsset(Landroid/content/Context;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-lez v1, :cond_1

    .line 12
    .line 13
    invoke-static {v0}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lflix/com/vision/utils/JsonUtils;->parseAdultCategories(Lcom/google/gson/JsonElement;)Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-lez v1, :cond_0

    .line 32
    .line 33
    iget-object v1, p0, Lflix/com/vision/activities/adult/AdultCategoriesActivity;->r:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object v0, p0, Lflix/com/vision/activities/adult/AdultCategoriesActivity;->t:LC4/d;

    .line 39
    .line 40
    invoke-virtual {v0}, Lm1/V;->notifyDataSetChanged()V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public fetchCategoriesFromUrl()V
    .locals 4

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/adult/AdultCategoriesActivity;->r:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v0, v0, Lflix/com/vision/App;->x:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v1, p0, Lflix/com/vision/activities/adult/AdultCategoriesActivity;->q:Lio/reactivex/disposables/Disposable;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 21
    .line 22
    .line 23
    :cond_1
    new-instance v1, LZ4/k;

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v1, v0, v2}, LZ4/k;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Lio/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    new-instance v1, Lz4/b;

    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    invoke-direct {v1, p0, v2}, Lz4/b;-><init>(Lflix/com/vision/activities/adult/AdultCategoriesActivity;I)V

    .line 53
    .line 54
    .line 55
    new-instance v2, Lz4/b;

    .line 56
    .line 57
    const/4 v3, 0x1

    .line 58
    invoke-direct {v2, p0, v3}, Lz4/b;-><init>(Lflix/com/vision/activities/adult/AdultCategoriesActivity;I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iput-object v0, p0, Lflix/com/vision/activities/adult/AdultCategoriesActivity;->q:Lio/reactivex/disposables/Disposable;

    .line 66
    .line 67
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lflix/com/vision/activities/adult/AdultCategoriesActivity;->u:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Lflix/com/vision/activities/adult/AdultCategoriesActivity;->u:Z

    .line 7
    .line 8
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lflix/com/vision/activities/adult/AdultCategoriesActivity;->r:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/16 v2, 0xc8

    .line 22
    .line 23
    if-ge v0, v2, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lflix/com/vision/activities/adult/AdultCategoriesActivity;->s:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object v0, p0, Lflix/com/vision/activities/adult/AdultCategoriesActivity;->s:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 42
    .line 43
    .line 44
    :goto_0
    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lflix/com/vision/activities/adult/AdultCategoriesActivity;->u:Z

    .line 46
    .line 47
    iget-object v0, p0, Lflix/com/vision/activities/adult/AdultCategoriesActivity;->b:Landroid/widget/RelativeLayout;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lflix/com/vision/activities/adult/AdultCategoriesActivity;->s:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const-string v2, "Press Back again to Exit"

    .line 62
    .line 63
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 68
    .line 69
    .line 70
    new-instance v0, Landroid/os/Handler;

    .line 71
    .line 72
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 73
    .line 74
    .line 75
    new-instance v1, Lz4/a;

    .line 76
    .line 77
    const/4 v2, 0x0

    .line 78
    invoke-direct {v1, p0, v2}, Lz4/a;-><init>(Lflix/com/vision/activities/adult/AdultCategoriesActivity;I)V

    .line 79
    .line 80
    .line 81
    const-wide/16 v2, 0x7d0

    .line 82
    .line 83
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

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
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    sget-object v1, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 17
    .line 18
    const-string v1, "fonts/product_sans_bold.ttf"

    .line 19
    .line 20
    invoke-static {p1, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultCategoriesActivity;->p:Landroid/graphics/Typeface;

    .line 25
    .line 26
    new-instance p1, Lh5/j;

    .line 27
    .line 28
    invoke-direct {p1}, Lh5/j;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultCategoriesActivity;->n:Lh5/j;

    .line 32
    .line 33
    sget p1, Lflix/com/vision/R$layout;->activity_adult_categories:I

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Le/v;->setContentView(I)V

    .line 36
    .line 37
    .line 38
    new-instance p1, LC4/d;

    .line 39
    .line 40
    iget-object v1, p0, Lflix/com/vision/activities/adult/AdultCategoriesActivity;->r:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {p1, p0, v1}, LC4/d;-><init>(Lflix/com/vision/activities/adult/AdultCategoriesActivity;Ljava/util/ArrayList;)V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultCategoriesActivity;->t:LC4/d;

    .line 46
    .line 47
    sget p1, Lflix/com/vision/R$id;->history_button_adult:I

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 54
    .line 55
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultCategoriesActivity;->m:Landroid/widget/RelativeLayout;

    .line 56
    .line 57
    sget p1, Lflix/com/vision/R$id;->settings_button_adult:I

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 64
    .line 65
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultCategoriesActivity;->j:Landroid/widget/RelativeLayout;

    .line 66
    .line 67
    sget p1, Lflix/com/vision/R$id;->activity_player:I

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
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultCategoriesActivity;->f:Landroid/widget/RelativeLayout;

    .line 76
    .line 77
    sget p1, Lflix/com/vision/R$id;->favorites_button_adult:I

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
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultCategoriesActivity;->e:Landroid/widget/RelativeLayout;

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
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultCategoriesActivity;->b:Landroid/widget/RelativeLayout;

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
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultCategoriesActivity;->s:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

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
    iget-object v1, p0, Lflix/com/vision/activities/adult/AdultCategoriesActivity;->n:Lh5/j;

    .line 116
    .line 117
    iget-object v2, p0, Lflix/com/vision/activities/adult/AdultCategoriesActivity;->p:Landroid/graphics/Typeface;

    .line 118
    .line 119
    invoke-virtual {v1, p1, v2}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultCategoriesActivity;->b:Landroid/widget/RelativeLayout;

    .line 123
    .line 124
    new-instance v1, Lz4/c;

    .line 125
    .line 126
    const/4 v2, 0x0

    .line 127
    invoke-direct {v1, p0, v2}, Lz4/c;-><init>(Lflix/com/vision/activities/adult/AdultCategoriesActivity;I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    .line 132
    .line 133
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultCategoriesActivity;->e:Landroid/widget/RelativeLayout;

    .line 134
    .line 135
    new-instance v1, Lz4/c;

    .line 136
    .line 137
    invoke-direct {v1, p0, v0}, Lz4/c;-><init>(Lflix/com/vision/activities/adult/AdultCategoriesActivity;I)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    .line 142
    .line 143
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultCategoriesActivity;->j:Landroid/widget/RelativeLayout;

    .line 144
    .line 145
    new-instance v1, Lz4/c;

    .line 146
    .line 147
    const/4 v2, 0x2

    .line 148
    invoke-direct {v1, p0, v2}, Lz4/c;-><init>(Lflix/com/vision/activities/adult/AdultCategoriesActivity;I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    .line 153
    .line 154
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultCategoriesActivity;->m:Landroid/widget/RelativeLayout;

    .line 155
    .line 156
    new-instance v1, Lz4/c;

    .line 157
    .line 158
    const/4 v2, 0x3

    .line 159
    invoke-direct {v1, p0, v2}, Lz4/c;-><init>(Lflix/com/vision/activities/adult/AdultCategoriesActivity;I)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    .line 164
    .line 165
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultCategoriesActivity;->s:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 166
    .line 167
    iget-object v1, p0, Lflix/com/vision/activities/adult/AdultCategoriesActivity;->t:LC4/d;

    .line 168
    .line 169
    invoke-virtual {p1, v1}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->setAdapter(Lm1/V;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-static {p1}, Lb/c;->d(Landroid/view/Display;)Landroid/util/DisplayMetrics;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-virtual {p0}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 193
    .line 194
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 195
    .line 196
    int-to-float p1, p1

    .line 197
    div-float/2addr p1, v1

    .line 198
    const/16 v1, 0xc8

    .line 199
    .line 200
    int-to-float v1, v1

    .line 201
    div-float/2addr p1, v1

    .line 202
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    iget-object v1, p0, Lflix/com/vision/activities/adult/AdultCategoriesActivity;->s:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 207
    .line 208
    new-instance v2, Lflix/com/vision/helpers/CenterGridLayoutManager;

    .line 209
    .line 210
    invoke-direct {v2, p0, p1}, Lflix/com/vision/helpers/CenterGridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1, v2}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 214
    .line 215
    .line 216
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultCategoriesActivity;->s:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 217
    .line 218
    new-instance v1, LT4/l;

    .line 219
    .line 220
    const/4 v2, 0x5

    .line 221
    invoke-direct {v1, v2}, LT4/l;-><init>(I)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1, v1}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->addItemDecoration(Lm1/d0;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p0}, Lflix/com/vision/activities/adult/AdultCategoriesActivity;->setBackgroundColor()V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0}, Lflix/com/vision/activities/adult/AdultCategoriesActivity;->fetchCategoriesFromUrl()V

    .line 231
    .line 232
    .line 233
    new-instance p1, Landroid/os/Handler;

    .line 234
    .line 235
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 236
    .line 237
    .line 238
    new-instance v1, Lz4/a;

    .line 239
    .line 240
    invoke-direct {v1, p0, v0}, Lz4/a;-><init>(Lflix/com/vision/activities/adult/AdultCategoriesActivity;I)V

    .line 241
    .line 242
    .line 243
    const-wide/16 v2, 0x3e8

    .line 244
    .line 245
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 246
    .line 247
    .line 248
    return-void
.end method

.method public onMessageEvent(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lflix/com/vision/models/adult/AdultCategory;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/adult/AdultCategoriesActivity;->r:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultCategoriesActivity;->t:LC4/d;

    .line 7
    .line 8
    invoke-virtual {p1}, Lm1/V;->notifyDataSetChanged()V

    .line 9
    .line 10
    .line 11
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

.method public openCategory(I)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lflix/com/vision/activities/adult/AdultVideosActivity;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lflix/com/vision/activities/adult/AdultCategoriesActivity;->r:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Lflix/com/vision/models/adult/AdultCategory;

    .line 15
    .line 16
    iget-object v2, v2, Lflix/com/vision/models/adult/AdultCategory;->url:Ljava/lang/String;

    .line 17
    .line 18
    const-string v3, "categoryUrl"

    .line 19
    .line 20
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lflix/com/vision/models/adult/AdultCategory;

    .line 28
    .line 29
    iget-object p1, p1, Lflix/com/vision/models/adult/AdultCategory;->title:Ljava/lang/String;

    .line 30
    .line 31
    const-string v1, "categoryTitle"

    .line 32
    .line 33
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public setBackgroundColor()V
    .locals 5

    .line 1
    const v0, 0x263984

    .line 2
    .line 3
    .line 4
    iput v0, p0, Lflix/com/vision/activities/adult/AdultCategoriesActivity;->v:I

    .line 5
    .line 6
    new-instance v0, Landroid/animation/ArgbEvaluator;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lflix/com/vision/activities/adult/AdultCategoriesActivity;->v:I

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
    const/16 v3, 0x14

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
    iput v2, p0, Lflix/com/vision/activities/adult/AdultCategoriesActivity;->v:I

    .line 53
    .line 54
    return-void
.end method
