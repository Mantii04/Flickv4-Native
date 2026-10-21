.class public abstract LS2/t;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final addMetadata(Ljava/lang/String;I)LS2/t;
    .locals 1

    .line 3
    invoke-virtual {p0}, LS2/t;->getAutoMetadata()Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final addMetadata(Ljava/lang/String;J)LS2/t;
    .locals 1

    .line 2
    invoke-virtual {p0}, LS2/t;->getAutoMetadata()Ljava/util/Map;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final addMetadata(Ljava/lang/String;Ljava/lang/String;)LS2/t;
    .locals 1

    .line 1
    invoke-virtual {p0}, LS2/t;->getAutoMetadata()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public abstract build()LS2/u;
.end method

.method public abstract getAutoMetadata()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setAutoMetadata(Ljava/util/Map;)LS2/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "LS2/t;"
        }
    .end annotation
.end method

.method public abstract setCode(Ljava/lang/Integer;)LS2/t;
.end method

.method public abstract setEncodedPayload(LS2/s;)LS2/t;
.end method

.method public abstract setEventMillis(J)LS2/t;
.end method

.method public abstract setTransportName(Ljava/lang/String;)LS2/t;
.end method

.method public abstract setUptimeMillis(J)LS2/t;
.end method
