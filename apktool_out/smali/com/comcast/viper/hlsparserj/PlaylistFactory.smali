.class public Lcom/comcast/viper/hlsparserj/PlaylistFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/comcast/viper/hlsparserj/tags/TagNames;->EXTXVERSION:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    return-void

    .line 4
    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static getPlaylistInputStream(Lorg/apache/http/impl/client/CloseableHttpClient;Ljava/net/URL;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/CloseableHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/client/methods/CloseableHttpResponse;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    invoke-interface {p0}, Lorg/apache/http/client/methods/CloseableHttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    const/16 v0, 0xc8

    .line 25
    .line 26
    if-ne p1, v0, :cond_0

    .line 27
    .line 28
    invoke-interface {p0}, Lorg/apache/http/client/methods/CloseableHttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :cond_0
    invoke-interface {p0}, Lorg/apache/http/client/methods/CloseableHttpResponse;->close()V

    .line 38
    .line 39
    .line 40
    new-instance p1, Ljava/io/IOException;

    .line 41
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v1, "Request returned a status code of "

    .line 45
    .line 46
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {p0}, Lorg/apache/http/client/methods/CloseableHttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-interface {p0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p1

    .line 68
    :cond_1
    new-instance p0, Ljava/io/IOException;

    .line 69
    .line 70
    const-string p1, "Request returned a null response"

    .line 71
    .line 72
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p0
.end method

.method private static getVersionSpecificPlaylist(Lcom/comcast/viper/hlsparserj/PlaylistParser;Lcom/comcast/viper/hlsparserj/PlaylistVersion;)Lcom/comcast/viper/hlsparserj/AbstractPlaylist;
    .locals 1

    .line 1
    sget-object v0, Lcom/comcast/viper/hlsparserj/PlaylistFactory$1;->$SwitchMap$com$comcast$viper$hlsparserj$PlaylistVersion:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/comcast/viper/hlsparserj/PlaylistParser;->isMasterPlaylist()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    new-instance p1, Lcom/comcast/viper/hlsparserj/v12/MasterPlaylistV12;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/comcast/viper/hlsparserj/PlaylistParser;->getTags()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-direct {p1, p0}, Lcom/comcast/viper/hlsparserj/v12/MasterPlaylistV12;-><init>(Ljava/util/List;)V

    .line 22
    .line 23
    .line 24
    return-object p1

    .line 25
    :cond_0
    new-instance p1, Lcom/comcast/viper/hlsparserj/v12/MediaPlaylistV12;

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/comcast/viper/hlsparserj/PlaylistParser;->getTags()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-direct {p1, p0}, Lcom/comcast/viper/hlsparserj/v12/MediaPlaylistV12;-><init>(Ljava/util/List;)V

    .line 32
    .line 33
    .line 34
    return-object p1
.end method

.method public static parsePlaylist(Lcom/comcast/viper/hlsparserj/PlaylistVersion;Ljava/io/InputStream;)Lcom/comcast/viper/hlsparserj/AbstractPlaylist;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/comcast/viper/hlsparserj/PlaylistParser;

    invoke-direct {v0}, Lcom/comcast/viper/hlsparserj/PlaylistParser;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/comcast/viper/hlsparserj/PlaylistParser;->parse(Ljava/io/InputStream;)V

    .line 3
    invoke-static {v0, p0}, Lcom/comcast/viper/hlsparserj/PlaylistFactory;->getVersionSpecificPlaylist(Lcom/comcast/viper/hlsparserj/PlaylistParser;Lcom/comcast/viper/hlsparserj/PlaylistVersion;)Lcom/comcast/viper/hlsparserj/AbstractPlaylist;

    move-result-object p0

    return-object p0
.end method

.method public static parsePlaylist(Lcom/comcast/viper/hlsparserj/PlaylistVersion;Ljava/lang/String;)Lcom/comcast/viper/hlsparserj/AbstractPlaylist;
    .locals 1

    .line 4
    new-instance v0, Lcom/comcast/viper/hlsparserj/PlaylistParser;

    invoke-direct {v0}, Lcom/comcast/viper/hlsparserj/PlaylistParser;-><init>()V

    .line 5
    invoke-virtual {v0, p1}, Lcom/comcast/viper/hlsparserj/PlaylistParser;->parse(Ljava/lang/String;)V

    .line 6
    invoke-static {v0, p0}, Lcom/comcast/viper/hlsparserj/PlaylistFactory;->getVersionSpecificPlaylist(Lcom/comcast/viper/hlsparserj/PlaylistParser;Lcom/comcast/viper/hlsparserj/PlaylistVersion;)Lcom/comcast/viper/hlsparserj/AbstractPlaylist;

    move-result-object p0

    return-object p0
.end method

.method public static parsePlaylist(Lcom/comcast/viper/hlsparserj/PlaylistVersion;Ljava/net/URL;III)Lcom/comcast/viper/hlsparserj/AbstractPlaylist;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-static {}, Lorg/apache/http/client/config/RequestConfig;->custom()Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {v0, p2}, Lorg/apache/http/client/config/RequestConfig$Builder;->setConnectTimeout(I)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object p2

    .line 9
    invoke-virtual {p2, p3}, Lorg/apache/http/client/config/RequestConfig$Builder;->setConnectionRequestTimeout(I)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object p2

    .line 10
    invoke-virtual {p2, p4}, Lorg/apache/http/client/config/RequestConfig$Builder;->setSocketTimeout(I)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object p2

    .line 11
    invoke-static {}, Lorg/apache/http/impl/client/HttpClientBuilder;->create()Lorg/apache/http/impl/client/HttpClientBuilder;

    move-result-object p3

    .line 12
    invoke-virtual {p2}, Lorg/apache/http/client/config/RequestConfig$Builder;->build()Lorg/apache/http/client/config/RequestConfig;

    move-result-object p2

    invoke-virtual {p3, p2}, Lorg/apache/http/impl/client/HttpClientBuilder;->setDefaultRequestConfig(Lorg/apache/http/client/config/RequestConfig;)Lorg/apache/http/impl/client/HttpClientBuilder;

    .line 13
    invoke-virtual {p3}, Lorg/apache/http/impl/client/HttpClientBuilder;->build()Lorg/apache/http/impl/client/CloseableHttpClient;

    move-result-object p2

    .line 14
    new-instance p3, Lcom/comcast/viper/hlsparserj/PlaylistParser;

    invoke-direct {p3}, Lcom/comcast/viper/hlsparserj/PlaylistParser;-><init>()V

    .line 15
    :try_start_0
    invoke-static {p2, p1}, Lcom/comcast/viper/hlsparserj/PlaylistFactory;->getPlaylistInputStream(Lorg/apache/http/impl/client/CloseableHttpClient;Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object p1

    .line 16
    invoke-virtual {p3, p1}, Lcom/comcast/viper/hlsparserj/PlaylistParser;->parse(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-virtual {p2}, Lorg/apache/http/impl/client/CloseableHttpClient;->close()V

    .line 18
    invoke-static {p3, p0}, Lcom/comcast/viper/hlsparserj/PlaylistFactory;->getVersionSpecificPlaylist(Lcom/comcast/viper/hlsparserj/PlaylistParser;Lcom/comcast/viper/hlsparserj/PlaylistVersion;)Lcom/comcast/viper/hlsparserj/AbstractPlaylist;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 19
    invoke-virtual {p2}, Lorg/apache/http/impl/client/CloseableHttpClient;->close()V

    throw p0
.end method
