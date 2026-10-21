.class public final Landroidx/media3/exoplayer/CodecParameters$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/CodecParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/CodecParameters$Builder;->params:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroidx/media3/exoplayer/CodecParameters;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Landroidx/media3/exoplayer/CodecParameters;->access$100(Landroidx/media3/exoplayer/CodecParameters;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/CodecParameters$Builder;->params:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/exoplayer/CodecParameters;Landroidx/media3/exoplayer/CodecParameters$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/CodecParameters$Builder;-><init>(Landroidx/media3/exoplayer/CodecParameters;)V

    return-void
.end method


# virtual methods
.method public build()Landroidx/media3/exoplayer/CodecParameters;
    .locals 3

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/CodecParameters;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/CodecParameters$Builder;->params:Ljava/util/Map;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Landroidx/media3/exoplayer/CodecParameters;-><init>(Ljava/util/Map;Landroidx/media3/exoplayer/CodecParameters$1;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public remove(Ljava/lang/String;)Landroidx/media3/exoplayer/CodecParameters$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/CodecParameters$Builder;->params:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)Landroidx/media3/exoplayer/CodecParameters$Builder;
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Landroidx/media3/exoplayer/CodecParameters$Builder;->params:Ljava/util/Map;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 26
    .line 27
    .line 28
    iget-object p2, p0, Landroidx/media3/exoplayer/CodecParameters$Builder;->params:Ljava/util/Map;

    .line 29
    .line 30
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    return-object p0
.end method

.method public setFloat(Ljava/lang/String;F)Landroidx/media3/exoplayer/CodecParameters$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/CodecParameters$Builder;->params:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public setInteger(Ljava/lang/String;I)Landroidx/media3/exoplayer/CodecParameters$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/CodecParameters$Builder;->params:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public setLong(Ljava/lang/String;J)Landroidx/media3/exoplayer/CodecParameters$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/CodecParameters$Builder;->params:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)Landroidx/media3/exoplayer/CodecParameters$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/CodecParameters$Builder;->params:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
