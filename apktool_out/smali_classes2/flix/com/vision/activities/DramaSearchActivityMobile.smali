.class public Lflix/com/vision/activities/DramaSearchActivityMobile;
.super Lflix/com/vision/activities/base/a;
.source "SourceFile"

# interfaces
.implements LU4/e;


# static fields
.field public static final synthetic t:I


# instance fields
.field public b:Landroid/widget/RelativeLayout;

.field public e:Landroidx/appcompat/widget/Toolbar;

.field public f:Lflix/com/vision/materialsearchview/MaterialSearchView;

.field public final j:Ljava/util/ArrayList;

.field public m:Landroidx/recyclerview/widget/RecyclerView;

.field public n:LC4/z;

.field public p:Ljava/lang/String;

.field public q:Z

.field public r:I

.field public s:LQ4/d;


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
    iput-object v0, p0, Lflix/com/vision/activities/DramaSearchActivityMobile;->j:Ljava/util/ArrayList;

    .line 10
    .line 11
    const-string v0, "https://kissasiantv.to"

    .line 12
    .line 13
    iput-object v0, p0, Lflix/com/vision/activities/DramaSearchActivityMobile;->p:Ljava/lang/String;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lflix/com/vision/activities/DramaSearchActivityMobile;->q:Z

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/DramaSearchActivityMobile;->f:Lflix/com/vision/materialsearchview/MaterialSearchView;

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
    iget-object v0, p0, Lflix/com/vision/activities/DramaSearchActivityMobile;->f:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 10
    .line 11
    invoke-virtual {v0}, Lflix/com/vision/materialsearchview/MaterialSearchView;->closeSearch()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-boolean v0, p0, Lflix/com/vision/activities/DramaSearchActivityMobile;->q:Z

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iput-boolean v1, p0, Lflix/com/vision/activities/DramaSearchActivityMobile;->q:Z

    .line 21
    .line 22
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    iget-object v0, p0, Lflix/com/vision/activities/DramaSearchActivityMobile;->j:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/16 v2, 0xc8

    .line 36
    .line 37
    if-ge v0, v2, :cond_2

    .line 38
    .line 39
    iget-object v0, p0, Lflix/com/vision/activities/DramaSearchActivityMobile;->m:Landroidx/recyclerview/widget/RecyclerView;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    iget-object v0, p0, Lflix/com/vision/activities/DramaSearchActivityMobile;->m:Landroidx/recyclerview/widget/RecyclerView;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 48
    .line 49
    .line 50
    :goto_0
    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lflix/com/vision/activities/DramaSearchActivityMobile;->q:Z

    .line 52
    .line 53
    iget-object v0, p0, Lflix/com/vision/activities/DramaSearchActivityMobile;->m:Landroidx/recyclerview/widget/RecyclerView;

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lflix/com/vision/activities/DramaSearchActivityMobile;->e:Landroidx/appcompat/widget/Toolbar;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const-string v2, "Press Back again to Exit"

    .line 68
    .line 69
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 74
    .line 75
    .line 76
    new-instance v0, Landroid/os/Handler;

    .line 77
    .line 78
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 79
    .line 80
    .line 81
    new-instance v1, Ly4/D;

    .line 82
    .line 83
    const/4 v2, 0x0

    .line 84
    invoke-direct {v1, p0, v2}, Ly4/D;-><init>(Lflix/com/vision/activities/DramaSearchActivityMobile;I)V

    .line 85
    .line 86
    .line 87
    const-wide/16 v2, 0x7d0

    .line 88
    .line 89
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 90
    .line 91
    .line 92
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
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 10
    .line 11
    sget-object v1, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, "pref_drama_host"

    .line 14
    .line 15
    const-string v2, "https://kissasiantv.to"

    .line 16
    .line 17
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lflix/com/vision/activities/DramaSearchActivityMobile;->p:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v1, "fonts/pproduct_sans_rregular.ttf"

    .line 28
    .line 29
    invoke-static {p1, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 30
    .line 31
    .line 32
    new-instance p1, Lh5/j;

    .line 33
    .line 34
    invoke-direct {p1}, Lh5/j;-><init>()V

    .line 35
    .line 36
    .line 37
    sget p1, Lflix/com/vision/R$layout;->activity_drama_search_mobile:I

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Le/v;->setContentView(I)V

    .line 40
    .line 41
    .line 42
    new-instance p1, LC4/z;

    .line 43
    .line 44
    iget-object v1, p0, Lflix/com/vision/activities/DramaSearchActivityMobile;->j:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {p1, v1, p0, p0}, LC4/z;-><init>(Ljava/util/ArrayList;Landroid/app/Activity;LU4/e;)V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lflix/com/vision/activities/DramaSearchActivityMobile;->n:LC4/z;

    .line 50
    .line 51
    sget p1, Lflix/com/vision/R$id;->search_view:I

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 58
    .line 59
    iput-object p1, p0, Lflix/com/vision/activities/DramaSearchActivityMobile;->f:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 60
    .line 61
    const/4 v1, 0x0

    .line 62
    invoke-virtual {p1, v1}, Lflix/com/vision/materialsearchview/MaterialSearchView;->setShouldKeepHistory(Z)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lflix/com/vision/activities/DramaSearchActivityMobile;->f:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Lflix/com/vision/materialsearchview/MaterialSearchView;->setTintAlpha(I)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lflix/com/vision/activities/DramaSearchActivityMobile;->f:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 71
    .line 72
    const-string v1, "Search for any adult video..."

    .line 73
    .line 74
    invoke-virtual {p1, v1}, Lflix/com/vision/materialsearchview/MaterialSearchView;->setHint(Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lflix/com/vision/activities/DramaSearchActivityMobile;->f:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 78
    .line 79
    new-instance v1, Ly4/F;

    .line 80
    .line 81
    invoke-direct {v1, p0}, Ly4/F;-><init>(Lflix/com/vision/activities/DramaSearchActivityMobile;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v1}, Lflix/com/vision/materialsearchview/MaterialSearchView;->setOnQueryTextListener(Lflix/com/vision/materialsearchview/MaterialSearchView$OnQueryTextListener;)V

    .line 85
    .line 86
    .line 87
    sget p1, Lflix/com/vision/R$id;->activity_player:I

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
    iput-object p1, p0, Lflix/com/vision/activities/DramaSearchActivityMobile;->b:Landroid/widget/RelativeLayout;

    .line 96
    .line 97
    sget p1, Lflix/com/vision/R$id;->toolbar:I

    .line 98
    .line 99
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 104
    .line 105
    iput-object p1, p0, Lflix/com/vision/activities/DramaSearchActivityMobile;->e:Landroidx/appcompat/widget/Toolbar;

    .line 106
    .line 107
    invoke-virtual {p0, p1}, Le/v;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Le/v;->getSupportActionBar()Le/b;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p1, v0}, Le/b;->setDisplayHomeAsUpEnabled(Z)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Le/v;->getSupportActionBar()Le/b;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    const-string v1, "Adult Video Search"

    .line 122
    .line 123
    invoke-virtual {p1, v1}, Le/b;->setTitle(Ljava/lang/CharSequence;)V

    .line 124
    .line 125
    .line 126
    sget p1, Lflix/com/vision/R$id;->recyclerview_categories:I

    .line 127
    .line 128
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 133
    .line 134
    iput-object p1, p0, Lflix/com/vision/activities/DramaSearchActivityMobile;->m:Landroidx/recyclerview/widget/RecyclerView;

    .line 135
    .line 136
    iget-object v1, p0, Lflix/com/vision/activities/DramaSearchActivityMobile;->n:LC4/z;

    .line 137
    .line 138
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lm1/V;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-static {p1}, Lb/c;->d(Landroid/view/Display;)Landroid/util/DisplayMetrics;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {p0}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 162
    .line 163
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 164
    .line 165
    int-to-float p1, p1

    .line 166
    div-float/2addr p1, v1

    .line 167
    const/16 v1, 0x82

    .line 168
    .line 169
    int-to-float v1, v1

    .line 170
    div-float/2addr p1, v1

    .line 171
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    new-instance v1, Lflix/com/vision/helpers/CenterGridLayoutManager;

    .line 176
    .line 177
    invoke-direct {v1, p0, p1}, Lflix/com/vision/helpers/CenterGridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 178
    .line 179
    .line 180
    iget-object p1, p0, Lflix/com/vision/activities/DramaSearchActivityMobile;->m:Landroidx/recyclerview/widget/RecyclerView;

    .line 181
    .line 182
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 183
    .line 184
    .line 185
    iget-object p1, p0, Lflix/com/vision/activities/DramaSearchActivityMobile;->m:Landroidx/recyclerview/widget/RecyclerView;

    .line 186
    .line 187
    new-instance v1, LT4/l;

    .line 188
    .line 189
    const/4 v2, 0x5

    .line 190
    invoke-direct {v1, v2}, LT4/l;-><init>(I)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Lm1/d0;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0}, Lflix/com/vision/activities/DramaSearchActivityMobile;->setBackgroundColor()V

    .line 197
    .line 198
    .line 199
    new-instance p1, Landroid/os/Handler;

    .line 200
    .line 201
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 202
    .line 203
    .line 204
    new-instance v1, Ly4/D;

    .line 205
    .line 206
    invoke-direct {v1, p0, v0}, Ly4/D;-><init>(Lflix/com/vision/activities/DramaSearchActivityMobile;I)V

    .line 207
    .line 208
    .line 209
    const-wide/16 v2, 0x1f4

    .line 210
    .line 211
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 212
    .line 213
    .line 214
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
    iget-object v0, p0, Lflix/com/vision/activities/DramaSearchActivityMobile;->f:Lflix/com/vision/materialsearchview/MaterialSearchView;

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
    invoke-super {p0}, Lflix/com/vision/activities/base/a;->onResume()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public openDrama(Lflix/com/vision/models/Drama;)V
    .locals 0

    return-void
.end method

.method public removeDramaFromFavorites(Lflix/com/vision/models/Drama;)V
    .locals 0

    return-void
.end method

.method public setBackgroundColor()V
    .locals 5

    .line 1
    const v0, 0x263984

    .line 2
    .line 3
    .line 4
    iput v0, p0, Lflix/com/vision/activities/DramaSearchActivityMobile;->r:I

    .line 5
    .line 6
    new-instance v0, Landroid/animation/ArgbEvaluator;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lflix/com/vision/activities/DramaSearchActivityMobile;->r:I

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
    const/16 v3, 0xc

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
    iput v2, p0, Lflix/com/vision/activities/DramaSearchActivityMobile;->r:I

    .line 53
    .line 54
    return-void
.end method
