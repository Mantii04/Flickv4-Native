.class public final Le6/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le6/m;


# instance fields
.field public final b:Le6/J;

.field public final e:Le6/l;

.field public f:Z


# direct methods
.method public constructor <init>(Le6/J;)V
    .locals 1

    .line 1
    const-string v0, "sink"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Le6/D;->b:Le6/J;

    .line 10
    .line 11
    new-instance p1, Le6/l;

    .line 12
    .line 13
    invoke-direct {p1}, Le6/l;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Le6/D;->e:Le6/l;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public close()V
    .locals 6

    .line 1
    iget-object v0, p0, Le6/D;->b:Le6/J;

    .line 2
    .line 3
    iget-object v1, p0, Le6/D;->e:Le6/l;

    .line 4
    .line 5
    iget-boolean v2, p0, Le6/D;->f:Z

    .line 6
    .line 7
    if-nez v2, :cond_3

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {v1}, Le6/l;->size()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    const-wide/16 v4, 0x0

    .line 14
    .line 15
    cmp-long v2, v2, v4

    .line 16
    .line 17
    if-lez v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1}, Le6/l;->size()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    invoke-interface {v0, v1, v2, v3}, Le6/J;->write(Le6/l;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 30
    :goto_1
    :try_start_1
    invoke-interface {v0}, Le6/J;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 31
    .line 32
    .line 33
    goto :goto_2

    .line 34
    :catchall_1
    move-exception v0

    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    move-object v1, v0

    .line 38
    :cond_1
    :goto_2
    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Le6/D;->f:Z

    .line 40
    .line 41
    if-nez v1, :cond_2

    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_2
    throw v1

    .line 45
    :cond_3
    :goto_3
    return-void
.end method

.method public emit()Le6/m;
    .locals 5

    .line 1
    iget-boolean v0, p0, Le6/D;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Le6/D;->e:Le6/l;

    .line 6
    .line 7
    invoke-virtual {v0}, Le6/l;->size()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    const-wide/16 v3, 0x0

    .line 12
    .line 13
    cmp-long v3, v1, v3

    .line 14
    .line 15
    if-lez v3, :cond_0

    .line 16
    .line 17
    iget-object v3, p0, Le6/D;->b:Le6/J;

    .line 18
    .line 19
    invoke-interface {v3, v0, v1, v2}, Le6/J;->write(Le6/l;J)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-object p0

    .line 23
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v1, "closed"

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v0
.end method

.method public emitCompleteSegments()Le6/m;
    .locals 5

    .line 1
    iget-boolean v0, p0, Le6/D;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Le6/D;->e:Le6/l;

    .line 6
    .line 7
    invoke-virtual {v0}, Le6/l;->completeSegmentByteCount()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    const-wide/16 v3, 0x0

    .line 12
    .line 13
    cmp-long v3, v1, v3

    .line 14
    .line 15
    if-lez v3, :cond_0

    .line 16
    .line 17
    iget-object v3, p0, Le6/D;->b:Le6/J;

    .line 18
    .line 19
    invoke-interface {v3, v0, v1, v2}, Le6/J;->write(Le6/l;J)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-object p0

    .line 23
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v1, "closed"

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v0
.end method

.method public flush()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Le6/D;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Le6/D;->e:Le6/l;

    .line 6
    .line 7
    invoke-virtual {v0}, Le6/l;->size()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    const-wide/16 v3, 0x0

    .line 12
    .line 13
    cmp-long v1, v1, v3

    .line 14
    .line 15
    iget-object v2, p0, Le6/D;->b:Le6/J;

    .line 16
    .line 17
    if-lez v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Le6/l;->size()J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    invoke-interface {v2, v0, v3, v4}, Le6/J;->write(Le6/l;J)V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-interface {v2}, Le6/J;->flush()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string v1, "closed"

    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v0
.end method

.method public getBuffer()Le6/l;
    .locals 1

    .line 1
    iget-object v0, p0, Le6/D;->e:Le6/l;

    .line 2
    .line 3
    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le6/D;->f:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    return v0
.end method

.method public timeout()Le6/O;
    .locals 1

    .line 1
    iget-object v0, p0, Le6/D;->b:Le6/J;

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
    const-string v1, "buffer("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Le6/D;->b:Le6/J;

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

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Le6/D;->f:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le6/D;->e:Le6/l;

    .line 3
    invoke-virtual {v0, p1}, Le6/l;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    .line 4
    invoke-virtual {p0}, Le6/D;->emitCompleteSegments()Le6/m;

    return p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Lokio/ByteString;)Le6/m;
    .locals 1

    const-string v0, "byteString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-boolean v0, p0, Le6/D;->f:Z

    if-nez v0, :cond_0

    .line 12
    iget-object v0, p0, Le6/D;->e:Le6/l;

    .line 13
    invoke-virtual {v0, p1}, Le6/l;->write(Lokio/ByteString;)Le6/l;

    .line 14
    invoke-virtual {p0}, Le6/D;->emitCompleteSegments()Le6/m;

    move-result-object p1

    return-object p1

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([B)Le6/m;
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-boolean v0, p0, Le6/D;->f:Z

    if-nez v0, :cond_0

    .line 17
    iget-object v0, p0, Le6/D;->e:Le6/l;

    .line 18
    invoke-virtual {v0, p1}, Le6/l;->write([B)Le6/l;

    .line 19
    invoke-virtual {p0}, Le6/D;->emitCompleteSegments()Le6/m;

    move-result-object p1

    return-object p1

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([BII)Le6/m;
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-boolean v0, p0, Le6/D;->f:Z

    if-nez v0, :cond_0

    .line 22
    iget-object v0, p0, Le6/D;->e:Le6/l;

    .line 23
    invoke-virtual {v0, p1, p2, p3}, Le6/l;->write([BII)Le6/l;

    .line 24
    invoke-virtual {p0}, Le6/D;->emitCompleteSegments()Le6/m;

    move-result-object p1

    return-object p1

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Le6/l;J)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-boolean v0, p0, Le6/D;->f:Z

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Le6/D;->e:Le6/l;

    .line 8
    invoke-virtual {v0, p1, p2, p3}, Le6/l;->write(Le6/l;J)V

    .line 9
    invoke-virtual {p0}, Le6/D;->emitCompleteSegments()Le6/m;

    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeAll(Le6/L;)J
    .locals 6

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    :goto_0
    iget-object v2, p0, Le6/D;->e:Le6/l;

    .line 9
    .line 10
    const-wide/16 v3, 0x2000

    .line 11
    .line 12
    invoke-interface {p1, v2, v3, v4}, Le6/L;->read(Le6/l;J)J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    const-wide/16 v4, -0x1

    .line 17
    .line 18
    cmp-long v4, v2, v4

    .line 19
    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    add-long/2addr v0, v2

    .line 23
    invoke-virtual {p0}, Le6/D;->emitCompleteSegments()Le6/m;

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-wide v0
.end method

.method public writeByte(I)Le6/m;
    .locals 1

    .line 1
    iget-boolean v0, p0, Le6/D;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Le6/D;->e:Le6/l;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Le6/l;->writeByte(I)Le6/l;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Le6/D;->emitCompleteSegments()Le6/m;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    const-string v0, "closed"

    .line 18
    .line 19
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1
.end method

.method public writeDecimalLong(J)Le6/m;
    .locals 1

    .line 1
    iget-boolean v0, p0, Le6/D;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Le6/D;->e:Le6/l;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Le6/l;->writeDecimalLong(J)Le6/l;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Le6/D;->emitCompleteSegments()Le6/m;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    const-string p2, "closed"

    .line 18
    .line 19
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1
.end method

.method public writeHexadecimalUnsignedLong(J)Le6/m;
    .locals 1

    .line 1
    iget-boolean v0, p0, Le6/D;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Le6/D;->e:Le6/l;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Le6/l;->writeHexadecimalUnsignedLong(J)Le6/l;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Le6/D;->emitCompleteSegments()Le6/m;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    const-string p2, "closed"

    .line 18
    .line 19
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1
.end method

.method public writeInt(I)Le6/m;
    .locals 1

    .line 1
    iget-boolean v0, p0, Le6/D;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Le6/D;->e:Le6/l;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Le6/l;->writeInt(I)Le6/l;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Le6/D;->emitCompleteSegments()Le6/m;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    const-string v0, "closed"

    .line 18
    .line 19
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1
.end method

.method public writeShort(I)Le6/m;
    .locals 1

    .line 1
    iget-boolean v0, p0, Le6/D;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Le6/D;->e:Le6/l;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Le6/l;->writeShort(I)Le6/l;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Le6/D;->emitCompleteSegments()Le6/m;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    const-string v0, "closed"

    .line 18
    .line 19
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1
.end method

.method public writeUtf8(Ljava/lang/String;)Le6/m;
    .locals 1

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Le6/D;->f:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le6/D;->e:Le6/l;

    .line 3
    invoke-virtual {v0, p1}, Le6/l;->writeUtf8(Ljava/lang/String;)Le6/l;

    .line 4
    invoke-virtual {p0}, Le6/D;->emitCompleteSegments()Le6/m;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeUtf8(Ljava/lang/String;II)Le6/m;
    .locals 1

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-boolean v0, p0, Le6/D;->f:Z

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Le6/D;->e:Le6/l;

    .line 8
    invoke-virtual {v0, p1, p2, p3}, Le6/l;->writeUtf8(Ljava/lang/String;II)Le6/l;

    .line 9
    invoke-virtual {p0}, Le6/D;->emitCompleteSegments()Le6/m;

    move-result-object p1

    return-object p1

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
