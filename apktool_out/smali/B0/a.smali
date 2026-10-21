.class public final LB0/a;
.super LB0/d;
.source "SourceFile"


# static fields
.field public static final e:[I


# instance fields
.field public b:Z

.field public c:Z

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/16 v0, 0x5622

    .line 2
    .line 3
    const v1, 0xac44

    .line 4
    .line 5
    .line 6
    const/16 v2, 0x1588

    .line 7
    .line 8
    const/16 v3, 0x2b11

    .line 9
    .line 10
    filled-new-array {v2, v3, v0, v1}, [I

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, LB0/a;->e:[I

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Lv0/r0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LB0/d;-><init>(Lv0/r0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public parseHeader(Landroidx/media3/common/util/ParsableByteArray;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/extractor/flv/TagPayloadReader$UnsupportedFormatException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, LB0/a;->b:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_5

    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    shr-int/lit8 v0, p1, 0x4

    .line 11
    .line 12
    and-int/lit8 v0, v0, 0xf

    .line 13
    .line 14
    iput v0, p0, LB0/a;->d:I

    .line 15
    .line 16
    iget-object v2, p0, LB0/d;->a:Lv0/r0;

    .line 17
    .line 18
    const-string v3, "video/x-flv"

    .line 19
    .line 20
    const/4 v4, 0x2

    .line 21
    if-ne v0, v4, :cond_0

    .line 22
    .line 23
    shr-int/2addr p1, v4

    .line 24
    and-int/lit8 p1, p1, 0x3

    .line 25
    .line 26
    sget-object v0, LB0/a;->e:[I

    .line 27
    .line 28
    aget p1, v0, p1

    .line 29
    .line 30
    new-instance v0, Landroidx/media3/common/Format$Builder;

    .line 31
    .line 32
    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v3}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v3, "audio/mpeg"

    .line 40
    .line 41
    invoke-virtual {v0, v3}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0, p1}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-interface {v2, p1}, Lv0/r0;->format(Landroidx/media3/common/Format;)V

    .line 58
    .line 59
    .line 60
    iput-boolean v1, p0, LB0/a;->c:Z

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_0
    const/4 p1, 0x7

    .line 64
    if-eq v0, p1, :cond_3

    .line 65
    .line 66
    const/16 v4, 0x8

    .line 67
    .line 68
    if-ne v0, v4, :cond_1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    const/16 p1, 0xa

    .line 72
    .line 73
    if-ne v0, p1, :cond_2

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_2
    new-instance p1, Landroidx/media3/extractor/flv/TagPayloadReader$UnsupportedFormatException;

    .line 77
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string v1, "Audio format not supported: "

    .line 81
    .line 82
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget v1, p0, LB0/a;->d:I

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-direct {p1, v0}, Landroidx/media3/extractor/flv/TagPayloadReader$UnsupportedFormatException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p1

    .line 98
    :cond_3
    :goto_0
    if-ne v0, p1, :cond_4

    .line 99
    .line 100
    const-string p1, "audio/g711-alaw"

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_4
    const-string p1, "audio/g711-mlaw"

    .line 104
    .line 105
    :goto_1
    new-instance v0, Landroidx/media3/common/Format$Builder;

    .line 106
    .line 107
    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v3}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v0, p1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {p1, v1}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    const/16 v0, 0x1f40

    .line 123
    .line 124
    invoke-virtual {p1, v0}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-interface {v2, p1}, Lv0/r0;->format(Landroidx/media3/common/Format;)V

    .line 133
    .line 134
    .line 135
    iput-boolean v1, p0, LB0/a;->c:Z

    .line 136
    .line 137
    :goto_2
    iput-boolean v1, p0, LB0/a;->b:Z

    .line 138
    .line 139
    return v1

    .line 140
    :cond_5
    invoke-virtual {p1, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 141
    .line 142
    .line 143
    return v1
.end method

.method public parsePayload(Landroidx/media3/common/util/ParsableByteArray;J)Z
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, LB0/a;->d:I

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    iget-object v4, v0, LB0/d;->a:Lv0/r0;

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    if-ne v2, v3, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 14
    .line 15
    .line 16
    move-result v10

    .line 17
    invoke-interface {v4, v1, v10}, Lv0/r0;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 18
    .line 19
    .line 20
    iget-object v6, v0, LB0/d;->a:Lv0/r0;

    .line 21
    .line 22
    const/4 v9, 0x1

    .line 23
    const/4 v11, 0x0

    .line 24
    const/4 v12, 0x0

    .line 25
    move-wide/from16 v7, p2

    .line 26
    .line 27
    invoke-interface/range {v6 .. v12}, Lv0/r0;->sampleMetadata(JIIILv0/q0;)V

    .line 28
    .line 29
    .line 30
    return v5

    .line 31
    :cond_0
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    const/4 v3, 0x0

    .line 36
    if-nez v2, :cond_1

    .line 37
    .line 38
    iget-boolean v6, v0, LB0/a;->c:Z

    .line 39
    .line 40
    if-nez v6, :cond_1

    .line 41
    .line 42
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    new-array v6, v2, [B

    .line 47
    .line 48
    invoke-virtual {v1, v6, v3, v2}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 49
    .line 50
    .line 51
    invoke-static {v6}, Lv0/b;->parseAudioSpecificConfig([B)Lv0/a;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    new-instance v2, Landroidx/media3/common/Format$Builder;

    .line 56
    .line 57
    invoke-direct {v2}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v7, "video/x-flv"

    .line 61
    .line 62
    invoke-virtual {v2, v7}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    const-string v7, "audio/mp4a-latm"

    .line 67
    .line 68
    invoke-virtual {v2, v7}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    iget-object v7, v1, Lv0/a;->c:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v2, v7}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    iget v7, v1, Lv0/a;->b:I

    .line 79
    .line 80
    invoke-virtual {v2, v7}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    iget v1, v1, Lv0/a;->a:I

    .line 85
    .line 86
    invoke-virtual {v2, v1}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-interface {v4, v1}, Lv0/r0;->format(Landroidx/media3/common/Format;)V

    .line 103
    .line 104
    .line 105
    iput-boolean v5, v0, LB0/a;->c:Z

    .line 106
    .line 107
    return v3

    .line 108
    :cond_1
    iget v6, v0, LB0/a;->d:I

    .line 109
    .line 110
    const/16 v7, 0xa

    .line 111
    .line 112
    if-ne v6, v7, :cond_3

    .line 113
    .line 114
    if-ne v2, v5, :cond_2

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_2
    return v3

    .line 118
    :cond_3
    :goto_0
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    invoke-interface {v4, v1, v2}, Lv0/r0;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 123
    .line 124
    .line 125
    iget-object v13, v0, LB0/d;->a:Lv0/r0;

    .line 126
    .line 127
    const/16 v16, 0x1

    .line 128
    .line 129
    const/16 v18, 0x0

    .line 130
    .line 131
    const/16 v19, 0x0

    .line 132
    .line 133
    move-wide/from16 v14, p2

    .line 134
    .line 135
    move/from16 v17, v2

    .line 136
    .line 137
    invoke-interface/range {v13 .. v19}, Lv0/r0;->sampleMetadata(JIIILv0/q0;)V

    .line 138
    .line 139
    .line 140
    return v5
.end method
