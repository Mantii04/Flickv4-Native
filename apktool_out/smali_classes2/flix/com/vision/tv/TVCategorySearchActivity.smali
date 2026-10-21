.class public Lflix/com/vision/tv/TVCategorySearchActivity;
.super Le/v;
.source "SourceFile"

# interfaces
.implements LU4/l;


# instance fields
.field public b:Lflix/com/vision/materialsearchview/MaterialSearchView;

.field public e:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

.field public f:LC4/c0;

.field public j:Ljava/util/ArrayList;


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
    iget-object v0, p0, Lflix/com/vision/tv/TVCategorySearchActivity;->b:Lflix/com/vision/materialsearchview/MaterialSearchView;

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
    iget-object v0, p0, Lflix/com/vision/tv/TVCategorySearchActivity;->b:Lflix/com/vision/materialsearchview/MaterialSearchView;

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
    .locals 4

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-super {p0, p1}, Landroidx/fragment/app/H;->onCreate(Landroid/os/Bundle;)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget-object v1, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 10
    .line 11
    const-string v1, "fonts/pproduct_sans_rregular.ttf"

    .line 12
    .line 13
    invoke-static {p1, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 14
    .line 15
    .line 16
    new-instance p1, Lh5/j;

    .line 17
    .line 18
    invoke-direct {p1}, Lh5/j;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance p1, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lflix/com/vision/tv/TVCategorySearchActivity;->j:Ljava/util/ArrayList;

    .line 27
    .line 28
    sget p1, Lflix/com/vision/R$layout;->activity_tv_category_search:I

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Le/v;->setContentView(I)V

    .line 31
    .line 32
    .line 33
    new-instance p1, LC4/c0;

    .line 34
    .line 35
    iget-object v1, p0, Lflix/com/vision/tv/TVCategorySearchActivity;->j:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {p1, v1, p0, p0}, LC4/c0;-><init>(Ljava/util/ArrayList;LU4/l;Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lflix/com/vision/tv/TVCategorySearchActivity;->f:LC4/c0;

    .line 41
    .line 42
    sget p1, Lflix/com/vision/R$id;->search_view:I

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 49
    .line 50
    iput-object p1, p0, Lflix/com/vision/tv/TVCategorySearchActivity;->b:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    invoke-virtual {p1, v1}, Lflix/com/vision/materialsearchview/MaterialSearchView;->setShouldKeepHistory(Z)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lflix/com/vision/tv/TVCategorySearchActivity;->b:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 57
    .line 58
    const/4 v1, 0x1

    .line 59
    invoke-virtual {p1, v1}, Lflix/com/vision/materialsearchview/MaterialSearchView;->setTintAlpha(I)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lflix/com/vision/tv/TVCategorySearchActivity;->b:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 63
    .line 64
    const-string v2, "Searching in all categories..."

    .line 65
    .line 66
    invoke-virtual {p1, v2}, Lflix/com/vision/materialsearchview/MaterialSearchView;->setHint(Ljava/lang/CharSequence;)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lflix/com/vision/tv/TVCategorySearchActivity;->b:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 70
    .line 71
    new-instance v2, Lf5/F;

    .line 72
    .line 73
    invoke-direct {v2, p0}, Lf5/F;-><init>(Lflix/com/vision/tv/TVCategorySearchActivity;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v2}, Lflix/com/vision/materialsearchview/MaterialSearchView;->setOnQueryTextListener(Lflix/com/vision/materialsearchview/MaterialSearchView$OnQueryTextListener;)V

    .line 77
    .line 78
    .line 79
    sget p1, Lflix/com/vision/R$id;->activity_player:I

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 86
    .line 87
    sget p1, Lflix/com/vision/R$id;->toolbar:I

    .line 88
    .line 89
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 94
    .line 95
    invoke-virtual {p0, p1}, Le/v;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Le/v;->getSupportActionBar()Le/b;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p1, v1}, Le/b;->setDisplayHomeAsUpEnabled(Z)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Le/v;->getSupportActionBar()Le/b;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    const-string v1, "TV Genre Search"

    .line 110
    .line 111
    invoke-virtual {p1, v1}, Le/b;->setTitle(Ljava/lang/CharSequence;)V

    .line 112
    .line 113
    .line 114
    sget p1, Lflix/com/vision/R$id;->recyclerview_categories:I

    .line 115
    .line 116
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    check-cast p1, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 121
    .line 122
    iput-object p1, p0, Lflix/com/vision/tv/TVCategorySearchActivity;->e:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 123
    .line 124
    iget-object v1, p0, Lflix/com/vision/tv/TVCategorySearchActivity;->f:LC4/c0;

    .line 125
    .line 126
    invoke-virtual {p1, v1}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->setAdapter(Lm1/V;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-static {p1}, Lb/c;->d(Landroid/view/Display;)Landroid/util/DisplayMetrics;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {p0}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 150
    .line 151
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 152
    .line 153
    int-to-float p1, p1

    .line 154
    div-float/2addr p1, v1

    .line 155
    const/16 v1, 0x8c

    .line 156
    .line 157
    int-to-float v1, v1

    .line 158
    div-float/2addr p1, v1

    .line 159
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    new-instance v1, Lflix/com/vision/helpers/CenterGridLayoutManager;

    .line 164
    .line 165
    invoke-direct {v1, p0, p1}, Lflix/com/vision/helpers/CenterGridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 166
    .line 167
    .line 168
    iget-object p1, p0, Lflix/com/vision/tv/TVCategorySearchActivity;->e:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 169
    .line 170
    invoke-virtual {p1, v1}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 171
    .line 172
    .line 173
    iget-object p1, p0, Lflix/com/vision/tv/TVCategorySearchActivity;->e:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 174
    .line 175
    new-instance v1, LT4/l;

    .line 176
    .line 177
    invoke-direct {v1, v0}, LT4/l;-><init>(I)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1, v1}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->addItemDecoration(Lm1/d0;)V

    .line 181
    .line 182
    .line 183
    new-instance p1, Landroid/os/Handler;

    .line 184
    .line 185
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 186
    .line 187
    .line 188
    new-instance v1, Lf1/a;

    .line 189
    .line 190
    invoke-direct {v1, p0, v0}, Lf1/a;-><init>(Ljava/lang/Object;I)V

    .line 191
    .line 192
    .line 193
    const-wide/16 v2, 0x1f4

    .line 194
    .line 195
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 196
    .line 197
    .line 198
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

.method public onLongPress(ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lflix/com/vision/tv/TVCategory;",
            ">;)V"
        }
    .end annotation

    return-void
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
    iget-object v0, p0, Lflix/com/vision/tv/TVCategorySearchActivity;->b:Lflix/com/vision/materialsearchview/MaterialSearchView;

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

.method public openCategory(Lflix/com/vision/tv/TVCategory;)V
    .locals 4

    .line 1
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lflix/com/vision/App;->m:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v0, v0, Lflix/com/vision/App;->j:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lflix/com/vision/models/ChannelTv;

    .line 31
    .line 32
    iget-object v2, v1, Lflix/com/vision/models/ChannelTv;->group_name:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p1}, Lflix/com/vision/tv/TVCategory;->getCategoryName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    iget-object v2, v2, Lflix/com/vision/App;->m:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .line 55
    .line 56
    const-class v1, Lflix/com/vision/tv/ChannelsListActivity;

    .line 57
    .line 58
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    .line 60
    .line 61
    const-string v1, "cat_name"

    .line 62
    .line 63
    invoke-virtual {p1}, Lflix/com/vision/tv/TVCategory;->getCategoryName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method
