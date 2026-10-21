.class Lflix/com/vision/extractors/VidsrcToExtractor$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflix/com/vision/extractors/VidsrcToExtractor;->extract()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lflix/com/vision/models/VideoSource;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lflix/com/vision/extractors/VidsrcToExtractor;


# direct methods
.method public constructor <init>(Lflix/com/vision/extractors/VidsrcToExtractor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lflix/com/vision/extractors/VidsrcToExtractor$1;->this$0:Lflix/com/vision/extractors/VidsrcToExtractor;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Lflix/com/vision/models/VideoSource;
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation

    const/4 p1, 0x1

    .line 2
    const-string v0, "data-id"

    const-string v1, "https://vidsrc.to/embed/movie/"

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lflix/com/vision/extractors/VidsrcToExtractor$1;->this$0:Lflix/com/vision/extractors/VidsrcToExtractor;

    iget-object v1, v1, Lflix/com/vision/extractors/VidsrcToExtractor;->movie:Lflix/com/vision/models/Movie;

    invoke-virtual {v1}, Lflix/com/vision/models/Movie;->getMovieId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    const-string v3, "https://vidsrc.to/"

    invoke-static {v3}, Lflix/com/vision/extractors/VidsrcToExtractor$Service$Factory;->build(Ljava/lang/String;)Lflix/com/vision/extractors/VidsrcToExtractor$Service;

    move-result-object v3

    .line 4
    invoke-interface {v3, v1}, Lflix/com/vision/extractors/VidsrcToExtractor$Service;->get(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-interface {v1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v1

    invoke-virtual {v1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj6/h;

    if-eqz v1, :cond_6

    .line 5
    const-string v4, "ul.episodes li a"

    invoke-virtual {v1, v4}, Lorg/jsoup/nodes/b;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/b;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 6
    invoke-virtual {v1, v0}, Lj6/p;->hasAttr(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 7
    invoke-virtual {v1, v0}, Lj6/p;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    const-string v1, "https://raw.githubusercontent.com/Ciarands/vidsrc-keys/main/keys.json"

    invoke-interface {v3, v1}, Lflix/com/vision/extractors/VidsrcToExtractor$Service;->getKeys(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-interface {v1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v1

    invoke-virtual {v1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lflix/com/vision/extractors/VidsrcToExtractor$Keys;

    if-eqz v1, :cond_4

    .line 9
    iget-object v4, v1, Lflix/com/vision/extractors/VidsrcToExtractor$Keys;->encrypt:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v1, Lflix/com/vision/extractors/VidsrcToExtractor$Keys;->decrypt:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 10
    iget-object v4, p0, Lflix/com/vision/extractors/VidsrcToExtractor$1;->this$0:Lflix/com/vision/extractors/VidsrcToExtractor;

    iget-object v5, v1, Lflix/com/vision/extractors/VidsrcToExtractor$Keys;->encrypt:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v4, v5, v0}, Lflix/com/vision/extractors/VidsrcToExtractor;->access$000(Lflix/com/vision/extractors/VidsrcToExtractor;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Lflix/com/vision/extractors/VidsrcToExtractor$Service;->getSources(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lflix/com/vision/extractors/VidsrcToExtractor$EpisodeSources;

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, v0, Lflix/com/vision/extractors/VidsrcToExtractor$EpisodeSources;->result:Ljava/util/List;

    if-eqz v0, :cond_3

    move v4, p1

    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-gt v4, v5, :cond_2

    add-int/lit8 v5, v4, -0x1

    .line 13
    :try_start_1
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lflix/com/vision/extractors/VidsrcToExtractor$EpisodeSources$Result;

    .line 14
    iget-object v7, v5, Lflix/com/vision/extractors/VidsrcToExtractor$EpisodeSources$Result;->id:Ljava/lang/String;

    iget-object v8, p0, Lflix/com/vision/extractors/VidsrcToExtractor$1;->this$0:Lflix/com/vision/extractors/VidsrcToExtractor;

    iget-object v9, v1, Lflix/com/vision/extractors/VidsrcToExtractor$Keys;->encrypt:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iget-object v5, v5, Lflix/com/vision/extractors/VidsrcToExtractor$EpisodeSources$Result;->id:Ljava/lang/String;

    invoke-static {v8, v9, v5}, Lflix/com/vision/extractors/VidsrcToExtractor;->access$000(Lflix/com/vision/extractors/VidsrcToExtractor;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v7, v5}, Lflix/com/vision/extractors/VidsrcToExtractor$Service;->getEmbedSource(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v5

    invoke-interface {v5}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v5

    invoke-virtual {v5}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lflix/com/vision/extractors/VidsrcToExtractor$EmbedSource;

    if-eqz v5, :cond_1

    .line 15
    iget-object v7, v5, Lflix/com/vision/extractors/VidsrcToExtractor$EmbedSource;->result:Lflix/com/vision/extractors/VidsrcToExtractor$EmbedSource$Result;

    if-eqz v7, :cond_1

    .line 16
    iget-object v7, p0, Lflix/com/vision/extractors/VidsrcToExtractor$1;->this$0:Lflix/com/vision/extractors/VidsrcToExtractor;

    iget-object v8, v1, Lflix/com/vision/extractors/VidsrcToExtractor$Keys;->decrypt:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, v5, Lflix/com/vision/extractors/VidsrcToExtractor$EmbedSource;->result:Lflix/com/vision/extractors/VidsrcToExtractor$EmbedSource$Result;

    iget-object v9, v9, Lflix/com/vision/extractors/VidsrcToExtractor$EmbedSource$Result;->url:Ljava/lang/String;

    invoke-static {v7, v8, v9}, Lflix/com/vision/extractors/VidsrcToExtractor;->access$100(Lflix/com/vision/extractors/VidsrcToExtractor;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 17
    iget-object v5, v5, Lflix/com/vision/extractors/VidsrcToExtractor$EmbedSource;->result:Lflix/com/vision/extractors/VidsrcToExtractor$EmbedSource$Result;

    iget-object v5, v5, Lflix/com/vision/extractors/VidsrcToExtractor$EmbedSource$Result;->url:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    new-instance v5, Ljava/lang/Exception;

    const-string v7, "finalUrl == embedUrl"

    invoke-direct {v5, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 18
    :cond_1
    new-instance v5, Ljava/lang/Exception;

    const-string v7, "Can\'t retrieve embed source"

    invoke-direct {v5, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_1
    add-int/2addr v4, p1

    goto :goto_0

    :cond_2
    return-object v2

    :catch_1
    move-exception p1

    goto :goto_2

    .line 19
    :cond_3
    :try_start_2
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Can\'t retrieve sources"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_4
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Can\'t retrieve keys"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_5
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Can\'t retrieve media ID"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_6
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Failed to load document"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 23
    :goto_2
    sget v0, Lflix/com/vision/activities/MainActivity;->T:I

    const-string v0, "App"

    const-string v1, "Extraction failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lflix/com/vision/extractors/VidsrcToExtractor$1;->doInBackground([Ljava/lang/Void;)Lflix/com/vision/models/VideoSource;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Lflix/com/vision/models/VideoSource;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lflix/com/vision/models/VideoSource;

    invoke-virtual {p0, p1}, Lflix/com/vision/extractors/VidsrcToExtractor$1;->onPostExecute(Lflix/com/vision/models/VideoSource;)V

    return-void
.end method
