.class public final La5/s;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:La5/t;


# direct methods
.method public constructor <init>(La5/t;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, La5/s;->c:La5/t;

    .line 2
    .line 3
    iput-object p2, p0, La5/s;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, La5/s;->b:Ljava/lang/String;

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

    invoke-virtual {p0, p1}, La5/s;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 12

    .line 2
    iget-object p1, p0, La5/s;->a:Ljava/lang/String;

    iget-object v0, p0, La5/s;->b:Ljava/lang/String;

    iget-object v1, p0, La5/s;->c:La5/t;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    const-string v2, ""

    const-class v3, Lflix/com/vision/activities/MovieDetailActivity;

    const-string v4, "https://api.real-debrid.com/rest/1.0/torrents/selectFiles/"

    :try_start_0
    invoke-static {}, Lh5/e;->getObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v5

    const-class v6, Lflix/com/vision/models/torrent/TorrentInfoDTO;

    invoke-virtual {v5, p1, v6}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lflix/com/vision/models/torrent/TorrentInfoDTO;

    .line 4
    invoke-static {p1}, Lh5/e;->selectCorrectFileId(Lflix/com/vision/models/torrent/TorrentInfoDTO;)I

    move-result v5

    .line 5
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 6
    const-string v7, "files"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lflix/com/vision/api/realdebrid/RealDebridCommon;->b:Ljava/lang/String;

    invoke-static {v0, v4, v6}, Lh5/e;->postAndGetData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 8
    new-instance v0, Ljava/net/URL;

    const-string v4, "https://api.real-debrid.com/rest/1.0/torrents"

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sget-object v4, Lflix/com/vision/api/realdebrid/RealDebridCommon;->b:Ljava/lang/String;

    invoke-static {v0, v4}, Lh5/e;->getHttpUrlConnection(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_0

    goto/16 :goto_4

    .line 10
    :cond_0
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, LT4/f;->readJSON(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_4

    .line 11
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-static {v0}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    const/4 v5, 0x0

    move v6, v5

    .line 13
    :goto_0
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 14
    invoke-virtual {v0, v6}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v7

    .line 15
    new-instance v8, Lflix/com/vision/models/torrent/AllTorrentsInfoDTO;

    invoke-direct {v8}, Lflix/com/vision/models/torrent/AllTorrentsInfoDTO;-><init>()V

    .line 16
    const-string v9, "hash"

    invoke-virtual {v7, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lflix/com/vision/models/torrent/AllTorrentsInfoDTO;->setHash(Ljava/lang/String;)V

    .line 17
    const-string v9, "links"

    invoke-virtual {v7, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v7

    .line 18
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v10, v5

    .line 19
    :goto_1
    invoke-virtual {v7}, Lcom/google/gson/JsonArray;->size()I

    move-result v11

    if-ge v10, v11, :cond_2

    .line 20
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

    .line 21
    :cond_2
    invoke-virtual {v8, v9}, Lflix/com/vision/models/torrent/AllTorrentsInfoDTO;->setLinks(Ljava/util/List;)V

    .line 22
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 23
    :cond_3
    invoke-static {p1, v4}, Lh5/e;->getLinkOfSelectedTorrentFromTorrentInfo(Lflix/com/vision/models/torrent/TorrentInfoDTO;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 24
    new-instance v4, Lflix/com/vision/models/VideoSource;

    invoke-direct {v4}, Lflix/com/vision/models/VideoSource;-><init>()V

    const/4 v5, 0x1

    .line 25
    iput-boolean v5, v4, Lflix/com/vision/models/VideoSource;->isPremiumSupported:Z

    .line 26
    invoke-virtual {p1}, Lflix/com/vision/models/torrent/TorrentInfoDTO;->getFilename()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v4, Lflix/com/vision/models/VideoSource;->originalFileName:Ljava/lang/String;

    .line 27
    iput-object v0, v4, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 28
    iput-boolean v5, v4, Lflix/com/vision/models/VideoSource;->isTorrentMagnet:Z

    .line 29
    invoke-virtual {v1, v4}, Lflix/com/vision/processors/english/m;->addLink(Lflix/com/vision/models/VideoSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lflix/com/vision/models/torrent/RealDebridException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 30
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 31
    :goto_3
    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, La5/s;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method
