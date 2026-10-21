.class public final Ld1/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Ld1/f;->a:I

    .line 5
    .line 6
    iput-wide p2, p0, Ld1/f;->b:J

    .line 7
    .line 8
    return-void
.end method

.method public static peek(Lv0/D;Landroidx/media3/common/util/ParsableByteArray;)Ld1/f;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/16 v2, 0x8

    .line 7
    .line 8
    invoke-interface {p0, v0, v1, v2}, Lv0/D;->peekFully([BII)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    new-instance p1, Ld1/f;

    .line 23
    .line 24
    invoke-direct {p1, p0, v0, v1}, Ld1/f;-><init>(IJ)V

    .line 25
    .line 26
    .line 27
    return-object p1
.end method
