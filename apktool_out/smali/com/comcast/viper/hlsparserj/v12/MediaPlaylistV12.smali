.class public Lcom/comcast/viper/hlsparserj/v12/MediaPlaylistV12;
.super Lcom/comcast/viper/hlsparserj/MediaPlaylist;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comcast/viper/hlsparserj/tags/UnparsedTag;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/comcast/viper/hlsparserj/PlaylistVersion;->TWELVE:Lcom/comcast/viper/hlsparserj/PlaylistVersion;

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/comcast/viper/hlsparserj/MediaPlaylist;-><init>(Lcom/comcast/viper/hlsparserj/PlaylistVersion;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
