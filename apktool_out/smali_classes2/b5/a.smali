.class public final Lb5/a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lb5/b;


# direct methods
.method public constructor <init>(Lb5/b;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb5/a;->b:Lb5/b;

    .line 2
    .line 3
    iput-object p2, p0, Lb5/a;->a:Ljava/lang/String;

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

    invoke-virtual {p0, p1}, Lb5/a;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 12

    .line 2
    iget-object p1, p0, Lb5/a;->b:Lb5/b;

    const-string v0, "id="

    const-string v1, "https://"

    const-string v2, "https:"

    const/4 v3, 0x0

    .line 3
    :try_start_0
    invoke-static {}, Lb5/b;->e()V

    .line 4
    const-string v4, "9262859232435825"

    .line 5
    const-string v5, "93422192433952489752342908585752"

    .line 6
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v6, p0, Lb5/a;->a:Ljava/lang/String;

    invoke-static {v6, v6}, Lflix/com/vision/App;->get(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lg6/e;->parse(Ljava/lang/String;)Lj6/h;

    move-result-object v6

    .line 8
    const-string v7, "IFRAME"

    invoke-virtual {v6, v7}, Lorg/jsoup/nodes/b;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/b;

    move-result-object v6

    .line 9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "src"

    invoke-virtual {v6, v2}, Lj6/p;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 10
    iget-object v6, p1, Lflix/com/vision/processors/english/m;->domain:Ljava/lang/String;

    invoke-static {v2, v6}, Lflix/com/vision/App;->get(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response;

    move-result-object v6

    .line 11
    invoke-virtual {v6}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lg6/e;->parse(Ljava/lang/String;)Lj6/h;

    move-result-object v6

    .line 12
    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const-string v9, "&"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    aget-object v7, v7, v9

    .line 13
    new-instance v10, Ljava/net/URI;

    invoke-direct {v10, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 14
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-static {v7, v4, v5, v8}, Lh5/n;->cryptoHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 16
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/encrypt-ajax.php?"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lflix/com/vision/App;->getAjax(Ljava/lang/String;)Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 18
    :cond_0
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-static {v0}, Lflix/com/vision/utils/JsonUtils;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {v0, v4, v5, v9}, Lh5/n;->cryptoHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {v0}, Lflix/com/vision/utils/JsonUtils;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 24
    const-string v1, "source"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 25
    invoke-virtual {v0, v9}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 26
    new-instance v1, Lflix/com/vision/models/VideoSource;

    invoke-direct {v1}, Lflix/com/vision/models/VideoSource;-><init>()V

    .line 27
    iput-object v0, v1, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 28
    iput-boolean v8, v1, Lflix/com/vision/models/VideoSource;->streamable:Z

    .line 29
    iput-boolean v9, v1, Lflix/com/vision/models/VideoSource;->external_link:Z

    .line 30
    const-string v0, "1080p - [GOGOSTREAM] - [DIRECT]"

    iput-object v0, v1, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 31
    iput-object v2, v1, Lflix/com/vision/models/VideoSource;->referer:Ljava/lang/String;

    const/16 v0, 0x438

    .line 32
    iput v0, v1, Lflix/com/vision/models/VideoSource;->quality:I

    .line 33
    iget-object v0, p1, Lflix/com/vision/processors/english/m;->callBack:LU4/f;

    invoke-interface {v0, v1}, LU4/f;->OnSuccess(Lflix/com/vision/models/VideoSource;)V

    .line 34
    new-instance v0, LY4/c;

    iget-object v2, p1, Lb5/b;->a:Landroid/content/Context;

    iget-object v4, p1, Lflix/com/vision/processors/english/m;->callBack:LU4/f;

    invoke-direct {v0, v2, v4}, LY4/c;-><init>(Landroid/content/Context;LU4/f;)V

    .line 35
    iput-boolean v8, v0, LY4/c;->a:Z

    .line 36
    invoke-virtual {v0, v1, v3}, LY4/c;->process(Lflix/com/vision/models/VideoSource;Ljava/lang/String;)V

    .line 37
    const-string v0, ".list-server-items > .linkserver"

    invoke-virtual {v6, v0}, Lorg/jsoup/nodes/b;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 39
    :try_start_1
    const-string v2, "data-status"

    invoke-virtual {v1, v2}, Lj6/p;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 40
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 41
    const-string v2, "data-video"

    invoke-virtual {v1, v2}, Lj6/p;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    new-instance v2, Lflix/com/vision/models/VideoSource;

    invoke-direct {v2}, Lflix/com/vision/models/VideoSource;-><init>()V

    .line 43
    iput-object v1, v2, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 44
    iput-boolean v8, v2, Lflix/com/vision/models/VideoSource;->external_link:Z

    .line 45
    invoke-virtual {p1, v1}, Lflix/com/vision/processors/english/m;->checkLinkLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 46
    invoke-virtual {p1, v2}, Lflix/com/vision/processors/english/m;->addLink(Lflix/com/vision/models/VideoSource;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_1
    move-exception p1

    .line 47
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    return-object v3
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lb5/a;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method
