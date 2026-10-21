.class public final Lflix/com/vision/activities/a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lflix/com/vision/activities/AnimeDetailActivity;


# direct methods
.method public constructor <init>(Lflix/com/vision/activities/AnimeDetailActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lflix/com/vision/activities/a;->c:Lflix/com/vision/activities/AnimeDetailActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lflix/com/vision/activities/a;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lflix/com/vision/activities/a;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lflix/com/vision/activities/a;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 10

    .line 2
    iget-object p1, p0, Lflix/com/vision/activities/a;->c:Lflix/com/vision/activities/AnimeDetailActivity;

    const-string v0, "a"

    :try_start_0
    iget-object v1, p0, Lflix/com/vision/activities/a;->a:Ljava/lang/String;

    invoke-static {v1}, Lg6/e;->connect(Ljava/lang/String;)Lg6/d;

    move-result-object v1

    check-cast v1, Lh6/h;

    invoke-virtual {v1}, Lh6/h;->get()Lj6/h;

    move-result-object v1

    .line 3
    const-string v2, "movie_id"

    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/b;->getElementById(Ljava/lang/String;)Lorg/jsoup/nodes/b;

    move-result-object v2

    .line 4
    const-string v3, "value"

    invoke-virtual {v2, v3}, Lj6/p;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5
    const-string v4, "default_ep"

    invoke-virtual {v2, v4}, Lj6/p;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6
    const-string v5, "alias_anime"

    invoke-virtual {v2, v5}, Lj6/p;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7
    const-string v5, "episode_page"

    invoke-virtual {v1, v5}, Lorg/jsoup/nodes/b;->getElementById(Ljava/lang/String;)Lorg/jsoup/nodes/b;

    move-result-object v1

    .line 8
    invoke-virtual {v1, v0}, Lorg/jsoup/nodes/b;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/nodes/b;

    .line 9
    const-string v6, "ep_start"

    invoke-virtual {v5, v6}, Lj6/p;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 10
    const-string v7, "ep_end"

    invoke-virtual {v5, v7}, Lj6/p;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 11
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lflix/com/vision/activities/a;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/ajax/load-list-episode?ep_start="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&ep_end="

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "&id="

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "&default_ep="

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "&alias_anime="

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-static {v5}, Lg6/e;->connect(Ljava/lang/String;)Lg6/d;

    move-result-object v5

    check-cast v5, Lh6/h;

    invoke-virtual {v5}, Lh6/h;->get()Lj6/h;

    move-result-object v5

    .line 13
    const-string v6, "li"

    invoke-virtual {v5, v6}, Lorg/jsoup/nodes/b;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v5

    .line 14
    invoke-static {v5}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 15
    invoke-virtual {v5}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :catch_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jsoup/nodes/b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 16
    :try_start_1
    invoke-virtual {v6, v0}, Lorg/jsoup/nodes/b;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v7

    invoke-virtual {v7}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/b;

    move-result-object v7

    .line 17
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p1, Lflix/com/vision/activities/AnimeDetailActivity;->v:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "href"

    invoke-virtual {v7, v9}, Lj6/p;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 18
    const-string v8, "name"

    invoke-virtual {v6, v8}, Lorg/jsoup/nodes/b;->getElementsByClass(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/b;

    move-result-object v6

    .line 19
    invoke-virtual {v6}, Lorg/jsoup/nodes/b;->text()Ljava/lang/String;

    move-result-object v6

    const-string v8, "EP "

    const-string v9, ""

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 20
    new-instance v8, Lflix/com/vision/models/Episode;

    invoke-direct {v8}, Lflix/com/vision/models/Episode;-><init>()V

    .line 21
    iput-object v7, v8, Lflix/com/vision/models/Episode;->url:Ljava/lang/String;

    .line 22
    iput-object v6, v8, Lflix/com/vision/models/Episode;->label:Ljava/lang/String;

    .line 23
    iput-object v6, v8, Lflix/com/vision/models/Episode;->title:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 24
    :try_start_2
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v8, Lflix/com/vision/models/Episode;->number:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    const/4 v6, 0x1

    .line 25
    :try_start_3
    iput-boolean v6, v8, Lflix/com/vision/models/Episode;->anime:Z

    .line 26
    iget-object v6, p1, Lflix/com/vision/activities/AnimeDetailActivity;->u:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_2
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :catch_3
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lflix/com/vision/activities/a;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lflix/com/vision/activities/a;->c:Lflix/com/vision/activities/AnimeDetailActivity;

    iget-object v0, p1, Lflix/com/vision/activities/AnimeDetailActivity;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p1, Lflix/com/vision/activities/AnimeDetailActivity;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 5
    iget-object v0, p1, Lflix/com/vision/activities/AnimeDetailActivity;->x:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v0, p1, Lflix/com/vision/activities/AnimeDetailActivity;->m:Lcom/github/ybq/android/spinkit/SpinKitView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p1, Lflix/com/vision/activities/AnimeDetailActivity;->n:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v0, p1, Lflix/com/vision/activities/AnimeDetailActivity;->n:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 9
    iget-object p1, p1, Lflix/com/vision/activities/AnimeDetailActivity;->x:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void

    .line 10
    :cond_1
    iget-object p1, p1, Lflix/com/vision/activities/AnimeDetailActivity;->u:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 11
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    sget-object v0, Lflix/com/vision/activities/AnimeDetailActivity$RESULT_EVENT;->b:Lflix/com/vision/activities/AnimeDetailActivity$RESULT_EVENT;

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 12
    :cond_2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    sget-object v0, Lflix/com/vision/activities/AnimeDetailActivity$RESULT_EVENT;->e:Lflix/com/vision/activities/AnimeDetailActivity$RESULT_EVENT;

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
