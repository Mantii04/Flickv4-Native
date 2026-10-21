.class public Lflix/com/vision/tv/ChannelsListActivityLegacy;
.super Lflix/com/vision/activities/base/a;
.source "SourceFile"


# static fields
.field public static final synthetic y:I


# instance fields
.field public b:Lflix/com/vision/materialsearchview/MaterialSearchView;

.field public e:Landroid/widget/ProgressBar;

.field public f:LC4/u;

.field public final j:Ljava/util/ArrayList;

.field public final m:Ljava/util/ArrayList;

.field public n:Landroidx/recyclerview/widget/RecyclerView;

.field public p:Ljava/lang/String;

.field public q:Landroid/view/animation/AlphaAnimation;

.field public r:Ljava/lang/String;

.field public s:Landroid/view/Menu;

.field public t:Z

.field public u:Landroid/os/Handler;

.field public v:Lf1/a;

.field public w:Landroid/widget/TextView;

.field public x:Landroid/widget/RelativeLayout;


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
    iput-object v0, p0, Lflix/com/vision/tv/ChannelsListActivityLegacy;->j:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lflix/com/vision/tv/ChannelsListActivityLegacy;->m:Ljava/util/ArrayList;

    .line 17
    .line 18
    const-string v0, ""

    .line 19
    .line 20
    iput-object v0, p0, Lflix/com/vision/tv/ChannelsListActivityLegacy;->p:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v0, p0, Lflix/com/vision/tv/ChannelsListActivityLegacy;->r:Ljava/lang/String;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lflix/com/vision/tv/ChannelsListActivityLegacy;->t:Z

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public OpenChannel(Lflix/com/vision/models/ChannelTv;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lflix/com/vision/models/ChannelTv;->links:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-le v0, v1, :cond_1

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    iget-object v2, p1, Lflix/com/vision/models/ChannelTv;->links:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-ge v1, v2, :cond_0

    .line 23
    .line 24
    iget-object v2, p1, Lflix/com/vision/models/ChannelTv;->links:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lflix/com/vision/models/StreamUrl;

    .line 31
    .line 32
    iget-object v2, v2, Lflix/com/vision/models/StreamUrl;->label:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, [Ljava/lang/CharSequence;

    .line 51
    .line 52
    new-instance v1, Le/r;

    .line 53
    .line 54
    new-instance v2, Landroid/view/ContextThemeWrapper;

    .line 55
    .line 56
    sget v3, Lflix/com/vision/R$style;->AlertDialogCustom:I

    .line 57
    .line 58
    invoke-direct {v2, p0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 59
    .line 60
    .line 61
    invoke-direct {v1, v2}, Le/r;-><init>(Landroid/content/Context;)V

    .line 62
    .line 63
    .line 64
    new-instance v2, LB4/b;

    .line 65
    .line 66
    const/4 v3, 0x1

    .line 67
    invoke-direct {v2, v3, p0, p1}, LB4/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    const/4 p1, -0x1

    .line 71
    invoke-virtual {v1, v0, p1, v2}, Le/r;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Le/r;

    .line 72
    .line 73
    .line 74
    new-instance p1, LB4/c;

    .line 75
    .line 76
    const/4 v0, 0x2

    .line 77
    invoke-direct {p1, v0}, LB4/c;-><init>(I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, p1}, Le/r;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Le/r;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Le/r;->show()Le/s;

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_1
    invoke-virtual {p0, p1}, Lflix/com/vision/tv/ChannelsListActivityLegacy;->OpenChannell(Lflix/com/vision/models/ChannelTv;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public OpenChannell(Lflix/com/vision/models/ChannelTv;)V
    .locals 9

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lflix/com/vision/tv/PlayerActivityLiveExtended;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v1, v1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 13
    .line 14
    const-string v2, "player_index"

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    new-instance v0, Landroid/content/Intent;

    .line 24
    .line 25
    const-class v1, Lflix/com/vision/tv/PlayerActivityLiveExternal;

    .line 26
    .line 27
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    iget-object v4, v4, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 40
    .line 41
    invoke-interface {v4, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    const/4 v2, 0x2

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/16 v2, 0x3e8

    .line 50
    .line 51
    :goto_0
    iget-object v4, p0, Lflix/com/vision/tv/ChannelsListActivityLegacy;->j:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    const-string v6, "channels3g"

    .line 58
    .line 59
    const-string v7, "index"

    .line 60
    .line 61
    if-le v5, v2, :cond_3

    .line 62
    .line 63
    move v5, v3

    .line 64
    :goto_1
    if-ge v5, v2, :cond_2

    .line 65
    .line 66
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    check-cast v8, Lflix/com/vision/models/ChannelTv;

    .line 71
    .line 72
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    add-int/lit8 v5, v5, 0x1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    invoke-virtual {v1, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_3
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 96
    .line 97
    .line 98
    iget-object v1, p1, Lflix/com/vision/models/ChannelTv;->logoUrl:Ljava/lang/String;

    .line 99
    .line 100
    const-string v2, "img_url"

    .line 101
    .line 102
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    .line 104
    .line 105
    const-string v1, "title_simple"

    .line 106
    .line 107
    iget-object p1, p1, Lflix/com/vision/models/ChannelTv;->label:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    .line 111
    .line 112
    :goto_2
    const/16 p1, 0x268a

    .line 113
    .line 114
    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :catch_0
    move-exception p1

    .line 119
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method public ToastChannel(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lflix/com/vision/tv/ChannelsListActivityLegacy;->x:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lflix/com/vision/tv/ChannelsListActivityLegacy;->u:Landroid/os/Handler;

    .line 9
    .line 10
    iget-object v1, p0, Lflix/com/vision/tv/ChannelsListActivityLegacy;->v:Lf1/a;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lflix/com/vision/tv/ChannelsListActivityLegacy;->u:Landroid/os/Handler;

    .line 16
    .line 17
    iget-object v1, p0, Lflix/com/vision/tv/ChannelsListActivityLegacy;->v:Lf1/a;

    .line 18
    .line 19
    const-wide/16 v2, 0x7d0

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lflix/com/vision/tv/ChannelsListActivityLegacy;->w:Landroid/widget/TextView;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lflix/com/vision/tv/ChannelsListActivityLegacy;->x:Landroid/widget/RelativeLayout;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public categorySelected(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lflix/com/vision/tv/ChannelsListActivityLegacy;->e:Landroid/widget/ProgressBar;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, p1, v1}, Lf5/m;->GetCategoriesChannels(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/H;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/tv/ChannelsListActivityLegacy;->b:Lflix/com/vision/materialsearchview/MaterialSearchView;

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
    iget-object v0, p0, Lflix/com/vision/tv/ChannelsListActivityLegacy;->b:Lflix/com/vision/materialsearchview/MaterialSearchView;

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
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Lflix/com/vision/activities/base/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lflix/com/vision/R$layout;->channel_list_new:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Le/v;->setContentView(I)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v0, "cat_id"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    sget-boolean v0, Lflix/com/vision/App;->I:Z

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    sget v0, Lflix/com/vision/R$id;->toast_view:I

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Le/v;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 38
    .line 39
    iput-object v0, p0, Lflix/com/vision/tv/ChannelsListActivityLegacy;->x:Landroid/widget/RelativeLayout;

    .line 40
    .line 41
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .line 42
    .line 43
    const/high16 v2, 0x3f800000    # 1.0f

    .line 44
    .line 45
    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lflix/com/vision/tv/ChannelsListActivityLegacy;->q:Landroid/view/animation/AlphaAnimation;

    .line 49
    .line 50
    sget v0, Lflix/com/vision/R$id;->customToastText:I

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Le/v;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Landroid/widget/TextView;

    .line 57
    .line 58
    iput-object v0, p0, Lflix/com/vision/tv/ChannelsListActivityLegacy;->w:Landroid/widget/TextView;

    .line 59
    .line 60
    new-instance v0, Landroid/os/Handler;

    .line 61
    .line 62
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lflix/com/vision/tv/ChannelsListActivityLegacy;->u:Landroid/os/Handler;

    .line 66
    .line 67
    new-instance v0, Lf1/a;

    .line 68
    .line 69
    const/4 v2, 0x3

    .line 70
    invoke-direct {v0, p0, v2}, Lf1/a;-><init>(Ljava/lang/Object;I)V

    .line 71
    .line 72
    .line 73
    iput-object v0, p0, Lflix/com/vision/tv/ChannelsListActivityLegacy;->v:Lf1/a;

    .line 74
    .line 75
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    const-string v2, "url"

    .line 80
    .line 81
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    const-string v2, "label"

    .line 89
    .line 90
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iput-object v0, p0, Lflix/com/vision/tv/ChannelsListActivityLegacy;->p:Ljava/lang/String;

    .line 95
    .line 96
    if-nez v0, :cond_1

    .line 97
    .line 98
    const-string v0, ""

    .line 99
    .line 100
    iput-object v0, p0, Lflix/com/vision/tv/ChannelsListActivityLegacy;->p:Ljava/lang/String;

    .line 101
    .line 102
    :cond_1
    sget v0, Lflix/com/vision/R$id;->toolbar:I

    .line 103
    .line 104
    invoke-virtual {p0, v0}, Le/v;->findViewById(I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 109
    .line 110
    invoke-virtual {p0, v0}, Le/v;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Le/v;->getSupportActionBar()Le/b;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    iget-object v3, p0, Lflix/com/vision/tv/ChannelsListActivityLegacy;->p:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v3, ", "

    .line 128
    .line 129
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    sget v3, Lflix/com/vision/R$string;->channels_label:I

    .line 133
    .line 134
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {v0, v2}, Le/b;->setTitle(Ljava/lang/CharSequence;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Le/v;->getSupportActionBar()Le/b;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    const/4 v2, 0x1

    .line 153
    invoke-virtual {v0, v2}, Le/b;->setDisplayHomeAsUpEnabled(Z)V

    .line 154
    .line 155
    .line 156
    sget v0, Lflix/com/vision/R$id;->search_view:I

    .line 157
    .line 158
    invoke-virtual {p0, v0}, Le/v;->findViewById(I)Landroid/view/View;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    check-cast v0, Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 163
    .line 164
    iput-object v0, p0, Lflix/com/vision/tv/ChannelsListActivityLegacy;->b:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 165
    .line 166
    invoke-virtual {v0, v1}, Lflix/com/vision/materialsearchview/MaterialSearchView;->adjustTintAlpha(F)V

    .line 167
    .line 168
    .line 169
    iget-object v0, p0, Lflix/com/vision/tv/ChannelsListActivityLegacy;->b:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 170
    .line 171
    const/4 v1, 0x0

    .line 172
    invoke-virtual {v0, v1}, Lflix/com/vision/materialsearchview/MaterialSearchView;->setShouldKeepHistory(Z)V

    .line 173
    .line 174
    .line 175
    iget-object v0, p0, Lflix/com/vision/tv/ChannelsListActivityLegacy;->b:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 176
    .line 177
    new-instance v1, Lf5/c;

    .line 178
    .line 179
    invoke-direct {v1, p0}, Lf5/c;-><init>(Lflix/com/vision/tv/ChannelsListActivityLegacy;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, v1}, Lflix/com/vision/materialsearchview/MaterialSearchView;->setOnQueryTextListener(Lflix/com/vision/materialsearchview/MaterialSearchView$OnQueryTextListener;)V

    .line 183
    .line 184
    .line 185
    sget v0, Lflix/com/vision/R$id;->loader:I

    .line 186
    .line 187
    invoke-virtual {p0, v0}, Le/v;->findViewById(I)Landroid/view/View;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    check-cast v0, Landroid/widget/ProgressBar;

    .line 192
    .line 193
    iput-object v0, p0, Lflix/com/vision/tv/ChannelsListActivityLegacy;->e:Landroid/widget/ProgressBar;

    .line 194
    .line 195
    sget v0, Lflix/com/vision/R$id;->recyclerview:I

    .line 196
    .line 197
    invoke-virtual {p0, v0}, Le/v;->findViewById(I)Landroid/view/View;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 202
    .line 203
    iput-object v0, p0, Lflix/com/vision/tv/ChannelsListActivityLegacy;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 204
    .line 205
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 206
    .line 207
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 219
    .line 220
    .line 221
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 222
    .line 223
    int-to-float v1, v1

    .line 224
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 225
    .line 226
    div-float/2addr v1, v0

    .line 227
    const/high16 v0, 0x435c0000    # 220.0f

    .line 228
    .line 229
    div-float/2addr v1, v0

    .line 230
    float-to-int v0, v1

    .line 231
    const/4 v1, 0x2

    .line 232
    if-ge v0, v1, :cond_2

    .line 233
    .line 234
    move v0, v1

    .line 235
    :cond_2
    new-instance v1, Lflix/com/vision/helpers/CenterGridLayoutManager;

    .line 236
    .line 237
    invoke-direct {v1, p0, v0}, Lflix/com/vision/helpers/CenterGridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 238
    .line 239
    .line 240
    iget-object v0, p0, Lflix/com/vision/tv/ChannelsListActivityLegacy;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 241
    .line 242
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 243
    .line 244
    .line 245
    new-instance v2, LC4/u;

    .line 246
    .line 247
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    iget-object v4, p0, Lflix/com/vision/tv/ChannelsListActivityLegacy;->j:Ljava/util/ArrayList;

    .line 252
    .line 253
    const/16 v6, 0x231d

    .line 254
    .line 255
    const/16 v7, 0x64

    .line 256
    .line 257
    move-object v5, p0

    .line 258
    invoke-direct/range {v2 .. v7}, LC4/u;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/app/Activity;II)V

    .line 259
    .line 260
    .line 261
    iput-object v2, v5, Lflix/com/vision/tv/ChannelsListActivityLegacy;->f:LC4/u;

    .line 262
    .line 263
    iget-object v0, v5, Lflix/com/vision/tv/ChannelsListActivityLegacy;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 264
    .line 265
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lm1/V;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p0, p1}, Lflix/com/vision/tv/ChannelsListActivityLegacy;->categorySelected(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    const-string v0, "cat_name"

    .line 276
    .line 277
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    iput-object p1, v5, Lflix/com/vision/tv/ChannelsListActivityLegacy;->r:Ljava/lang/String;

    .line 282
    .line 283
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    iput-object p1, p0, Lflix/com/vision/tv/ChannelsListActivityLegacy;->s:Landroid/view/Menu;

    .line 2
    .line 3
    invoke-virtual {p0}, Le/v;->getMenuInflater()Landroid/view/MenuInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget v1, Lflix/com/vision/R$menu;->menu_channel_list_2:I

    .line 8
    .line 9
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    return p1
.end method

.method public onMessageEvent(LR4/a;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object p1, p1, LR4/a;->a:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lflix/com/vision/tv/ChannelsListActivityLegacy;->j:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lflix/com/vision/models/ChannelTv;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lflix/com/vision/tv/ChannelsListActivityLegacy;->m:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object p1, p0, Lflix/com/vision/tv/ChannelsListActivityLegacy;->f:LC4/u;

    .line 42
    .line 43
    invoke-virtual {p1}, Lm1/V;->notifyDataSetChanged()V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lflix/com/vision/tv/ChannelsListActivityLegacy;->e:Landroid/widget/ProgressBar;

    .line 47
    .line 48
    const/16 v1, 0x8

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Le/v;->getSupportActionBar()Le/b;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    iget-object v2, p0, Lflix/com/vision/tv/ChannelsListActivityLegacy;->r:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v2, ": "

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v0, " Channels"

    .line 80
    .line 81
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {p1, v0}, Le/b;->setTitle(Ljava/lang/CharSequence;)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lflix/com/vision/tv/ChannelsListActivityLegacy;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 92
    .line 93
    const/4 v0, 0x0

    .line 94
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 95
    .line 96
    .line 97
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

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
    iget-object v0, p0, Lflix/com/vision/tv/ChannelsListActivityLegacy;->b:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 10
    .line 11
    invoke-virtual {v0}, Lflix/com/vision/materialsearchview/MaterialSearchView;->openSearch()V

    .line 12
    .line 13
    .line 14
    goto/16 :goto_2

    .line 15
    .line 16
    :cond_0
    sget v1, Lflix/com/vision/R$id;->action_favorites_channels_list:I

    .line 17
    .line 18
    if-ne v0, v1, :cond_6

    .line 19
    .line 20
    iget-boolean v0, p0, Lflix/com/vision/tv/ChannelsListActivityLegacy;->t:Z

    .line 21
    .line 22
    xor-int/lit8 v1, v0, 0x1

    .line 23
    .line 24
    iput-boolean v1, p0, Lflix/com/vision/tv/ChannelsListActivityLegacy;->t:Z

    .line 25
    .line 26
    iget-object v1, p0, Lflix/com/vision/tv/ChannelsListActivityLegacy;->m:Ljava/util/ArrayList;

    .line 27
    .line 28
    iget-object v2, p0, Lflix/com/vision/tv/ChannelsListActivityLegacy;->j:Ljava/util/ArrayList;

    .line 29
    .line 30
    if-nez v0, :cond_5

    .line 31
    .line 32
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v0, v0, Lflix/com/vision/App;->r:LP4/e;

    .line 37
    .line 38
    invoke-virtual {v0}, LP4/e;->getFavoritesChannels()Ljava/util/ArrayList;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    new-instance v3, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_1

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    check-cast v4, Lflix/com/vision/models/ChannelTv;

    .line 62
    .line 63
    iget-object v4, v4, Lflix/com/vision/models/ChannelTv;->label:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-eqz v4, :cond_3

    .line 83
    .line 84
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    check-cast v4, Lflix/com/vision/models/ChannelTv;

    .line 89
    .line 90
    iget-object v5, v4, Lflix/com/vision/models/ChannelTv;->label:Ljava/lang/String;

    .line 91
    .line 92
    if-eqz v5, :cond_2

    .line 93
    .line 94
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    const/4 v6, 0x1

    .line 103
    if-le v5, v6, :cond_2

    .line 104
    .line 105
    iget-object v5, v4, Lflix/com/vision/models/ChannelTv;->label:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    if-eqz v5, :cond_2

    .line 112
    .line 113
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-lez v1, :cond_4

    .line 122
    .line 123
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lflix/com/vision/tv/ChannelsListActivityLegacy;->f:LC4/u;

    .line 130
    .line 131
    invoke-virtual {v0}, Lm1/V;->notifyDataSetChanged()V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lflix/com/vision/tv/ChannelsListActivityLegacy;->s:Landroid/view/Menu;

    .line 135
    .line 136
    sget v1, Lflix/com/vision/R$id;->action_favorites_channels_list:I

    .line 137
    .line 138
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    sget v1, Lflix/com/vision/R$drawable;->ic_action_favorite:I

    .line 143
    .line 144
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_4
    sget v0, Lflix/com/vision/R$string;->no_fav_channels_label:I

    .line 149
    .line 150
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    const/4 v1, 0x0

    .line 155
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 160
    .line 161
    .line 162
    iput-boolean v1, p0, Lflix/com/vision/tv/ChannelsListActivityLegacy;->t:Z

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 169
    .line 170
    .line 171
    iget-object v0, p0, Lflix/com/vision/tv/ChannelsListActivityLegacy;->f:LC4/u;

    .line 172
    .line 173
    invoke-virtual {v0}, Lm1/V;->notifyDataSetChanged()V

    .line 174
    .line 175
    .line 176
    iget-object v0, p0, Lflix/com/vision/tv/ChannelsListActivityLegacy;->s:Landroid/view/Menu;

    .line 177
    .line 178
    sget v1, Lflix/com/vision/R$id;->action_favorites_channels_list:I

    .line 179
    .line 180
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    sget v1, Lflix/com/vision/R$drawable;->ic_action_favorite_border:I

    .line 185
    .line 186
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 187
    .line 188
    .line 189
    :cond_6
    :goto_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    return p1
.end method

.method public onResume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/tv/ChannelsListActivityLegacy;->b:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lflix/com/vision/materialsearchview/MaterialSearchView;->activityResumed()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lflix/com/vision/tv/ChannelsListActivityLegacy;->b:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 9
    .line 10
    invoke-virtual {v0}, Lflix/com/vision/materialsearchview/MaterialSearchView;->closeSearch()V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-super {p0}, Lflix/com/vision/activities/base/a;->onResume()V

    .line 14
    .line 15
    .line 16
    return-void
.end method
