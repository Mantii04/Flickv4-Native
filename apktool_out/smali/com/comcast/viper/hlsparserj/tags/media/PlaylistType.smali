.class public Lcom/comcast/viper/hlsparserj/tags/media/PlaylistType;
.super Lcom/comcast/viper/hlsparserj/tags/Tag;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comcast/viper/hlsparserj/tags/Tag;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/comcast/viper/hlsparserj/tags/Tag;->tag:Lcom/comcast/viper/hlsparserj/tags/UnparsedTag;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/comcast/viper/hlsparserj/tags/UnparsedTag;->getAttributes()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "NONAME0"

    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/String;

    .line 14
    .line 15
    return-object v0
.end method
