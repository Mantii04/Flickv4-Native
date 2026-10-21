.class public Lcom/comcast/viper/hlsparserj/PlaylistParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAGPATTERN:Ljava/lang/String; = "^#EXT.*"

.field private static final URIPATTERN:Ljava/lang/String; = "^[^#].*"


# instance fields
.field private isMasterPlaylist:Z

.field private playlistStream:Ljava/io/InputStream;

.field private final tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comcast/viper/hlsparserj/tags/UnparsedTag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/comcast/viper/hlsparserj/PlaylistParser;->isMasterPlaylist:Z

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/comcast/viper/hlsparserj/PlaylistParser;->tags:Ljava/util/List;

    .line 13
    .line 14
    return-void
.end method

.method private parseInputStream()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/InputStreamReader;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/comcast/viper/hlsparserj/PlaylistParser;->playlistStream:Ljava/io/InputStream;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/io/BufferedReader;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-direct {p0, v2, v0}, Lcom/comcast/viper/hlsparserj/PlaylistParser;->processLine(Ljava/lang/String;Lcom/comcast/viper/hlsparserj/tags/UnparsedTag;)Lcom/comcast/viper/hlsparserj/tags/UnparsedTag;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method private parseString(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/StringTokenizer;

    .line 2
    .line 3
    const-string v1, "\n"

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {p0, v1, p1}, Lcom/comcast/viper/hlsparserj/PlaylistParser;->processLine(Ljava/lang/String;Lcom/comcast/viper/hlsparserj/tags/UnparsedTag;)Lcom/comcast/viper/hlsparserj/tags/UnparsedTag;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method private processLine(Ljava/lang/String;Lcom/comcast/viper/hlsparserj/tags/UnparsedTag;)Lcom/comcast/viper/hlsparserj/tags/UnparsedTag;
    .locals 1

    .line 1
    const-string v0, "^#EXT.*"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    new-instance p2, Lcom/comcast/viper/hlsparserj/tags/UnparsedTag;

    .line 10
    .line 11
    invoke-direct {p2, p1}, Lcom/comcast/viper/hlsparserj/tags/UnparsedTag;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/comcast/viper/hlsparserj/PlaylistParser;->tags:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/comcast/viper/hlsparserj/tags/UnparsedTag;->getTagName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v0, "EXT-X-STREAM-INF"

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lcom/comcast/viper/hlsparserj/PlaylistParser;->isMasterPlaylist:Z

    .line 33
    .line 34
    :cond_0
    return-object p2

    .line 35
    :cond_1
    const-string v0, "^[^#].*"

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    if-eqz p2, :cond_2

    .line 44
    .line 45
    invoke-virtual {p2, p1}, Lcom/comcast/viper/hlsparserj/tags/UnparsedTag;->setURI(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    return-object p2
.end method


# virtual methods
.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comcast/viper/hlsparserj/tags/UnparsedTag;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comcast/viper/hlsparserj/PlaylistParser;->tags:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public isMasterPlaylist()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comcast/viper/hlsparserj/PlaylistParser;->isMasterPlaylist:Z

    .line 2
    .line 3
    return v0
.end method

.method public parse(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/comcast/viper/hlsparserj/PlaylistParser;->playlistStream:Ljava/io/InputStream;

    .line 3
    invoke-direct {p0}, Lcom/comcast/viper/hlsparserj/PlaylistParser;->parseInputStream()V

    return-void
.end method

.method public parse(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comcast/viper/hlsparserj/PlaylistParser;->parseString(Ljava/lang/String;)V

    return-void
.end method
