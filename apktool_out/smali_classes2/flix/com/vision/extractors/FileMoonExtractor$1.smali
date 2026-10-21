.class Lflix/com/vision/extractors/FileMoonExtractor$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflix/com/vision/extractors/FileMoonExtractor;->fetchLinks(Lflix/com/vision/models/VideoSource;)V
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
.field final synthetic this$0:Lflix/com/vision/extractors/FileMoonExtractor;

.field final synthetic val$vs:Lflix/com/vision/models/VideoSource;


# direct methods
.method public constructor <init>(Lflix/com/vision/extractors/FileMoonExtractor;Lflix/com/vision/models/VideoSource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lflix/com/vision/extractors/FileMoonExtractor$1;->this$0:Lflix/com/vision/extractors/FileMoonExtractor;

    .line 2
    .line 3
    iput-object p2, p0, Lflix/com/vision/extractors/FileMoonExtractor$1;->val$vs:Lflix/com/vision/models/VideoSource;

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

    invoke-virtual {p0, p1}, Lflix/com/vision/extractors/FileMoonExtractor$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 5

    .line 2
    const-string p1, ""

    :try_start_0
    iget-object v0, p0, Lflix/com/vision/extractors/FileMoonExtractor$1;->val$vs:Lflix/com/vision/models/VideoSource;

    iget-object v0, v0, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    iget-object v1, p0, Lflix/com/vision/extractors/FileMoonExtractor$1;->this$0:Lflix/com/vision/extractors/FileMoonExtractor;

    iget-object v1, v1, Lflix/com/vision/processors/english/m;->domain:Ljava/lang/String;

    invoke-static {v0, v1}, Lflix/com/vision/App;->get(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lg6/e;->parse(Ljava/lang/String;)Lj6/h;

    move-result-object v0

    .line 5
    const-string v1, "script:containsData(function(p,a,c,k,e,d))"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/b;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->last()Lorg/jsoup/nodes/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/b;->data()Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v1, Lh5/k;

    invoke-direct {v1, v0}, Lh5/k;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lh5/k;->unpack()Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lflix/com/vision/extractors/FileMoonExtractor$1;->this$0:Lflix/com/vision/extractors/FileMoonExtractor;

    invoke-virtual {v1, v0}, Lflix/com/vision/extractors/FileMoonExtractor;->getlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    const-string v1, ".setup("

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {p1}, Lflix/com/vision/utils/JsonUtils;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 11
    const-string v0, "sources"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 12
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 13
    invoke-virtual {p1, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 14
    new-instance v3, Lflix/com/vision/models/VideoSource;

    invoke-direct {v3}, Lflix/com/vision/models/VideoSource;-><init>()V

    .line 15
    iput-object v2, v3, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    const/4 v2, 0x1

    .line 16
    iput-boolean v2, v3, Lflix/com/vision/models/VideoSource;->streamable:Z

    .line 17
    iput-boolean v0, v3, Lflix/com/vision/models/VideoSource;->external_link:Z

    .line 18
    iput-boolean v2, v3, Lflix/com/vision/models/VideoSource;->requireVLC:Z

    .line 19
    const-string v2, "1080p - [FILEMOON] - [DIRECT] - English"

    iput-object v2, v3, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 20
    iget-object v2, p0, Lflix/com/vision/extractors/FileMoonExtractor$1;->this$0:Lflix/com/vision/extractors/FileMoonExtractor;

    iget-object v4, v2, Lflix/com/vision/processors/english/m;->domain:Ljava/lang/String;

    iput-object v4, v3, Lflix/com/vision/models/VideoSource;->referer:Ljava/lang/String;

    .line 21
    iget-object v2, v2, Lflix/com/vision/processors/english/m;->callBack:LU4/f;

    invoke-interface {v2, v3}, LU4/f;->OnSuccess(Lflix/com/vision/models/VideoSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lflix/com/vision/extractors/FileMoonExtractor$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method
