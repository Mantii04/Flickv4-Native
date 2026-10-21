.class public final LP0/L;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LP0/o;

.field public b:J

.field public c:J

.field public d:I

.field public e:I

.field public f:[J

.field public g:[I

.field public h:[I

.field public i:[J

.field public j:[Z

.field public k:Z

.field public l:[Z

.field public m:LP0/K;

.field public final n:Landroidx/media3/common/util/ParsableByteArray;

.field public o:Z

.field public p:J

.field public q:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v1, v0, [J

    .line 6
    .line 7
    iput-object v1, p0, LP0/L;->f:[J

    .line 8
    .line 9
    new-array v1, v0, [I

    .line 10
    .line 11
    iput-object v1, p0, LP0/L;->g:[I

    .line 12
    .line 13
    new-array v1, v0, [I

    .line 14
    .line 15
    iput-object v1, p0, LP0/L;->h:[I

    .line 16
    .line 17
    new-array v1, v0, [J

    .line 18
    .line 19
    iput-object v1, p0, LP0/L;->i:[J

    .line 20
    .line 21
    new-array v1, v0, [Z

    .line 22
    .line 23
    iput-object v1, p0, LP0/L;->j:[Z

    .line 24
    .line 25
    new-array v0, v0, [Z

    .line 26
    .line 27
    iput-object v0, p0, LP0/L;->l:[Z

    .line 28
    .line 29
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 30
    .line 31
    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, LP0/L;->n:Landroidx/media3/common/util/ParsableByteArray;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public fillEncryptionData(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 4

    .line 4
    iget-object v0, p0, LP0/L;->n:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v1

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 5
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 6
    iput-boolean v3, p0, LP0/L;->o:Z

    return-void
.end method

.method public fillEncryptionData(Lv0/D;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, LP0/L;->n:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v1

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {p1, v1, v3, v2}, Lv0/D;->readFully([BII)V

    .line 2
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 3
    iput-boolean v3, p0, LP0/L;->o:Z

    return-void
.end method

.method public getSamplePresentationTimeUs(I)J
    .locals 3

    .line 1
    iget-object v0, p0, LP0/L;->i:[J

    .line 2
    .line 3
    aget-wide v1, v0, p1

    .line 4
    .line 5
    return-wide v1
.end method

.method public initEncryptionData(I)V
    .locals 1

    .line 1
    iget-object v0, p0, LP0/L;->n:Landroidx/media3/common/util/ParsableByteArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, LP0/L;->k:Z

    .line 8
    .line 9
    iput-boolean p1, p0, LP0/L;->o:Z

    .line 10
    .line 11
    return-void
.end method

.method public initTables(II)V
    .locals 1

    .line 1
    iput p1, p0, LP0/L;->d:I

    .line 2
    .line 3
    iput p2, p0, LP0/L;->e:I

    .line 4
    .line 5
    iget-object v0, p0, LP0/L;->g:[I

    .line 6
    .line 7
    array-length v0, v0

    .line 8
    if-ge v0, p1, :cond_0

    .line 9
    .line 10
    new-array v0, p1, [J

    .line 11
    .line 12
    iput-object v0, p0, LP0/L;->f:[J

    .line 13
    .line 14
    new-array p1, p1, [I

    .line 15
    .line 16
    iput-object p1, p0, LP0/L;->g:[I

    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, LP0/L;->h:[I

    .line 19
    .line 20
    array-length p1, p1

    .line 21
    if-ge p1, p2, :cond_1

    .line 22
    .line 23
    mul-int/lit8 p2, p2, 0x7d

    .line 24
    .line 25
    div-int/lit8 p2, p2, 0x64

    .line 26
    .line 27
    new-array p1, p2, [I

    .line 28
    .line 29
    iput-object p1, p0, LP0/L;->h:[I

    .line 30
    .line 31
    new-array p1, p2, [J

    .line 32
    .line 33
    iput-object p1, p0, LP0/L;->i:[J

    .line 34
    .line 35
    new-array p1, p2, [Z

    .line 36
    .line 37
    iput-object p1, p0, LP0/L;->j:[Z

    .line 38
    .line 39
    new-array p1, p2, [Z

    .line 40
    .line 41
    iput-object p1, p0, LP0/L;->l:[Z

    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public reset()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, LP0/L;->d:I

    .line 3
    .line 4
    const-wide/16 v1, 0x0

    .line 5
    .line 6
    iput-wide v1, p0, LP0/L;->p:J

    .line 7
    .line 8
    iput-boolean v0, p0, LP0/L;->q:Z

    .line 9
    .line 10
    iput-boolean v0, p0, LP0/L;->k:Z

    .line 11
    .line 12
    iput-boolean v0, p0, LP0/L;->o:Z

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, LP0/L;->m:LP0/K;

    .line 16
    .line 17
    return-void
.end method

.method public sampleHasSubsampleEncryptionTable(I)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LP0/L;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, LP0/L;->l:[Z

    .line 6
    .line 7
    aget-boolean p1, v0, p1

    .line 8
    .line 9
    if-eqz p1, :cond_0

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
