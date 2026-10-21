.class public final Lflix/com/vision/activities/b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field public a:Lj6/h;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lflix/com/vision/activities/DramaDetailActivity;


# direct methods
.method public constructor <init>(Lflix/com/vision/activities/DramaDetailActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lflix/com/vision/activities/b;->c:Lflix/com/vision/activities/DramaDetailActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lflix/com/vision/activities/b;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lflix/com/vision/activities/b;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 6

    .line 2
    iget-object p1, p0, Lflix/com/vision/activities/b;->c:Lflix/com/vision/activities/DramaDetailActivity;

    const-string v0, "a"

    :try_start_0
    iget-object v1, p0, Lflix/com/vision/activities/b;->b:Ljava/lang/String;

    invoke-static {v1, v1}, Lflix/com/vision/App;->get(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lg6/e;->parse(Ljava/lang/String;)Lj6/h;

    move-result-object v1

    iput-object v1, p0, Lflix/com/vision/activities/b;->a:Lj6/h;

    .line 3
    const-string v2, "ul.listing li, table.listing td.episodeSub"

    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/b;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/b;

    .line 5
    invoke-virtual {v2, v0}, Lorg/jsoup/nodes/b;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/b;

    move-result-object v3

    const-string v4, "title"

    invoke-virtual {v3, v4}, Lj6/p;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lflix/com/vision/activities/DramaDetailActivity;->v:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Lorg/jsoup/nodes/b;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/b;

    move-result-object v2

    const-string v5, "href"

    invoke-virtual {v2, v5}, Lj6/p;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7
    new-instance v4, Lkotlin/text/Regex;

    const-string v5, "Episode\\s(\\d+)"

    invoke-direct {v4, v5}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lkotlin/text/Regex;->find(Ljava/lang/CharSequence;I)LP5/g;

    move-result-object v4

    check-cast v4, LP5/i;

    invoke-virtual {v4}, LP5/i;->getGroupValues()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 8
    new-instance v5, Lflix/com/vision/models/Episode;

    invoke-direct {v5}, Lflix/com/vision/models/Episode;-><init>()V

    .line 9
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v5, Lflix/com/vision/models/Episode;->number:I

    .line 10
    iput-object v2, v5, Lflix/com/vision/models/Episode;->url:Ljava/lang/String;

    .line 11
    const-string v2, "."

    const-string v4, ""

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lflix/com/vision/models/Episode;->label:Ljava/lang/String;

    .line 12
    iget-object v2, p1, Lflix/com/vision/activities/DramaDetailActivity;->u:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lflix/com/vision/activities/b;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .locals 8

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lflix/com/vision/activities/b;->a:Lj6/h;

    iget-object v0, p0, Lflix/com/vision/activities/b;->c:Lflix/com/vision/activities/DramaDetailActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const-string v1, " \u00b7 "

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "div.barContentInfo p:contains(Genres:) a"

    invoke-virtual {p1, v3}, Lorg/jsoup/nodes/b;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, ""

    move-object v5, v4

    :goto_0
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jsoup/nodes/b;

    .line 6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lorg/jsoup/nodes/b;->text()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 7
    :cond_0
    const-string v3, "div.barContentInfo p.des, div.barContentInfo p:last-child"

    invoke-virtual {p1, v3}, Lorg/jsoup/nodes/b;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/b;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jsoup/nodes/b;->nextElementSibling()Lorg/jsoup/nodes/b;

    move-result-object v3

    const-string v6, "p"

    invoke-virtual {v3, v6}, Lorg/jsoup/nodes/b;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jsoup/select/Elements;->text()Ljava/lang/String;

    move-result-object v3

    .line 8
    iget-object v6, v0, Lflix/com/vision/activities/DramaDetailActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    const-string v3, "barContentInfo"

    invoke-virtual {p1, v3}, Lorg/jsoup/nodes/b;->getElementsByClass(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/b;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 10
    const-string v3, "A"

    invoke-virtual {p1, v3}, Lorg/jsoup/nodes/b;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/b;

    .line 11
    const-string v6, "href"

    invoke-virtual {v3, v6}, Lj6/p;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "country"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 12
    invoke-virtual {v3}, Lorg/jsoup/nodes/b;->text()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 13
    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v3, 0x3c

    if-le p1, v3, :cond_3

    .line 14
    invoke-virtual {v5, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 15
    :cond_3
    iget-object p1, v0, Lflix/com/vision/activities/DramaDetailActivity;->f:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lflix/com/vision/activities/DramaDetailActivity;->t:Lflix/com/vision/models/Drama;

    iget-object v6, v6, Lflix/com/vision/models/Drama;->year:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 16
    :catch_0
    iget-object p1, v0, Lflix/com/vision/activities/DramaDetailActivity;->u:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    .line 17
    iget-object p1, v0, Lflix/com/vision/activities/DramaDetailActivity;->u:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v1, :cond_6

    .line 18
    iget-object p1, v0, Lflix/com/vision/activities/DramaDetailActivity;->w:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 19
    iget-object p1, v0, Lflix/com/vision/activities/DramaDetailActivity;->m:Lcom/github/ybq/android/spinkit/SpinKitView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    iget-object p1, v0, Lflix/com/vision/activities/DramaDetailActivity;->n:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    iget-object p1, v0, Lflix/com/vision/activities/DramaDetailActivity;->n:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 22
    iget-object p1, v0, Lflix/com/vision/activities/DramaDetailActivity;->w:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 23
    invoke-virtual {v0, v2}, Lflix/com/vision/activities/DramaDetailActivity;->openEpisode(I)V

    goto :goto_1

    .line 24
    :cond_4
    iget-object p1, v0, Lflix/com/vision/activities/DramaDetailActivity;->u:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 25
    iget-object p1, v0, Lflix/com/vision/activities/DramaDetailActivity;->u:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 26
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    sget-object v0, Lflix/com/vision/activities/DramaDetailActivity$RESULT_EVENT;->b:Lflix/com/vision/activities/DramaDetailActivity$RESULT_EVENT;

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_1

    .line 27
    :cond_5
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    sget-object v0, Lflix/com/vision/activities/DramaDetailActivity$RESULT_EVENT;->e:Lflix/com/vision/activities/DramaDetailActivity$RESULT_EVENT;

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_6
    :goto_1
    return-void
.end method
