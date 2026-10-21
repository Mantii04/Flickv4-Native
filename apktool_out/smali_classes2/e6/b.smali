.class public abstract Le6/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Le6/i;

.field public static final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le6/i;

    .line 2
    .line 3
    invoke-direct {v0}, Le6/i;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Le6/b;->a:Le6/i;

    .line 7
    .line 8
    const v0, -0x499602d2

    .line 9
    .line 10
    .line 11
    sput v0, Le6/b;->b:I

    .line 12
    .line 13
    return-void
.end method

.method public static final arrayRangeEquals([BI[BII)Z
    .locals 4

    .line 1
    const-string v0, "a"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "b"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    move v1, v0

    .line 13
    :goto_0
    if-ge v1, p4, :cond_1

    .line 14
    .line 15
    add-int v2, v1, p1

    .line 16
    .line 17
    aget-byte v2, p0, v2

    .line 18
    .line 19
    add-int v3, v1, p3

    .line 20
    .line 21
    aget-byte v3, p2, v3

    .line 22
    .line 23
    if-eq v2, v3, :cond_0

    .line 24
    .line 25
    return v0

    .line 26
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p0, 0x1

    .line 30
    return p0
.end method

.method public static final checkOffsetAndCount(JJJ)V
    .locals 4

    .line 1
    or-long v0, p2, p4

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    cmp-long v0, p2, p0

    .line 10
    .line 11
    if-gtz v0, :cond_0

    .line 12
    .line 13
    sub-long v0, p0, p2

    .line 14
    .line 15
    cmp-long v0, v0, p4

    .line 16
    .line 17
    if-ltz v0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 21
    .line 22
    const-string v1, "size="

    .line 23
    .line 24
    const-string v2, " offset="

    .line 25
    .line 26
    invoke-static {p0, p1, v1, v2}, LA/i;->r(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p1, " byteCount="

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v0
.end method

.method public static final getDEFAULT__ByteString_size()I
    .locals 1

    .line 1
    sget v0, Le6/b;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public static final getDEFAULT__new_UnsafeCursor()Le6/i;
    .locals 1

    .line 1
    sget-object v0, Le6/b;->a:Le6/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final resolveDefaultParameter(Lokio/ByteString;I)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget v0, Le6/b;->b:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method public static final resolveDefaultParameter([BI)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget v0, Le6/b;->b:I

    if-ne p1, v0, :cond_0

    array-length p0, p0

    return p0

    :cond_0
    return p1
.end method

.method public static final resolveDefaultParameter(Le6/i;)Le6/i;
    .locals 1

    const-string v0, "unsafeCursor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Le6/b;->a:Le6/i;

    if-ne p0, v0, :cond_0

    new-instance p0, Le6/i;

    invoke-direct {p0}, Le6/i;-><init>()V

    :cond_0
    return-object p0
.end method

.method public static final reverseBytes(I)I
    .locals 2

    .line 2
    const/high16 v0, -0x1000000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x18

    const/high16 v1, 0xff0000

    and-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const v1, 0xff00

    and-int/2addr v1, p0

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method public static final reverseBytes(S)S
    .locals 1

    .line 1
    const v0, 0xff00

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x8

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public static final toHexString(B)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lf6/b;->getHEX_DIGIT_CHARS()[C

    move-result-object v0

    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    .line 2
    invoke-static {}, Lf6/b;->getHEX_DIGIT_CHARS()[C

    move-result-object v1

    and-int/lit8 p0, p0, 0xf

    .line 3
    aget-char p0, v1, p0

    const/4 v1, 0x2

    new-array v1, v1, [C

    const/4 v2, 0x0

    aput-char v0, v1, v2

    const/4 v0, 0x1

    aput-char p0, v1, v0

    .line 4
    invoke-static {v1}, LP5/p;->concatToString([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toHexString(I)Ljava/lang/String;
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/16 v3, 0x8

    if-nez p0, :cond_0

    .line 5
    const-string p0, "0"

    return-object p0

    .line 6
    :cond_0
    invoke-static {}, Lf6/b;->getHEX_DIGIT_CHARS()[C

    move-result-object v4

    shr-int/lit8 v5, p0, 0x1c

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    .line 7
    invoke-static {}, Lf6/b;->getHEX_DIGIT_CHARS()[C

    move-result-object v5

    shr-int/lit8 v6, p0, 0x18

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    .line 8
    invoke-static {}, Lf6/b;->getHEX_DIGIT_CHARS()[C

    move-result-object v6

    shr-int/lit8 v7, p0, 0x14

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    .line 9
    invoke-static {}, Lf6/b;->getHEX_DIGIT_CHARS()[C

    move-result-object v7

    shr-int/lit8 v8, p0, 0x10

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    .line 10
    invoke-static {}, Lf6/b;->getHEX_DIGIT_CHARS()[C

    move-result-object v8

    shr-int/lit8 v9, p0, 0xc

    and-int/lit8 v9, v9, 0xf

    aget-char v8, v8, v9

    .line 11
    invoke-static {}, Lf6/b;->getHEX_DIGIT_CHARS()[C

    move-result-object v9

    shr-int/lit8 v10, p0, 0x8

    and-int/lit8 v10, v10, 0xf

    aget-char v9, v9, v10

    .line 12
    invoke-static {}, Lf6/b;->getHEX_DIGIT_CHARS()[C

    move-result-object v10

    shr-int/lit8 v11, p0, 0x4

    and-int/lit8 v11, v11, 0xf

    aget-char v10, v10, v11

    .line 13
    invoke-static {}, Lf6/b;->getHEX_DIGIT_CHARS()[C

    move-result-object v11

    and-int/lit8 p0, p0, 0xf

    aget-char p0, v11, p0

    new-array v11, v3, [C

    aput-char v4, v11, v1

    aput-char v5, v11, v0

    const/4 v4, 0x2

    aput-char v6, v11, v4

    const/4 v4, 0x3

    aput-char v7, v11, v4

    aput-char v8, v11, v2

    const/4 v2, 0x5

    aput-char v9, v11, v2

    const/4 v2, 0x6

    aput-char v10, v11, v2

    const/4 v2, 0x7

    aput-char p0, v11, v2

    :goto_0
    if-ge v1, v3, :cond_1

    .line 14
    aget-char p0, v11, v1

    const/16 v2, 0x30

    if-ne p0, v2, :cond_1

    add-int/2addr v1, v0

    goto :goto_0

    .line 15
    :cond_1
    invoke-static {v11, v1, v3}, LP5/p;->concatToString([CII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
