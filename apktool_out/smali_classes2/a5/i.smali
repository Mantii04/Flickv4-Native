.class public final La5/i;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:La5/l;


# direct methods
.method public constructor <init>(La5/l;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, La5/i;->c:La5/l;

    .line 2
    .line 3
    iput-object p2, p0, La5/i;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, La5/i;->b:Ljava/util/ArrayList;

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

    invoke-virtual {p0, p1}, La5/i;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 14

    .line 2
    const-string p1, "A"

    iget-object v0, p0, La5/i;->c:La5/l;

    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-object v2, p0, La5/i;->a:Ljava/lang/String;

    invoke-static {v2}, Lg6/e;->connect(Ljava/lang/String;)Lg6/d;

    move-result-object v2

    check-cast v2, Lh6/h;

    invoke-virtual {v2}, Lh6/h;->get()Lj6/h;

    move-result-object v2

    .line 4
    iget-boolean v3, v0, La5/l;->c:Z

    if-eqz v3, :cond_0

    goto/16 :goto_1

    .line 5
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, La5/l;->a:Lflix/com/vision/models/Movie;

    invoke-virtual {v4}, Lflix/com/vision/models/Movie;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lh5/n;->removeSpecialChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, La5/l;->a:Lflix/com/vision/models/Movie;

    invoke-virtual {v4}, Lflix/com/vision/models/Movie;->getYear()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6
    const-string v4, "TR"

    invoke-virtual {v2, v4}, Lorg/jsoup/nodes/b;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v6, p0, La5/i;->b:Ljava/util/ArrayList;

    if-eqz v5, :cond_b

    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/nodes/b;

    .line 7
    invoke-virtual {v5, p1}, Lorg/jsoup/nodes/b;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/jsoup/nodes/b;

    .line 8
    invoke-virtual {v8}, Lorg/jsoup/nodes/b;->text()Ljava/lang/String;

    move-result-object v9

    .line 9
    invoke-virtual {v0, v9}, Lflix/com/vision/processors/english/m;->removeSpecialChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 10
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v8}, Lorg/jsoup/nodes/b;->text()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, La5/l;->a:Lflix/com/vision/models/Movie;

    invoke-virtual {v9}, Lflix/com/vision/models/Movie;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lflix/com/vision/processors/english/m;->isEnglishlang(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 11
    invoke-virtual {v5, p1}, Lorg/jsoup/nodes/b;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/jsoup/nodes/b;

    .line 12
    const-string v10, "href"

    invoke-virtual {v9, v10}, Lj6/p;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 13
    const-string v10, "magnet"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 14
    iget-boolean v10, v0, La5/l;->c:Z

    if-eqz v10, :cond_4

    goto :goto_1

    .line 15
    :cond_4
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    move-result-object v10

    invoke-virtual {v10, v9}, Lflix/com/vision/App;->addHash(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    goto :goto_0

    .line 16
    :cond_5
    sget-boolean v10, Lflix/com/vision/api/realdebrid/RealDebridCommon;->m:Z

    if-eqz v10, :cond_6

    .line 17
    new-instance v10, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v11, LA4/n;

    const/16 v12, 0x11

    invoke-direct {v11, v12, p0, v9}, LA4/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    mul-int/lit16 v12, v4, 0xfa

    int-to-long v12, v12

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 18
    :cond_6
    sget-boolean v10, Lflix/com/vision/api/alldebrid/AllDebridCommon;->f:Z

    if-eqz v10, :cond_7

    .line 19
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_7
    sget-boolean v10, Lflix/com/vision/api/premiumize/PremiumizeCommon;->b:Z

    if-eqz v10, :cond_8

    .line 21
    invoke-virtual {v0, v9}, Lflix/com/vision/processors/english/m;->getMagnetPremiumize(Ljava/lang/String;)V

    .line 22
    :cond_8
    sget-boolean v10, LJ4/b;->a:Z

    if-eqz v10, :cond_9

    .line 23
    invoke-virtual {v0, v9}, Lflix/com/vision/processors/english/m;->getMagnetTorBox(Ljava/lang/String;)V

    .line 24
    :cond_9
    sget-boolean v10, LG4/b;->a:Z

    if-eqz v10, :cond_a

    .line 25
    invoke-virtual {v0, v9}, Lflix/com/vision/processors/english/m;->getMagnetOffcloud(Ljava/lang/String;)V

    :cond_a
    add-int/lit8 v4, v4, 0x1

    .line 26
    iget v9, v0, Lflix/com/vision/processors/english/m;->max_page:I

    if-le v4, v9, :cond_3

    .line 27
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_c

    .line 28
    invoke-virtual {v0, v6}, Lflix/com/vision/processors/english/m;->addMagnetsAllDebrid(Ljava/util/List;)V

    return-object v1

    .line 29
    :cond_b
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_c

    .line 30
    invoke-virtual {v0, v6}, Lflix/com/vision/processors/english/m;->addMagnetsAllDebrid(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_c
    :goto_1
    return-object v1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, La5/i;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method
