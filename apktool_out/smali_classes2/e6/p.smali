.class public final Le6/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le6/J;


# instance fields
.field public final b:Le6/m;

.field public final e:Ljava/util/zip/Deflater;

.field public f:Z


# direct methods
.method public constructor <init>(Le6/J;Ljava/util/zip/Deflater;)V
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Le6/w;->buffer(Le6/J;)Le6/m;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Le6/p;-><init>(Le6/m;Ljava/util/zip/Deflater;)V

    return-void
.end method

.method public constructor <init>(Le6/m;Ljava/util/zip/Deflater;)V
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le6/p;->b:Le6/m;

    iput-object p2, p0, Le6/p;->e:Ljava/util/zip/Deflater;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Le6/p;->b:Le6/m;

    .line 2
    .line 3
    invoke-interface {v0}, Le6/m;->getBuffer()Le6/l;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    :cond_0
    :goto_0
    const/4 v2, 0x1

    .line 8
    invoke-virtual {v1, v2}, Le6/l;->writableSegment$okio(I)Le6/H;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    iget-object v3, p0, Le6/p;->e:Ljava/util/zip/Deflater;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    :try_start_0
    iget-object v4, v2, Le6/H;->a:[B

    .line 17
    .line 18
    iget v5, v2, Le6/H;->c:I

    .line 19
    .line 20
    rsub-int v6, v5, 0x2000

    .line 21
    .line 22
    const/4 v7, 0x2

    .line 23
    invoke-virtual {v3, v4, v5, v6, v7}, Ljava/util/zip/Deflater;->deflate([BIII)I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    goto :goto_1

    .line 28
    :catch_0
    move-exception p1

    .line 29
    goto :goto_2

    .line 30
    :cond_1
    iget-object v4, v2, Le6/H;->a:[B

    .line 31
    .line 32
    iget v5, v2, Le6/H;->c:I

    .line 33
    .line 34
    rsub-int v6, v5, 0x2000

    .line 35
    .line 36
    invoke-virtual {v3, v4, v5, v6}, Ljava/util/zip/Deflater;->deflate([BII)I

    .line 37
    .line 38
    .line 39
    move-result v4
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_1
    if-lez v4, :cond_2

    .line 41
    .line 42
    iget v3, v2, Le6/H;->c:I

    .line 43
    .line 44
    add-int/2addr v3, v4

    .line 45
    iput v3, v2, Le6/H;->c:I

    .line 46
    .line 47
    invoke-virtual {v1}, Le6/l;->size()J

    .line 48
    .line 49
    .line 50
    move-result-wide v2

    .line 51
    int-to-long v4, v4

    .line 52
    add-long/2addr v2, v4

    .line 53
    invoke-virtual {v1, v2, v3}, Le6/l;->setSize$okio(J)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v0}, Le6/m;->emitCompleteSegments()Le6/m;

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {v3}, Ljava/util/zip/Deflater;->needsInput()Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_0

    .line 65
    .line 66
    iget p1, v2, Le6/H;->b:I

    .line 67
    .line 68
    iget v0, v2, Le6/H;->c:I

    .line 69
    .line 70
    if-ne p1, v0, :cond_3

    .line 71
    .line 72
    invoke-virtual {v2}, Le6/H;->pop()Le6/H;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iput-object p1, v1, Le6/l;->b:Le6/H;

    .line 77
    .line 78
    invoke-static {v2}, Le6/I;->recycle(Le6/H;)V

    .line 79
    .line 80
    .line 81
    :cond_3
    return-void

    .line 82
    :goto_2
    new-instance v0, Ljava/io/IOException;

    .line 83
    .line 84
    const-string v1, "Deflater already closed"

    .line 85
    .line 86
    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    .line 88
    .line 89
    throw v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le6/p;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_3

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Le6/p;->finishDeflate$okio()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    :goto_0
    :try_start_1
    iget-object v1, p0, Le6/p;->e:Ljava/util/zip/Deflater;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 15
    .line 16
    .line 17
    goto :goto_1

    .line 18
    :catchall_1
    move-exception v1

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    move-object v0, v1

    .line 22
    :cond_1
    :goto_1
    :try_start_2
    iget-object v1, p0, Le6/p;->b:Le6/m;

    .line 23
    .line 24
    invoke-interface {v1}, Le6/J;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 25
    .line 26
    .line 27
    goto :goto_2

    .line 28
    :catchall_2
    move-exception v1

    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    move-object v0, v1

    .line 32
    :cond_2
    :goto_2
    const/4 v1, 0x1

    .line 33
    iput-boolean v1, p0, Le6/p;->f:Z

    .line 34
    .line 35
    if-nez v0, :cond_3

    .line 36
    .line 37
    :goto_3
    return-void

    .line 38
    :cond_3
    throw v0
.end method

.method public final finishDeflate$okio()V
    .locals 1

    .line 1
    iget-object v0, p0, Le6/p;->e:Ljava/util/zip/Deflater;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Le6/p;->a(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Le6/p;->a(Z)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Le6/p;->b:Le6/m;

    .line 6
    .line 7
    invoke-interface {v0}, Le6/m;->flush()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public timeout()Le6/O;
    .locals 1

    .line 1
    iget-object v0, p0, Le6/p;->b:Le6/m;

    .line 2
    .line 3
    invoke-interface {v0}, Le6/J;->timeout()Le6/O;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "DeflaterSink("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Le6/p;->b:Le6/m;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x29

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method public write(Le6/l;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Le6/l;->size()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    const-wide/16 v3, 0x0

    .line 11
    .line 12
    move-wide v5, p2

    .line 13
    invoke-static/range {v1 .. v6}, Le6/b;->checkOffsetAndCount(JJJ)V

    .line 14
    .line 15
    .line 16
    :goto_0
    const-wide/16 v0, 0x0

    .line 17
    .line 18
    cmp-long v0, p2, v0

    .line 19
    .line 20
    if-lez v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p1, Le6/l;->b:Le6/H;

    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget v1, v0, Le6/H;->c:I

    .line 28
    .line 29
    iget v2, v0, Le6/H;->b:I

    .line 30
    .line 31
    sub-int/2addr v1, v2

    .line 32
    int-to-long v1, v1

    .line 33
    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 34
    .line 35
    .line 36
    move-result-wide v1

    .line 37
    long-to-int v1, v1

    .line 38
    iget-object v2, v0, Le6/H;->a:[B

    .line 39
    .line 40
    iget v3, v0, Le6/H;->b:I

    .line 41
    .line 42
    iget-object v4, p0, Le6/p;->e:Ljava/util/zip/Deflater;

    .line 43
    .line 44
    invoke-virtual {v4, v2, v3, v1}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 45
    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    invoke-virtual {p0, v2}, Le6/p;->a(Z)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Le6/l;->size()J

    .line 52
    .line 53
    .line 54
    move-result-wide v2

    .line 55
    int-to-long v4, v1

    .line 56
    sub-long/2addr v2, v4

    .line 57
    invoke-virtual {p1, v2, v3}, Le6/l;->setSize$okio(J)V

    .line 58
    .line 59
    .line 60
    iget v2, v0, Le6/H;->b:I

    .line 61
    .line 62
    add-int/2addr v2, v1

    .line 63
    iput v2, v0, Le6/H;->b:I

    .line 64
    .line 65
    iget v1, v0, Le6/H;->c:I

    .line 66
    .line 67
    if-ne v2, v1, :cond_0

    .line 68
    .line 69
    invoke-virtual {v0}, Le6/H;->pop()Le6/H;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iput-object v1, p1, Le6/l;->b:Le6/H;

    .line 74
    .line 75
    invoke-static {v0}, Le6/I;->recycle(Le6/H;)V

    .line 76
    .line 77
    .line 78
    :cond_0
    sub-long/2addr p2, v4

    .line 79
    goto :goto_0

    .line 80
    :cond_1
    return-void
.end method
