.class public final Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/hls/HlsExtractorFactory;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# static fields
.field private static final DEFAULT_EXTRACTOR_ORDER:[I


# instance fields
.field private codecsToParseWithinGopSampleDependencies:I

.field private final exposeCea608WhenMissingDeclarations:Z

.field private parseSubtitlesDuringExtraction:Z

.field private final payloadReaderFactoryFlags:I

.field private subtitleParserFactory:LS0/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x7

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->DEFAULT_EXTRACTOR_ORDER:[I

    .line 8
    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_0
    .array-data 4
        0x8
        0xd
        0xb
        0x2
        0x0
        0x1
        0x7
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->payloadReaderFactoryFlags:I

    .line 4
    iput-boolean p2, p0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->exposeCea608WhenMissingDeclarations:Z

    .line 5
    new-instance p1, LS0/e;

    invoke-direct {p1}, LS0/e;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->subtitleParserFactory:LS0/q;

    return-void
.end method

.method public static synthetic a(Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->lambda$isFmp4Variant$0(Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry;)Z

    move-result p0

    return p0
.end method

.method private static addFileTypeIfValidAndNotPresent(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->DEFAULT_EXTRACTOR_ORDER:[I

    .line 2
    .line 3
    invoke-static {v0, p0}, Lcom/google/common/primitives/a;->indexOf([II)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
.end method

.method private createExtractorByFileType(ILandroidx/media3/common/Format;Ljava/util/List;Landroidx/media3/common/util/TimestampAdjuster;)Lv0/C;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media3/common/Format;",
            "Ljava/util/List<",
            "Landroidx/media3/common/Format;",
            ">;",
            "Landroidx/media3/common/util/TimestampAdjuster;",
            ")",
            "Lv0/C;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_5

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_4

    .line 8
    .line 9
    const/4 v0, 0x7

    .line 10
    if-eq p1, v0, :cond_3

    .line 11
    .line 12
    const/16 v0, 0x8

    .line 13
    .line 14
    if-eq p1, v0, :cond_2

    .line 15
    .line 16
    const/16 v0, 0xb

    .line 17
    .line 18
    if-eq p1, v0, :cond_1

    .line 19
    .line 20
    const/16 p3, 0xd

    .line 21
    .line 22
    if-eq p1, p3, :cond_0

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    return-object p1

    .line 26
    :cond_0
    new-instance p1, Landroidx/media3/exoplayer/hls/WebvttExtractor;

    .line 27
    .line 28
    iget-object p2, p2, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    .line 29
    .line 30
    iget-object p3, p0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->subtitleParserFactory:LS0/q;

    .line 31
    .line 32
    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->parseSubtitlesDuringExtraction:Z

    .line 33
    .line 34
    invoke-direct {p1, p2, p4, p3, v0}, Landroidx/media3/exoplayer/hls/WebvttExtractor;-><init>(Ljava/lang/String;Landroidx/media3/common/util/TimestampAdjuster;LS0/q;Z)V

    .line 35
    .line 36
    .line 37
    return-object p1

    .line 38
    :cond_1
    iget v1, p0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->payloadReaderFactoryFlags:I

    .line 39
    .line 40
    iget-boolean v2, p0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->exposeCea608WhenMissingDeclarations:Z

    .line 41
    .line 42
    iget-object v6, p0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->subtitleParserFactory:LS0/q;

    .line 43
    .line 44
    iget-boolean v7, p0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->parseSubtitlesDuringExtraction:Z

    .line 45
    .line 46
    move-object v3, p2

    .line 47
    move-object v4, p3

    .line 48
    move-object v5, p4

    .line 49
    invoke-static/range {v1 .. v7}, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->createTsExtractor(IZLandroidx/media3/common/Format;Ljava/util/List;Landroidx/media3/common/util/TimestampAdjuster;LS0/q;Z)Lc1/S;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    return-object p1

    .line 54
    :cond_2
    move-object v3, p2

    .line 55
    move-object v4, p3

    .line 56
    move-object v2, p4

    .line 57
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->subtitleParserFactory:LS0/q;

    .line 58
    .line 59
    iget-boolean v1, p0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->parseSubtitlesDuringExtraction:Z

    .line 60
    .line 61
    iget v5, p0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->codecsToParseWithinGopSampleDependencies:I

    .line 62
    .line 63
    invoke-static/range {v0 .. v5}, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->createFragmentedMp4Extractor(LS0/q;ZLandroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/common/Format;Ljava/util/List;I)LP0/u;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    return-object p1

    .line 68
    :cond_3
    new-instance p1, LO0/e;

    .line 69
    .line 70
    const/4 p2, 0x0

    .line 71
    const-wide/16 p3, 0x0

    .line 72
    .line 73
    invoke-direct {p1, p2, p3, p4}, LO0/e;-><init>(IJ)V

    .line 74
    .line 75
    .line 76
    return-object p1

    .line 77
    :cond_4
    new-instance p1, Lc1/e;

    .line 78
    .line 79
    invoke-direct {p1}, Lc1/e;-><init>()V

    .line 80
    .line 81
    .line 82
    return-object p1

    .line 83
    :cond_5
    new-instance p1, Lc1/c;

    .line 84
    .line 85
    invoke-direct {p1}, Lc1/c;-><init>()V

    .line 86
    .line 87
    .line 88
    return-object p1

    .line 89
    :cond_6
    new-instance p1, Lc1/a;

    .line 90
    .line 91
    invoke-direct {p1}, Lc1/a;-><init>()V

    .line 92
    .line 93
    .line 94
    return-object p1
.end method

.method private static createFragmentedMp4Extractor(LS0/q;ZLandroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/common/Format;Ljava/util/List;I)LP0/u;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LS0/q;",
            "Z",
            "Landroidx/media3/common/util/TimestampAdjuster;",
            "Landroidx/media3/common/Format;",
            "Ljava/util/List<",
            "Landroidx/media3/common/Format;",
            ">;I)",
            "LP0/u;"
        }
    .end annotation

    .line 1
    invoke-static {p3}, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->isFmp4Variant(Landroidx/media3/common/Format;)Z

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    const/4 p3, 0x4

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p3, 0x0

    .line 10
    :goto_0
    if-nez p1, :cond_1

    .line 11
    .line 12
    sget-object p0, LS0/q;->a:LS0/p;

    .line 13
    .line 14
    or-int/lit8 p3, p3, 0x20

    .line 15
    .line 16
    :cond_1
    move-object v1, p0

    .line 17
    invoke-static {p5}, LP0/u;->codecsToParseWithinGopSampleDependenciesAsFlags(I)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    or-int v2, p3, p0

    .line 22
    .line 23
    new-instance v0, LP0/u;

    .line 24
    .line 25
    if-eqz p4, :cond_2

    .line 26
    .line 27
    :goto_1
    move-object v5, p4

    .line 28
    goto :goto_2

    .line 29
    :cond_2
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    .line 30
    .line 31
    .line 32
    move-result-object p4

    .line 33
    goto :goto_1

    .line 34
    :goto_2
    const/4 v6, 0x0

    .line 35
    const/4 v4, 0x0

    .line 36
    move-object v3, p2

    .line 37
    invoke-direct/range {v0 .. v6}, LP0/u;-><init>(LS0/q;ILandroidx/media3/common/util/TimestampAdjuster;LP0/J;Ljava/util/List;Lv0/r0;)V

    .line 38
    .line 39
    .line 40
    return-object v0
.end method

.method private static createTsExtractor(IZLandroidx/media3/common/Format;Ljava/util/List;Landroidx/media3/common/util/TimestampAdjuster;LS0/q;Z)Lc1/S;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Landroidx/media3/common/Format;",
            "Ljava/util/List<",
            "Landroidx/media3/common/Format;",
            ">;",
            "Landroidx/media3/common/util/TimestampAdjuster;",
            "LS0/q;",
            "Z)",
            "Lc1/S;"
        }
    .end annotation

    .line 1
    or-int/lit8 v0, p0, 0x10

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    or-int/lit8 v0, p0, 0x30

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    if-eqz p1, :cond_1

    .line 9
    .line 10
    new-instance p0, Landroidx/media3/common/Format$Builder;

    .line 11
    .line 12
    invoke-direct {p0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string p1, "application/cea-608"

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    sget-object p3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 31
    .line 32
    :goto_0
    iget-object p0, p2, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_3

    .line 39
    .line 40
    const-string p1, "audio/mp4a-latm"

    .line 41
    .line 42
    invoke-static {p0, p1}, Landroidx/media3/common/MimeTypes;->containsCodecsCorrespondingToMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-nez p1, :cond_2

    .line 47
    .line 48
    or-int/lit8 v0, v0, 0x2

    .line 49
    .line 50
    :cond_2
    const-string p1, "video/avc"

    .line 51
    .line 52
    invoke-static {p0, p1}, Landroidx/media3/common/MimeTypes;->containsCodecsCorrespondingToMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    if-nez p0, :cond_3

    .line 57
    .line 58
    or-int/lit8 v0, v0, 0x4

    .line 59
    .line 60
    :cond_3
    if-nez p6, :cond_4

    .line 61
    .line 62
    sget-object p5, LS0/q;->a:LS0/p;

    .line 63
    .line 64
    const/4 p0, 0x1

    .line 65
    :goto_1
    move v3, p0

    .line 66
    move-object v4, p5

    .line 67
    goto :goto_2

    .line 68
    :cond_4
    const/4 p0, 0x0

    .line 69
    goto :goto_1

    .line 70
    :goto_2
    new-instance v1, Lc1/S;

    .line 71
    .line 72
    new-instance v6, Lc1/g;

    .line 73
    .line 74
    invoke-direct {v6, v0, p3}, Lc1/g;-><init>(ILjava/util/List;)V

    .line 75
    .line 76
    .line 77
    const v7, 0x1b8a0

    .line 78
    .line 79
    .line 80
    const/4 v2, 0x2

    .line 81
    move-object v5, p4

    .line 82
    invoke-direct/range {v1 .. v7}, Lc1/S;-><init>(IILS0/q;Landroidx/media3/common/util/TimestampAdjuster;Lc1/V;I)V

    .line 83
    .line 84
    .line 85
    return-object v1
.end method

.method private static isFmp4Variant(Landroidx/media3/common/Format;)Z
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    new-instance v1, Landroidx/media3/exoplayer/hls/k;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-direct {v1, v2}, Landroidx/media3/exoplayer/hls/k;-><init>(I)V

    .line 11
    .line 12
    .line 13
    const-class v2, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry;

    .line 14
    .line 15
    invoke-virtual {p0, v2, v1}, Landroidx/media3/common/Metadata;->getFirstMatchingEntry(Ljava/lang/Class;LP3/w;)Landroidx/media3/common/Metadata$Entry;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_1
    return v0
.end method

.method private static synthetic lambda$isFmp4Variant$0(Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry;->variantInfos:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    xor-int/lit8 p0, p0, 0x1

    .line 8
    .line 9
    return p0
.end method

.method private static sniffQuietly(Lv0/C;Lv0/D;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p0, p1}, Lv0/C;->sniff(Lv0/D;)Z

    .line 2
    .line 3
    .line 4
    move-result p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-interface {p1}, Lv0/D;->resetPeekPosition()V

    .line 6
    .line 7
    .line 8
    return p0

    .line 9
    :catchall_0
    move-exception p0

    .line 10
    invoke-interface {p1}, Lv0/D;->resetPeekPosition()V

    .line 11
    .line 12
    .line 13
    throw p0

    .line 14
    :catch_0
    invoke-interface {p1}, Lv0/D;->resetPeekPosition()V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return p0
.end method


# virtual methods
.method public createExtractor(Landroid/net/Uri;Landroidx/media3/common/Format;Ljava/util/List;Landroidx/media3/common/util/TimestampAdjuster;Ljava/util/Map;Lv0/D;Landroidx/media3/exoplayer/analytics/PlayerId;)Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroidx/media3/common/Format;",
            "Ljava/util/List<",
            "Landroidx/media3/common/Format;",
            ">;",
            "Landroidx/media3/common/util/TimestampAdjuster;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lv0/D;",
            "Landroidx/media3/exoplayer/analytics/PlayerId;",
            ")",
            "Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/FileTypes;->inferFileTypeFromMimeType(Ljava/lang/String;)I

    move-result v0

    .line 3
    invoke-static/range {p5 .. p5}, Landroidx/media3/common/FileTypes;->inferFileTypeFromResponseHeaders(Ljava/util/Map;)I

    move-result v1

    .line 4
    invoke-static {p1}, Landroidx/media3/common/FileTypes;->inferFileTypeFromUri(Landroid/net/Uri;)I

    move-result p1

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->DEFAULT_EXTRACTOR_ORDER:[I

    array-length v4, v3

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-static {v0, v2}, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->addFileTypeIfValidAndNotPresent(ILjava/util/List;)V

    .line 7
    invoke-static {v1, v2}, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->addFileTypeIfValidAndNotPresent(ILjava/util/List;)V

    .line 8
    invoke-static {p1, v2}, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->addFileTypeIfValidAndNotPresent(ILjava/util/List;)V

    .line 9
    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_0

    aget v7, v3, v6

    .line 10
    invoke-static {v7, v2}, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->addFileTypeIfValidAndNotPresent(ILjava/util/List;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 11
    :cond_0
    invoke-interface/range {p6 .. p6}, Lv0/D;->resetPeekPosition()V

    const/4 v3, 0x0

    .line 12
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v5, v4, :cond_4

    .line 13
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v9, p4

    .line 14
    invoke-direct {p0, v4, p2, p3, v9}, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->createExtractorByFileType(ILandroidx/media3/common/Format;Ljava/util/List;Landroidx/media3/common/util/TimestampAdjuster;)Lv0/C;

    move-result-object v7

    .line 15
    invoke-static {v7}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lv0/C;

    move-object/from16 v8, p6

    .line 16
    invoke-static {v7, v8}, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->sniffQuietly(Lv0/C;Lv0/D;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 17
    new-instance v6, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;

    iget-object v10, p0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->subtitleParserFactory:LS0/q;

    iget-boolean v11, p0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->parseSubtitlesDuringExtraction:Z

    move-object v8, p2

    invoke-direct/range {v6 .. v11}, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;-><init>(Lv0/C;Landroidx/media3/common/Format;Landroidx/media3/common/util/TimestampAdjuster;LS0/q;Z)V

    return-object v6

    :cond_1
    if-nez v3, :cond_3

    if-eq v4, v0, :cond_2

    if-eq v4, v1, :cond_2

    if-eq v4, p1, :cond_2

    const/16 v9, 0xb

    if-ne v4, v9, :cond_3

    :cond_2
    move-object v3, v7

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 18
    :cond_4
    new-instance v6, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;

    .line 19
    invoke-static {v3}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Lv0/C;

    iget-object v10, p0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->subtitleParserFactory:LS0/q;

    iget-boolean v11, p0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->parseSubtitlesDuringExtraction:Z

    move-object v8, p2

    move-object/from16 v9, p4

    invoke-direct/range {v6 .. v11}, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;-><init>(Lv0/C;Landroidx/media3/common/Format;Landroidx/media3/common/util/TimestampAdjuster;LS0/q;Z)V

    return-object v6
.end method

.method public bridge synthetic createExtractor(Landroid/net/Uri;Landroidx/media3/common/Format;Ljava/util/List;Landroidx/media3/common/util/TimestampAdjuster;Ljava/util/Map;Lv0/D;Landroidx/media3/exoplayer/analytics/PlayerId;)Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual/range {p0 .. p7}, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->createExtractor(Landroid/net/Uri;Landroidx/media3/common/Format;Ljava/util/List;Landroidx/media3/common/util/TimestampAdjuster;Ljava/util/Map;Lv0/D;Landroidx/media3/exoplayer/analytics/PlayerId;)Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;

    move-result-object p1

    return-object p1
.end method

.method public experimentalParseSubtitlesDuringExtraction(Z)Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;
    .locals 0

    .line 2
    iput-boolean p1, p0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->parseSubtitlesDuringExtraction:Z

    return-object p0
.end method

.method public bridge synthetic experimentalParseSubtitlesDuringExtraction(Z)Landroidx/media3/exoplayer/hls/HlsExtractorFactory;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->experimentalParseSubtitlesDuringExtraction(Z)Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;

    move-result-object p1

    return-object p1
.end method

.method public experimentalSetCodecsToParseWithinGopSampleDependencies(I)Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;
    .locals 0

    .line 2
    iput p1, p0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->codecsToParseWithinGopSampleDependencies:I

    return-object p0
.end method

.method public bridge synthetic experimentalSetCodecsToParseWithinGopSampleDependencies(I)Landroidx/media3/exoplayer/hls/HlsExtractorFactory;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->experimentalSetCodecsToParseWithinGopSampleDependencies(I)Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;

    move-result-object p1

    return-object p1
.end method

.method public getOutputTextFormat(Landroidx/media3/common/Format;)Landroidx/media3/common/Format;
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->parseSubtitlesDuringExtraction:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->subtitleParserFactory:LS0/q;

    .line 6
    .line 7
    invoke-interface {v0, p1}, LS0/q;->supportsFormat(Landroidx/media3/common/Format;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "application/x-media3-cues"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->subtitleParserFactory:LS0/q;

    .line 24
    .line 25
    invoke-interface {v1, p1}, LS0/q;->getCueReplacementBehavior(Landroidx/media3/common/Format;)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setCueReplacementBehavior(I)Landroidx/media3/common/Format$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    iget-object v2, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget-object v2, p1, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    .line 44
    .line 45
    if-eqz v2, :cond_0

    .line 46
    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v3, " "

    .line 50
    .line 51
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p1, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    const-string p1, ""

    .line 65
    .line 66
    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {v0, p1}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    const-wide v0, 0x7fffffffffffffffL

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v0, v1}, Landroidx/media3/common/Format$Builder;->setSubsampleOffsetUs(J)Landroidx/media3/common/Format$Builder;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    :cond_1
    return-object p1
.end method

.method public setSubtitleParserFactory(LS0/q;)Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;
    .locals 0

    .line 2
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->subtitleParserFactory:LS0/q;

    return-object p0
.end method

.method public bridge synthetic setSubtitleParserFactory(LS0/q;)Landroidx/media3/exoplayer/hls/HlsExtractorFactory;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->setSubtitleParserFactory(LS0/q;)Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;

    move-result-object p1

    return-object p1
.end method
