.class public abstract LS0/h;
.super Lu0/j;
.source "SourceFile"

# interfaces
.implements LS0/j;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [LS0/m;

    .line 3
    .line 4
    new-array v0, v0, [LS0/n;

    .line 5
    .line 6
    invoke-direct {p0, v1, v0}, Lu0/j;-><init>([Lu0/f;[Lu0/h;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, LS0/h;->name:Ljava/lang/String;

    .line 10
    .line 11
    const/16 p1, 0x400

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lu0/j;->setInitialInputBufferSize(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static synthetic access$000(LS0/h;Lu0/h;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu0/j;->releaseOutputBuffer(Lu0/h;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final createInputBuffer()LS0/m;
    .locals 1

    .line 2
    new-instance v0, LS0/m;

    invoke-direct {v0}, LS0/m;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createInputBuffer()Lu0/f;
    .locals 1

    .line 1
    invoke-virtual {p0}, LS0/h;->createInputBuffer()LS0/m;

    move-result-object v0

    return-object v0
.end method

.method public final createOutputBuffer()LS0/n;
    .locals 1

    .line 2
    new-instance v0, LS0/g;

    invoke-direct {v0, p0}, LS0/g;-><init>(LS0/h;)V

    return-object v0
.end method

.method public bridge synthetic createOutputBuffer()Lu0/h;
    .locals 1

    .line 1
    invoke-virtual {p0}, LS0/h;->createOutputBuffer()LS0/n;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createUnexpectedDecodeException(Ljava/lang/Throwable;)Landroidx/media3/decoder/DecoderException;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LS0/h;->createUnexpectedDecodeException(Ljava/lang/Throwable;)Landroidx/media3/extractor/text/SubtitleDecoderException;

    move-result-object p1

    return-object p1
.end method

.method public final createUnexpectedDecodeException(Ljava/lang/Throwable;)Landroidx/media3/extractor/text/SubtitleDecoderException;
    .locals 2

    .line 2
    new-instance v0, Landroidx/media3/extractor/text/SubtitleDecoderException;

    const-string v1, "Unexpected decode error"

    invoke-direct {v0, v1, p1}, Landroidx/media3/extractor/text/SubtitleDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public abstract decode([BIZ)LS0/i;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/extractor/text/SubtitleDecoderException;
        }
    .end annotation
.end method

.method public bridge synthetic decode(Lu0/f;Lu0/h;Z)Landroidx/media3/decoder/DecoderException;
    .locals 0

    .line 1
    check-cast p1, LS0/m;

    check-cast p2, LS0/n;

    invoke-virtual {p0, p1, p2, p3}, LS0/h;->decode(LS0/m;LS0/n;Z)Landroidx/media3/extractor/text/SubtitleDecoderException;

    move-result-object p1

    return-object p1
.end method

.method public final decode(LS0/m;LS0/n;Z)Landroidx/media3/extractor/text/SubtitleDecoderException;
    .locals 8

    .line 2
    :try_start_0
    iget-object v0, p1, Lu0/f;->data:Ljava/nio/ByteBuffer;

    invoke-static {v0}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-virtual {p0, v1, v0, p3}, LS0/h;->decode([BIZ)LS0/i;

    move-result-object v5

    .line 4
    iget-wide v3, p1, Lu0/f;->timeUs:J

    iget-wide v6, p1, LS0/m;->b:J

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, LS0/n;->setContent(JLS0/i;J)V

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, v2, Lu0/h;->shouldBeSkipped:Z
    :try_end_0
    .catch Landroidx/media3/extractor/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception v0

    move-object p1, v0

    return-object p1
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LS0/h;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setPositionUs(J)V
    .locals 0

    .line 1
    return-void
.end method
