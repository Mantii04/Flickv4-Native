.class Lflix/com/vision/extractors/DoodExtractorExtended$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflix/com/vision/extractors/DoodExtractorExtended;->extract(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lflix/com/vision/models/VideoSource;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lflix/com/vision/extractors/DoodExtractorExtended;


# direct methods
.method public constructor <init>(Lflix/com/vision/extractors/DoodExtractorExtended;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lflix/com/vision/extractors/DoodExtractorExtended$1;->this$0:Lflix/com/vision/extractors/DoodExtractorExtended;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/String;)Lflix/com/vision/models/VideoSource;
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation

    .line 2
    const-string v0, "DoodExtractorExtended"

    const-string v1, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36"

    const-string v2, "User-Agent"

    const-string v3, "https://"

    const/4 v4, 0x0

    aget-object p1, p1, v4

    .line 3
    const-string v4, "/d/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4
    const-string v5, "/e/"

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 5
    :cond_0
    new-instance v4, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v4}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const/4 v5, 0x1

    .line 6
    invoke-virtual {v4, v5}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v4

    .line 7
    invoke-virtual {v4, v5}, Lokhttp3/OkHttpClient$Builder;->followSslRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v4

    .line 8
    invoke-virtual {v4}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v4

    const/4 v6, 0x0

    .line 9
    :try_start_0
    new-instance v7, Lokhttp3/Request$Builder;

    invoke-direct {v7}, Lokhttp3/Request$Builder;-><init>()V

    .line 10
    invoke-virtual {v7, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 11
    invoke-virtual {p1, v2, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 14
    invoke-virtual {v4, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v7

    if-nez v7, :cond_1

    goto/16 :goto_0

    .line 16
    :cond_1
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v7

    .line 17
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 19
    invoke-virtual {v8}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v8

    .line 20
    iget-object v9, p0, Lflix/com/vision/extractors/DoodExtractorExtended$1;->this$0:Lflix/com/vision/extractors/DoodExtractorExtended;

    const-string v10, "dsplayer\\.hotkeys[^\']+\'([^\']+).+?function"

    invoke-static {v9, v7, v10}, Lflix/com/vision/extractors/DoodExtractorExtended;->access$000(Lflix/com/vision/extractors/DoodExtractorExtended;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_2

    return-object v6

    .line 21
    :cond_2
    iget-object v10, p0, Lflix/com/vision/extractors/DoodExtractorExtended$1;->this$0:Lflix/com/vision/extractors/DoodExtractorExtended;

    const-string v11, "(\\?token=[^\"]+)"

    invoke-static {v10, v7, v11}, Lflix/com/vision/extractors/DoodExtractorExtended;->access$000(Lflix/com/vision/extractors/DoodExtractorExtended;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    .line 22
    const-string p1, "Failed to extract token"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :catch_0
    move-exception p1

    goto/16 :goto_1

    .line 23
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 24
    new-instance v10, Lokhttp3/Request$Builder;

    invoke-direct {v10}, Lokhttp3/Request$Builder;-><init>()V

    .line 25
    invoke-virtual {v10, v9}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v9

    const-string v10, "Referer"

    .line 26
    invoke-virtual {v9, v10, p1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string v9, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36"

    .line 27
    invoke-virtual {p1, v2, v9}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 30
    invoke-virtual {v4, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_0

    .line 32
    :cond_4
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    return-object v6

    .line 34
    :cond_5
    iget-object v4, p0, Lflix/com/vision/extractors/DoodExtractorExtended$1;->this$0:Lflix/com/vision/extractors/DoodExtractorExtended;

    const/16 v9, 0xa

    invoke-static {v4, v9}, Lflix/com/vision/extractors/DoodExtractorExtended;->access$100(Lflix/com/vision/extractors/DoodExtractorExtended;I)Ljava/lang/String;

    move-result-object v4

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    .line 36
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 37
    new-instance v4, Lflix/com/vision/models/VideoSource;

    invoke-direct {v4}, Lflix/com/vision/models/VideoSource;-><init>()V

    .line 38
    iput-object p1, v4, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 39
    const-string p1, "1080p \u00b7 [FVSTREAM 5] \u00b7 [DIRECT] \u00b7 English"

    iput-object p1, v4, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 40
    iput-boolean v5, v4, Lflix/com/vision/models/VideoSource;->streamable:Z

    const/16 p1, 0x2d0

    .line 41
    iput p1, v4, Lflix/com/vision/models/VideoSource;->quality:I

    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v4, Lflix/com/vision/models/VideoSource;->referer:Ljava/lang/String;

    .line 43
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, v4, Lflix/com/vision/models/VideoSource;->headers:Ljava/util/Map;

    .line 44
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :cond_6
    :goto_0
    return-object v6

    .line 45
    :goto_1
    const-string v1, "Doodstream extraction failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v6
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lflix/com/vision/extractors/DoodExtractorExtended$1;->doInBackground([Ljava/lang/String;)Lflix/com/vision/models/VideoSource;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Lflix/com/vision/models/VideoSource;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lflix/com/vision/extractors/DoodExtractorExtended$1;->this$0:Lflix/com/vision/extractors/DoodExtractorExtended;

    invoke-static {v0}, Lflix/com/vision/extractors/DoodExtractorExtended;->access$200(Lflix/com/vision/extractors/DoodExtractorExtended;)LU4/f;

    move-result-object v0

    invoke-interface {v0, p1}, LU4/f;->OnSuccess(Lflix/com/vision/models/VideoSource;)V

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lflix/com/vision/extractors/DoodExtractorExtended$1;->this$0:Lflix/com/vision/extractors/DoodExtractorExtended;

    invoke-static {p1}, Lflix/com/vision/extractors/DoodExtractorExtended;->access$200(Lflix/com/vision/extractors/DoodExtractorExtended;)LU4/f;

    move-result-object p1

    invoke-interface {p1}, LU4/f;->OnError()V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lflix/com/vision/models/VideoSource;

    invoke-virtual {p0, p1}, Lflix/com/vision/extractors/DoodExtractorExtended$1;->onPostExecute(Lflix/com/vision/models/VideoSource;)V

    return-void
.end method
