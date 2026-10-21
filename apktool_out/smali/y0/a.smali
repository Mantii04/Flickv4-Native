.class public final Ly0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv0/C;


# instance fields
.field public final a:Landroidx/media3/common/util/ParsableByteArray;

.field public final b:Lv0/i0;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Ly0/a;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 11
    .line 12
    new-instance v0, Lv0/i0;

    .line 13
    .line 14
    const/4 v1, -0x1

    .line 15
    const-string v2, "image/avif"

    .line 16
    .line 17
    invoke-direct {v0, v1, v1, v2}, Lv0/i0;-><init>(IILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Ly0/a;->b:Lv0/i0;

    .line 21
    .line 22
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
    .locals 1

    .line 1
    iget-object v0, p0, Ly0/a;->b:Lv0/i0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lv0/i0;->init(Lv0/F;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public read(Lv0/D;Lv0/c0;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ly0/a;->b:Lv0/i0;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lv0/i0;->read(Lv0/D;Lv0/c0;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public release()V
    .locals 0

    .line 1
    return-void
.end method

.method public seek(JJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Ly0/a;->b:Lv0/i0;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lv0/i0;->seek(JJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public sniff(Lv0/D;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-interface {p1, v0}, Lv0/D;->advancePeekPosition(I)V

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, Ly0/a;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-interface {p1, v2, v3, v0}, Lv0/D;->peekFully([BII)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    .line 19
    .line 20
    .line 21
    move-result-wide v4

    .line 22
    const v2, 0x66747970

    .line 23
    .line 24
    .line 25
    int-to-long v6, v2

    .line 26
    cmp-long v2, v4, v6

    .line 27
    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-interface {p1, v2, v3, v0}, Lv0/D;->peekFully([BII)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    const p1, 0x61766966

    .line 45
    .line 46
    .line 47
    int-to-long v4, p1

    .line 48
    cmp-long p1, v0, v4

    .line 49
    .line 50
    if-nez p1, :cond_0

    .line 51
    .line 52
    const/4 p1, 0x1

    .line 53
    return p1

    .line 54
    :cond_0
    return v3
.end method
