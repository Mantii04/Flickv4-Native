.class public Lcom/fasterxml/jackson/databind/json/JsonMapper$Builder;
.super Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/json/JsonMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<",
        "Lcom/fasterxml/jackson/databind/json/JsonMapper;",
        "Lcom/fasterxml/jackson/databind/json/JsonMapper$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/json/JsonMapper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public configure(Lcom/fasterxml/jackson/core/json/JsonReadFeature;Z)Lcom/fasterxml/jackson/databind/json/JsonMapper$Builder;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    check-cast p2, Lcom/fasterxml/jackson/databind/json/JsonMapper;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object p1

    new-array v1, v1, [Lcom/fasterxml/jackson/core/JsonParser$Feature;

    aput-object p1, v1, v0

    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->enable([Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-object p0

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    check-cast p2, Lcom/fasterxml/jackson/databind/json/JsonMapper;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object p1

    new-array v1, v1, [Lcom/fasterxml/jackson/core/JsonParser$Feature;

    aput-object p1, v1, v0

    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->disable([Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-object p0
.end method

.method public configure(Lcom/fasterxml/jackson/core/json/JsonWriteFeature;Z)Lcom/fasterxml/jackson/databind/json/JsonMapper$Builder;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    check-cast p2, Lcom/fasterxml/jackson/databind/json/JsonMapper;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    move-result-object p1

    new-array v1, v1, [Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    aput-object p1, v1, v0

    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->enable([Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-object p0

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    check-cast p2, Lcom/fasterxml/jackson/databind/json/JsonMapper;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    move-result-object p1

    new-array v1, v1, [Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    aput-object p1, v1, v0

    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->disable([Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-object p0
.end method

.method public varargs disable([Lcom/fasterxml/jackson/core/json/JsonReadFeature;)Lcom/fasterxml/jackson/databind/json/JsonMapper$Builder;
    .locals 7

    const/4 v0, 0x1

    .line 1
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    .line 2
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    check-cast v5, Lcom/fasterxml/jackson/databind/json/JsonMapper;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v4

    new-array v6, v0, [Lcom/fasterxml/jackson/core/JsonParser$Feature;

    aput-object v4, v6, v2

    invoke-virtual {v5, v6}, Lcom/fasterxml/jackson/databind/ObjectMapper;->disable([Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    add-int/2addr v3, v0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public varargs disable([Lcom/fasterxml/jackson/core/json/JsonWriteFeature;)Lcom/fasterxml/jackson/databind/json/JsonMapper$Builder;
    .locals 7

    const/4 v0, 0x1

    .line 3
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    .line 4
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    check-cast v5, Lcom/fasterxml/jackson/databind/json/JsonMapper;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    move-result-object v4

    new-array v6, v0, [Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    aput-object v4, v6, v2

    invoke-virtual {v5, v6}, Lcom/fasterxml/jackson/databind/ObjectMapper;->disable([Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    add-int/2addr v3, v0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public varargs enable([Lcom/fasterxml/jackson/core/json/JsonReadFeature;)Lcom/fasterxml/jackson/databind/json/JsonMapper$Builder;
    .locals 7

    const/4 v0, 0x1

    .line 1
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    .line 2
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    check-cast v5, Lcom/fasterxml/jackson/databind/json/JsonMapper;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v4

    new-array v6, v0, [Lcom/fasterxml/jackson/core/JsonParser$Feature;

    aput-object v4, v6, v2

    invoke-virtual {v5, v6}, Lcom/fasterxml/jackson/databind/ObjectMapper;->enable([Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    add-int/2addr v3, v0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public varargs enable([Lcom/fasterxml/jackson/core/json/JsonWriteFeature;)Lcom/fasterxml/jackson/databind/json/JsonMapper$Builder;
    .locals 7

    const/4 v0, 0x1

    .line 3
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    .line 4
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    check-cast v5, Lcom/fasterxml/jackson/databind/json/JsonMapper;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    move-result-object v4

    new-array v6, v0, [Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    aput-object v4, v6, v2

    invoke-virtual {v5, v6}, Lcom/fasterxml/jackson/databind/ObjectMapper;->enable([Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    add-int/2addr v3, v0

    goto :goto_0

    :cond_0
    return-object p0
.end method
