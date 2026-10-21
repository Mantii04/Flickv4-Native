.class public abstract Lcom/comcast/viper/hlsparserj/tags/media/Segment;
.super Lcom/comcast/viper/hlsparserj/tags/Tag;
.source "SourceFile"


# instance fields
.field private dateTime:Ljava/lang/String;

.field private discontinuity:Z

.field private key:Lcom/comcast/viper/hlsparserj/tags/media/Key;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/comcast/viper/hlsparserj/tags/Tag;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/comcast/viper/hlsparserj/tags/media/Segment;->discontinuity:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public getDateTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comcast/viper/hlsparserj/tags/media/Segment;->dateTime:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDiscontinuity()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comcast/viper/hlsparserj/tags/media/Segment;->discontinuity:Z

    .line 2
    .line 3
    return v0
.end method

.method public getKey()Lcom/comcast/viper/hlsparserj/tags/media/Key;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comcast/viper/hlsparserj/tags/media/Segment;->key:Lcom/comcast/viper/hlsparserj/tags/media/Key;

    .line 2
    .line 3
    return-object v0
.end method

.method public getURI()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comcast/viper/hlsparserj/tags/Tag;->tag:Lcom/comcast/viper/hlsparserj/tags/UnparsedTag;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/comcast/viper/hlsparserj/tags/UnparsedTag;->getURI()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public setDateTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comcast/viper/hlsparserj/tags/media/Segment;->dateTime:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDiscontinuity(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comcast/viper/hlsparserj/tags/media/Segment;->discontinuity:Z

    .line 2
    .line 3
    return-void
.end method

.method public setKey(Lcom/comcast/viper/hlsparserj/tags/media/Key;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comcast/viper/hlsparserj/tags/media/Segment;->key:Lcom/comcast/viper/hlsparserj/tags/media/Key;

    .line 2
    .line 3
    return-void
.end method
