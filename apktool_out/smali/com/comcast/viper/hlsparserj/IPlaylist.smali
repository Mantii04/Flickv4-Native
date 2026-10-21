.class public interface abstract Lcom/comcast/viper/hlsparserj/IPlaylist;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getTags()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comcast/viper/hlsparserj/tags/UnparsedTag;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVersion()Lcom/comcast/viper/hlsparserj/tags/Version;
.end method

.method public abstract isMasterPlaylist()Z
.end method
