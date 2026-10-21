.class Lflix/com/vision/extractors/DoodExtractor$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflix/com/vision/extractors/DoodExtractor;->fetchLinks(Lflix/com/vision/models/VideoSource;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lflix/com/vision/extractors/DoodExtractor;

.field final synthetic val$vs:Lflix/com/vision/models/VideoSource;


# direct methods
.method public constructor <init>(Lflix/com/vision/extractors/DoodExtractor;Lflix/com/vision/models/VideoSource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lflix/com/vision/extractors/DoodExtractor$1;->this$0:Lflix/com/vision/extractors/DoodExtractor;

    .line 2
    .line 3
    iput-object p2, p0, Lflix/com/vision/extractors/DoodExtractor$1;->val$vs:Lflix/com/vision/models/VideoSource;

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

    invoke-virtual {p0, p1}, Lflix/com/vision/extractors/DoodExtractor$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 8

    .line 2
    const-string p1, "/"

    const-string v0, ""

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lflix/com/vision/extractors/DoodExtractor$1;->val$vs:Lflix/com/vision/models/VideoSource;

    iget-object v2, v2, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    iget-object v3, p0, Lflix/com/vision/extractors/DoodExtractor$1;->this$0:Lflix/com/vision/extractors/DoodExtractor;

    iget-object v3, v3, Lflix/com/vision/extractors/BaseExtractor;->baseUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Lflix/com/vision/App;->get(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response;

    move-result-object v2

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {v2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v1

    .line 5
    :cond_0
    invoke-static {v2}, Lg6/e;->parse(Ljava/lang/String;)Lj6/h;

    move-result-object v2

    .line 6
    iget-object v4, p0, Lflix/com/vision/extractors/DoodExtractor$1;->this$0:Lflix/com/vision/extractors/DoodExtractor;

    iget-object v4, v4, Lflix/com/vision/extractors/BaseExtractor;->baseUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 7
    :try_start_1
    invoke-virtual {v2}, Lorg/jsoup/nodes/b;->baseUri()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lh5/n;->notNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 8
    invoke-virtual {v2}, Lorg/jsoup/nodes/b;->baseUri()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 9
    :cond_1
    iget-object v5, p0, Lflix/com/vision/extractors/DoodExtractor$1;->val$vs:Lflix/com/vision/models/VideoSource;

    iget-object v5, v5, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    invoke-static {v5}, Lh5/n;->getBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 10
    iget-object v6, p0, Lflix/com/vision/extractors/DoodExtractor$1;->val$vs:Lflix/com/vision/models/VideoSource;

    iget-object v6, v6, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    invoke-static {v6}, Lh5/n;->notNull(Ljava/lang/String;)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v6, :cond_2

    move-object v4, v5

    .line 11
    :catch_0
    :cond_2
    :goto_0
    const-string v5, "https://"

    if-eqz v4, :cond_3

    .line 12
    :try_start_2
    const-string v6, "http://"

    invoke-virtual {v4, v6, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :catch_1
    move-exception p1

    goto/16 :goto_4

    .line 13
    :cond_3
    :goto_1
    invoke-static {v4}, Lh5/n;->notNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 14
    const-string v4, "DOOD"

    .line 15
    :cond_4
    iget-object v0, p0, Lflix/com/vision/extractors/DoodExtractor$1;->this$0:Lflix/com/vision/extractors/DoodExtractor;

    invoke-virtual {v2}, Lorg/jsoup/nodes/b;->html()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lflix/com/vision/extractors/DoodExtractor;->getPassMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    return-object v1

    .line 16
    :cond_5
    const-string v6, "TITLE"

    invoke-virtual {v2, v6}, Lorg/jsoup/nodes/b;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/b;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 17
    const-string v6, "HD"

    if-eqz v2, :cond_6

    .line 18
    :try_start_3
    iget-object v7, p0, Lflix/com/vision/extractors/DoodExtractor$1;->this$0:Lflix/com/vision/extractors/DoodExtractor;

    invoke-virtual {v2}, Lorg/jsoup/nodes/b;->text()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lflix/com/vision/extractors/DoodExtractor;->getQuality(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_6
    move-object v2, v6

    .line 19
    :goto_2
    invoke-static {v2}, Lh5/n;->notNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_3

    :cond_7
    move-object v6, v2

    .line 20
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget-object p1, v3, p1

    .line 22
    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 23
    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 24
    :cond_8
    iget-object v3, p0, Lflix/com/vision/extractors/DoodExtractor$1;->val$vs:Lflix/com/vision/models/VideoSource;

    iget-object v3, v3, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Lflix/com/vision/App;->get(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v2

    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "qWMG3yc6F5?token="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 26
    new-instance v2, Lflix/com/vision/models/VideoSource;

    invoke-direct {v2}, Lflix/com/vision/models/VideoSource;-><init>()V

    .line 27
    iput-object p1, v2, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 28
    iput-boolean v0, v2, Lflix/com/vision/models/VideoSource;->streamable:Z

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, v2, Lflix/com/vision/models/VideoSource;->external_link:Z

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] - [DIRECT] - English"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 31
    iget-object p1, p0, Lflix/com/vision/extractors/DoodExtractor$1;->this$0:Lflix/com/vision/extractors/DoodExtractor;

    iget-object v0, p1, Lflix/com/vision/extractors/DoodExtractor;->referer:Ljava/lang/String;

    iput-object v0, v2, Lflix/com/vision/models/VideoSource;->referer:Ljava/lang/String;

    .line 32
    iget-object p1, p1, Lflix/com/vision/extractors/BaseExtractor;->callBack:LU4/f;

    invoke-interface {p1, v2}, LU4/f;->OnSuccess(Lflix/com/vision/models/VideoSource;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    .line 33
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5
    return-object v1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lflix/com/vision/extractors/DoodExtractor$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method
