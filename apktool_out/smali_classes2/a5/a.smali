.class public final La5/a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:La5/d;


# direct methods
.method public constructor <init>(La5/d;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, La5/a;->c:La5/d;

    .line 2
    .line 3
    iput-object p2, p0, La5/a;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, La5/a;->b:Ljava/util/ArrayList;

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

    invoke-virtual {p0, p1}, La5/a;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    .line 2
    const-string v1, "A"

    const-string v2, "class"

    iget-object v3, v0, La5/a;->c:La5/d;

    .line 3
    :try_start_0
    iget-object v5, v0, La5/a;->a:Ljava/lang/String;

    invoke-static {v5}, Lg6/e;->connect(Ljava/lang/String;)Lg6/d;

    move-result-object v5

    check-cast v5, Lh6/h;

    invoke-virtual {v5}, Lh6/h;->get()Lj6/h;

    move-result-object v5

    .line 4
    iget-boolean v6, v3, La5/d;->c:Z

    if-eqz v6, :cond_0

    :catch_0
    :goto_0
    const/16 p1, 0x0

    goto/16 :goto_5

    .line 5
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v3, La5/d;->a:Lflix/com/vision/models/Movie;

    invoke-virtual {v7}, Lflix/com/vision/models/Movie;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lh5/n;->removeSpecialChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, La5/d;->a:Lflix/com/vision/models/Movie;

    invoke-virtual {v7}, Lflix/com/vision/models/Movie;->getYear()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 6
    const-string v7, "LI"

    invoke-virtual {v5, v7}, Lorg/jsoup/nodes/b;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v9, v0, La5/a;->b:Ljava/util/ArrayList;

    if-eqz v8, :cond_c

    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/jsoup/nodes/b;

    .line 7
    invoke-virtual {v8, v2}, Lj6/p;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_b

    invoke-virtual {v8, v2}, Lj6/p;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "card search-result"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 8
    invoke-virtual {v8, v1}, Lorg/jsoup/nodes/b;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/jsoup/nodes/b;

    .line 9
    invoke-virtual {v11}, Lorg/jsoup/nodes/b;->text()Ljava/lang/String;

    move-result-object v12

    .line 10
    invoke-virtual {v3, v12}, Lflix/com/vision/processors/english/m;->removeSpecialChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 11
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-virtual {v11}, Lorg/jsoup/nodes/b;->text()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v3, La5/d;->a:Lflix/com/vision/models/Movie;

    invoke-virtual {v12}, Lflix/com/vision/models/Movie;->getTitle()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lflix/com/vision/processors/english/m;->isEnglishlang(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 12
    invoke-virtual {v8, v1}, Lorg/jsoup/nodes/b;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/jsoup/nodes/b;

    .line 13
    const-string v13, "href"

    invoke-virtual {v12, v13}, Lj6/p;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 14
    const-string v13, "magnet"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 15
    iget-boolean v13, v3, La5/d;->c:Z

    if-eqz v13, :cond_2

    goto/16 :goto_0

    .line 16
    :cond_2
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    move-result-object v13

    invoke-virtual {v13, v12}, Lflix/com/vision/App;->addHash(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    goto :goto_3

    .line 17
    :cond_3
    sget-boolean v13, Lflix/com/vision/api/realdebrid/RealDebridCommon;->m:Z

    if-eqz v13, :cond_4

    .line 18
    sget-object v13, Lflix/com/vision/api/realdebrid/RealDebridCommon;->f:Ljava/lang/String;

    sget-object v14, Lflix/com/vision/api/realdebrid/RealDebridCommon;->b:Ljava/lang/String;

    invoke-static {v12, v13, v14}, LD4/a;->getTorrent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v13

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v14

    invoke-virtual {v13, v14}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v13

    .line 19
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object v14

    invoke-virtual {v13, v14}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v13

    new-instance v14, LE4/c;

    const/4 v15, 0x5

    invoke-direct {v14, v3, v15}, LE4/c;-><init>(Ljava/lang/Object;I)V

    new-instance v15, LA4/c;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 p1, 0x0

    const/16 v4, 0x10

    :try_start_2
    invoke-direct {v15, v4}, LA4/c;-><init>(I)V

    .line 20
    invoke-virtual {v13, v14, v15}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    goto :goto_4

    :cond_4
    const/16 p1, 0x0

    .line 21
    :goto_4
    sget-boolean v4, Lflix/com/vision/api/alldebrid/AllDebridCommon;->f:Z

    if-eqz v4, :cond_5

    .line 22
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    :cond_5
    sget-boolean v4, Lflix/com/vision/api/premiumize/PremiumizeCommon;->b:Z

    if-eqz v4, :cond_6

    .line 24
    invoke-virtual {v3, v12}, Lflix/com/vision/processors/english/m;->getMagnetPremiumize(Ljava/lang/String;)V

    .line 25
    :cond_6
    sget-boolean v4, LJ4/b;->a:Z

    if-eqz v4, :cond_7

    .line 26
    invoke-virtual {v3, v12}, Lflix/com/vision/processors/english/m;->getMagnetTorBox(Ljava/lang/String;)V

    .line 27
    :cond_7
    sget-boolean v4, LG4/b;->a:Z

    if-eqz v4, :cond_8

    .line 28
    invoke-virtual {v3, v12}, Lflix/com/vision/processors/english/m;->getMagnetOffcloud(Ljava/lang/String;)V

    :cond_8
    add-int/lit8 v7, v7, 0x1

    .line 29
    iget v4, v3, Lflix/com/vision/processors/english/m;->max_page:I

    if-le v7, v4, :cond_1

    .line 30
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_d

    .line 31
    invoke-virtual {v3, v9}, Lflix/com/vision/processors/english/m;->addMagnetsAllDebrid(Ljava/util/List;)V

    return-object p1

    :cond_9
    const/16 p1, 0x0

    goto/16 :goto_3

    :cond_a
    const/16 p1, 0x0

    goto/16 :goto_2

    :cond_b
    const/16 p1, 0x0

    goto/16 :goto_1

    :cond_c
    const/16 p1, 0x0

    .line 32
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_d

    .line 33
    invoke-virtual {v3, v9}, Lflix/com/vision/processors/english/m;->addMagnetsAllDebrid(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_d
    :goto_5
    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, La5/a;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method
