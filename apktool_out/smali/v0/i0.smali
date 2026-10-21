.class public final Lv0/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv0/C;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:Lv0/F;

.field public g:Lv0/r0;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lv0/i0;->a:I

    .line 5
    .line 6
    iput p2, p0, Lv0/i0;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lv0/i0;->c:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final synthetic getSniffFailureDetails()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {p0}, Lv0/B;->a(Lv0/C;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getUnderlyingImplementation()Lv0/C;
    .locals 1

    .line 1
    invoke-static {p0}, Lv0/B;->b(Lv0/C;)Lv0/C;

    move-result-object v0

    return-object v0
.end method

.method public init(Lv0/F;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lv0/i0;->f:Lv0/F;

    .line 2
    .line 3
    const/16 v0, 0x400

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-interface {p1, v0, v1}, Lv0/F;->track(II)Lv0/r0;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lv0/i0;->g:Lv0/r0;

    .line 11
    .line 12
    new-instance v0, Landroidx/media3/common/Format$Builder;

    .line 13
    .line 14
    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lv0/i0;->c:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {p1, v0}, Lv0/r0;->format(Landroidx/media3/common/Format;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lv0/i0;->f:Lv0/F;

    .line 35
    .line 36
    invoke-interface {p1}, Lv0/F;->endTracks()V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lv0/i0;->f:Lv0/F;

    .line 40
    .line 41
    new-instance v0, Lv0/j0;

    .line 42
    .line 43
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    invoke-direct {v0, v1, v2}, Lv0/j0;-><init>(J)V

    .line 49
    .line 50
    .line 51
    invoke-interface {p1, v0}, Lv0/F;->seekMap(Lv0/g0;)V

    .line 52
    .line 53
    .line 54
    const/4 p1, 0x1

    .line 55
    iput p1, p0, Lv0/i0;->e:I

    .line 56
    .line 57
    return-void
.end method

.method public read(Lv0/D;Lv0/c0;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget p2, p0, Lv0/i0;->e:I

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    const/4 v1, 0x2

    .line 5
    const/4 v2, 0x1

    .line 6
    if-eq p2, v2, :cond_1

    .line 7
    .line 8
    if-ne p2, v1, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 14
    .line 15
    .line 16
    throw p1

    .line 17
    :cond_1
    iget-object p2, p0, Lv0/i0;->g:Lv0/r0;

    .line 18
    .line 19
    invoke-static {p2}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    check-cast p2, Lv0/r0;

    .line 24
    .line 25
    const/16 v3, 0x400

    .line 26
    .line 27
    invoke-interface {p2, p1, v3, v2}, Lv0/r0;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    const/4 p2, 0x0

    .line 32
    if-ne p1, v0, :cond_2

    .line 33
    .line 34
    iput v1, p0, Lv0/i0;->e:I

    .line 35
    .line 36
    iget-object v2, p0, Lv0/i0;->g:Lv0/r0;

    .line 37
    .line 38
    iget v6, p0, Lv0/i0;->d:I

    .line 39
    .line 40
    const/4 v7, 0x0

    .line 41
    const/4 v8, 0x0

    .line 42
    const-wide/16 v3, 0x0

    .line 43
    .line 44
    const/4 v5, 0x1

    .line 45
    invoke-interface/range {v2 .. v8}, Lv0/r0;->sampleMetadata(JIIILv0/q0;)V

    .line 46
    .line 47
    .line 48
    iput p2, p0, Lv0/i0;->d:I

    .line 49
    .line 50
    return p2

    .line 51
    :cond_2
    iget v0, p0, Lv0/i0;->d:I

    .line 52
    .line 53
    add-int/2addr v0, p1

    .line 54
    iput v0, p0, Lv0/i0;->d:I

    .line 55
    .line 56
    return p2
.end method

.method public release()V
    .locals 0

    .line 1
    return-void
.end method

.method public seek(JJ)V
    .locals 0

    .line 1
    const-wide/16 p3, 0x0

    .line 2
    .line 3
    cmp-long p1, p1, p3

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    iget p1, p0, Lv0/i0;->e:I

    .line 9
    .line 10
    if-ne p1, p2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    return-void

    .line 14
    :cond_1
    :goto_0
    iput p2, p0, Lv0/i0;->e:I

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lv0/i0;->d:I

    .line 18
    .line 19
    return-void
.end method

.method public sniff(Lv0/D;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget v2, p0, Lv0/i0;->b:I

    .line 4
    .line 5
    iget v3, p0, Lv0/i0;->a:I

    .line 6
    .line 7
    const/4 v4, -0x1

    .line 8
    if-eq v3, v4, :cond_0

    .line 9
    .line 10
    if-eq v2, v4, :cond_0

    .line 11
    .line 12
    move v4, v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v4, v1

    .line 15
    :goto_0
    invoke-static {v4}, LP3/v;->checkState(Z)V

    .line 16
    .line 17
    .line 18
    new-instance v4, Landroidx/media3/common/util/ParsableByteArray;

    .line 19
    .line 20
    invoke-direct {v4, v2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-interface {p1, v5, v1, v2}, Lv0/D;->peekFully([BII)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-ne p1, v3, :cond_1

    .line 35
    .line 36
    return v0

    .line 37
    :cond_1
    return v1
.end method
