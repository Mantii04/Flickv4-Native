.class Lflix/com/vision/extractors/VidsrcExtractor$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflix/com/vision/extractors/VidsrcExtractor;->fetchLinks(Ljava/lang/String;Z)V
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
.field final synthetic this$0:Lflix/com/vision/extractors/VidsrcExtractor;

.field final synthetic val$isMovie:Z


# direct methods
.method public constructor <init>(Lflix/com/vision/extractors/VidsrcExtractor;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lflix/com/vision/extractors/VidsrcExtractor$1;->this$0:Lflix/com/vision/extractors/VidsrcExtractor;

    .line 2
    .line 3
    iput-boolean p2, p0, Lflix/com/vision/extractors/VidsrcExtractor$1;->val$isMovie:Z

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Lflix/com/vision/models/VideoSource;
    .locals 12

    .line 2
    const-string p1, "&apikey=jerry"

    const-string v0, "\"url\":\"([^\"]*)\""

    const-string v1, "https://vsembed.ru"

    const-string v2, "https://9anime.eltik.net/rawvizcloud?query="

    const-string v3, "https://9anime.eltik.net/fmovies-decrypt?query="

    const-string v4, "https://vsembed.ru/ajax/embed/source/"

    const-string v5, "https://vsembed.ru/ajax/embed/episode/"

    const-string v6, "/1-1"

    const-string v7, "/124364"

    const-string v8, "https://vsembed.ru/embed/"

    const/4 v9, 0x0

    .line 3
    :try_start_0
    iget-boolean v10, p0, Lflix/com/vision/extractors/VidsrcExtractor$1;->val$isMovie:Z

    if-eqz v10, :cond_0

    const-string v10, "tv"

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_1

    :cond_0
    const-string v10, "movie"

    .line 4
    :goto_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5
    invoke-static {v6, v1}, Lflix/com/vision/App;->get(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v7

    .line 6
    iget-object v8, p0, Lflix/com/vision/extractors/VidsrcExtractor$1;->this$0:Lflix/com/vision/extractors/VidsrcExtractor;

    const-string v10, "data-i=\"([^\"]*)\""

    invoke-static {v8, v7, v10}, Lflix/com/vision/extractors/VidsrcExtractor;->access$000(Lflix/com/vision/extractors/VidsrcExtractor;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    return-object v9

    .line 7
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/sources"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-static {v5, v6}, Lflix/com/vision/App;->get(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v6

    .line 9
    iget-object v7, p0, Lflix/com/vision/extractors/VidsrcExtractor$1;->this$0:Lflix/com/vision/extractors/VidsrcExtractor;

    const-string v8, "\"id\":\"([^\"]*)\".*\"Vidplay"

    invoke-static {v7, v6, v8}, Lflix/com/vision/extractors/VidsrcExtractor;->access$000(Lflix/com/vision/extractors/VidsrcExtractor;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    return-object v9

    .line 10
    :cond_2
    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-static {v4, v5}, Lflix/com/vision/App;->get(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v4

    .line 12
    iget-object v5, p0, Lflix/com/vision/extractors/VidsrcExtractor$1;->this$0:Lflix/com/vision/extractors/VidsrcExtractor;

    invoke-static {v5, v4, v0}, Lflix/com/vision/extractors/VidsrcExtractor;->access$000(Lflix/com/vision/extractors/VidsrcExtractor;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    return-object v9

    .line 13
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-static {v3, v1}, Lflix/com/vision/App;->get(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1

    .line 15
    iget-object v3, p0, Lflix/com/vision/extractors/VidsrcExtractor$1;->this$0:Lflix/com/vision/extractors/VidsrcExtractor;

    invoke-static {v3, v1, v0}, Lflix/com/vision/extractors/VidsrcExtractor;->access$000(Lflix/com/vision/extractors/VidsrcExtractor;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    return-object v9

    .line 16
    :cond_4
    const-string v1, ".*/e/([^?]*)\\?(.*)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 17
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 18
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_5

    return-object v9

    :cond_5
    const/4 v3, 0x1

    .line 19
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    .line 20
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 21
    const-string v5, "https://vidstream.pro/futoken"

    invoke-static {v5, v0}, Lflix/com/vision/App;->get(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v5

    .line 22
    new-instance v6, Lokhttp3/OkHttpClient;

    invoke-direct {v6}, Lokhttp3/OkHttpClient;-><init>()V

    .line 23
    new-instance v7, Lokhttp3/FormBody$Builder;

    invoke-direct {v7}, Lokhttp3/FormBody$Builder;-><init>()V

    const-string v8, "query"

    .line 24
    invoke-virtual {v7, v8, v4}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v7

    const-string v8, "futoken"

    .line 25
    invoke-virtual {v7, v8, v5}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v5

    .line 26
    invoke-virtual {v5}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v5

    .line 27
    new-instance v7, Lokhttp3/Request$Builder;

    invoke-direct {v7}, Lokhttp3/Request$Builder;-><init>()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-virtual {v7, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 29
    invoke-virtual {p1, v5}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 31
    invoke-virtual {v6, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    .line 33
    iget-object v2, p0, Lflix/com/vision/extractors/VidsrcExtractor$1;->this$0:Lflix/com/vision/extractors/VidsrcExtractor;

    const-string v4, "\"rawURL\":\"([^\"]*)\""

    invoke-static {v2, p1, v4}, Lflix/com/vision/extractors/VidsrcExtractor;->access$000(Lflix/com/vision/extractors/VidsrcExtractor;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    return-object v9

    .line 34
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 35
    invoke-static {p1, v0}, Lflix/com/vision/App;->get(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    .line 36
    const-string v1, "\\/"

    const-string v2, "/"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 37
    iget-object v1, p0, Lflix/com/vision/extractors/VidsrcExtractor$1;->this$0:Lflix/com/vision/extractors/VidsrcExtractor;

    const-string v2, "\"file\":\"([^\"]*)\""

    invoke-static {v1, p1, v2}, Lflix/com/vision/extractors/VidsrcExtractor;->access$000(Lflix/com/vision/extractors/VidsrcExtractor;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 38
    new-instance v1, Lflix/com/vision/models/VideoSource;

    invoke-direct {v1}, Lflix/com/vision/models/VideoSource;-><init>()V

    .line 39
    iput-object p1, v1, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 40
    const-string p1, "1080p - [VIDSRC] - [DIRECT]"

    iput-object p1, v1, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 41
    iput-boolean v3, v1, Lflix/com/vision/models/VideoSource;->streamable:Z

    .line 42
    iput-object v0, v1, Lflix/com/vision/models/VideoSource;->referer:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 43
    :goto_1
    const-string v0, "VidsrcExtractor"

    const-string v1, "Extraction failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    return-object v9
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lflix/com/vision/extractors/VidsrcExtractor$1;->doInBackground([Ljava/lang/Void;)Lflix/com/vision/models/VideoSource;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Lflix/com/vision/models/VideoSource;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lflix/com/vision/extractors/VidsrcExtractor$1;->this$0:Lflix/com/vision/extractors/VidsrcExtractor;

    invoke-static {v0}, Lflix/com/vision/extractors/VidsrcExtractor;->access$100(Lflix/com/vision/extractors/VidsrcExtractor;)LU4/f;

    move-result-object v0

    invoke-interface {v0, p1}, LU4/f;->OnSuccess(Lflix/com/vision/models/VideoSource;)V

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lflix/com/vision/extractors/VidsrcExtractor$1;->this$0:Lflix/com/vision/extractors/VidsrcExtractor;

    invoke-static {p1}, Lflix/com/vision/extractors/VidsrcExtractor;->access$100(Lflix/com/vision/extractors/VidsrcExtractor;)LU4/f;

    move-result-object p1

    invoke-interface {p1}, LU4/f;->OnError()V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lflix/com/vision/models/VideoSource;

    invoke-virtual {p0, p1}, Lflix/com/vision/extractors/VidsrcExtractor$1;->onPostExecute(Lflix/com/vision/models/VideoSource;)V

    return-void
.end method
