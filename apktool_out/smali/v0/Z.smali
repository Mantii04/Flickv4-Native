.class public abstract Lv0/Z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[I

.field public static final c:[I

.field public static final d:[I

.field public static final e:[I

.field public static final f:[I

.field public static final g:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "audio/mpeg-L2"

    .line 2
    .line 3
    const-string v1, "audio/mpeg"

    .line 4
    .line 5
    const-string v2, "audio/mpeg-L1"

    .line 6
    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lv0/Z;->a:[Ljava/lang/String;

    .line 12
    .line 13
    const v0, 0xbb80

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x7d00

    .line 17
    .line 18
    const v2, 0xac44

    .line 19
    .line 20
    .line 21
    filled-new-array {v2, v0, v1}, [I

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lv0/Z;->b:[I

    .line 26
    .line 27
    const/16 v0, 0xe

    .line 28
    .line 29
    new-array v1, v0, [I

    .line 30
    .line 31
    fill-array-data v1, :array_0

    .line 32
    .line 33
    .line 34
    sput-object v1, Lv0/Z;->c:[I

    .line 35
    .line 36
    new-array v1, v0, [I

    .line 37
    .line 38
    fill-array-data v1, :array_1

    .line 39
    .line 40
    .line 41
    sput-object v1, Lv0/Z;->d:[I

    .line 42
    .line 43
    new-array v1, v0, [I

    .line 44
    .line 45
    fill-array-data v1, :array_2

    .line 46
    .line 47
    .line 48
    sput-object v1, Lv0/Z;->e:[I

    .line 49
    .line 50
    new-array v1, v0, [I

    .line 51
    .line 52
    fill-array-data v1, :array_3

    .line 53
    .line 54
    .line 55
    sput-object v1, Lv0/Z;->f:[I

    .line 56
    .line 57
    new-array v0, v0, [I

    .line 58
    .line 59
    fill-array-data v0, :array_4

    .line 60
    .line 61
    .line 62
    sput-object v0, Lv0/Z;->g:[I

    .line 63
    .line 64
    return-void

    .line 65
    :array_0
    .array-data 4
        0x7d00
        0xfa00
        0x17700
        0x1f400
        0x27100
        0x2ee00
        0x36b00
        0x3e800
        0x46500
        0x4e200
        0x55f00
        0x5dc00
        0x65900
        0x6d600
    .end array-data

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
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
        0x7d00
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x23280
        0x27100
        0x2af80
        0x2ee00
        0x36b00
        0x3e800
    .end array-data

    :array_2
    .array-data 4
        0x7d00
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x27100
        0x2ee00
        0x36b00
        0x3e800
        0x4e200
        0x5dc00
    .end array-data

    :array_3
    .array-data 4
        0x7d00
        0x9c40
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x27100
        0x2ee00
        0x36b00
        0x3e800
        0x4e200
    .end array-data

    :array_4
    .array-data 4
        0x1f40
        0x3e80
        0x5dc0
        0x7d00
        0x9c40
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x23280
        0x27100
    .end array-data
.end method

.method public static getFrameSize(I)I
    .locals 7

    .line 1
    const/high16 v0, -0x200000

    .line 2
    .line 3
    and-int v1, p0, v0

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v1, v0, :cond_0

    .line 7
    .line 8
    move v0, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-nez v0, :cond_1

    .line 12
    .line 13
    goto/16 :goto_4

    .line 14
    .line 15
    :cond_1
    ushr-int/lit8 v0, p0, 0x13

    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    and-int/2addr v0, v1

    .line 19
    if-ne v0, v2, :cond_2

    .line 20
    .line 21
    goto/16 :goto_4

    .line 22
    .line 23
    :cond_2
    ushr-int/lit8 v3, p0, 0x11

    .line 24
    .line 25
    and-int/2addr v3, v1

    .line 26
    if-nez v3, :cond_3

    .line 27
    .line 28
    goto :goto_4

    .line 29
    :cond_3
    ushr-int/lit8 v4, p0, 0xc

    .line 30
    .line 31
    const/16 v5, 0xf

    .line 32
    .line 33
    and-int/2addr v4, v5

    .line 34
    if-eqz v4, :cond_e

    .line 35
    .line 36
    if-ne v4, v5, :cond_4

    .line 37
    .line 38
    goto :goto_4

    .line 39
    :cond_4
    ushr-int/lit8 v5, p0, 0xa

    .line 40
    .line 41
    and-int/2addr v5, v1

    .line 42
    if-ne v5, v1, :cond_5

    .line 43
    .line 44
    goto :goto_4

    .line 45
    :cond_5
    sget-object v6, Lv0/Z;->b:[I

    .line 46
    .line 47
    aget v5, v6, v5

    .line 48
    .line 49
    const/4 v6, 0x2

    .line 50
    if-ne v0, v6, :cond_6

    .line 51
    .line 52
    div-int/lit8 v5, v5, 0x2

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_6
    if-nez v0, :cond_7

    .line 56
    .line 57
    div-int/lit8 v5, v5, 0x4

    .line 58
    .line 59
    :cond_7
    :goto_1
    ushr-int/lit8 p0, p0, 0x9

    .line 60
    .line 61
    and-int/2addr p0, v2

    .line 62
    if-ne v3, v1, :cond_9

    .line 63
    .line 64
    if-ne v0, v1, :cond_8

    .line 65
    .line 66
    sget-object v0, Lv0/Z;->c:[I

    .line 67
    .line 68
    sub-int/2addr v4, v2

    .line 69
    aget v0, v0, v4

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_8
    sget-object v0, Lv0/Z;->d:[I

    .line 73
    .line 74
    sub-int/2addr v4, v2

    .line 75
    aget v0, v0, v4

    .line 76
    .line 77
    :goto_2
    mul-int/lit8 v0, v0, 0xc

    .line 78
    .line 79
    div-int/2addr v0, v5

    .line 80
    add-int/2addr v0, p0

    .line 81
    mul-int/lit8 v0, v0, 0x4

    .line 82
    .line 83
    return v0

    .line 84
    :cond_9
    if-ne v0, v1, :cond_b

    .line 85
    .line 86
    if-ne v3, v6, :cond_a

    .line 87
    .line 88
    sget-object v6, Lv0/Z;->e:[I

    .line 89
    .line 90
    sub-int/2addr v4, v2

    .line 91
    aget v4, v6, v4

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_a
    sget-object v6, Lv0/Z;->f:[I

    .line 95
    .line 96
    sub-int/2addr v4, v2

    .line 97
    aget v4, v6, v4

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_b
    sget-object v6, Lv0/Z;->g:[I

    .line 101
    .line 102
    sub-int/2addr v4, v2

    .line 103
    aget v4, v6, v4

    .line 104
    .line 105
    :goto_3
    const/16 v6, 0x90

    .line 106
    .line 107
    if-ne v0, v1, :cond_c

    .line 108
    .line 109
    invoke-static {v4, v6, v5, p0}, LA/i;->D(IIII)I

    .line 110
    .line 111
    .line 112
    move-result p0

    .line 113
    return p0

    .line 114
    :cond_c
    if-ne v3, v2, :cond_d

    .line 115
    .line 116
    const/16 v6, 0x48

    .line 117
    .line 118
    :cond_d
    invoke-static {v6, v4, v5, p0}, LA/i;->D(IIII)I

    .line 119
    .line 120
    .line 121
    move-result p0

    .line 122
    return p0

    .line 123
    :cond_e
    :goto_4
    const/4 p0, -0x1

    .line 124
    return p0
.end method

.method public static parseMpegAudioFrameSampleCount(I)I
    .locals 6

    .line 1
    const/high16 v0, -0x200000

    .line 2
    .line 3
    and-int v1, p0, v0

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v1, v0, :cond_0

    .line 7
    .line 8
    move v0, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-nez v0, :cond_1

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_1
    ushr-int/lit8 v0, p0, 0x13

    .line 15
    .line 16
    const/4 v1, 0x3

    .line 17
    and-int/2addr v0, v1

    .line 18
    if-ne v0, v2, :cond_2

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_2
    ushr-int/lit8 v3, p0, 0x11

    .line 22
    .line 23
    and-int/2addr v3, v1

    .line 24
    if-nez v3, :cond_3

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_3
    ushr-int/lit8 v4, p0, 0xc

    .line 28
    .line 29
    const/16 v5, 0xf

    .line 30
    .line 31
    and-int/2addr v4, v5

    .line 32
    ushr-int/lit8 p0, p0, 0xa

    .line 33
    .line 34
    and-int/2addr p0, v1

    .line 35
    if-eqz v4, :cond_9

    .line 36
    .line 37
    if-eq v4, v5, :cond_9

    .line 38
    .line 39
    if-ne p0, v1, :cond_4

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_4
    if-eq v3, v2, :cond_6

    .line 43
    .line 44
    const/4 p0, 0x2

    .line 45
    if-eq v3, p0, :cond_7

    .line 46
    .line 47
    if-ne v3, v1, :cond_5

    .line 48
    .line 49
    const/16 p0, 0x180

    .line 50
    .line 51
    return p0

    .line 52
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 53
    .line 54
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 55
    .line 56
    .line 57
    throw p0

    .line 58
    :cond_6
    if-ne v0, v1, :cond_8

    .line 59
    .line 60
    :cond_7
    const/16 p0, 0x480

    .line 61
    .line 62
    return p0

    .line 63
    :cond_8
    const/16 p0, 0x240

    .line 64
    .line 65
    return p0

    .line 66
    :cond_9
    :goto_1
    const/4 p0, -0x1

    .line 67
    return p0
.end method
