.class public Lflix/com/vision/activities/adult/AdultVideosActivity;
.super Lflix/com/vision/activities/base/a;
.source "SourceFile"

# interfaces
.implements LU4/c;
.implements Ld4/a;
.implements LU4/a;
.implements LU4/b;


# static fields
.field public static final synthetic C:I


# instance fields
.field public A:I

.field public B:LQ4/d;

.field public b:Landroid/widget/RelativeLayout;

.field public e:Landroid/widget/RelativeLayout;

.field public f:Landroid/widget/RelativeLayout;

.field public j:Landroid/widget/RelativeLayout;

.field public m:Landroid/widget/RelativeLayout;

.field public final n:Ljava/util/ArrayList;

.field public p:Lh5/j;

.field public q:Landroid/graphics/Typeface;

.field public r:Landroid/widget/TextView;

.field public final s:Ljava/util/ArrayList;

.field public t:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

.field public u:LC4/h;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:I

.field public y:I

.field public z:Z


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
    iput-object v0, p0, Lflix/com/vision/activities/adult/AdultVideosActivity;->n:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lflix/com/vision/activities/adult/AdultVideosActivity;->s:Ljava/util/ArrayList;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lflix/com/vision/activities/adult/AdultVideosActivity;->x:I

    .line 20
    .line 21
    iput v0, p0, Lflix/com/vision/activities/adult/AdultVideosActivity;->y:I

    .line 22
    .line 23
    iput-boolean v0, p0, Lflix/com/vision/activities/adult/AdultVideosActivity;->z:Z

    .line 24
    .line 25
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
    iget-object v0, p0, Lflix/com/vision/activities/adult/AdultVideosActivity;->B:LQ4/d;

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
    iget-object v0, p0, Lflix/com/vision/activities/adult/AdultVideosActivity;->n:Ljava/util/ArrayList;

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
    new-instance p1, Lz4/j;

    .line 17
    .line 18
    invoke-direct {p1, p0}, Lz4/j;-><init>(Lflix/com/vision/activities/adult/AdultVideosActivity;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p1, Lz4/j;->a:Z

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

.method public OnVideoListSuccess(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lflix/com/vision/models/adult/AdultVideo;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lz4/j;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lz4/j;-><init>(Lflix/com/vision/activities/adult/AdultVideosActivity;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, v0, Lz4/j;->b:Ljava/util/ArrayList;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, v0, Lz4/j;->a:Z

    .line 10
    .line 11
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
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
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultVideosActivity;->s:Ljava/util/ArrayList;

    .line 14
    .line 15
    iget v1, p0, Lflix/com/vision/activities/adult/AdultVideosActivity;->y:I

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
    iget v1, p0, Lflix/com/vision/activities/adult/AdultVideosActivity;->y:I

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
    iget v1, p0, Lflix/com/vision/activities/adult/AdultVideosActivity;->y:I

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

.method public getVideos(I)V
    .locals 2

    .line 1
    new-instance v0, LX4/e;

    .line 2
    .line 3
    invoke-direct {v0, p0, p0}, LX4/e;-><init>(Landroid/content/Context;LU4/c;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lflix/com/vision/activities/adult/AdultVideosActivity;->v:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, LX4/e;->process(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lflix/com/vision/activities/adult/AdultVideosActivity;->z:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Lflix/com/vision/activities/adult/AdultVideosActivity;->z:Z

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
    iget-object v0, p0, Lflix/com/vision/activities/adult/AdultVideosActivity;->s:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lflix/com/vision/activities/adult/AdultVideosActivity;->t:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

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
    iget-object v0, p0, Lflix/com/vision/activities/adult/AdultVideosActivity;->t:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

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
    iput-boolean v0, p0, Lflix/com/vision/activities/adult/AdultVideosActivity;->z:Z

    .line 46
    .line 47
    iget-object v0, p0, Lflix/com/vision/activities/adult/AdultVideosActivity;->b:Landroid/widget/RelativeLayout;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lflix/com/vision/activities/adult/AdultVideosActivity;->t:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

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
    new-instance v1, Lz4/h;

    .line 76
    .line 77
    const/4 v2, 0x2

    .line 78
    invoke-direct {v1, p0, v2}, Lz4/h;-><init>(Lflix/com/vision/activities/adult/AdultVideosActivity;I)V

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
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-super {p0, p1}, Lflix/com/vision/activities/base/a;->onCreate(Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    sget-object v3, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 19
    .line 20
    const-string v3, "fonts/product_sans_bold.ttf"

    .line 21
    .line 22
    invoke-static {p1, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultVideosActivity;->q:Landroid/graphics/Typeface;

    .line 27
    .line 28
    new-instance p1, Lh5/j;

    .line 29
    .line 30
    invoke-direct {p1}, Lh5/j;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultVideosActivity;->p:Lh5/j;

    .line 34
    .line 35
    sget p1, Lflix/com/vision/R$layout;->activity_adult_categories:I

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Le/v;->setContentView(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const-string v3, "categoryUrl"

    .line 45
    .line 46
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultVideosActivity;->v:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const-string v3, "categoryTitle"

    .line 57
    .line 58
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultVideosActivity;->w:Ljava/lang/String;

    .line 63
    .line 64
    new-instance p1, LC4/h;

    .line 65
    .line 66
    iget-object v3, p0, Lflix/com/vision/activities/adult/AdultVideosActivity;->s:Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-direct {p1, p0, p0, v3}, LC4/h;-><init>(Landroid/app/Activity;LU4/b;Ljava/util/ArrayList;)V

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultVideosActivity;->u:LC4/h;

    .line 72
    .line 73
    sget p1, Lflix/com/vision/R$id;->history_button_adult:I

    .line 74
    .line 75
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 80
    .line 81
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultVideosActivity;->m:Landroid/widget/RelativeLayout;

    .line 82
    .line 83
    sget p1, Lflix/com/vision/R$id;->settings_button_adult:I

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
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultVideosActivity;->j:Landroid/widget/RelativeLayout;

    .line 92
    .line 93
    sget p1, Lflix/com/vision/R$id;->activity_player:I

    .line 94
    .line 95
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 100
    .line 101
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultVideosActivity;->f:Landroid/widget/RelativeLayout;

    .line 102
    .line 103
    sget p1, Lflix/com/vision/R$id;->favorites_button_adult:I

    .line 104
    .line 105
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 110
    .line 111
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultVideosActivity;->e:Landroid/widget/RelativeLayout;

    .line 112
    .line 113
    sget p1, Lflix/com/vision/R$id;->search_button_adult:I

    .line 114
    .line 115
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 120
    .line 121
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultVideosActivity;->b:Landroid/widget/RelativeLayout;

    .line 122
    .line 123
    sget p1, Lflix/com/vision/R$id;->recyclerview_categories:I

    .line 124
    .line 125
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    check-cast p1, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 130
    .line 131
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultVideosActivity;->t:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 132
    .line 133
    sget p1, Lflix/com/vision/R$id;->adult_page_title:I

    .line 134
    .line 135
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    check-cast p1, Landroid/widget/TextView;

    .line 140
    .line 141
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultVideosActivity;->r:Landroid/widget/TextView;

    .line 142
    .line 143
    iget-object v3, p0, Lflix/com/vision/activities/adult/AdultVideosActivity;->p:Lh5/j;

    .line 144
    .line 145
    iget-object v4, p0, Lflix/com/vision/activities/adult/AdultVideosActivity;->q:Landroid/graphics/Typeface;

    .line 146
    .line 147
    invoke-virtual {v3, p1, v4}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 148
    .line 149
    .line 150
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultVideosActivity;->m:Landroid/widget/RelativeLayout;

    .line 151
    .line 152
    new-instance v3, Lz4/i;

    .line 153
    .line 154
    invoke-direct {v3, p0, v2}, Lz4/i;-><init>(Lflix/com/vision/activities/adult/AdultVideosActivity;I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    .line 159
    .line 160
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultVideosActivity;->e:Landroid/widget/RelativeLayout;

    .line 161
    .line 162
    new-instance v3, Lz4/i;

    .line 163
    .line 164
    invoke-direct {v3, p0, v1}, Lz4/i;-><init>(Lflix/com/vision/activities/adult/AdultVideosActivity;I)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    .line 169
    .line 170
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultVideosActivity;->b:Landroid/widget/RelativeLayout;

    .line 171
    .line 172
    new-instance v3, Lz4/i;

    .line 173
    .line 174
    invoke-direct {v3, p0, v0}, Lz4/i;-><init>(Lflix/com/vision/activities/adult/AdultVideosActivity;I)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    .line 179
    .line 180
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultVideosActivity;->j:Landroid/widget/RelativeLayout;

    .line 181
    .line 182
    new-instance v3, Lz4/i;

    .line 183
    .line 184
    const/4 v4, 0x3

    .line 185
    invoke-direct {v3, p0, v4}, Lz4/i;-><init>(Lflix/com/vision/activities/adult/AdultVideosActivity;I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    .line 190
    .line 191
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultVideosActivity;->t:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 192
    .line 193
    iget-object v3, p0, Lflix/com/vision/activities/adult/AdultVideosActivity;->u:LC4/h;

    .line 194
    .line 195
    invoke-virtual {p1, v3}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->setAdapter(Lm1/V;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-static {p1}, Lb/c;->d(Landroid/view/Display;)Landroid/util/DisplayMetrics;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-virtual {p0}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 219
    .line 220
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 221
    .line 222
    int-to-float p1, p1

    .line 223
    div-float/2addr p1, v3

    .line 224
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    iget-object v3, v3, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 229
    .line 230
    const-string v4, "pref_adult_show_big_pictures"

    .line 231
    .line 232
    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 233
    .line 234
    .line 235
    move-result v3

    .line 236
    if-nez v3, :cond_0

    .line 237
    .line 238
    const/16 v3, 0x82

    .line 239
    .line 240
    goto :goto_0

    .line 241
    :cond_0
    const/16 v3, 0x104

    .line 242
    .line 243
    :goto_0
    int-to-float v3, v3

    .line 244
    div-float/2addr p1, v3

    .line 245
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 246
    .line 247
    .line 248
    move-result p1

    .line 249
    new-instance v3, Lflix/com/vision/helpers/CenterGridLayoutManager;

    .line 250
    .line 251
    invoke-direct {v3, p0, p1}, Lflix/com/vision/helpers/CenterGridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 252
    .line 253
    .line 254
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultVideosActivity;->t:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 255
    .line 256
    invoke-virtual {p1, v3}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 257
    .line 258
    .line 259
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultVideosActivity;->t:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 260
    .line 261
    new-instance v3, LT4/l;

    .line 262
    .line 263
    const/4 v4, 0x5

    .line 264
    invoke-direct {v3, v4}, LT4/l;-><init>(I)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {p1, v3}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->addItemDecoration(Lm1/d0;)V

    .line 268
    .line 269
    .line 270
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultVideosActivity;->t:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 271
    .line 272
    const/16 v3, 0x1c

    .line 273
    .line 274
    invoke-virtual {p1, p0, v3}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->setupMoreListener(Ld4/a;I)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {p0}, Lflix/com/vision/activities/adult/AdultVideosActivity;->setBackgroundColor()V

    .line 278
    .line 279
    .line 280
    new-instance p1, Landroid/os/Handler;

    .line 281
    .line 282
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 283
    .line 284
    .line 285
    new-instance v3, Lz4/h;

    .line 286
    .line 287
    invoke-direct {v3, p0, v2}, Lz4/h;-><init>(Lflix/com/vision/activities/adult/AdultVideosActivity;I)V

    .line 288
    .line 289
    .line 290
    const-wide/16 v4, 0x3e8

    .line 291
    .line 292
    invoke-virtual {p1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 293
    .line 294
    .line 295
    invoke-virtual {p0}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 304
    .line 305
    if-ne p1, v0, :cond_1

    .line 306
    .line 307
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultVideosActivity;->r:Landroid/widget/TextView;

    .line 308
    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    .line 310
    .line 311
    const-string v2, "AdultZone \u00b7 "

    .line 312
    .line 313
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    iget-object v2, p0, Lflix/com/vision/activities/adult/AdultVideosActivity;->w:Ljava/lang/String;

    .line 317
    .line 318
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    .line 327
    .line 328
    :cond_1
    iget p1, p0, Lflix/com/vision/activities/adult/AdultVideosActivity;->x:I

    .line 329
    .line 330
    invoke-virtual {p0, p1}, Lflix/com/vision/activities/adult/AdultVideosActivity;->getVideos(I)V

    .line 331
    .line 332
    .line 333
    new-instance p1, Landroid/os/Handler;

    .line 334
    .line 335
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 336
    .line 337
    .line 338
    new-instance v0, Lz4/h;

    .line 339
    .line 340
    invoke-direct {v0, p0, v1}, Lz4/h;-><init>(Lflix/com/vision/activities/adult/AdultVideosActivity;I)V

    .line 341
    .line 342
    .line 343
    const-wide/16 v1, 0x1388

    .line 344
    .line 345
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 346
    .line 347
    .line 348
    return-void
.end method

.method public onMessageEvent(Lz4/j;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/adult/AdultVideosActivity;->s:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, p1, Lz4/j;->b:Ljava/util/ArrayList;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-lez v2, :cond_0

    .line 16
    .line 17
    iget-object v2, p1, Lz4/j;->b:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lflix/com/vision/activities/adult/AdultVideosActivity;->u:LC4/h;

    .line 23
    .line 24
    iget-object p1, p1, Lz4/j;->b:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    invoke-virtual {v0, v1, p1}, Lm1/V;->notifyItemRangeInserted(II)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    iget-boolean p1, p1, Lz4/j;->a:Z

    .line 35
    .line 36
    if-eqz p1, :cond_3

    .line 37
    .line 38
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultVideosActivity;->n:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 45
    .line 46
    const-string v1, "pref_adult_zone_always_play_best"

    .line 47
    .line 48
    const/4 v2, 0x1

    .line 49
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    const/4 v1, 0x0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-lez v0, :cond_1

    .line 61
    .line 62
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Lflix/com/vision/models/adult/AdultLink;

    .line 67
    .line 68
    iget-object p1, p1, Lflix/com/vision/models/adult/AdultLink;->stream_url:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {p0, p1}, Lflix/com/vision/activities/adult/AdultVideosActivity;->playAdultLink(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .line 78
    .line 79
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-ge v1, v2, :cond_2

    .line 84
    .line 85
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    check-cast v2, Lflix/com/vision/models/adult/AdultLink;

    .line 90
    .line 91
    iget-object v2, v2, Lflix/com/vision/models/adult/AdultLink;->label:Ljava/lang/String;

    .line 92
    .line 93
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 94
    .line 95
    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    add-int/lit8 v1, v1, 0x1

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    check-cast v0, [Ljava/lang/CharSequence;

    .line 116
    .line 117
    new-instance v1, Le/r;

    .line 118
    .line 119
    new-instance v2, Landroid/view/ContextThemeWrapper;

    .line 120
    .line 121
    sget v3, Lflix/com/vision/R$style;->AlertDialogCustom:I

    .line 122
    .line 123
    invoke-direct {v2, p0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 124
    .line 125
    .line 126
    invoke-direct {v1, v2}, Le/r;-><init>(Landroid/content/Context;)V

    .line 127
    .line 128
    .line 129
    new-instance v2, LB4/b;

    .line 130
    .line 131
    const/4 v3, 0x5

    .line 132
    invoke-direct {v2, v3, p0, p1}, LB4/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    const/4 p1, -0x1

    .line 136
    invoke-virtual {v1, v0, p1, v2}, Le/r;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Le/r;

    .line 137
    .line 138
    .line 139
    new-instance p1, LB4/c;

    .line 140
    .line 141
    const/4 v0, 0x7

    .line 142
    invoke-direct {p1, v0}, LB4/c;-><init>(I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, p1}, Le/r;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Le/r;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Le/r;->show()Le/s;

    .line 149
    .line 150
    .line 151
    :cond_3
    return-void
.end method

.method public onMoreAsked(III)V
    .locals 2

    .line 1
    new-instance p1, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p2, Lz4/h;

    .line 7
    .line 8
    const/4 p3, 0x3

    .line 9
    invoke-direct {p2, p0, p3}, Lz4/h;-><init>(Lflix/com/vision/activities/adult/AdultVideosActivity;I)V

    .line 10
    .line 11
    .line 12
    const-wide/16 v0, 0xc8

    .line 13
    .line 14
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 15
    .line 16
    .line 17
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
    .locals 3

    .line 1
    iput p1, p0, Lflix/com/vision/activities/adult/AdultVideosActivity;->y:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {p0, v1}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iput-object v1, p0, Lflix/com/vision/activities/adult/AdultVideosActivity;->B:LQ4/d;

    .line 13
    .line 14
    invoke-virtual {v1}, LQ4/d;->setloading()V

    .line 15
    .line 16
    .line 17
    :try_start_0
    iget-object v1, p0, Lflix/com/vision/activities/adult/AdultVideosActivity;->B:LQ4/d;

    .line 18
    .line 19
    const-string v2, ""

    .line 20
    .line 21
    invoke-virtual {v1, v0, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    .line 28
    .line 29
    :goto_0
    new-instance v0, LX4/c;

    .line 30
    .line 31
    invoke-direct {v0, p0, p0}, LX4/c;-><init>(Landroid/content/Context;LU4/a;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lflix/com/vision/activities/adult/AdultVideosActivity;->s:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Lflix/com/vision/models/adult/AdultVideo;

    .line 41
    .line 42
    iget-object p1, p1, Lflix/com/vision/models/adult/AdultVideo;->url:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, LX4/c;->process(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
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
    const/4 v1, 0x4

    .line 15
    if-lez v0, :cond_3

    .line 16
    .line 17
    if-ge v0, v1, :cond_3

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    if-eq v0, v1, :cond_2

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    if-eq v0, v2, :cond_1

    .line 24
    .line 25
    const/4 v2, 0x3

    .line 26
    if-eq v0, v2, :cond_0

    .line 27
    .line 28
    move-object v2, p0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    :try_start_0
    invoke-static {p0, v0, p1}, LT4/o;->PlayXPlayer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :catch_0
    move-object v2, p0

    .line 36
    move-object v4, p1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v3, 0x0

    .line 39
    const/4 v5, 0x0

    .line 40
    const/4 v6, 0x0

    .line 41
    const/4 v7, -0x1

    .line 42
    move-object v2, p0

    .line 43
    move-object v4, p1

    .line 44
    :try_start_1
    invoke-static/range {v2 .. v7}, LT4/o;->PlayVLC(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :catch_1
    move-object v2, p0

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    move-object v4, p1

    .line 51
    const/4 v9, 0x0

    .line 52
    const/4 v11, 0x0

    .line 53
    const/4 v12, 0x0

    .line 54
    const/4 v13, -0x1

    .line 55
    move-object v8, p0

    .line 56
    move-object v10, v4

    .line 57
    :try_start_2
    invoke-static/range {v8 .. v13}, LT4/o;->PlayMXPlayer(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 58
    .line 59
    .line 60
    move-object v2, v8

    .line 61
    return-void

    .line 62
    :catch_2
    move-object v2, v8

    .line 63
    move-object v4, v10

    .line 64
    :goto_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const-string v0, "Failed to load external Player, Make sure it is installed"

    .line 69
    .line 70
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v4}, Lflix/com/vision/activities/adult/AdultVideosActivity;->e(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :goto_1
    return-void

    .line 81
    :cond_3
    move-object v2, p0

    .line 82
    move-object v4, p1

    .line 83
    if-ne v0, v1, :cond_4

    .line 84
    .line 85
    new-instance p1, Landroid/content/Intent;

    .line 86
    .line 87
    const-string v0, "android.intent.action.VIEW"

    .line 88
    .line 89
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 94
    .line 95
    .line 96
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    const-string v1, "video/mp4"

    .line 101
    .line 102
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :cond_4
    invoke-virtual {p0, v4}, Lflix/com/vision/activities/adult/AdultVideosActivity;->e(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method public setBackgroundColor()V
    .locals 5

    .line 1
    const v0, 0x263984

    .line 2
    .line 3
    .line 4
    iput v0, p0, Lflix/com/vision/activities/adult/AdultVideosActivity;->A:I

    .line 5
    .line 6
    new-instance v0, Landroid/animation/ArgbEvaluator;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lflix/com/vision/activities/adult/AdultVideosActivity;->A:I

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
    const/16 v3, 0x16

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
    iput v2, p0, Lflix/com/vision/activities/adult/AdultVideosActivity;->A:I

    .line 53
    .line 54
    return-void
.end method
