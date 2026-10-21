.class public Lflix/com/vision/models/serial/TVChannelSerializer;
.super Lcom/twitter/serial/serializer/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/serial/serializer/a;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/twitter/serial/serializer/a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public deserializeObject(Lcom/twitter/serial/serializer/b;Lt4/a;I)Lflix/com/vision/models/ChannelTv;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public bridge synthetic deserializeObject(Lcom/twitter/serial/serializer/b;Lt4/a;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lflix/com/vision/models/serial/TVChannelSerializer;->deserializeObject(Lcom/twitter/serial/serializer/b;Lt4/a;I)Lflix/com/vision/models/ChannelTv;

    move-result-object p1

    return-object p1
.end method

.method public serializeObject(Lcom/twitter/serial/serializer/b;Lt4/b;Lflix/com/vision/models/ChannelTv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object p1, p3, Lflix/com/vision/models/ChannelTv;->label:Ljava/lang/String;

    const/4 p1, 0x0

    throw p1
.end method

.method public bridge synthetic serializeObject(Lcom/twitter/serial/serializer/b;Lt4/b;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p3, Lflix/com/vision/models/ChannelTv;

    invoke-virtual {p0, p1, p2, p3}, Lflix/com/vision/models/serial/TVChannelSerializer;->serializeObject(Lcom/twitter/serial/serializer/b;Lt4/b;Lflix/com/vision/models/ChannelTv;)V

    return-void
.end method
