.class public final Lb5/c;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lb5/d;


# direct methods
.method public constructor <init>(Lb5/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb5/c;->a:Lb5/d;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lb5/c;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 18

    .line 2
    const-string v0, "category"

    move-object/from16 v1, p0

    iget-object v2, v1, Lb5/c;->a:Lb5/d;

    const-string v3, "tmdb|movie|"

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v2, Lb5/d;->a:Lflix/com/vision/models/Movie;

    invoke-virtual {v3}, Lflix/com/vision/models/Movie;->getMovieId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-static {v3}, Lh5/n;->encodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lflix/com/vision/processors/english/m;->domain:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/api/v1/titles/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "?loader=titlePage"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5
    iget-object v5, v2, Lflix/com/vision/processors/english/m;->domain:Ljava/lang/String;

    invoke-static {v3, v5}, Lflix/com/vision/App;->get(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-static {v3}, Lflix/com/vision/utils/JsonUtils;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 8
    const-string v5, "title"

    invoke-virtual {v3, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    const-string v5, "videos"

    invoke-virtual {v3, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v3

    const/4 v6, 0x0

    .line 9
    :goto_0
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_7

    .line 10
    invoke-virtual {v3, v6}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v7

    .line 11
    invoke-virtual {v7, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v7, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "full"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    if-eqz v8, :cond_5

    .line 12
    :try_start_1
    const-string v8, "src"

    invoke-virtual {v7, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    .line 13
    iget-object v9, v2, Lflix/com/vision/processors/english/m;->domain:Ljava/lang/String;

    invoke-static {v8, v9}, Lflix/com/vision/App;->get(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response;

    move-result-object v8

    .line 14
    invoke-virtual {v8}, Lokhttp3/Response;->isSuccessful()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 15
    invoke-virtual {v8}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v8

    invoke-virtual {v8}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lg6/e;->parse(Ljava/lang/String;)Lj6/h;

    move-result-object v8

    .line 16
    const-string v9, "script:containsData(sources:)"

    invoke-virtual {v8, v9}, Lorg/jsoup/nodes/b;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/b;

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 17
    const-string v10, " - [MOFLIX] - [DIRECT] - "

    const-string v12, "1080p - [MOFLIX] - [DIRECT] - "

    const-string v14, "German"

    const-string v15, "DE"

    const/16 p1, 0x0

    const-string v4, "language"

    const-string v16, "English"

    const-string v11, "quality"

    const-string v13, "file:\\s*\"(.*?m3u8.*?)\""

    const-string v5, " - English"

    move-object/from16 v17, v0

    const/4 v0, 0x1

    if-eqz v9, :cond_2

    .line 18
    :try_start_2
    new-instance v8, Lkotlin/text/Regex;

    invoke-direct {v8, v13}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lorg/jsoup/nodes/b;->data()Ljava/lang/String;

    move-result-object v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    const/4 v13, 0x0

    :try_start_3
    invoke-virtual {v8, v9, v13}, Lkotlin/text/Regex;->find(Ljava/lang/CharSequence;I)LP5/g;

    move-result-object v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9

    :try_start_4
    check-cast v8, LP5/i;

    invoke-virtual {v8}, LP5/i;->getGroupValues()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    .line 19
    :try_start_5
    invoke-virtual {v7, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :catch_0
    move-object/from16 v9, p1

    .line 20
    :goto_1
    :try_start_6
    invoke-virtual {v7, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v16

    .line 21
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 22
    :try_start_7
    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    if-eqz v7, :cond_0

    goto :goto_2

    :cond_0
    move-object v14, v4

    goto :goto_2

    :catch_1
    move-object/from16 v16, v4

    :catch_2
    move-object/from16 v14, v16

    .line 23
    :goto_2
    :try_start_8
    new-instance v4, Lflix/com/vision/models/VideoSource;

    invoke-direct {v4}, Lflix/com/vision/models/VideoSource;-><init>()V

    .line 24
    iput-object v8, v4, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 25
    iput-boolean v0, v4, Lflix/com/vision/models/VideoSource;->streamable:Z

    const/16 v0, 0x438

    .line 26
    iput v0, v4, Lflix/com/vision/models/VideoSource;->quality:I

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 28
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v7, 0x3

    if-le v0, v7, :cond_1

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 30
    :cond_1
    iget-object v0, v2, Lflix/com/vision/processors/english/m;->domain:Ljava/lang/String;

    iput-object v0, v4, Lflix/com/vision/models/VideoSource;->referer:Ljava/lang/String;

    .line 31
    iget-object v0, v2, Lflix/com/vision/processors/english/m;->callBack:LU4/f;

    invoke-interface {v0, v4}, LU4/f;->OnSuccess(Lflix/com/vision/models/VideoSource;)V

    goto/16 :goto_5

    .line 32
    :cond_2
    invoke-virtual {v2, v8}, Lflix/com/vision/processors/english/m;->getEvalScriptFromHTML(Lj6/h;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 33
    new-instance v9, Lh5/k;

    invoke-direct {v9, v8}, Lh5/k;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lh5/k;->unpack()Ljava/lang/String;

    move-result-object v8

    .line 34
    new-instance v9, Lkotlin/text/Regex;

    invoke-direct {v9, v13}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    const/4 v13, 0x0

    :try_start_9
    invoke-virtual {v9, v8, v13}, Lkotlin/text/Regex;->find(Ljava/lang/CharSequence;I)LP5/g;

    move-result-object v8

    check-cast v8, LP5/i;

    invoke-virtual {v8}, LP5/i;->getGroupValues()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 35
    :try_start_a
    invoke-virtual {v7, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_3

    :catch_3
    move-object/from16 v9, p1

    .line 36
    :goto_3
    :try_start_b
    invoke-virtual {v7, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v16

    .line 37
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    .line 38
    :try_start_c
    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    if-eqz v7, :cond_3

    goto :goto_4

    :cond_3
    move-object v14, v4

    goto :goto_4

    :catch_4
    move-object/from16 v16, v4

    :catch_5
    move-object/from16 v14, v16

    .line 39
    :goto_4
    :try_start_d
    new-instance v4, Lflix/com/vision/models/VideoSource;

    invoke-direct {v4}, Lflix/com/vision/models/VideoSource;-><init>()V

    .line 40
    iput-object v8, v4, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 41
    iput-boolean v0, v4, Lflix/com/vision/models/VideoSource;->streamable:Z

    const/16 v0, 0x438

    .line 42
    iput v0, v4, Lflix/com/vision/models/VideoSource;->quality:I

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    if-eqz v9, :cond_4

    .line 44
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v7, 0x3

    if-le v0, v7, :cond_4

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 46
    :cond_4
    iget-object v0, v2, Lflix/com/vision/processors/english/m;->domain:Ljava/lang/String;

    iput-object v0, v4, Lflix/com/vision/models/VideoSource;->referer:Ljava/lang/String;

    .line 47
    iget-object v0, v2, Lflix/com/vision/processors/english/m;->callBack:LU4/f;

    invoke-interface {v0, v4}, LU4/f;->OnSuccess(Lflix/com/vision/models/VideoSource;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    goto :goto_6

    :catch_6
    :cond_5
    move-object/from16 v17, v0

    const/16 p1, 0x0

    :catch_7
    :cond_6
    :goto_5
    const/4 v13, 0x0

    goto :goto_6

    :catch_8
    move-exception v0

    const/16 p1, 0x0

    goto :goto_7

    :catch_9
    :goto_6
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v17

    goto/16 :goto_0

    :cond_7
    const/16 p1, 0x0

    goto :goto_8

    .line 48
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_8
    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lb5/c;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method
