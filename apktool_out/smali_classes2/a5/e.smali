.class public final La5/e;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:La5/h;


# direct methods
.method public constructor <init>(La5/h;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, La5/e;->c:La5/h;

    .line 2
    .line 3
    iput-object p2, p0, La5/e;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, La5/e;->b:Ljava/util/ArrayList;

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

    invoke-virtual {p0, p1}, La5/e;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    .line 2
    const-string v1, "A"

    const-string v2, "class"

    iget-object v3, v0, La5/e;->c:La5/h;

    .line 3
    :try_start_0
    iget-object v5, v0, La5/e;->a:Ljava/lang/String;

    invoke-static {v5}, Lg6/e;->connect(Ljava/lang/String;)Lg6/d;

    move-result-object v5

    check-cast v5, Lh6/h;

    invoke-virtual {v5}, Lh6/h;->get()Lj6/h;

    move-result-object v5

    .line 4
    iget-boolean v6, v3, La5/h;->f:Z

    if-eqz v6, :cond_0

    :catch_0
    :goto_0
    const/16 p1, 0x0

    goto/16 :goto_5

    .line 5
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v3, La5/h;->a:Lflix/com/vision/models/Movie;

    invoke-virtual {v7}, Lflix/com/vision/models/Movie;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lh5/n;->removeSpecialChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, La5/h;->d:Ljava/lang/String;

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

    iget-object v9, v0, La5/e;->b:Ljava/util/ArrayList;

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

    iget-object v12, v3, La5/h;->a:Lflix/com/vision/models/Movie;

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

    if-eqz v13, :cond_8

    .line 15
    iget-boolean v13, v3, La5/h;->f:Z

    if-eqz v13, :cond_1

    goto/16 :goto_0

    .line 16
    :cond_1
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    move-result-object v13

    invoke-virtual {v13, v12}, Lflix/com/vision/App;->addHash(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2

    goto :goto_3

    .line 17
    :cond_2
    sget-boolean v13, Lflix/com/vision/api/realdebrid/RealDebridCommon;->m:Z

    if-eqz v13, :cond_3

    .line 18
    new-instance v13, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v14, LA4/n;

    const/16 v15, 0x10

    invoke-direct {v14, v15, v0, v12}, LA4/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    mul-int/lit16 v15, v7, 0xfa

    move-object/from16 v16, v5

    const/16 p1, 0x0

    int-to-long v4, v15

    :try_start_2
    invoke-virtual {v13, v14, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    :cond_3
    move-object/from16 v16, v5

    const/16 p1, 0x0

    .line 19
    :goto_4
    sget-boolean v4, Lflix/com/vision/api/alldebrid/AllDebridCommon;->f:Z

    if-eqz v4, :cond_4

    .line 20
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_4
    sget-boolean v4, Lflix/com/vision/api/premiumize/PremiumizeCommon;->b:Z

    if-eqz v4, :cond_5

    .line 22
    invoke-virtual {v3, v12}, Lflix/com/vision/processors/english/m;->getMagnetPremiumize(Ljava/lang/String;)V

    .line 23
    :cond_5
    sget-boolean v4, LJ4/b;->a:Z

    if-eqz v4, :cond_6

    .line 24
    invoke-virtual {v3, v12}, Lflix/com/vision/processors/english/m;->getMagnetTorBox(Ljava/lang/String;)V

    .line 25
    :cond_6
    sget-boolean v4, LG4/b;->a:Z

    if-eqz v4, :cond_7

    .line 26
    invoke-virtual {v3, v12}, Lflix/com/vision/processors/english/m;->getMagnetOffcloud(Ljava/lang/String;)V

    :cond_7
    add-int/lit8 v7, v7, 0x1

    .line 27
    iget v4, v3, Lflix/com/vision/processors/english/m;->max_page:I

    if-le v7, v4, :cond_9

    .line 28
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_d

    .line 29
    invoke-virtual {v3, v9}, Lflix/com/vision/processors/english/m;->addMagnetsAllDebrid(Ljava/util/List;)V

    return-object p1

    :cond_8
    move-object/from16 v16, v5

    const/16 p1, 0x0

    :cond_9
    move-object/from16 v5, v16

    goto/16 :goto_3

    :cond_a
    move-object/from16 v16, v5

    const/16 p1, 0x0

    move-object/from16 v5, v16

    goto/16 :goto_2

    :cond_b
    move-object/from16 v16, v5

    const/16 p1, 0x0

    move-object/from16 v5, v16

    goto/16 :goto_1

    :cond_c
    const/16 p1, 0x0

    .line 30
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_d

    .line 31
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

    invoke-virtual {p0, p1}, La5/e;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method
