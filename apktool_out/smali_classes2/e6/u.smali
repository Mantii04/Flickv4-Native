.class public final Le6/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le6/L;


# instance fields
.field public final b:Le6/n;

.field public final e:Ljava/util/zip/Inflater;

.field public f:I

.field public j:Z


# direct methods
.method public constructor <init>(Le6/L;Ljava/util/zip/Inflater;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Le6/w;->buffer(Le6/L;)Le6/n;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Le6/u;-><init>(Le6/n;Ljava/util/zip/Inflater;)V

    return-void
.end method

.method public constructor <init>(Le6/n;Ljava/util/zip/Inflater;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le6/u;->b:Le6/n;

    iput-object p2, p0, Le6/u;->e:Ljava/util/zip/Inflater;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le6/u;->j:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Le6/u;->e:Ljava/util/zip/Inflater;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Le6/u;->j:Z

    .line 13
    .line 14
    iget-object v0, p0, Le6/u;->b:Le6/n;

    .line 15
    .line 16
    invoke-interface {v0}, Le6/L;->close()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public read(Le6/l;J)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "sink"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Le6/u;->readOrInflate(Le6/l;J)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    cmp-long v2, v0, v2

    .line 13
    .line 14
    if-lez v2, :cond_0

    .line 15
    .line 16
    return-wide v0

    .line 17
    :cond_0
    iget-object v0, p0, Le6/u;->e:Ljava/util/zip/Inflater;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_3

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsDictionary()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    iget-object v0, p0, Le6/u;->b:Le6/n;

    .line 33
    .line 34
    invoke-interface {v0}, Le6/n;->exhausted()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    new-instance p1, Ljava/io/EOFException;

    .line 42
    .line 43
    const-string p2, "source exhausted prematurely"

    .line 44
    .line 45
    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1

    .line 49
    :cond_3
    :goto_1
    const-wide/16 p1, -0x1

    .line 50
    .line 51
    return-wide p1
.end method

.method public final readOrInflate(Le6/l;J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le6/u;->e:Ljava/util/zip/Inflater;

    .line 2
    .line 3
    const-string v1, "sink"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    cmp-long v3, p2, v1

    .line 11
    .line 12
    if-ltz v3, :cond_5

    .line 13
    .line 14
    iget-boolean v4, p0, Le6/u;->j:Z

    .line 15
    .line 16
    if-nez v4, :cond_4

    .line 17
    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const/4 v3, 0x1

    .line 22
    :try_start_0
    invoke-virtual {p1, v3}, Le6/l;->writableSegment$okio(I)Le6/H;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    iget v4, v3, Le6/H;->c:I

    .line 27
    .line 28
    rsub-int v4, v4, 0x2000

    .line 29
    .line 30
    int-to-long v4, v4

    .line 31
    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 32
    .line 33
    .line 34
    move-result-wide p2

    .line 35
    long-to-int p2, p2

    .line 36
    invoke-virtual {p0}, Le6/u;->refill()Z

    .line 37
    .line 38
    .line 39
    iget-object p3, v3, Le6/H;->a:[B

    .line 40
    .line 41
    iget v4, v3, Le6/H;->c:I

    .line 42
    .line 43
    invoke-virtual {v0, p3, v4, p2}, Ljava/util/zip/Inflater;->inflate([BII)I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    iget p3, p0, Le6/u;->f:I

    .line 48
    .line 49
    if-nez p3, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->getRemaining()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    sub-int/2addr p3, v0

    .line 57
    iget v0, p0, Le6/u;->f:I

    .line 58
    .line 59
    sub-int/2addr v0, p3

    .line 60
    iput v0, p0, Le6/u;->f:I

    .line 61
    .line 62
    iget-object v0, p0, Le6/u;->b:Le6/n;

    .line 63
    .line 64
    int-to-long v4, p3

    .line 65
    invoke-interface {v0, v4, v5}, Le6/n;->skip(J)V

    .line 66
    .line 67
    .line 68
    :goto_0
    if-lez p2, :cond_2

    .line 69
    .line 70
    iget p3, v3, Le6/H;->c:I

    .line 71
    .line 72
    add-int/2addr p3, p2

    .line 73
    iput p3, v3, Le6/H;->c:I

    .line 74
    .line 75
    invoke-virtual {p1}, Le6/l;->size()J

    .line 76
    .line 77
    .line 78
    move-result-wide v0

    .line 79
    int-to-long p2, p2

    .line 80
    add-long/2addr v0, p2

    .line 81
    invoke-virtual {p1, v0, v1}, Le6/l;->setSize$okio(J)V

    .line 82
    .line 83
    .line 84
    return-wide p2

    .line 85
    :catch_0
    move-exception p1

    .line 86
    goto :goto_2

    .line 87
    :cond_2
    iget p2, v3, Le6/H;->b:I

    .line 88
    .line 89
    iget p3, v3, Le6/H;->c:I

    .line 90
    .line 91
    if-ne p2, p3, :cond_3

    .line 92
    .line 93
    invoke-virtual {v3}, Le6/H;->pop()Le6/H;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    iput-object p2, p1, Le6/l;->b:Le6/H;

    .line 98
    .line 99
    invoke-static {v3}, Le6/I;->recycle(Le6/H;)V
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .line 101
    .line 102
    :cond_3
    :goto_1
    return-wide v1

    .line 103
    :goto_2
    new-instance p2, Ljava/io/IOException;

    .line 104
    .line 105
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 106
    .line 107
    .line 108
    throw p2

    .line 109
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 110
    .line 111
    const-string p2, "closed"

    .line 112
    .line 113
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p1

    .line 117
    :cond_5
    const-string p1, "byteCount < 0: "

    .line 118
    .line 119
    invoke-static {p1, p2, p3}, LA/i;->i(Ljava/lang/String;J)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 124
    .line 125
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p2
.end method

.method public final refill()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le6/u;->e:Ljava/util/zip/Inflater;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsInput()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    iget-object v1, p0, Le6/u;->b:Le6/n;

    .line 12
    .line 13
    invoke-interface {v1}, Le6/n;->exhausted()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    return v0

    .line 21
    :cond_1
    invoke-interface {v1}, Le6/n;->getBuffer()Le6/l;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v1, v1, Le6/l;->b:Le6/H;

    .line 26
    .line 27
    invoke-static {v1}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget v3, v1, Le6/H;->c:I

    .line 31
    .line 32
    iget v4, v1, Le6/H;->b:I

    .line 33
    .line 34
    sub-int/2addr v3, v4

    .line 35
    iput v3, p0, Le6/u;->f:I

    .line 36
    .line 37
    iget-object v1, v1, Le6/H;->a:[B

    .line 38
    .line 39
    invoke-virtual {v0, v1, v4, v3}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 40
    .line 41
    .line 42
    return v2
.end method

.method public timeout()Le6/O;
    .locals 1

    .line 1
    iget-object v0, p0, Le6/u;->b:Le6/n;

    .line 2
    .line 3
    invoke-interface {v0}, Le6/L;->timeout()Le6/O;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
