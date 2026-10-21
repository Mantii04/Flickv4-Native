.class public Lflix/com/vision/activities/adult/AdultVideosSearchActivity;
.super Lflix/com/vision/activities/base/a;
.source "SourceFile"

# interfaces
.implements LU4/c;
.implements Ld4/a;
.implements LU4/a;
.implements LU4/b;


# static fields
.field public static final synthetic y:I


# instance fields
.field public b:Landroid/widget/RelativeLayout;

.field public e:Landroidx/appcompat/widget/Toolbar;

.field public f:Lflix/com/vision/materialsearchview/MaterialSearchView;

.field public final j:Ljava/util/ArrayList;

.field public final m:Ljava/util/ArrayList;

.field public n:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

.field public p:LC4/h;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:I

.field public t:Ljava/lang/String;

.field public u:I

.field public v:Z

.field public w:I

.field public x:LQ4/d;


# direct methods
.method public constructor <init>()V
    .locals 2

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
    iput-object v0, p0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->j:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->m:Ljava/util/ArrayList;

    .line 17
    .line 18
    const-string v0, "https://www.xvideos.com/?k="

    .line 19
    .line 20
    iput-object v0, p0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->r:Ljava/lang/String;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->s:I

    .line 24
    .line 25
    const-string v1, ""

    .line 26
    .line 27
    iput-object v1, p0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->t:Ljava/lang/String;

    .line 28
    .line 29
    iput v0, p0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->u:I

    .line 30
    .line 31
    iput-boolean v0, p0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->v:Z

    .line 32
    .line 33
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
    iget-object v0, p0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->x:LQ4/d;

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
    iget-object v0, p0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->j:Ljava/util/ArrayList;

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
    new-instance p1, Lz4/n;

    .line 17
    .line 18
    invoke-direct {p1, p0}, Lz4/n;-><init>(Lflix/com/vision/activities/adult/AdultVideosSearchActivity;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p1, Lz4/n;->a:Z

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
    iget-object v0, p0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->x:LQ4/d;

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
    new-instance v0, Lz4/n;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lz4/n;-><init>(Lflix/com/vision/activities/adult/AdultVideosSearchActivity;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, v0, Lz4/n;->b:Ljava/util/ArrayList;

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput-boolean p1, v0, Lz4/n;->a:Z

    .line 17
    .line 18
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
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
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->m:Ljava/util/ArrayList;

    .line 14
    .line 15
    iget v1, p0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->u:I

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
    iget v1, p0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->u:I

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
    iget v1, p0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->u:I

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

.method public final f()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {p0, v1}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iput-object v1, p0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->x:LQ4/d;

    .line 11
    .line 12
    invoke-virtual {v1}, LQ4/d;->setloading()V

    .line 13
    .line 14
    .line 15
    :try_start_0
    iget-object v1, p0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->x:LQ4/d;

    .line 16
    .line 17
    const-string v2, ""

    .line 18
    .line 19
    invoke-virtual {v1, v0, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catch_0
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public getVideos(I)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->r:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->t:Ljava/lang/String;

    .line 12
    .line 13
    const-string v2, " "

    .line 14
    .line 15
    const-string v3, "+"

    .line 16
    .line 17
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, "&p="

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->q:Ljava/lang/String;

    .line 37
    .line 38
    new-instance v0, LX4/e;

    .line 39
    .line 40
    invoke-direct {v0, p0, p0}, LX4/e;-><init>(Landroid/content/Context;LU4/c;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->q:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v0, v1, p1}, LX4/e;->process(Ljava/lang/String;I)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->f:Lflix/com/vision/materialsearchview/MaterialSearchView;

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
    iget-object v0, p0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->f:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 10
    .line 11
    invoke-virtual {v0}, Lflix/com/vision/materialsearchview/MaterialSearchView;->closeSearch()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-boolean v0, p0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->v:Z

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iput-boolean v1, p0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->v:Z

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
    iget-object v0, p0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->m:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->n:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    iget-object v0, p0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->n:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 56
    .line 57
    .line 58
    :goto_0
    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->v:Z

    .line 60
    .line 61
    iget-object v0, p0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->n:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->e:Landroidx/appcompat/widget/Toolbar;

    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const-string v2, "Press Back again to Exit"

    .line 76
    .line 77
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 82
    .line 83
    .line 84
    new-instance v0, Landroid/os/Handler;

    .line 85
    .line 86
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 87
    .line 88
    .line 89
    new-instance v1, Lz4/l;

    .line 90
    .line 91
    const/4 v2, 0x0

    .line 92
    invoke-direct {v1, p0, v2}, Lz4/l;-><init>(Lflix/com/vision/activities/adult/AdultVideosSearchActivity;I)V

    .line 93
    .line 94
    .line 95
    const-wide/16 v2, 0x7d0

    .line 96
    .line 97
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 98
    .line 99
    .line 100
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
    const-string p1, "https://www.xvideos.com/?k="

    .line 13
    .line 14
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->r:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    sget-object v1, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 21
    .line 22
    const-string v1, "fonts/pproduct_sans_rregular.ttf"

    .line 23
    .line 24
    invoke-static {p1, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 25
    .line 26
    .line 27
    new-instance p1, Lh5/j;

    .line 28
    .line 29
    invoke-direct {p1}, Lh5/j;-><init>()V

    .line 30
    .line 31
    .line 32
    sget p1, Lflix/com/vision/R$layout;->activity_adult_search:I

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Le/v;->setContentView(I)V

    .line 35
    .line 36
    .line 37
    new-instance p1, LC4/h;

    .line 38
    .line 39
    iget-object v1, p0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->m:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {p1, p0, p0, v1}, LC4/h;-><init>(Landroid/app/Activity;LU4/b;Ljava/util/ArrayList;)V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->p:LC4/h;

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
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->f:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 55
    .line 56
    const/4 v1, 0x0

    .line 57
    invoke-virtual {p1, v1}, Lflix/com/vision/materialsearchview/MaterialSearchView;->setShouldKeepHistory(Z)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->f:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Lflix/com/vision/materialsearchview/MaterialSearchView;->setTintAlpha(I)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->f:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 66
    .line 67
    const-string v2, "Search for any adult video..."

    .line 68
    .line 69
    invoke-virtual {p1, v2}, Lflix/com/vision/materialsearchview/MaterialSearchView;->setHint(Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->f:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 73
    .line 74
    new-instance v2, Lz4/m;

    .line 75
    .line 76
    invoke-direct {v2, p0}, Lz4/m;-><init>(Lflix/com/vision/activities/adult/AdultVideosSearchActivity;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v2}, Lflix/com/vision/materialsearchview/MaterialSearchView;->setOnQueryTextListener(Lflix/com/vision/materialsearchview/MaterialSearchView$OnQueryTextListener;)V

    .line 80
    .line 81
    .line 82
    sget p1, Lflix/com/vision/R$id;->activity_player:I

    .line 83
    .line 84
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 89
    .line 90
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->b:Landroid/widget/RelativeLayout;

    .line 91
    .line 92
    sget p1, Lflix/com/vision/R$id;->toolbar:I

    .line 93
    .line 94
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 99
    .line 100
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->e:Landroidx/appcompat/widget/Toolbar;

    .line 101
    .line 102
    invoke-virtual {p0, p1}, Le/v;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Le/v;->getSupportActionBar()Le/b;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p1, v0}, Le/b;->setDisplayHomeAsUpEnabled(Z)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Le/v;->getSupportActionBar()Le/b;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    const-string v2, "Adult Video Search"

    .line 117
    .line 118
    invoke-virtual {p1, v2}, Le/b;->setTitle(Ljava/lang/CharSequence;)V

    .line 119
    .line 120
    .line 121
    sget p1, Lflix/com/vision/R$id;->recyclerview_categories:I

    .line 122
    .line 123
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    check-cast p1, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 128
    .line 129
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->n:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 130
    .line 131
    iget-object v2, p0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->p:LC4/h;

    .line 132
    .line 133
    invoke-virtual {p1, v2}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->setAdapter(Lm1/V;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-static {p1}, Lb/c;->d(Landroid/view/Display;)Landroid/util/DisplayMetrics;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {p0}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 157
    .line 158
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 159
    .line 160
    int-to-float p1, p1

    .line 161
    div-float/2addr p1, v2

    .line 162
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    iget-object v2, v2, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 167
    .line 168
    const-string v3, "pref_adult_show_big_pictures"

    .line 169
    .line 170
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    if-nez v1, :cond_0

    .line 175
    .line 176
    const/16 v1, 0x82

    .line 177
    .line 178
    goto :goto_0

    .line 179
    :cond_0
    const/16 v1, 0x104

    .line 180
    .line 181
    :goto_0
    int-to-float v1, v1

    .line 182
    div-float/2addr p1, v1

    .line 183
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    new-instance v1, Lflix/com/vision/helpers/CenterGridLayoutManager;

    .line 188
    .line 189
    invoke-direct {v1, p0, p1}, Lflix/com/vision/helpers/CenterGridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 190
    .line 191
    .line 192
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->n:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 193
    .line 194
    invoke-virtual {p1, v1}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 195
    .line 196
    .line 197
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->n:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 198
    .line 199
    new-instance v1, LT4/l;

    .line 200
    .line 201
    const/4 v2, 0x5

    .line 202
    invoke-direct {v1, v2}, LT4/l;-><init>(I)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1, v1}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->addItemDecoration(Lm1/d0;)V

    .line 206
    .line 207
    .line 208
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->n:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 209
    .line 210
    const/16 v1, 0x1c

    .line 211
    .line 212
    invoke-virtual {p1, p0, v1}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->setupMoreListener(Ld4/a;I)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0}, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->setBackgroundColor()V

    .line 216
    .line 217
    .line 218
    new-instance p1, Landroid/os/Handler;

    .line 219
    .line 220
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 221
    .line 222
    .line 223
    new-instance v1, Lz4/l;

    .line 224
    .line 225
    invoke-direct {v1, p0, v0}, Lz4/l;-><init>(Lflix/com/vision/activities/adult/AdultVideosSearchActivity;I)V

    .line 226
    .line 227
    .line 228
    const-wide/16 v2, 0x1f4

    .line 229
    .line 230
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 231
    .line 232
    .line 233
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

.method public onMessageEvent(Lz4/n;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->m:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, p1, Lz4/n;->b:Ljava/util/ArrayList;

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
    iget-object v2, p1, Lz4/n;->b:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->p:LC4/h;

    .line 23
    .line 24
    iget-object p1, p1, Lz4/n;->b:Ljava/util/ArrayList;

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
    iget-boolean p1, p1, Lz4/n;->a:Z

    .line 35
    .line 36
    if-eqz p1, :cond_3

    .line 37
    .line 38
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->j:Ljava/util/ArrayList;

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
    invoke-virtual {p0, p1}, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->playAdultLink(Ljava/lang/String;)V

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
    const/4 v3, 0x7

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
    const/16 v0, 0x9

    .line 142
    .line 143
    invoke-direct {p1, v0}, LB4/c;-><init>(I)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, p1}, Le/r;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Le/r;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Le/r;->show()Le/s;

    .line 150
    .line 151
    .line 152
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
    new-instance p2, Lz4/l;

    .line 7
    .line 8
    const/4 p3, 0x2

    .line 9
    invoke-direct {p2, p0, p3}, Lz4/l;-><init>(Lflix/com/vision/activities/adult/AdultVideosSearchActivity;I)V

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
    iget-object v0, p0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->f:Lflix/com/vision/materialsearchview/MaterialSearchView;

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

.method public openAdultVideo(I)V
    .locals 2

    .line 1
    iput p1, p0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->u:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->f()V

    .line 4
    .line 5
    .line 6
    new-instance v0, LX4/c;

    .line 7
    .line 8
    invoke-direct {v0, p0, p0}, LX4/c;-><init>(Landroid/content/Context;LU4/a;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->m:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lflix/com/vision/models/adult/AdultVideo;

    .line 18
    .line 19
    iget-object p1, p1, Lflix/com/vision/models/adult/AdultVideo;->url:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, LX4/c;->process(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
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
    invoke-virtual {p0, v4}, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->e(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :goto_1
    return-void

    .line 72
    :cond_3
    move-object v4, p1

    .line 73
    invoke-virtual {p0, v4}, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->e(Ljava/lang/String;)V

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
    iput v0, p0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->w:I

    .line 5
    .line 6
    new-instance v0, Landroid/animation/ArgbEvaluator;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->w:I

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
    const/16 v3, 0x18

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
    iput v2, p0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;->w:I

    .line 53
    .line 54
    return-void
.end method
