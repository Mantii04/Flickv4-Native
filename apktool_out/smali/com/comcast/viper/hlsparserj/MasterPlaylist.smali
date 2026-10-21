.class public abstract Lcom/comcast/viper/hlsparserj/MasterPlaylist;
.super Lcom/comcast/viper/hlsparserj/AbstractPlaylist;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/comcast/viper/hlsparserj/PlaylistVersion;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/comcast/viper/hlsparserj/PlaylistVersion;",
            "Ljava/util/List<",
            "Lcom/comcast/viper/hlsparserj/tags/UnparsedTag;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/comcast/viper/hlsparserj/AbstractPlaylist;-><init>(Lcom/comcast/viper/hlsparserj/PlaylistVersion;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getAlternateRenditions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comcast/viper/hlsparserj/tags/master/Media;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "EXT-X-MEDIA"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/comcast/viper/hlsparserj/AbstractPlaylist;->getTagList(Ljava/lang/String;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getIFrameStreams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comcast/viper/hlsparserj/tags/master/IFrameStreamInf;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "EXT-X-I-FRAME-STREAM-INF"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/comcast/viper/hlsparserj/AbstractPlaylist;->getTagList(Ljava/lang/String;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getVariantStreams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comcast/viper/hlsparserj/tags/master/StreamInf;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "EXT-X-STREAM-INF"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/comcast/viper/hlsparserj/AbstractPlaylist;->getTagList(Ljava/lang/String;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public isMasterPlaylist()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public keepVariantStreamClosestToBitrate(I)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/comcast/viper/hlsparserj/MasterPlaylist;->variantStreamClosestToBitrate(I)Lcom/comcast/viper/hlsparserj/tags/master/StreamInf;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0}, Lcom/comcast/viper/hlsparserj/MasterPlaylist;->getVariantStreams()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-ge v2, v3, :cond_1

    .line 20
    .line 21
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Lcom/comcast/viper/hlsparserj/tags/master/StreamInf;

    .line 26
    .line 27
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-nez v4, :cond_0

    .line 32
    .line 33
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lcom/comcast/viper/hlsparserj/tags/master/StreamInf;

    .line 54
    .line 55
    invoke-virtual {p0, v0}, Lcom/comcast/viper/hlsparserj/MasterPlaylist;->removeVariantStream(Lcom/comcast/viper/hlsparserj/tags/master/StreamInf;)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    return-void
.end method

.method public removeVariantStream(Lcom/comcast/viper/hlsparserj/tags/master/StreamInf;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/comcast/viper/hlsparserj/AbstractPlaylist;->tags:Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/comcast/viper/hlsparserj/tags/Tag;->getTag()Lcom/comcast/viper/hlsparserj/tags/UnparsedTag;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/comcast/viper/hlsparserj/AbstractPlaylist;->parsedTagListCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    .line 12
    const-string v1, "EXT-X-STREAM-INF"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public variantStreamClosestToBitrate(I)Lcom/comcast/viper/hlsparserj/tags/master/StreamInf;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/comcast/viper/hlsparserj/MasterPlaylist;->getVariantStreams()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const v1, 0x7fffffff

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Lcom/comcast/viper/hlsparserj/tags/master/StreamInf;

    .line 24
    .line 25
    invoke-virtual {v3}, Lcom/comcast/viper/hlsparserj/tags/master/StreamInf;->getBandwidth()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    sub-int/2addr v4, p1

    .line 30
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-ge v4, v1, :cond_0

    .line 35
    .line 36
    move-object v2, v3

    .line 37
    move v1, v4

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return-object v2
.end method
