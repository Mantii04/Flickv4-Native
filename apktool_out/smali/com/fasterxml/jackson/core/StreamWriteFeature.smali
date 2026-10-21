.class public final enum Lcom/fasterxml/jackson/core/StreamWriteFeature;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fasterxml/jackson/core/StreamWriteFeature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/core/StreamWriteFeature;

.field public static final enum AUTO_CLOSE_CONTENT:Lcom/fasterxml/jackson/core/StreamWriteFeature;

.field public static final enum AUTO_CLOSE_TARGET:Lcom/fasterxml/jackson/core/StreamWriteFeature;

.field public static final enum FLUSH_PASSED_TO_STREAM:Lcom/fasterxml/jackson/core/StreamWriteFeature;

.field public static final enum IGNORE_UNKNOWN:Lcom/fasterxml/jackson/core/StreamWriteFeature;

.field public static final enum STRICT_DUPLICATE_DETECTION:Lcom/fasterxml/jackson/core/StreamWriteFeature;

.field public static final enum WRITE_BIGDECIMAL_AS_PLAIN:Lcom/fasterxml/jackson/core/StreamWriteFeature;


# instance fields
.field private final _defaultState:Z

.field private final _mappedFeature:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

.field private final _mask:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lcom/fasterxml/jackson/core/StreamWriteFeature;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget-object v2, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->AUTO_CLOSE_TARGET:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 5
    .line 6
    const-string v3, "AUTO_CLOSE_TARGET"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/fasterxml/jackson/core/StreamWriteFeature;-><init>(Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonGenerator$Feature;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/fasterxml/jackson/core/StreamWriteFeature;->AUTO_CLOSE_TARGET:Lcom/fasterxml/jackson/core/StreamWriteFeature;

    .line 12
    .line 13
    new-instance v2, Lcom/fasterxml/jackson/core/StreamWriteFeature;

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    sget-object v4, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->AUTO_CLOSE_JSON_CONTENT:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 17
    .line 18
    const-string v5, "AUTO_CLOSE_CONTENT"

    .line 19
    .line 20
    invoke-direct {v2, v5, v3, v4}, Lcom/fasterxml/jackson/core/StreamWriteFeature;-><init>(Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonGenerator$Feature;)V

    .line 21
    .line 22
    .line 23
    sput-object v2, Lcom/fasterxml/jackson/core/StreamWriteFeature;->AUTO_CLOSE_CONTENT:Lcom/fasterxml/jackson/core/StreamWriteFeature;

    .line 24
    .line 25
    new-instance v4, Lcom/fasterxml/jackson/core/StreamWriteFeature;

    .line 26
    .line 27
    const/4 v5, 0x2

    .line 28
    sget-object v6, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->FLUSH_PASSED_TO_STREAM:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 29
    .line 30
    const-string v7, "FLUSH_PASSED_TO_STREAM"

    .line 31
    .line 32
    invoke-direct {v4, v7, v5, v6}, Lcom/fasterxml/jackson/core/StreamWriteFeature;-><init>(Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonGenerator$Feature;)V

    .line 33
    .line 34
    .line 35
    sput-object v4, Lcom/fasterxml/jackson/core/StreamWriteFeature;->FLUSH_PASSED_TO_STREAM:Lcom/fasterxml/jackson/core/StreamWriteFeature;

    .line 36
    .line 37
    new-instance v6, Lcom/fasterxml/jackson/core/StreamWriteFeature;

    .line 38
    .line 39
    const/4 v7, 0x3

    .line 40
    sget-object v8, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->WRITE_BIGDECIMAL_AS_PLAIN:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 41
    .line 42
    const-string v9, "WRITE_BIGDECIMAL_AS_PLAIN"

    .line 43
    .line 44
    invoke-direct {v6, v9, v7, v8}, Lcom/fasterxml/jackson/core/StreamWriteFeature;-><init>(Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonGenerator$Feature;)V

    .line 45
    .line 46
    .line 47
    sput-object v6, Lcom/fasterxml/jackson/core/StreamWriteFeature;->WRITE_BIGDECIMAL_AS_PLAIN:Lcom/fasterxml/jackson/core/StreamWriteFeature;

    .line 48
    .line 49
    new-instance v8, Lcom/fasterxml/jackson/core/StreamWriteFeature;

    .line 50
    .line 51
    const/4 v9, 0x4

    .line 52
    sget-object v10, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->STRICT_DUPLICATE_DETECTION:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 53
    .line 54
    const-string v11, "STRICT_DUPLICATE_DETECTION"

    .line 55
    .line 56
    invoke-direct {v8, v11, v9, v10}, Lcom/fasterxml/jackson/core/StreamWriteFeature;-><init>(Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonGenerator$Feature;)V

    .line 57
    .line 58
    .line 59
    sput-object v8, Lcom/fasterxml/jackson/core/StreamWriteFeature;->STRICT_DUPLICATE_DETECTION:Lcom/fasterxml/jackson/core/StreamWriteFeature;

    .line 60
    .line 61
    new-instance v10, Lcom/fasterxml/jackson/core/StreamWriteFeature;

    .line 62
    .line 63
    const/4 v11, 0x5

    .line 64
    sget-object v12, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->IGNORE_UNKNOWN:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 65
    .line 66
    const-string v13, "IGNORE_UNKNOWN"

    .line 67
    .line 68
    invoke-direct {v10, v13, v11, v12}, Lcom/fasterxml/jackson/core/StreamWriteFeature;-><init>(Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonGenerator$Feature;)V

    .line 69
    .line 70
    .line 71
    sput-object v10, Lcom/fasterxml/jackson/core/StreamWriteFeature;->IGNORE_UNKNOWN:Lcom/fasterxml/jackson/core/StreamWriteFeature;

    .line 72
    .line 73
    const/4 v12, 0x6

    .line 74
    new-array v12, v12, [Lcom/fasterxml/jackson/core/StreamWriteFeature;

    .line 75
    .line 76
    aput-object v0, v12, v1

    .line 77
    .line 78
    aput-object v2, v12, v3

    .line 79
    .line 80
    aput-object v4, v12, v5

    .line 81
    .line 82
    aput-object v6, v12, v7

    .line 83
    .line 84
    aput-object v8, v12, v9

    .line 85
    .line 86
    aput-object v10, v12, v11

    .line 87
    .line 88
    sput-object v12, Lcom/fasterxml/jackson/core/StreamWriteFeature;->$VALUES:[Lcom/fasterxml/jackson/core/StreamWriteFeature;

    .line 89
    .line 90
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonGenerator$Feature;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonGenerator$Feature;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/fasterxml/jackson/core/StreamWriteFeature;->_mappedFeature:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 5
    .line 6
    invoke-virtual {p3}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iput p1, p0, Lcom/fasterxml/jackson/core/StreamWriteFeature;->_mask:I

    .line 11
    .line 12
    invoke-virtual {p3}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->enabledByDefault()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iput-boolean p1, p0, Lcom/fasterxml/jackson/core/StreamWriteFeature;->_defaultState:Z

    .line 17
    .line 18
    return-void
.end method

.method public static collectDefaults()I
    .locals 6

    .line 1
    invoke-static {}, Lcom/fasterxml/jackson/core/StreamWriteFeature;->values()[Lcom/fasterxml/jackson/core/StreamWriteFeature;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    move v3, v2

    .line 8
    :goto_0
    if-ge v2, v1, :cond_1

    .line 9
    .line 10
    aget-object v4, v0, v2

    .line 11
    .line 12
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/StreamWriteFeature;->enabledByDefault()Z

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    if-eqz v5, :cond_0

    .line 17
    .line 18
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/StreamWriteFeature;->getMask()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    or-int/2addr v3, v4

    .line 23
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    return v3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/core/StreamWriteFeature;
    .locals 1

    .line 1
    const-class v0, Lcom/fasterxml/jackson/core/StreamWriteFeature;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/fasterxml/jackson/core/StreamWriteFeature;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/fasterxml/jackson/core/StreamWriteFeature;
    .locals 1

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/core/StreamWriteFeature;->$VALUES:[Lcom/fasterxml/jackson/core/StreamWriteFeature;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/fasterxml/jackson/core/StreamWriteFeature;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/fasterxml/jackson/core/StreamWriteFeature;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public enabledByDefault()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/StreamWriteFeature;->_defaultState:Z

    .line 2
    .line 3
    return v0
.end method

.method public enabledIn(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/StreamWriteFeature;->_mask:I

    .line 2
    .line 3
    and-int/2addr p1, v0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    return p1

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    return p1
.end method

.method public getMask()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/StreamWriteFeature;->_mask:I

    .line 2
    .line 3
    return v0
.end method

.method public mappedFeature()Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/StreamWriteFeature;->_mappedFeature:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 2
    .line 3
    return-object v0
.end method
