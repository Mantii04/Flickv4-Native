.class public final La5/c;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:La5/d;


# direct methods
.method public constructor <init>(La5/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, La5/c;->c:La5/d;

    .line 2
    .line 3
    iput-object p2, p0, La5/c;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, La5/c;->b:Ljava/lang/String;

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

    invoke-virtual {p0, p1}, La5/c;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 12

    .line 2
    iget-object p1, p0, La5/c;->a:Ljava/lang/String;

    iget-object v0, p0, La5/c;->c:La5/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    const-string v1, ""

    const-class v2, Lflix/com/vision/activities/MovieDetailActivity;

    const-string v3, "https://api.real-debrid.com/rest/1.0/torrents/selectFiles/"

    sget-object v4, Lflix/com/vision/api/realdebrid/RealDebridCommon;->j:Ljava/util/ArrayDeque;

    if-nez v4, :cond_0

    .line 4
    new-instance v4, Ljava/util/ArrayDeque;

    invoke-direct {v4}, Ljava/util/ArrayDeque;-><init>()V

    sput-object v4, Lflix/com/vision/api/realdebrid/RealDebridCommon;->j:Ljava/util/ArrayDeque;

    .line 5
    :cond_0
    sget-object v4, Lflix/com/vision/api/realdebrid/RealDebridCommon;->j:Ljava/util/ArrayDeque;

    iget-object v5, p0, La5/c;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 6
    :try_start_0
    invoke-static {}, Lh5/e;->getObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v4

    const-class v6, Lflix/com/vision/models/torrent/TorrentInfoDTO;

    invoke-virtual {v4, p1, v6}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lflix/com/vision/models/torrent/TorrentInfoDTO;

    .line 7
    invoke-static {p1}, Lh5/e;->selectCorrectFileId(Lflix/com/vision/models/torrent/TorrentInfoDTO;)I

    move-result v4

    .line 8
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 9
    const-string v7, "files"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v7, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lflix/com/vision/api/realdebrid/RealDebridCommon;->b:Ljava/lang/String;

    invoke-static {v3, v4, v6}, Lh5/e;->postAndGetData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 11
    new-instance v3, Ljava/net/URL;

    const-string v4, "https://api.real-debrid.com/rest/1.0/torrents"

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sget-object v4, Lflix/com/vision/api/realdebrid/RealDebridCommon;->b:Ljava/lang/String;

    invoke-static {v3, v4}, Lh5/e;->getHttpUrlConnection(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 12
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_1

    goto/16 :goto_4

    .line 13
    :cond_1
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, LT4/f;->readJSON(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    goto/16 :goto_4

    .line 14
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 15
    invoke-static {v3}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v3

    const/4 v5, 0x0

    move v6, v5

    .line 16
    :goto_0
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 17
    invoke-virtual {v3, v6}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v7

    .line 18
    new-instance v8, Lflix/com/vision/models/torrent/AllTorrentsInfoDTO;

    invoke-direct {v8}, Lflix/com/vision/models/torrent/AllTorrentsInfoDTO;-><init>()V

    .line 19
    const-string v9, "hash"

    invoke-virtual {v7, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lflix/com/vision/models/torrent/AllTorrentsInfoDTO;->setHash(Ljava/lang/String;)V

    .line 20
    const-string v9, "links"

    invoke-virtual {v7, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v7

    .line 21
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v10, v5

    .line 22
    :goto_1
    invoke-virtual {v7}, Lcom/google/gson/JsonArray;->size()I

    move-result v11

    if-ge v10, v11, :cond_3

    .line 23
    invoke-virtual {v7, v10}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    .line 24
    :cond_3
    invoke-virtual {v8, v9}, Lflix/com/vision/models/torrent/AllTorrentsInfoDTO;->setLinks(Ljava/util/List;)V

    .line 25
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 26
    :cond_4
    invoke-static {p1, v4}, Lh5/e;->getLinkOfSelectedTorrentFromTorrentInfo(Lflix/com/vision/models/torrent/TorrentInfoDTO;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 27
    new-instance v4, Lflix/com/vision/models/VideoSource;

    invoke-direct {v4}, Lflix/com/vision/models/VideoSource;-><init>()V

    const/4 v5, 0x1

    .line 28
    iput-boolean v5, v4, Lflix/com/vision/models/VideoSource;->isPremiumSupported:Z

    .line 29
    invoke-virtual {p1}, Lflix/com/vision/models/torrent/TorrentInfoDTO;->getFilename()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v4, Lflix/com/vision/models/VideoSource;->originalFileName:Ljava/lang/String;

    .line 30
    iput-object v3, v4, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 31
    iput-boolean v5, v4, Lflix/com/vision/models/VideoSource;->isTorrentMagnet:Z

    .line 32
    invoke-virtual {v0, v4}, Lflix/com/vision/processors/english/m;->addLink(Lflix/com/vision/models/VideoSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lflix/com/vision/models/torrent/RealDebridException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 33
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 34
    :goto_3
    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, La5/c;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method
