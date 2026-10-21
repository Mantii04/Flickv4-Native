.class Lflix/com/vision/extractors/GogoExtractor$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflix/com/vision/extractors/GogoExtractor;->doSearch(Ljava/lang/String;)V
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
.field final synthetic this$0:Lflix/com/vision/extractors/GogoExtractor;

.field final synthetic val$uuu:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lflix/com/vision/extractors/GogoExtractor;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lflix/com/vision/extractors/GogoExtractor$1;->this$0:Lflix/com/vision/extractors/GogoExtractor;

    .line 2
    .line 3
    iput-object p2, p0, Lflix/com/vision/extractors/GogoExtractor$1;->val$uuu:Ljava/lang/String;

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

    invoke-virtual {p0, p1}, Lflix/com/vision/extractors/GogoExtractor$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 8

    .line 2
    const-string p1, "https://streamcool.pro/encrypt-ajax.php?"

    const-string v0, "id="

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "9262859232435825"

    .line 3
    const-string v3, "93422192433952489752342908585752"

    .line 4
    iget-object v4, p0, Lflix/com/vision/extractors/GogoExtractor$1;->val$uuu:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const-string v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aget-object v4, v4, v6

    .line 5
    invoke-static {v4, v2, v3, v5}, Lh5/n;->cryptoHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lflix/com/vision/App;->getAjax(Ljava/lang/String;)Lokhttp3/Response;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v1

    .line 8
    :cond_0
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {p1}, Lflix/com/vision/utils/JsonUtils;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string v0, "data"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {p1, v2, v3, v6}, Lh5/n;->cryptoHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-static {p1}, Lflix/com/vision/utils/JsonUtils;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 14
    const-string v0, "source"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object p1

    .line 15
    invoke-virtual {p1, v6}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string v0, "file"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    .line 16
    new-instance v0, Lflix/com/vision/models/VideoSource;

    invoke-direct {v0}, Lflix/com/vision/models/VideoSource;-><init>()V

    .line 17
    iput-object p1, v0, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 18
    iput-boolean v5, v0, Lflix/com/vision/models/VideoSource;->streamable:Z

    .line 19
    iput-boolean v6, v0, Lflix/com/vision/models/VideoSource;->external_link:Z

    .line 20
    const-string p1, "1080p - [GOGOSTREAM] - [DIRECT] - English"

    iput-object p1, v0, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 21
    iget-object p1, p0, Lflix/com/vision/extractors/GogoExtractor$1;->this$0:Lflix/com/vision/extractors/GogoExtractor;

    iget-object v2, p1, Lflix/com/vision/extractors/GogoExtractor;->domain:Ljava/lang/String;

    iput-object v2, v0, Lflix/com/vision/models/VideoSource;->referer:Ljava/lang/String;

    const/16 v2, 0x438

    .line 22
    iput v2, v0, Lflix/com/vision/models/VideoSource;->quality:I

    .line 23
    iget-object p1, p1, Lflix/com/vision/processors/english/m;->callBack:LU4/f;

    invoke-interface {p1, v0}, LU4/f;->OnSuccess(Lflix/com/vision/models/VideoSource;)V

    .line 24
    new-instance p1, LY4/c;

    iget-object v2, p0, Lflix/com/vision/extractors/GogoExtractor$1;->this$0:Lflix/com/vision/extractors/GogoExtractor;

    iget-object v3, v2, Lflix/com/vision/extractors/GogoExtractor;->context:Landroid/content/Context;

    iget-object v2, v2, Lflix/com/vision/processors/english/m;->callBack:LU4/f;

    invoke-direct {p1, v3, v2}, LY4/c;-><init>(Landroid/content/Context;LU4/f;)V

    .line 25
    iput-boolean v5, p1, LY4/c;->a:Z

    .line 26
    iget-object v2, v0, Lflix/com/vision/models/VideoSource;->referer:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, LY4/c;->process(Lflix/com/vision/models/VideoSource;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 27
    :try_start_1
    iget-object p1, p0, Lflix/com/vision/extractors/GogoExtractor$1;->val$uuu:Ljava/lang/String;

    invoke-static {p1, p1}, Lflix/com/vision/App;->get(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lg6/e;->parse(Ljava/lang/String;)Lj6/h;

    move-result-object p1

    .line 28
    const-string v0, ".list-server-items > .linkserver"

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/b;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catch_0
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/b;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 30
    :try_start_2
    const-string v2, "data-status"

    invoke-virtual {v0, v2}, Lj6/p;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 31
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 32
    const-string v2, "data-video"

    invoke-virtual {v0, v2}, Lj6/p;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    new-instance v2, Lflix/com/vision/models/VideoSource;

    invoke-direct {v2}, Lflix/com/vision/models/VideoSource;-><init>()V

    .line 34
    iput-object v0, v2, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 35
    iput-boolean v5, v2, Lflix/com/vision/models/VideoSource;->external_link:Z

    .line 36
    iget-object v3, p0, Lflix/com/vision/extractors/GogoExtractor$1;->this$0:Lflix/com/vision/extractors/GogoExtractor;

    invoke-virtual {v3, v0}, Lflix/com/vision/processors/english/m;->checkLinkLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lflix/com/vision/extractors/GogoExtractor$1;->this$0:Lflix/com/vision/extractors/GogoExtractor;

    invoke-virtual {v0, v2}, Lflix/com/vision/processors/english/m;->addLink(Lflix/com/vision/models/VideoSource;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_1
    move-exception p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :catch_2
    :cond_2
    return-object v1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lflix/com/vision/extractors/GogoExtractor$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method
