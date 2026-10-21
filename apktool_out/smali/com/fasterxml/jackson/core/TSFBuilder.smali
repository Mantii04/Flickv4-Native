.class public abstract Lcom/fasterxml/jackson/core/TSFBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Lcom/fasterxml/jackson/core/JsonFactory;",
        "B:",
        "Lcom/fasterxml/jackson/core/TSFBuilder<",
        "TF;TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final DEFAULT_FACTORY_FEATURE_FLAGS:I

.field protected static final DEFAULT_GENERATOR_FEATURE_FLAGS:I

.field protected static final DEFAULT_PARSER_FEATURE_FLAGS:I


# instance fields
.field protected _factoryFeatures:I

.field protected _inputDecorator:Lcom/fasterxml/jackson/core/io/InputDecorator;

.field protected _outputDecorator:Lcom/fasterxml/jackson/core/io/OutputDecorator;

.field protected _streamReadFeatures:I

.field protected _streamWriteFeatures:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->collectDefaults()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput v0, Lcom/fasterxml/jackson/core/TSFBuilder;->DEFAULT_FACTORY_FEATURE_FLAGS:I

    .line 6
    .line 7
    invoke-static {}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->collectDefaults()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sput v0, Lcom/fasterxml/jackson/core/TSFBuilder;->DEFAULT_PARSER_FEATURE_FLAGS:I

    .line 12
    .line 13
    invoke-static {}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->collectDefaults()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    sput v0, Lcom/fasterxml/jackson/core/TSFBuilder;->DEFAULT_GENERATOR_FEATURE_FLAGS:I

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lcom/fasterxml/jackson/core/TSFBuilder;->DEFAULT_FACTORY_FEATURE_FLAGS:I

    iput v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_factoryFeatures:I

    .line 3
    sget v0, Lcom/fasterxml/jackson/core/TSFBuilder;->DEFAULT_PARSER_FEATURE_FLAGS:I

    iput v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamReadFeatures:I

    .line 4
    sget v0, Lcom/fasterxml/jackson/core/TSFBuilder;->DEFAULT_GENERATOR_FEATURE_FLAGS:I

    iput v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamWriteFeatures:I

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_inputDecorator:Lcom/fasterxml/jackson/core/io/InputDecorator;

    .line 6
    iput-object v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_outputDecorator:Lcom/fasterxml/jackson/core/io/OutputDecorator;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_factoryFeatures:I

    .line 10
    iput p2, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamReadFeatures:I

    .line 11
    iput p3, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamWriteFeatures:I

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/JsonFactory;)V
    .locals 2

    .line 7
    iget v0, p1, Lcom/fasterxml/jackson/core/JsonFactory;->_factoryFeatures:I

    iget v1, p1, Lcom/fasterxml/jackson/core/JsonFactory;->_parserFeatures:I

    iget p1, p1, Lcom/fasterxml/jackson/core/JsonFactory;->_generatorFeatures:I

    invoke-direct {p0, v0, v1, p1}, Lcom/fasterxml/jackson/core/TSFBuilder;-><init>(III)V

    return-void
.end method

.method private _failNonJSON(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TB;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Feature "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, "#"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p1, " not supported for non-JSON backend"

    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0
.end method


# virtual methods
.method public _legacyDisable(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)V
    .locals 1

    .line 2
    iget v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamWriteFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result p1

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamWriteFeatures:I

    return-void
.end method

.method public _legacyDisable(Lcom/fasterxml/jackson/core/JsonParser$Feature;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamReadFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result p1

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamReadFeatures:I

    return-void
.end method

.method public _legacyEnable(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)V
    .locals 1

    .line 2
    iget v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamWriteFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result p1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamWriteFeatures:I

    return-void
.end method

.method public _legacyEnable(Lcom/fasterxml/jackson/core/JsonParser$Feature;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamReadFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result p1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamReadFeatures:I

    return-void
.end method

.method public final _this()Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    return-object p0
.end method

.method public abstract build()Lcom/fasterxml/jackson/core/JsonFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation
.end method

.method public configure(Lcom/fasterxml/jackson/core/JsonFactory$Feature;Z)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonFactory$Feature;",
            "Z)TB;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/TSFBuilder;->enable(Lcom/fasterxml/jackson/core/JsonFactory$Feature;)Lcom/fasterxml/jackson/core/TSFBuilder;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/TSFBuilder;->disable(Lcom/fasterxml/jackson/core/JsonFactory$Feature;)Lcom/fasterxml/jackson/core/TSFBuilder;

    move-result-object p1

    return-object p1
.end method

.method public configure(Lcom/fasterxml/jackson/core/StreamReadFeature;Z)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/StreamReadFeature;",
            "Z)TB;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/TSFBuilder;->enable(Lcom/fasterxml/jackson/core/StreamReadFeature;)Lcom/fasterxml/jackson/core/TSFBuilder;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/TSFBuilder;->disable(Lcom/fasterxml/jackson/core/StreamReadFeature;)Lcom/fasterxml/jackson/core/TSFBuilder;

    move-result-object p1

    return-object p1
.end method

.method public configure(Lcom/fasterxml/jackson/core/StreamWriteFeature;Z)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/StreamWriteFeature;",
            "Z)TB;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/TSFBuilder;->enable(Lcom/fasterxml/jackson/core/StreamWriteFeature;)Lcom/fasterxml/jackson/core/TSFBuilder;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/TSFBuilder;->disable(Lcom/fasterxml/jackson/core/StreamWriteFeature;)Lcom/fasterxml/jackson/core/TSFBuilder;

    move-result-object p1

    return-object p1
.end method

.method public configure(Lcom/fasterxml/jackson/core/json/JsonReadFeature;Z)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/json/JsonReadFeature;",
            "Z)TB;"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/TSFBuilder;->_failNonJSON(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/TSFBuilder;

    move-result-object p1

    return-object p1
.end method

.method public configure(Lcom/fasterxml/jackson/core/json/JsonWriteFeature;Z)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/json/JsonWriteFeature;",
            "Z)TB;"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/TSFBuilder;->_failNonJSON(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/TSFBuilder;

    move-result-object p1

    return-object p1
.end method

.method public disable(Lcom/fasterxml/jackson/core/JsonFactory$Feature;)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonFactory$Feature;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_factoryFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->getMask()I

    move-result p1

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_factoryFeatures:I

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/TSFBuilder;->_this()Lcom/fasterxml/jackson/core/TSFBuilder;

    move-result-object p1

    return-object p1
.end method

.method public disable(Lcom/fasterxml/jackson/core/StreamReadFeature;)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/StreamReadFeature;",
            ")TB;"
        }
    .end annotation

    .line 3
    iget v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamReadFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/StreamReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result p1

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamReadFeatures:I

    .line 4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/TSFBuilder;->_this()Lcom/fasterxml/jackson/core/TSFBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs disable(Lcom/fasterxml/jackson/core/StreamReadFeature;[Lcom/fasterxml/jackson/core/StreamReadFeature;)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/StreamReadFeature;",
            "[",
            "Lcom/fasterxml/jackson/core/StreamReadFeature;",
            ")TB;"
        }
    .end annotation

    .line 5
    iget v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamReadFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/StreamReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result p1

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamReadFeatures:I

    .line 6
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p2, v0

    .line 7
    iget v2, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamReadFeatures:I

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/StreamReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v1

    not-int v1, v1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamReadFeatures:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/TSFBuilder;->_this()Lcom/fasterxml/jackson/core/TSFBuilder;

    move-result-object p1

    return-object p1
.end method

.method public disable(Lcom/fasterxml/jackson/core/StreamWriteFeature;)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/StreamWriteFeature;",
            ")TB;"
        }
    .end annotation

    .line 9
    iget v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamWriteFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/StreamWriteFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result p1

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamWriteFeatures:I

    .line 10
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/TSFBuilder;->_this()Lcom/fasterxml/jackson/core/TSFBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs disable(Lcom/fasterxml/jackson/core/StreamWriteFeature;[Lcom/fasterxml/jackson/core/StreamWriteFeature;)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/StreamWriteFeature;",
            "[",
            "Lcom/fasterxml/jackson/core/StreamWriteFeature;",
            ")TB;"
        }
    .end annotation

    .line 11
    iget v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamWriteFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/StreamWriteFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result p1

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamWriteFeatures:I

    .line 12
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p2, v0

    .line 13
    iget v2, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamWriteFeatures:I

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/StreamWriteFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result v1

    not-int v1, v1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamWriteFeatures:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/TSFBuilder;->_this()Lcom/fasterxml/jackson/core/TSFBuilder;

    move-result-object p1

    return-object p1
.end method

.method public disable(Lcom/fasterxml/jackson/core/json/JsonReadFeature;)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/json/JsonReadFeature;",
            ")TB;"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/TSFBuilder;->_failNonJSON(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/TSFBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs disable(Lcom/fasterxml/jackson/core/json/JsonReadFeature;[Lcom/fasterxml/jackson/core/json/JsonReadFeature;)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/json/JsonReadFeature;",
            "[",
            "Lcom/fasterxml/jackson/core/json/JsonReadFeature;",
            ")TB;"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/TSFBuilder;->_failNonJSON(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/TSFBuilder;

    move-result-object p1

    return-object p1
.end method

.method public disable(Lcom/fasterxml/jackson/core/json/JsonWriteFeature;)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/json/JsonWriteFeature;",
            ")TB;"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/TSFBuilder;->_failNonJSON(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/TSFBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs disable(Lcom/fasterxml/jackson/core/json/JsonWriteFeature;[Lcom/fasterxml/jackson/core/json/JsonWriteFeature;)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/json/JsonWriteFeature;",
            "[",
            "Lcom/fasterxml/jackson/core/json/JsonWriteFeature;",
            ")TB;"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/TSFBuilder;->_failNonJSON(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/TSFBuilder;

    move-result-object p1

    return-object p1
.end method

.method public enable(Lcom/fasterxml/jackson/core/JsonFactory$Feature;)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonFactory$Feature;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_factoryFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->getMask()I

    move-result p1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_factoryFeatures:I

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/TSFBuilder;->_this()Lcom/fasterxml/jackson/core/TSFBuilder;

    move-result-object p1

    return-object p1
.end method

.method public enable(Lcom/fasterxml/jackson/core/StreamReadFeature;)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/StreamReadFeature;",
            ")TB;"
        }
    .end annotation

    .line 3
    iget v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamReadFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/StreamReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result p1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamReadFeatures:I

    .line 4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/TSFBuilder;->_this()Lcom/fasterxml/jackson/core/TSFBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs enable(Lcom/fasterxml/jackson/core/StreamReadFeature;[Lcom/fasterxml/jackson/core/StreamReadFeature;)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/StreamReadFeature;",
            "[",
            "Lcom/fasterxml/jackson/core/StreamReadFeature;",
            ")TB;"
        }
    .end annotation

    .line 5
    iget v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamReadFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/StreamReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result p1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamReadFeatures:I

    .line 6
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p2, v0

    .line 7
    iget v2, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamReadFeatures:I

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/StreamReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v1

    or-int/2addr v1, v2

    iput v1, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamReadFeatures:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/TSFBuilder;->_this()Lcom/fasterxml/jackson/core/TSFBuilder;

    move-result-object p1

    return-object p1
.end method

.method public enable(Lcom/fasterxml/jackson/core/StreamWriteFeature;)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/StreamWriteFeature;",
            ")TB;"
        }
    .end annotation

    .line 9
    iget v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamWriteFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/StreamWriteFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result p1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamWriteFeatures:I

    .line 10
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/TSFBuilder;->_this()Lcom/fasterxml/jackson/core/TSFBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs enable(Lcom/fasterxml/jackson/core/StreamWriteFeature;[Lcom/fasterxml/jackson/core/StreamWriteFeature;)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/StreamWriteFeature;",
            "[",
            "Lcom/fasterxml/jackson/core/StreamWriteFeature;",
            ")TB;"
        }
    .end annotation

    .line 11
    iget v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamWriteFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/StreamWriteFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result p1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamWriteFeatures:I

    .line 12
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p2, v0

    .line 13
    iget v2, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamWriteFeatures:I

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/StreamWriteFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result v1

    or-int/2addr v1, v2

    iput v1, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamWriteFeatures:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/TSFBuilder;->_this()Lcom/fasterxml/jackson/core/TSFBuilder;

    move-result-object p1

    return-object p1
.end method

.method public enable(Lcom/fasterxml/jackson/core/json/JsonReadFeature;)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/json/JsonReadFeature;",
            ")TB;"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/TSFBuilder;->_failNonJSON(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/TSFBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs enable(Lcom/fasterxml/jackson/core/json/JsonReadFeature;[Lcom/fasterxml/jackson/core/json/JsonReadFeature;)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/json/JsonReadFeature;",
            "[",
            "Lcom/fasterxml/jackson/core/json/JsonReadFeature;",
            ")TB;"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/TSFBuilder;->_failNonJSON(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/TSFBuilder;

    move-result-object p1

    return-object p1
.end method

.method public enable(Lcom/fasterxml/jackson/core/json/JsonWriteFeature;)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/json/JsonWriteFeature;",
            ")TB;"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/TSFBuilder;->_failNonJSON(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/TSFBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs enable(Lcom/fasterxml/jackson/core/json/JsonWriteFeature;[Lcom/fasterxml/jackson/core/json/JsonWriteFeature;)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/json/JsonWriteFeature;",
            "[",
            "Lcom/fasterxml/jackson/core/json/JsonWriteFeature;",
            ")TB;"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/TSFBuilder;->_failNonJSON(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/TSFBuilder;

    move-result-object p1

    return-object p1
.end method

.method public factoryFeaturesMask()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_factoryFeatures:I

    .line 2
    .line 3
    return v0
.end method

.method public inputDecorator(Lcom/fasterxml/jackson/core/io/InputDecorator;)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/io/InputDecorator;",
            ")TB;"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_inputDecorator:Lcom/fasterxml/jackson/core/io/InputDecorator;

    .line 3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/TSFBuilder;->_this()Lcom/fasterxml/jackson/core/TSFBuilder;

    move-result-object p1

    return-object p1
.end method

.method public inputDecorator()Lcom/fasterxml/jackson/core/io/InputDecorator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_inputDecorator:Lcom/fasterxml/jackson/core/io/InputDecorator;

    return-object v0
.end method

.method public outputDecorator(Lcom/fasterxml/jackson/core/io/OutputDecorator;)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/io/OutputDecorator;",
            ")TB;"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_outputDecorator:Lcom/fasterxml/jackson/core/io/OutputDecorator;

    .line 3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/TSFBuilder;->_this()Lcom/fasterxml/jackson/core/TSFBuilder;

    move-result-object p1

    return-object p1
.end method

.method public outputDecorator()Lcom/fasterxml/jackson/core/io/OutputDecorator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_outputDecorator:Lcom/fasterxml/jackson/core/io/OutputDecorator;

    return-object v0
.end method

.method public streamReadFeatures()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamReadFeatures:I

    .line 2
    .line 3
    return v0
.end method

.method public streamWriteFeatures()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamWriteFeatures:I

    .line 2
    .line 3
    return v0
.end method
