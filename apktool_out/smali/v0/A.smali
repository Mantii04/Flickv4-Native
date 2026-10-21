.class public abstract Lv0/A;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[I

.field public static final b:[I

.field public static final c:[I

.field public static final d:[I

.field public static final e:[I

.field public static final f:[I

.field public static final g:[I

.field public static final h:[I

.field public static final i:[I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x4

    .line 5
    const/4 v3, 0x5

    .line 6
    const/4 v4, 0x6

    .line 7
    const/16 v5, 0x10

    .line 8
    .line 9
    new-array v6, v5, [I

    .line 10
    .line 11
    fill-array-data v6, :array_0

    .line 12
    .line 13
    .line 14
    sput-object v6, Lv0/A;->a:[I

    .line 15
    .line 16
    new-array v6, v5, [I

    .line 17
    .line 18
    fill-array-data v6, :array_1

    .line 19
    .line 20
    .line 21
    sput-object v6, Lv0/A;->b:[I

    .line 22
    .line 23
    const/16 v6, 0x1d

    .line 24
    .line 25
    new-array v6, v6, [I

    .line 26
    .line 27
    fill-array-data v6, :array_2

    .line 28
    .line 29
    .line 30
    sput-object v6, Lv0/A;->c:[I

    .line 31
    .line 32
    new-array v6, v5, [I

    .line 33
    .line 34
    fill-array-data v6, :array_3

    .line 35
    .line 36
    .line 37
    sput-object v6, Lv0/A;->d:[I

    .line 38
    .line 39
    const/16 v6, 0xa

    .line 40
    .line 41
    const/16 v7, 0xc

    .line 42
    .line 43
    filled-new-array {v3, v0, v6, v7}, [I

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    sput-object v8, Lv0/A;->e:[I

    .line 48
    .line 49
    const/16 v8, 0xf

    .line 50
    .line 51
    const/16 v9, 0x9

    .line 52
    .line 53
    filled-new-array {v4, v9, v7, v8}, [I

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    sput-object v8, Lv0/A;->f:[I

    .line 58
    .line 59
    filled-new-array {v1, v2, v4, v0}, [I

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    sput-object v1, Lv0/A;->g:[I

    .line 64
    .line 65
    const/16 v1, 0xd

    .line 66
    .line 67
    const/16 v2, 0xb

    .line 68
    .line 69
    filled-new-array {v9, v2, v1, v5}, [I

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    sput-object v1, Lv0/A;->h:[I

    .line 74
    .line 75
    filled-new-array {v3, v0, v6, v7}, [I

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    sput-object v0, Lv0/A;->i:[I

    .line 80
    .line 81
    return-void

    .line 82
    nop

    .line 83
    :array_0
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x6
        0x6
        0x6
        0x7
        0x8
        0x8
    .end array-data

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    :array_1
    .array-data 4
        -0x1
        0x1f40
        0x3e80
        0x7d00
        -0x1
        -0x1
        0x2b11
        0x5622
        0xac44
        -0x1
        -0x1
        0x2ee0
        0x5dc0
        0xbb80
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        0x40
        0x70
        0x80
        0xc0
        0xe0
        0x100
        0x180
        0x1c0
        0x200
        0x280
        0x300
        0x380
        0x400
        0x480
        0x500
        0x600
        0x780
        0x800
        0x900
        0xa00
        0xa80
        0xb00
        0xb07
        0xb80
        0xc00
        0xf00
        0x1000
        0x1800
        0x1e00
    .end array-data

    :array_3
    .array-data 4
        0x1f40
        0x3e80
        0x7d00
        0xfa00
        0x1f400
        0x5622
        0xac44
        0x15888
        0x2b110
        0x56220
        0x2ee0
        0x5dc0
        0xbb80
        0x17700
        0x2ee00
        0x5dc00
    .end array-data
.end method

.method public static a([B)Landroidx/media3/common/util/ParsableBitArray;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-byte v1, p0, v0

    .line 3
    .line 4
    const/16 v2, 0x7f

    .line 5
    .line 6
    if-eq v1, v2, :cond_4

    .line 7
    .line 8
    const/16 v2, 0x64

    .line 9
    .line 10
    if-eq v1, v2, :cond_4

    .line 11
    .line 12
    const/16 v2, 0x40

    .line 13
    .line 14
    if-eq v1, v2, :cond_4

    .line 15
    .line 16
    const/16 v2, 0x71

    .line 17
    .line 18
    if-ne v1, v2, :cond_0

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_0
    array-length v1, p0

    .line 22
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    aget-byte v1, p0, v0

    .line 27
    .line 28
    const/4 v2, -0x2

    .line 29
    if-eq v1, v2, :cond_1

    .line 30
    .line 31
    const/4 v2, -0x1

    .line 32
    if-eq v1, v2, :cond_1

    .line 33
    .line 34
    const/16 v2, 0x25

    .line 35
    .line 36
    if-eq v1, v2, :cond_1

    .line 37
    .line 38
    const/16 v2, -0xe

    .line 39
    .line 40
    if-eq v1, v2, :cond_1

    .line 41
    .line 42
    const/16 v2, -0x18

    .line 43
    .line 44
    if-ne v1, v2, :cond_2

    .line 45
    .line 46
    :cond_1
    move v1, v0

    .line 47
    :goto_0
    array-length v2, p0

    .line 48
    add-int/lit8 v2, v2, -0x1

    .line 49
    .line 50
    if-ge v1, v2, :cond_2

    .line 51
    .line 52
    aget-byte v2, p0, v1

    .line 53
    .line 54
    add-int/lit8 v3, v1, 0x1

    .line 55
    .line 56
    aget-byte v4, p0, v3

    .line 57
    .line 58
    aput-byte v4, p0, v1

    .line 59
    .line 60
    aput-byte v2, p0, v3

    .line 61
    .line 62
    add-int/lit8 v1, v1, 0x2

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    new-instance v1, Landroidx/media3/common/util/ParsableBitArray;

    .line 66
    .line 67
    invoke-direct {v1, p0}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    .line 68
    .line 69
    .line 70
    aget-byte v0, p0, v0

    .line 71
    .line 72
    const/16 v2, 0x1f

    .line 73
    .line 74
    if-ne v0, v2, :cond_3

    .line 75
    .line 76
    new-instance v0, Landroidx/media3/common/util/ParsableBitArray;

    .line 77
    .line 78
    invoke-direct {v0, p0}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    .line 79
    .line 80
    .line 81
    :goto_1
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    const/16 v3, 0x10

    .line 86
    .line 87
    if-lt v2, v3, :cond_3

    .line 88
    .line 89
    const/4 v2, 0x2

    .line 90
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 91
    .line 92
    .line 93
    const/16 v2, 0xe

    .line 94
    .line 95
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    invoke-virtual {v1, v3, v2}, Landroidx/media3/common/util/ParsableBitArray;->putInt(II)V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_3
    invoke-virtual {v1, p0}, Landroidx/media3/common/util/ParsableBitArray;->reset([B)V

    .line 104
    .line 105
    .line 106
    return-object v1

    .line 107
    :cond_4
    :goto_2
    new-instance v0, Landroidx/media3/common/util/ParsableBitArray;

    .line 108
    .line 109
    invoke-direct {v0, p0}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    .line 110
    .line 111
    .line 112
    return-object v0
.end method

.method public static b(Landroidx/media3/common/util/ParsableBitArray;[I)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    const/4 v3, 0x3

    .line 5
    if-ge v1, v3, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    add-int/lit8 v2, v2, 0x1

    .line 14
    .line 15
    add-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v1, v0

    .line 19
    :goto_1
    if-ge v0, v2, :cond_1

    .line 20
    .line 21
    aget v3, p1, v0

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    shl-int v3, v4, v3

    .line 25
    .line 26
    add-int/2addr v1, v3

    .line 27
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    aget p1, p1, v2

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    add-int/2addr p0, v1

    .line 37
    return p0
.end method

.method public static getDtsFrameSize([B)I
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-byte v1, p0, v0

    .line 3
    .line 4
    const/4 v2, -0x2

    .line 5
    const/4 v3, 0x7

    .line 6
    const/4 v4, 0x6

    .line 7
    const/4 v5, 0x1

    .line 8
    const/4 v6, 0x4

    .line 9
    if-eq v1, v2, :cond_2

    .line 10
    .line 11
    const/4 v2, -0x1

    .line 12
    if-eq v1, v2, :cond_1

    .line 13
    .line 14
    const/16 v2, 0x1f

    .line 15
    .line 16
    if-eq v1, v2, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x5

    .line 19
    aget-byte v1, p0, v1

    .line 20
    .line 21
    and-int/lit8 v1, v1, 0x3

    .line 22
    .line 23
    shl-int/lit8 v1, v1, 0xc

    .line 24
    .line 25
    aget-byte v2, p0, v4

    .line 26
    .line 27
    and-int/lit16 v2, v2, 0xff

    .line 28
    .line 29
    shl-int/2addr v2, v6

    .line 30
    or-int/2addr v1, v2

    .line 31
    aget-byte p0, p0, v3

    .line 32
    .line 33
    :goto_0
    and-int/lit16 p0, p0, 0xf0

    .line 34
    .line 35
    shr-int/2addr p0, v6

    .line 36
    or-int/2addr p0, v1

    .line 37
    add-int/2addr p0, v5

    .line 38
    goto :goto_2

    .line 39
    :cond_0
    aget-byte v0, p0, v4

    .line 40
    .line 41
    and-int/lit8 v0, v0, 0x3

    .line 42
    .line 43
    shl-int/lit8 v0, v0, 0xc

    .line 44
    .line 45
    aget-byte v1, p0, v3

    .line 46
    .line 47
    and-int/lit16 v1, v1, 0xff

    .line 48
    .line 49
    shl-int/2addr v1, v6

    .line 50
    or-int/2addr v0, v1

    .line 51
    const/16 v1, 0x8

    .line 52
    .line 53
    aget-byte p0, p0, v1

    .line 54
    .line 55
    :goto_1
    and-int/lit8 p0, p0, 0x3c

    .line 56
    .line 57
    shr-int/lit8 p0, p0, 0x2

    .line 58
    .line 59
    or-int/2addr p0, v0

    .line 60
    add-int/2addr p0, v5

    .line 61
    move v0, v5

    .line 62
    goto :goto_2

    .line 63
    :cond_1
    aget-byte v0, p0, v3

    .line 64
    .line 65
    and-int/lit8 v0, v0, 0x3

    .line 66
    .line 67
    shl-int/lit8 v0, v0, 0xc

    .line 68
    .line 69
    aget-byte v1, p0, v4

    .line 70
    .line 71
    and-int/lit16 v1, v1, 0xff

    .line 72
    .line 73
    shl-int/2addr v1, v6

    .line 74
    or-int/2addr v0, v1

    .line 75
    const/16 v1, 0x9

    .line 76
    .line 77
    aget-byte p0, p0, v1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    aget-byte v1, p0, v6

    .line 81
    .line 82
    and-int/lit8 v1, v1, 0x3

    .line 83
    .line 84
    shl-int/lit8 v1, v1, 0xc

    .line 85
    .line 86
    aget-byte v2, p0, v3

    .line 87
    .line 88
    and-int/lit16 v2, v2, 0xff

    .line 89
    .line 90
    shl-int/2addr v2, v6

    .line 91
    or-int/2addr v1, v2

    .line 92
    aget-byte p0, p0, v4

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :goto_2
    if-eqz v0, :cond_3

    .line 96
    .line 97
    mul-int/lit8 p0, p0, 0x10

    .line 98
    .line 99
    div-int/lit8 p0, p0, 0xe

    .line 100
    .line 101
    :cond_3
    return p0
.end method

.method public static getFrameType(I)I
    .locals 1

    .line 1
    const v0, 0x7ffe8001

    .line 2
    .line 3
    .line 4
    if-eq p0, v0, :cond_7

    .line 5
    .line 6
    const v0, -0x180fe80

    .line 7
    .line 8
    .line 9
    if-eq p0, v0, :cond_7

    .line 10
    .line 11
    const v0, 0x1fffe800

    .line 12
    .line 13
    .line 14
    if-eq p0, v0, :cond_7

    .line 15
    .line 16
    const v0, -0xe0ff18

    .line 17
    .line 18
    .line 19
    if-ne p0, v0, :cond_0

    .line 20
    .line 21
    goto :goto_3

    .line 22
    :cond_0
    const v0, 0x64582025

    .line 23
    .line 24
    .line 25
    if-eq p0, v0, :cond_6

    .line 26
    .line 27
    const v0, 0x25205864

    .line 28
    .line 29
    .line 30
    if-ne p0, v0, :cond_1

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_1
    const v0, 0x40411bf2

    .line 34
    .line 35
    .line 36
    if-eq p0, v0, :cond_5

    .line 37
    .line 38
    const v0, -0xde4bec0

    .line 39
    .line 40
    .line 41
    if-ne p0, v0, :cond_2

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    const v0, 0x71c442e8

    .line 45
    .line 46
    .line 47
    if-eq p0, v0, :cond_4

    .line 48
    .line 49
    const v0, -0x17bd3b8f

    .line 50
    .line 51
    .line 52
    if-ne p0, v0, :cond_3

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    const/4 p0, 0x0

    .line 56
    return p0

    .line 57
    :cond_4
    :goto_0
    const/4 p0, 0x4

    .line 58
    return p0

    .line 59
    :cond_5
    :goto_1
    const/4 p0, 0x3

    .line 60
    return p0

    .line 61
    :cond_6
    :goto_2
    const/4 p0, 0x2

    .line 62
    return p0

    .line 63
    :cond_7
    :goto_3
    const/4 p0, 0x1

    .line 64
    return p0
.end method

.method public static isSampleDtsHd(Lv0/D;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    invoke-interface {p0, v1, v2, p1, v3}, Lv0/D;->peekFully([BIIZ)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    return v2

    .line 19
    :cond_0
    invoke-interface {p0}, Lv0/D;->resetPeekPosition()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->peekInt()I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    invoke-static {p0}, Lv0/A;->getFrameType(I)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-ne p0, v3, :cond_3

    .line 31
    .line 32
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    const/16 p1, 0xa

    .line 37
    .line 38
    if-ge p0, p1, :cond_1

    .line 39
    .line 40
    return v2

    .line 41
    :cond_1
    new-array p0, p1, [B

    .line 42
    .line 43
    invoke-virtual {v0, p0, v2, p1}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 47
    .line 48
    .line 49
    invoke-static {p0}, Lv0/A;->getDtsFrameSize([B)I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    if-lez p0, :cond_3

    .line 54
    .line 55
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    add-int/lit8 v1, p0, 0x4

    .line 60
    .line 61
    if-ge p1, v1, :cond_2

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {v0, p0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    invoke-static {p0}, Lv0/A;->getFrameType(I)I

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    const/4 p1, 0x2

    .line 76
    if-ne p0, p1, :cond_3

    .line 77
    .line 78
    return v3

    .line 79
    :cond_3
    :goto_0
    return v2
.end method

.method public static parseDtsAudioSampleCount(Ljava/nio/ByteBuffer;)I
    .locals 3

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    const v2, -0xde4bec0

    if-eq v1, v2, :cond_5

    .line 7
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    const v2, -0x17bd3b8f

    if-ne v1, v2, :cond_0

    goto :goto_4

    .line 8
    :cond_0
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    const v1, 0x25205864

    if-ne v0, v1, :cond_1

    const/16 p0, 0x1000

    return p0

    .line 9
    :cond_1
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    .line 10
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    const/4 v2, -0x2

    if-eq v1, v2, :cond_4

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    const/16 v2, 0x1f

    if-eq v1, v2, :cond_2

    add-int/lit8 v1, v0, 0x4

    .line 11
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x6

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    :goto_0
    and-int/lit16 p0, p0, 0xfc

    :goto_1
    shr-int/lit8 p0, p0, 0x2

    or-int/2addr p0, v1

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v0, 0x5

    .line 12
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    :goto_2
    and-int/lit8 p0, p0, 0x3c

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v0, 0x4

    .line 13
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v0, 0x5

    .line 14
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x6

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    goto :goto_0

    :goto_3
    add-int/lit8 p0, p0, 0x1

    mul-int/lit8 p0, p0, 0x20

    return p0

    :cond_5
    :goto_4
    const/16 p0, 0x400

    return p0
.end method

.method public static parseDtsAudioSampleCount([B)I
    .locals 6

    const/4 v0, 0x0

    .line 1
    aget-byte v0, p0, v0

    const/4 v1, -0x2

    const/4 v2, 0x5

    const/4 v3, 0x6

    const/4 v4, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, -0x1

    const/4 v5, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_0

    .line 2
    aget-byte v0, p0, v4

    and-int/lit8 v0, v0, 0x1

    shl-int/2addr v0, v3

    aget-byte p0, p0, v2

    :goto_0
    and-int/lit16 p0, p0, 0xfc

    :goto_1
    shr-int/lit8 p0, p0, 0x2

    or-int/2addr p0, v0

    goto :goto_3

    .line 3
    :cond_0
    aget-byte v0, p0, v2

    and-int/2addr v0, v5

    shl-int/2addr v0, v4

    aget-byte p0, p0, v3

    :goto_2
    and-int/lit8 p0, p0, 0x3c

    goto :goto_1

    .line 4
    :cond_1
    aget-byte v0, p0, v4

    and-int/2addr v0, v5

    shl-int/2addr v0, v4

    aget-byte p0, p0, v5

    goto :goto_2

    .line 5
    :cond_2
    aget-byte v0, p0, v2

    and-int/lit8 v0, v0, 0x1

    shl-int/2addr v0, v3

    aget-byte p0, p0, v4

    goto :goto_0

    :goto_3
    add-int/lit8 p0, p0, 0x1

    mul-int/lit8 p0, p0, 0x20

    return p0
.end method

.method public static parseDtsFormat([BLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format;
    .locals 5

    .line 1
    invoke-static {p0}, Lv0/A;->a([B)Landroidx/media3/common/util/ParsableBitArray;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/16 v0, 0x3c

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x6

    .line 11
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sget-object v1, Lv0/A;->a:[I

    .line 16
    .line 17
    aget v0, v1, v0

    .line 18
    .line 19
    const/4 v1, 0x4

    .line 20
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    sget-object v2, Lv0/A;->b:[I

    .line 25
    .line 26
    aget v1, v2, v1

    .line 27
    .line 28
    const/4 v2, 0x5

    .line 29
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/16 v3, 0x1d

    .line 34
    .line 35
    const/4 v4, 0x2

    .line 36
    if-lt v2, v3, :cond_0

    .line 37
    .line 38
    const/4 v2, -0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    sget-object v3, Lv0/A;->c:[I

    .line 41
    .line 42
    aget v2, v3, v2

    .line 43
    .line 44
    mul-int/lit16 v2, v2, 0x3e8

    .line 45
    .line 46
    div-int/2addr v2, v4

    .line 47
    :goto_0
    const/16 v3, 0xa

    .line 48
    .line 49
    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    if-lez p0, :cond_1

    .line 57
    .line 58
    const/4 p0, 0x1

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    const/4 p0, 0x0

    .line 61
    :goto_1
    add-int/2addr v0, p0

    .line 62
    new-instance p0, Landroidx/media3/common/Format$Builder;

    .line 63
    .line 64
    invoke-direct {p0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p0, p4}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    const-string p1, "audio/vnd.dts"

    .line 76
    .line 77
    invoke-virtual {p0, p1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {p0, v2}, Landroidx/media3/common/Format$Builder;->setAverageBitrate(I)Landroidx/media3/common/Format$Builder;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {p0, v0}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {p0, v1}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-virtual {p0, p5}, Landroidx/media3/common/Format$Builder;->setDrmInitData(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-virtual {p0, p2}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-virtual {p0, p3}, Landroidx/media3/common/Format$Builder;->setRoleFlags(I)Landroidx/media3/common/Format$Builder;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-virtual {p0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    return-object p0
.end method

.method public static parseDtsHdHeader([B)Lv0/z;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lv0/A;->a([B)Landroidx/media3/common/util/ParsableBitArray;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/16 v0, 0x28

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/16 v3, 0xc

    .line 20
    .line 21
    const/16 v4, 0x8

    .line 22
    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    const/16 v2, 0x10

    .line 26
    .line 27
    move v5, v4

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/16 v2, 0x14

    .line 30
    .line 31
    move v5, v3

    .line 32
    :goto_0
    invoke-virtual {p0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    const/4 v6, 0x1

    .line 40
    add-int/lit8 v13, v5, 0x1

    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    const/4 v7, -0x1

    .line 47
    const/4 v8, 0x0

    .line 48
    if-eqz v5, :cond_6

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 51
    .line 52
    .line 53
    move-result v9

    .line 54
    const/4 v10, 0x3

    .line 55
    invoke-virtual {p0, v10}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 56
    .line 57
    .line 58
    move-result v11

    .line 59
    add-int/2addr v11, v6

    .line 60
    mul-int/lit16 v11, v11, 0x200

    .line 61
    .line 62
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 63
    .line 64
    .line 65
    move-result v12

    .line 66
    if-eqz v12, :cond_1

    .line 67
    .line 68
    const/16 v12, 0x24

    .line 69
    .line 70
    invoke-virtual {p0, v12}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 71
    .line 72
    .line 73
    :cond_1
    invoke-virtual {p0, v10}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 74
    .line 75
    .line 76
    move-result v12

    .line 77
    add-int/2addr v12, v6

    .line 78
    invoke-virtual {p0, v10}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 79
    .line 80
    .line 81
    move-result v10

    .line 82
    add-int/2addr v10, v6

    .line 83
    if-ne v12, v6, :cond_5

    .line 84
    .line 85
    if-ne v10, v6, :cond_5

    .line 86
    .line 87
    add-int/2addr v1, v6

    .line 88
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 89
    .line 90
    .line 91
    move-result v10

    .line 92
    move v12, v8

    .line 93
    :goto_1
    if-ge v12, v1, :cond_3

    .line 94
    .line 95
    shr-int v14, v10, v12

    .line 96
    .line 97
    and-int/2addr v14, v6

    .line 98
    if-ne v14, v6, :cond_2

    .line 99
    .line 100
    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 101
    .line 102
    .line 103
    :cond_2
    add-int/lit8 v12, v12, 0x1

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_3
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-eqz v1, :cond_4

    .line 111
    .line 112
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    add-int/2addr v1, v6

    .line 120
    shl-int/2addr v1, v0

    .line 121
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 122
    .line 123
    .line 124
    move-result v10

    .line 125
    add-int/2addr v10, v6

    .line 126
    :goto_2
    if-ge v8, v10, :cond_4

    .line 127
    .line 128
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 129
    .line 130
    .line 131
    add-int/lit8 v8, v8, 0x1

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_4
    move v8, v11

    .line 135
    goto :goto_3

    .line 136
    :cond_5
    const-string p0, "Multiple audio presentations or assets not supported"

    .line 137
    .line 138
    invoke-static {p0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    throw p0

    .line 143
    :cond_6
    move v9, v7

    .line 144
    :goto_3
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 148
    .line 149
    .line 150
    if-eqz v5, :cond_a

    .line 151
    .line 152
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    const/4 v2, 0x4

    .line 157
    if-eqz v1, :cond_7

    .line 158
    .line 159
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 160
    .line 161
    .line 162
    :cond_7
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    if-eqz v1, :cond_8

    .line 167
    .line 168
    const/16 v1, 0x18

    .line 169
    .line 170
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 171
    .line 172
    .line 173
    :cond_8
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    if-eqz v1, :cond_9

    .line 178
    .line 179
    const/16 v1, 0xa

    .line 180
    .line 181
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    add-int/2addr v1, v6

    .line 186
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBytes(I)V

    .line 187
    .line 188
    .line 189
    :cond_9
    const/4 v1, 0x5

    .line 190
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 191
    .line 192
    .line 193
    sget-object v1, Lv0/A;->d:[I

    .line 194
    .line 195
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    aget v1, v1, v2

    .line 200
    .line 201
    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 202
    .line 203
    .line 204
    move-result p0

    .line 205
    add-int/lit8 v7, p0, 0x1

    .line 206
    .line 207
    :goto_4
    move v12, v1

    .line 208
    goto :goto_5

    .line 209
    :cond_a
    const v1, -0x7fffffff

    .line 210
    .line 211
    .line 212
    goto :goto_4

    .line 213
    :goto_5
    if-eqz v5, :cond_e

    .line 214
    .line 215
    if-eqz v9, :cond_d

    .line 216
    .line 217
    if-eq v9, v6, :cond_c

    .line 218
    .line 219
    if-ne v9, v0, :cond_b

    .line 220
    .line 221
    const p0, 0xbb80

    .line 222
    .line 223
    .line 224
    goto :goto_6

    .line 225
    :cond_b
    new-instance p0, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    const-string v0, "Unsupported reference clock code in DTS HD header: "

    .line 228
    .line 229
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    const/4 v0, 0x0

    .line 240
    invoke-static {p0, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 241
    .line 242
    .line 243
    move-result-object p0

    .line 244
    throw p0

    .line 245
    :cond_c
    const p0, 0xac44

    .line 246
    .line 247
    .line 248
    goto :goto_6

    .line 249
    :cond_d
    const/16 p0, 0x7d00

    .line 250
    .line 251
    :goto_6
    int-to-long v0, v8

    .line 252
    const-wide/32 v2, 0xf4240

    .line 253
    .line 254
    .line 255
    int-to-long v4, p0

    .line 256
    invoke-static/range {v0 .. v5}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    .line 257
    .line 258
    .line 259
    move-result-wide v0

    .line 260
    :goto_7
    move-wide v9, v0

    .line 261
    move v8, v7

    .line 262
    goto :goto_8

    .line 263
    :cond_e
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    goto :goto_7

    .line 269
    :goto_8
    new-instance v7, Lv0/z;

    .line 270
    .line 271
    const-string v11, "audio/vnd.dts.hd;profile=lbr"

    .line 272
    .line 273
    invoke-direct/range {v7 .. v13}, Lv0/z;-><init>(IJLjava/lang/String;II)V

    .line 274
    .line 275
    .line 276
    return-object v7
.end method

.method public static parseDtsHdHeaderSize([B)I
    .locals 1

    .line 1
    invoke-static {p0}, Lv0/A;->a([B)Landroidx/media3/common/util/ParsableBitArray;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/16 v0, 0x2a

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/16 v0, 0xc

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/16 v0, 0x8

    .line 20
    .line 21
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    add-int/lit8 p0, p0, 0x1

    .line 26
    .line 27
    return p0
.end method

.method public static parseDtsUhdHeader([BLjava/util/concurrent/atomic/AtomicInteger;)Lv0/z;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {v0}, Lv0/A;->a([B)Landroidx/media3/common/util/ParsableBitArray;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/16 v2, 0x20

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const v3, 0x40411bf2

    .line 14
    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x1

    .line 18
    if-ne v2, v3, :cond_0

    .line 19
    .line 20
    move v2, v5

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v2, v4

    .line 23
    :goto_0
    sget-object v3, Lv0/A;->e:[I

    .line 24
    .line 25
    invoke-static {v1, v3}, Lv0/A;->b(Landroidx/media3/common/util/ParsableBitArray;[I)I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    add-int/lit8 v6, v3, 0x1

    .line 30
    .line 31
    if-eqz v2, :cond_a

    .line 32
    .line 33
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    if-eqz v7, :cond_9

    .line 38
    .line 39
    add-int/lit8 v7, v3, -0x1

    .line 40
    .line 41
    aget-byte v8, v0, v7

    .line 42
    .line 43
    shl-int/lit8 v8, v8, 0x8

    .line 44
    .line 45
    const v9, 0xffff

    .line 46
    .line 47
    .line 48
    and-int/2addr v8, v9

    .line 49
    aget-byte v3, v0, v3

    .line 50
    .line 51
    and-int/lit16 v3, v3, 0xff

    .line 52
    .line 53
    or-int/2addr v3, v8

    .line 54
    invoke-static {v0, v4, v7, v9}, Landroidx/media3/common/util/Util;->crc16([BIII)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    const/4 v7, 0x0

    .line 59
    if-ne v3, v0, :cond_8

    .line 60
    .line 61
    const/4 v0, 0x2

    .line 62
    invoke-virtual {v1, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_3

    .line 67
    .line 68
    if-eq v3, v5, :cond_2

    .line 69
    .line 70
    if-ne v3, v0, :cond_1

    .line 71
    .line 72
    const/16 v3, 0x180

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v1, "Unsupported base duration index in DTS UHD header: "

    .line 78
    .line 79
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {v0, v7}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    throw v0

    .line 94
    :cond_2
    const/16 v3, 0x1e0

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    const/16 v3, 0x200

    .line 98
    .line 99
    :goto_1
    const/4 v8, 0x3

    .line 100
    invoke-virtual {v1, v8}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 101
    .line 102
    .line 103
    move-result v8

    .line 104
    add-int/2addr v8, v5

    .line 105
    mul-int/2addr v8, v3

    .line 106
    invoke-virtual {v1, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    if-eqz v3, :cond_6

    .line 111
    .line 112
    if-eq v3, v5, :cond_5

    .line 113
    .line 114
    if-ne v3, v0, :cond_4

    .line 115
    .line 116
    const v3, 0xbb80

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    const-string v1, "Unsupported clock rate index in DTS UHD header: "

    .line 123
    .line 124
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-static {v0, v7}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    throw v0

    .line 139
    :cond_5
    const v3, 0xac44

    .line 140
    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_6
    const/16 v3, 0x7d00

    .line 144
    .line 145
    :goto_2
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 146
    .line 147
    .line 148
    move-result v7

    .line 149
    if-eqz v7, :cond_7

    .line 150
    .line 151
    const/16 v7, 0x24

    .line 152
    .line 153
    invoke-virtual {v1, v7}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 154
    .line 155
    .line 156
    :cond_7
    invoke-virtual {v1, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    shl-int v0, v5, v0

    .line 161
    .line 162
    mul-int/2addr v0, v3

    .line 163
    int-to-long v9, v8

    .line 164
    const-wide/32 v11, 0xf4240

    .line 165
    .line 166
    .line 167
    int-to-long v13, v3

    .line 168
    invoke-static/range {v9 .. v14}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    .line 169
    .line 170
    .line 171
    move-result-wide v7

    .line 172
    :goto_3
    move v14, v0

    .line 173
    move-wide v11, v7

    .line 174
    goto :goto_4

    .line 175
    :cond_8
    const-string v0, "CRC check failed"

    .line 176
    .line 177
    invoke-static {v0, v7}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    throw v0

    .line 182
    :cond_9
    const-string v0, "Only supports full channel mask-based audio presentation"

    .line 183
    .line 184
    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    throw v0

    .line 189
    :cond_a
    const v0, -0x7fffffff

    .line 190
    .line 191
    .line 192
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    goto :goto_3

    .line 198
    :goto_4
    move v0, v4

    .line 199
    move v3, v0

    .line 200
    :goto_5
    if-ge v0, v2, :cond_b

    .line 201
    .line 202
    sget-object v5, Lv0/A;->f:[I

    .line 203
    .line 204
    invoke-static {v1, v5}, Lv0/A;->b(Landroidx/media3/common/util/ParsableBitArray;[I)I

    .line 205
    .line 206
    .line 207
    move-result v5

    .line 208
    add-int/2addr v3, v5

    .line 209
    add-int/lit8 v0, v0, 0x1

    .line 210
    .line 211
    goto :goto_5

    .line 212
    :cond_b
    if-eqz v2, :cond_c

    .line 213
    .line 214
    sget-object v0, Lv0/A;->g:[I

    .line 215
    .line 216
    invoke-static {v1, v0}, Lv0/A;->b(Landroidx/media3/common/util/ParsableBitArray;[I)I

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    move-object/from16 v2, p1

    .line 221
    .line 222
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 223
    .line 224
    .line 225
    goto :goto_6

    .line 226
    :cond_c
    move-object/from16 v2, p1

    .line 227
    .line 228
    :goto_6
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    if-eqz v0, :cond_d

    .line 233
    .line 234
    sget-object v0, Lv0/A;->h:[I

    .line 235
    .line 236
    invoke-static {v1, v0}, Lv0/A;->b(Landroidx/media3/common/util/ParsableBitArray;[I)I

    .line 237
    .line 238
    .line 239
    move-result v4

    .line 240
    :cond_d
    add-int/2addr v3, v4

    .line 241
    add-int v15, v3, v6

    .line 242
    .line 243
    new-instance v9, Lv0/z;

    .line 244
    .line 245
    const-string v13, "audio/vnd.dts.uhd;profile=p2"

    .line 246
    .line 247
    const/4 v10, 0x2

    .line 248
    invoke-direct/range {v9 .. v15}, Lv0/z;-><init>(IJLjava/lang/String;II)V

    .line 249
    .line 250
    .line 251
    return-object v9
.end method

.method public static parseDtsUhdHeaderSize([B)I
    .locals 1

    .line 1
    invoke-static {p0}, Lv0/A;->a([B)Landroidx/media3/common/util/ParsableBitArray;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/16 v0, 0x20

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lv0/A;->i:[I

    .line 11
    .line 12
    invoke-static {p0, v0}, Lv0/A;->b(Landroidx/media3/common/util/ParsableBitArray;[I)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    add-int/lit8 p0, p0, 0x1

    .line 17
    .line 18
    return p0
.end method
