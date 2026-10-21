.class public final LN0/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:[J


# instance fields
.field public final a:[B

.field public b:I

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v0, v0, [J

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, LN0/j;->d:[J

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 8
        0x80
        0x40
        0x20
        0x10
        0x8
        0x4
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x8

    .line 5
    .line 6
    new-array v0, v0, [B

    .line 7
    .line 8
    iput-object v0, p0, LN0/j;->a:[B

    .line 9
    .line 10
    return-void
.end method

.method public static assembleVarint([BIZ)J
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-byte v0, p0, v0

    .line 3
    .line 4
    int-to-long v0, v0

    .line 5
    const-wide/16 v2, 0xff

    .line 6
    .line 7
    and-long/2addr v0, v2

    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    sget-object p2, LN0/j;->d:[J

    .line 11
    .line 12
    add-int/lit8 v4, p1, -0x1

    .line 13
    .line 14
    aget-wide v4, p2, v4

    .line 15
    .line 16
    not-long v4, v4

    .line 17
    and-long/2addr v0, v4

    .line 18
    :cond_0
    const/4 p2, 0x1

    .line 19
    :goto_0
    if-ge p2, p1, :cond_1

    .line 20
    .line 21
    const/16 v4, 0x8

    .line 22
    .line 23
    shl-long/2addr v0, v4

    .line 24
    aget-byte v4, p0, p2

    .line 25
    .line 26
    int-to-long v4, v4

    .line 27
    and-long/2addr v4, v2

    .line 28
    or-long/2addr v0, v4

    .line 29
    add-int/lit8 p2, p2, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return-wide v0
.end method

.method public static parseUnsignedVarintLength(I)I
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/16 v1, 0x8

    .line 3
    .line 4
    if-ge v0, v1, :cond_1

    .line 5
    .line 6
    sget-object v1, LN0/j;->d:[J

    .line 7
    .line 8
    aget-wide v2, v1, v0

    .line 9
    .line 10
    int-to-long v4, p0

    .line 11
    and-long/2addr v2, v4

    .line 12
    const-wide/16 v4, 0x0

    .line 13
    .line 14
    cmp-long v1, v2, v4

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    add-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    return v0

    .line 21
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 p0, -0x1

    .line 25
    return p0
.end method


# virtual methods
.method public getLastLength()I
    .locals 1

    .line 1
    iget v0, p0, LN0/j;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public readUnsignedVarint(Lv0/D;ZZI)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, LN0/j;->b:I

    .line 2
    .line 3
    iget-object v1, p0, LN0/j;->a:[B

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    invoke-interface {p1, v1, v2, v3, p2}, Lv0/D;->readFully([BIIZ)Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    const-wide/16 p1, -0x1

    .line 16
    .line 17
    return-wide p1

    .line 18
    :cond_0
    aget-byte p2, v1, v2

    .line 19
    .line 20
    and-int/lit16 p2, p2, 0xff

    .line 21
    .line 22
    invoke-static {p2}, LN0/j;->parseUnsignedVarintLength(I)I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    iput p2, p0, LN0/j;->c:I

    .line 27
    .line 28
    const/4 v0, -0x1

    .line 29
    if-eq p2, v0, :cond_1

    .line 30
    .line 31
    iput v3, p0, LN0/j;->b:I

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    const-string p2, "No valid varint length mask found"

    .line 37
    .line 38
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :cond_2
    :goto_0
    iget p2, p0, LN0/j;->c:I

    .line 43
    .line 44
    if-le p2, p4, :cond_3

    .line 45
    .line 46
    iput v2, p0, LN0/j;->b:I

    .line 47
    .line 48
    const-wide/16 p1, -0x2

    .line 49
    .line 50
    return-wide p1

    .line 51
    :cond_3
    if-eq p2, v3, :cond_4

    .line 52
    .line 53
    sub-int/2addr p2, v3

    .line 54
    invoke-interface {p1, v1, v3, p2}, Lv0/D;->readFully([BII)V

    .line 55
    .line 56
    .line 57
    :cond_4
    iput v2, p0, LN0/j;->b:I

    .line 58
    .line 59
    iget p1, p0, LN0/j;->c:I

    .line 60
    .line 61
    invoke-static {v1, p1, p3}, LN0/j;->assembleVarint([BIZ)J

    .line 62
    .line 63
    .line 64
    move-result-wide p1

    .line 65
    return-wide p1
.end method

.method public reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, LN0/j;->b:I

    .line 3
    .line 4
    iput v0, p0, LN0/j;->c:I

    .line 5
    .line 6
    return-void
.end method
