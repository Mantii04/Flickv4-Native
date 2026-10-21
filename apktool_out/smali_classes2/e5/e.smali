.class public final Le5/e;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Le5/f;


# direct methods
.method public constructor <init>(Le5/f;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le5/e;->b:Le5/f;

    .line 2
    .line 3
    iput-object p2, p0, Le5/e;->a:Ljava/lang/String;

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

    invoke-virtual {p0, p1}, Le5/e;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 9

    .line 2
    const-string p1, "/"

    const-string v0, "href"

    const-string v1, "A"

    iget-object v2, p0, Le5/e;->b:Le5/f;

    :try_start_0
    iget-object v3, p0, Le5/e;->a:Ljava/lang/String;

    invoke-static {v3}, Lg6/e;->connect(Ljava/lang/String;)Lg6/d;

    move-result-object v3

    check-cast v3, Lh6/h;

    invoke-virtual {v3}, Lh6/h;->get()Lj6/h;

    move-result-object v3

    .line 3
    const-string v4, "cont_display"

    invoke-virtual {v3, v4}, Lorg/jsoup/nodes/b;->getElementsByClass(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jsoup/nodes/b;

    .line 4
    invoke-virtual {v4, v1}, Lorg/jsoup/nodes/b;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/b;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 5
    const-string v5, "title"

    invoke-virtual {v4, v5}, Lj6/p;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-virtual {v2, v5}, Lflix/com/vision/processors/english/m;->removeSpecialChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v2, Le5/f;->a:Lflix/com/vision/models/Movie;

    invoke-virtual {v7}, Lflix/com/vision/models/Movie;->getTitle()Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-virtual {v2, v7}, Lflix/com/vision/processors/english/m;->removeSpecialChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 9
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Le5/f;->a:Lflix/com/vision/models/Movie;

    iget-object v7, v7, Lflix/com/vision/models/Movie;->year:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_0

    .line 10
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 11
    invoke-virtual {v4, v0}, Lj6/p;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 12
    const-string v5, "http"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 13
    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v2, Lflix/com/vision/processors/english/m;->domain:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_2

    .line 15
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v2, Lflix/com/vision/processors/english/m;->domain:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 16
    :cond_2
    :goto_0
    invoke-static {v4}, Lg6/e;->connect(Ljava/lang/String;)Lg6/d;

    move-result-object v4

    check-cast v4, Lh6/h;

    invoke-virtual {v4}, Lh6/h;->get()Lj6/h;

    move-result-object v4

    .line 17
    invoke-virtual {v4, v1}, Lorg/jsoup/nodes/b;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v4

    .line 18
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/nodes/b;

    .line 19
    invoke-virtual {v5}, Lorg/jsoup/nodes/b;->text()Ljava/lang/String;

    move-result-object v7

    .line 20
    invoke-virtual {v2, v7}, Lflix/com/vision/processors/english/m;->removeSpecialChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 21
    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 22
    invoke-virtual {v5, v0}, Lj6/p;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 23
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 24
    const-string v7, "//"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 25
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "http:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 26
    :cond_4
    new-instance v7, Lflix/com/vision/models/VideoSource;

    invoke-direct {v7}, Lflix/com/vision/models/VideoSource;-><init>()V

    .line 27
    iput-object v5, v7, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    const/4 v8, 0x1

    .line 28
    iput-boolean v8, v7, Lflix/com/vision/models/VideoSource;->external_link:Z

    .line 29
    invoke-virtual {v2, v5}, Lflix/com/vision/processors/english/m;->checkLinkLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v7, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 30
    iput-boolean v8, v7, Lflix/com/vision/models/VideoSource;->isHindi:Z

    .line 31
    invoke-virtual {v2, v7}, Lflix/com/vision/processors/english/m;->addLink(Lflix/com/vision/models/VideoSource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 32
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Le5/e;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method
