.class public abstract LT0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS0/j;


# instance fields
.field public final a:Ljava/util/ArrayDeque;

.field public final b:Ljava/util/ArrayDeque;

.field public final c:Ljava/util/ArrayDeque;

.field public d:LT0/h;

.field public e:J

.field public f:J

.field public g:J


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayDeque;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LT0/j;->a:Ljava/util/ArrayDeque;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    move v1, v0

    .line 13
    :goto_0
    const/16 v2, 0xa

    .line 14
    .line 15
    if-ge v1, v2, :cond_0

    .line 16
    .line 17
    iget-object v2, p0, LT0/j;->a:Ljava/util/ArrayDeque;

    .line 18
    .line 19
    new-instance v3, LT0/h;

    .line 20
    .line 21
    invoke-direct {v3}, LS0/m;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance v1, Ljava/util/ArrayDeque;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, LT0/j;->b:Ljava/util/ArrayDeque;

    .line 36
    .line 37
    :goto_1
    const/4 v1, 0x2

    .line 38
    if-ge v0, v1, :cond_1

    .line 39
    .line 40
    iget-object v1, p0, LT0/j;->b:Ljava/util/ArrayDeque;

    .line 41
    .line 42
    new-instance v2, LT0/i;

    .line 43
    .line 44
    new-instance v3, LA0/a;

    .line 45
    .line 46
    const/16 v4, 0xc

    .line 47
    .line 48
    invoke-direct {v3, p0, v4}, LA0/a;-><init>(Ljava/lang/Object;I)V

    .line 49
    .line 50
    .line 51
    invoke-direct {v2, v3}, LT0/i;-><init>(Lu0/g;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    add-int/lit8 v0, v0, 0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    new-instance v0, Ljava/util/ArrayDeque;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, LT0/j;->c:Ljava/util/ArrayDeque;

    .line 66
    .line 67
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    iput-wide v0, p0, LT0/j;->g:J

    .line 73
    .line 74
    return-void
.end method


# virtual methods
.method public abstract createSubtitle()LS0/i;
.end method

.method public abstract decode(LS0/m;)V
.end method

.method public dequeueInputBuffer()LS0/m;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/extractor/text/SubtitleDecoderException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, LT0/j;->d:LT0/h;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, LP3/v;->checkState(Z)V

    .line 3
    iget-object v0, p0, LT0/j;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LT0/h;

    iput-object v0, p0, LT0/j;->d:LT0/h;

    return-object v0
.end method

.method public bridge synthetic dequeueInputBuffer()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/decoder/DecoderException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, LT0/j;->dequeueInputBuffer()LS0/m;

    move-result-object v0

    return-object v0
.end method

.method public dequeueOutputBuffer()LS0/n;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/extractor/text/SubtitleDecoderException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, LT0/j;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 3
    :cond_0
    :goto_0
    iget-object v1, p0, LT0/j;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LT0/h;

    invoke-static {v3}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LT0/h;

    iget-wide v3, v3, Lu0/f;->timeUs:J

    iget-wide v5, p0, LT0/j;->e:J

    cmp-long v3, v3, v5

    if-gtz v3, :cond_3

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LT0/h;

    invoke-static {v1}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LT0/h;

    .line 6
    invoke-virtual {v1}, Lu0/a;->isEndOfStream()Z

    move-result v3

    iget-object v4, p0, LT0/j;->a:Ljava/util/ArrayDeque;

    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LS0/n;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LS0/n;

    const/4 v2, 0x4

    .line 8
    invoke-virtual {v0, v2}, Lu0/a;->addFlag(I)V

    .line 9
    invoke-virtual {v1}, Lu0/f;->clear()V

    .line 10
    invoke-virtual {v4, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 11
    :cond_1
    invoke-virtual {p0, v1}, LT0/j;->decode(LS0/m;)V

    .line 12
    invoke-virtual {p0}, LT0/j;->isNewSubtitleDataAvailable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 13
    invoke-virtual {p0}, LT0/j;->createSubtitle()LS0/i;

    move-result-object v8

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LS0/n;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, LS0/n;

    .line 15
    iget-wide v6, v1, Lu0/f;->timeUs:J

    const-wide v9, 0x7fffffffffffffffL

    invoke-virtual/range {v5 .. v10}, LS0/n;->setContent(JLS0/i;J)V

    .line 16
    invoke-virtual {v1}, Lu0/f;->clear()V

    .line 17
    invoke-virtual {v4, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-object v5

    .line 18
    :cond_2
    invoke-virtual {v1}, Lu0/f;->clear()V

    .line 19
    invoke-virtual {v4, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method public bridge synthetic dequeueOutputBuffer()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/decoder/DecoderException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, LT0/j;->dequeueOutputBuffer()LS0/n;

    move-result-object v0

    return-object v0
.end method

.method public flush()V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, LT0/j;->f:J

    .line 4
    .line 5
    iput-wide v0, p0, LT0/j;->e:J

    .line 6
    .line 7
    :goto_0
    iget-object v0, p0, LT0/j;->c:Ljava/util/ArrayDeque;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, LT0/j;->a:Ljava/util/ArrayDeque;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, LT0/h;

    .line 22
    .line 23
    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, LT0/h;

    .line 28
    .line 29
    invoke-virtual {v0}, Lu0/f;->clear()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, LT0/j;->d:LT0/h;

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {v0}, Lu0/f;->clear()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, LT0/j;->d:LT0/h;

    .line 48
    .line 49
    :cond_1
    return-void
.end method

.method public final getAvailableOutputBuffer()LS0/n;
    .locals 1

    .line 1
    iget-object v0, p0, LT0/j;->b:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, LS0/n;

    .line 8
    .line 9
    return-object v0
.end method

.method public final getPositionUs()J
    .locals 2

    .line 1
    iget-wide v0, p0, LT0/j;->e:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public abstract isNewSubtitleDataAvailable()Z
.end method

.method public queueInputBuffer(LS0/m;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/extractor/text/SubtitleDecoderException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, LT0/j;->d:LT0/h;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, LP3/v;->checkArgument(Z)V

    .line 3
    check-cast p1, LT0/h;

    .line 4
    invoke-virtual {p1}, Lu0/a;->isEndOfStream()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p1, Lu0/f;->timeUs:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    iget-wide v2, p0, LT0/j;->g:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 5
    invoke-virtual {p1}, Lu0/f;->clear()V

    .line 6
    iget-object v0, p0, LT0/j;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7
    :cond_1
    iget-wide v0, p0, LT0/j;->f:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, LT0/j;->f:J

    .line 8
    iput-wide v0, p1, LT0/h;->e:J

    .line 9
    iget-object v0, p0, LT0/j;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :goto_1
    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, LT0/j;->d:LT0/h;

    return-void
.end method

.method public bridge synthetic queueInputBuffer(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/decoder/DecoderException;
        }
    .end annotation

    .line 1
    check-cast p1, LS0/m;

    invoke-virtual {p0, p1}, LT0/j;->queueInputBuffer(LS0/m;)V

    return-void
.end method

.method public release()V
    .locals 0

    .line 1
    return-void
.end method

.method public releaseOutputBuffer(LS0/n;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, LS0/n;->clear()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LT0/j;->b:Ljava/util/ArrayDeque;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setOutputStartTimeUs(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, LT0/j;->g:J

    .line 2
    .line 3
    return-void
.end method

.method public setPositionUs(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, LT0/j;->e:J

    .line 2
    .line 3
    return-void
.end method
