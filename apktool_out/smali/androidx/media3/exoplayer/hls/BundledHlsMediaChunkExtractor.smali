.class public final Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# static fields
.field private static final POSITION_HOLDER:Lv0/c0;


# instance fields
.field final extractor:Lv0/C;

.field private final multivariantPlaylistFormat:Landroidx/media3/common/Format;

.field private final parseSubtitlesDuringExtraction:Z

.field private final subtitleParserFactory:LS0/q;

.field private final timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lv0/c0;

    .line 2
    .line 3
    invoke-direct {v0}, Lv0/c0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->POSITION_HOLDER:Lv0/c0;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lv0/C;Landroidx/media3/common/Format;Landroidx/media3/common/util/TimestampAdjuster;)V
    .locals 6

    .line 1
    sget-object v4, LS0/q;->a:LS0/p;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;-><init>(Lv0/C;Landroidx/media3/common/Format;Landroidx/media3/common/util/TimestampAdjuster;LS0/q;Z)V

    return-void
.end method

.method public constructor <init>(Lv0/C;Landroidx/media3/common/Format;Landroidx/media3/common/util/TimestampAdjuster;LS0/q;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->extractor:Lv0/C;

    .line 4
    iput-object p2, p0, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->multivariantPlaylistFormat:Landroidx/media3/common/Format;

    .line 5
    iput-object p3, p0, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    .line 6
    iput-object p4, p0, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->subtitleParserFactory:LS0/q;

    .line 7
    iput-boolean p5, p0, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->parseSubtitlesDuringExtraction:Z

    return-void
.end method


# virtual methods
.method public init(Lv0/F;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->extractor:Lv0/C;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lv0/C;->init(Lv0/F;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public isPackedAudioExtractor()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->extractor:Lv0/C;

    .line 2
    .line 3
    invoke-interface {v0}, Lv0/C;->getUnderlyingImplementation()Lv0/C;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Lc1/e;

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    instance-of v1, v0, Lc1/a;

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    instance-of v1, v0, Lc1/c;

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    instance-of v0, v0, LO0/e;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    return v0

    .line 26
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 27
    return v0
.end method

.method public isReusable()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->extractor:Lv0/C;

    .line 2
    .line 3
    invoke-interface {v0}, Lv0/C;->getUnderlyingImplementation()Lv0/C;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Lc1/S;

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    instance-of v0, v0, LP0/u;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return v0

    .line 18
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 19
    return v0
.end method

.method public onTruncatedSegmentParsed()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->extractor:Lv0/C;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-interface {v0, v1, v2, v1, v2}, Lv0/C;->seek(JJ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public read(Lv0/D;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->extractor:Lv0/C;

    .line 2
    .line 3
    sget-object v1, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->POSITION_HOLDER:Lv0/c0;

    .line 4
    .line 5
    invoke-interface {v0, p1, v1}, Lv0/C;->read(Lv0/D;Lv0/c0;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    return p1
.end method

.method public recreate()Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->isReusable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    xor-int/2addr v0, v1

    .line 7
    invoke-static {v0}, LP3/v;->checkState(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->extractor:Lv0/C;

    .line 11
    .line 12
    invoke-interface {v0}, Lv0/C;->getUnderlyingImplementation()Lv0/C;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->extractor:Lv0/C;

    .line 17
    .line 18
    if-ne v0, v2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v2, "Can\'t recreate wrapped extractors. Outer type: %s"

    .line 27
    .line 28
    invoke-static {v1, v2, v0}, LP3/v;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->extractor:Lv0/C;

    .line 32
    .line 33
    instance-of v1, v0, Landroidx/media3/exoplayer/hls/WebvttExtractor;

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    new-instance v0, Landroidx/media3/exoplayer/hls/WebvttExtractor;

    .line 38
    .line 39
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->multivariantPlaylistFormat:Landroidx/media3/common/Format;

    .line 40
    .line 41
    iget-object v1, v1, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    .line 42
    .line 43
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    .line 44
    .line 45
    iget-object v3, p0, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->subtitleParserFactory:LS0/q;

    .line 46
    .line 47
    iget-boolean v4, p0, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->parseSubtitlesDuringExtraction:Z

    .line 48
    .line 49
    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/media3/exoplayer/hls/WebvttExtractor;-><init>(Ljava/lang/String;Landroidx/media3/common/util/TimestampAdjuster;LS0/q;Z)V

    .line 50
    .line 51
    .line 52
    :goto_1
    move-object v2, v0

    .line 53
    goto :goto_2

    .line 54
    :cond_1
    instance-of v1, v0, Lc1/e;

    .line 55
    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    new-instance v0, Lc1/e;

    .line 59
    .line 60
    invoke-direct {v0}, Lc1/e;-><init>()V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    instance-of v1, v0, Lc1/a;

    .line 65
    .line 66
    if-eqz v1, :cond_3

    .line 67
    .line 68
    new-instance v0, Lc1/a;

    .line 69
    .line 70
    invoke-direct {v0}, Lc1/a;-><init>()V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    instance-of v1, v0, Lc1/c;

    .line 75
    .line 76
    if-eqz v1, :cond_4

    .line 77
    .line 78
    new-instance v0, Lc1/c;

    .line 79
    .line 80
    invoke-direct {v0}, Lc1/c;-><init>()V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_4
    instance-of v0, v0, LO0/e;

    .line 85
    .line 86
    if-eqz v0, :cond_5

    .line 87
    .line 88
    new-instance v0, LO0/e;

    .line 89
    .line 90
    invoke-direct {v0}, LO0/e;-><init>()V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :goto_2
    new-instance v1, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;

    .line 95
    .line 96
    iget-object v3, p0, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->multivariantPlaylistFormat:Landroidx/media3/common/Format;

    .line 97
    .line 98
    iget-object v4, p0, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    .line 99
    .line 100
    iget-object v5, p0, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->subtitleParserFactory:LS0/q;

    .line 101
    .line 102
    iget-boolean v6, p0, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->parseSubtitlesDuringExtraction:Z

    .line 103
    .line 104
    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;-><init>(Lv0/C;Landroidx/media3/common/Format;Landroidx/media3/common/util/TimestampAdjuster;LS0/q;Z)V

    .line 105
    .line 106
    .line 107
    return-object v1

    .line 108
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 109
    .line 110
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->extractor:Lv0/C;

    .line 111
    .line 112
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    const-string v2, "Unexpected extractor type for recreation: "

    .line 121
    .line 122
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw v0
.end method
