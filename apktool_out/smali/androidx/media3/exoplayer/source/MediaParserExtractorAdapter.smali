.class public final Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter$Factory;
    }
.end annotation


# static fields
.field public static final FACTORY:Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final inputReaderAdapter:Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;

.field private final mediaParser:Landroid/media/MediaParser;

.field private final outputConsumerAdapter:Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;

.field private parserName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/source/p;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/source/p;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->FACTORY:Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;-><init>(Landroidx/media3/exoplayer/analytics/PlayerId;Ljava/util/Map;)V

    return-void
.end method

.method private constructor <init>(Landroidx/media3/exoplayer/analytics/PlayerId;Ljava/util/Map;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/analytics/PlayerId;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;

    invoke-direct {v0}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->outputConsumerAdapter:Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;

    .line 5
    new-instance v1, Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;

    invoke-direct {v1}, Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;-><init>()V

    iput-object v1, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->inputReaderAdapter:Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;

    const/4 v1, 0x0

    .line 6
    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/hls/o;->l(Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;[Ljava/lang/String;)Landroid/media/MediaParser;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->mediaParser:Landroid/media/MediaParser;

    .line 7
    invoke-static {v0}, LM/l1;->w(Landroid/media/MediaParser;)V

    .line 8
    invoke-static {v0}, LM/l1;->o(Landroid/media/MediaParser;)V

    .line 9
    invoke-static {v0}, Landroidx/media3/exoplayer/hls/o;->y(Landroid/media/MediaParser;)V

    .line 10
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 11
    iget-object v1, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->mediaParser:Landroid/media/MediaParser;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroidx/media3/exoplayer/hls/o;->v(Landroid/media/MediaParser;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 12
    :cond_0
    const-string p2, "android.media.mediaparser.UNKNOWN"

    iput-object p2, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->parserName:Ljava/lang/String;

    .line 13
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    if-lt p2, v0, :cond_1

    .line 14
    iget-object p2, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->mediaParser:Landroid/media/MediaParser;

    invoke-static {p2, p1}, Landroidx/media3/exoplayer/source/mediaparser/MediaParserUtil;->setLogSessionIdOnMediaParser(Landroid/media/MediaParser;Landroidx/media3/exoplayer/analytics/PlayerId;)V

    :cond_1
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/exoplayer/analytics/PlayerId;Ljava/util/Map;Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;-><init>(Landroidx/media3/exoplayer/analytics/PlayerId;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic a(Landroidx/media3/exoplayer/analytics/PlayerId;)Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->lambda$static$0(Landroidx/media3/exoplayer/analytics/PlayerId;)Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$static$0(Landroidx/media3/exoplayer/analytics/PlayerId;)Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;
    .locals 2

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;-><init>(Landroidx/media3/exoplayer/analytics/PlayerId;Ljava/util/Map;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method


# virtual methods
.method public disableSeekingOnMp3Streams()V
    .locals 2

    .line 1
    const-string v0, "android.media.mediaparser.Mp3Parser"

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->parserName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->outputConsumerAdapter:Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->disableSeeking()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public getCurrentInputPosition()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->inputReaderAdapter:Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;->getPosition()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public init(Landroidx/media3/common/DataReader;Landroid/net/Uri;Ljava/util/Map;JJLv0/F;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/DataReader;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;JJ",
            "Lv0/F;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->outputConsumerAdapter:Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;

    .line 2
    .line 3
    invoke-virtual {p2, p8}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->setExtractorOutput(Lv0/F;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->inputReaderAdapter:Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;

    .line 7
    .line 8
    invoke-virtual {p2, p1, p6, p7}, Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;->setDataReader(Landroidx/media3/common/DataReader;J)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->inputReaderAdapter:Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;

    .line 12
    .line 13
    invoke-virtual {p1, p4, p5}, Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;->setCurrentPosition(J)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->mediaParser:Landroid/media/MediaParser;

    .line 17
    .line 18
    invoke-static {p1}, LM/l1;->l(Landroid/media/MediaParser;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string p2, "android.media.mediaparser.UNKNOWN"

    .line 23
    .line 24
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-eqz p2, :cond_0

    .line 29
    .line 30
    iget-object p1, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->mediaParser:Landroid/media/MediaParser;

    .line 31
    .line 32
    iget-object p2, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->inputReaderAdapter:Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;

    .line 33
    .line 34
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/hls/o;->s(Landroid/media/MediaParser;Landroid/media/MediaParser$SeekableInputReader;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->mediaParser:Landroid/media/MediaParser;

    .line 38
    .line 39
    invoke-static {p1}, LM/l1;->l(Landroid/media/MediaParser;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->parserName:Ljava/lang/String;

    .line 44
    .line 45
    iget-object p2, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->outputConsumerAdapter:Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;

    .line 46
    .line 47
    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->setSelectedParserName(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_0
    iget-object p2, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->parserName:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_1

    .line 58
    .line 59
    iget-object p1, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->mediaParser:Landroid/media/MediaParser;

    .line 60
    .line 61
    invoke-static {p1}, LM/l1;->l(Landroid/media/MediaParser;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iput-object p1, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->parserName:Ljava/lang/String;

    .line 66
    .line 67
    iget-object p2, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->outputConsumerAdapter:Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;

    .line 68
    .line 69
    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->setSelectedParserName(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    return-void
.end method

.method public read(Lv0/c0;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->mediaParser:Landroid/media/MediaParser;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->inputReaderAdapter:Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;

    .line 4
    .line 5
    invoke-static {v0, v1}, LM/l1;->u(Landroid/media/MediaParser;Landroid/media/MediaParser$SeekableInputReader;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->inputReaderAdapter:Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;->getAndResetSeekPosition()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    iput-wide v1, p1, Lv0/c0;->a:J

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const/4 p1, -0x1

    .line 20
    return p1

    .line 21
    :cond_0
    const-wide/16 v3, -0x1

    .line 22
    .line 23
    cmp-long p1, v1, v3

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    return p1

    .line 29
    :cond_1
    const/4 p1, 0x0

    .line 30
    return p1
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->mediaParser:Landroid/media/MediaParser;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/hls/o;->z(Landroid/media/MediaParser;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public seek(JJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->inputReaderAdapter:Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;->setCurrentPosition(J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->outputConsumerAdapter:Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;

    .line 7
    .line 8
    invoke-virtual {v0, p3, p4}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->getSeekPoints(J)Landroid/util/Pair;

    .line 9
    .line 10
    .line 11
    move-result-object p3

    .line 12
    iget-object p4, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->mediaParser:Landroid/media/MediaParser;

    .line 13
    .line 14
    iget-object v0, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 15
    .line 16
    invoke-static {v0}, Landroidx/media3/exoplayer/hls/o;->j(Ljava/lang/Object;)Landroid/media/MediaParser$SeekPoint;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Landroidx/media3/exoplayer/hls/o;->d(Landroid/media/MediaParser$SeekPoint;)J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    cmp-long p1, v0, p1

    .line 25
    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    iget-object p1, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 29
    .line 30
    :goto_0
    invoke-static {p1}, Landroidx/media3/exoplayer/hls/o;->j(Ljava/lang/Object;)Landroid/media/MediaParser$SeekPoint;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    iget-object p1, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :goto_1
    invoke-static {p4, p1}, Landroidx/media3/exoplayer/hls/o;->r(Landroid/media/MediaParser;Landroid/media/MediaParser$SeekPoint;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
