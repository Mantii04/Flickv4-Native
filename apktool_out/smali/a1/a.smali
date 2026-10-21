.class public final La1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[I

.field public b:Z

.field public c:Z

.field public d:[I

.field public e:I

.field public f:I

.field public g:Landroid/graphics/Rect;

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    new-array v0, v0, [I

    .line 6
    .line 7
    iput-object v0, p0, La1/a;->a:[I

    .line 8
    .line 9
    const/4 v0, -0x1

    .line 10
    iput v0, p0, La1/a;->h:I

    .line 11
    .line 12
    iput v0, p0, La1/a;->i:I

    .line 13
    .line 14
    return-void
.end method

.method public static a([II)I
    .locals 1

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    if-ge p1, v0, :cond_0

    .line 5
    .line 6
    aget p0, p0, p1

    .line 7
    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    aget p0, p0, p1

    .line 11
    .line 12
    return p0
.end method

.method public static c(II)I
    .locals 1

    .line 1
    const v0, 0xffffff

    .line 2
    .line 3
    .line 4
    and-int/2addr p0, v0

    .line 5
    mul-int/lit8 p1, p1, 0x11

    .line 6
    .line 7
    shl-int/lit8 p1, p1, 0x18

    .line 8
    .line 9
    or-int/2addr p0, p1

    .line 10
    return p0
.end method


# virtual methods
.method public final b(Landroidx/media3/common/util/ParsableBitArray;ZLandroid/graphics/Rect;[I)V
    .locals 9

    .line 1
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 6
    .line 7
    .line 8
    move-result p3

    .line 9
    const/4 v1, 0x1

    .line 10
    xor-int/2addr p2, v1

    .line 11
    mul-int v2, p2, v0

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    :goto_0
    move v4, v3

    .line 15
    :cond_0
    move v6, v1

    .line 16
    move v5, v3

    .line 17
    :goto_1
    const/4 v7, 0x4

    .line 18
    if-ge v5, v6, :cond_2

    .line 19
    .line 20
    const/16 v8, 0x40

    .line 21
    .line 22
    if-gt v6, v8, :cond_2

    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    .line 25
    .line 26
    .line 27
    move-result v8

    .line 28
    if-ge v8, v7, :cond_1

    .line 29
    .line 30
    const/4 v5, -0x1

    .line 31
    move v6, v5

    .line 32
    move v5, v3

    .line 33
    goto :goto_2

    .line 34
    :cond_1
    shl-int/lit8 v5, v5, 0x4

    .line 35
    .line 36
    invoke-virtual {p1, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    or-int/2addr v5, v7

    .line 41
    shl-int/lit8 v6, v6, 0x2

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    and-int/lit8 v6, v5, 0x3

    .line 45
    .line 46
    if-ge v5, v7, :cond_3

    .line 47
    .line 48
    move v5, v0

    .line 49
    goto :goto_2

    .line 50
    :cond_3
    shr-int/lit8 v5, v5, 0x2

    .line 51
    .line 52
    :goto_2
    sub-int v7, v0, v4

    .line 53
    .line 54
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-lez v5, :cond_4

    .line 59
    .line 60
    add-int v7, v2, v5

    .line 61
    .line 62
    iget-object v8, p0, La1/a;->a:[I

    .line 63
    .line 64
    aget v6, v8, v6

    .line 65
    .line 66
    invoke-static {p4, v2, v7, v6}, Ljava/util/Arrays;->fill([IIII)V

    .line 67
    .line 68
    .line 69
    add-int/2addr v4, v5

    .line 70
    move v2, v7

    .line 71
    :cond_4
    if-lt v4, v0, :cond_0

    .line 72
    .line 73
    add-int/lit8 p2, p2, 0x2

    .line 74
    .line 75
    if-lt p2, p3, :cond_5

    .line 76
    .line 77
    return-void

    .line 78
    :cond_5
    mul-int v2, p2, v0

    .line 79
    .line 80
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->byteAlign()V

    .line 81
    .line 82
    .line 83
    goto :goto_0
.end method

.method public build(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/common/text/Cue;
    .locals 5

    .line 1
    iget-object v0, p0, La1/a;->d:[I

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, La1/a;->b:Z

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, La1/a;->c:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, La1/a;->g:Landroid/graphics/Rect;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget v1, p0, La1/a;->h:I

    .line 18
    .line 19
    const/4 v2, -0x1

    .line 20
    if-eq v1, v2, :cond_1

    .line 21
    .line 22
    iget v1, p0, La1/a;->i:I

    .line 23
    .line 24
    if-eq v1, v2, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v1, 0x2

    .line 31
    if-lt v0, v1, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, La1/a;->g:Landroid/graphics/Rect;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-ge v0, v1, :cond_0

    .line 40
    .line 41
    goto/16 :goto_0

    .line 42
    .line 43
    :cond_0
    iget-object v0, p0, La1/a;->g:Landroid/graphics/Rect;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    mul-int/2addr v2, v1

    .line 54
    new-array v1, v2, [I

    .line 55
    .line 56
    new-instance v2, Landroidx/media3/common/util/ParsableBitArray;

    .line 57
    .line 58
    invoke-direct {v2}, Landroidx/media3/common/util/ParsableBitArray;-><init>()V

    .line 59
    .line 60
    .line 61
    iget v3, p0, La1/a;->h:I

    .line 62
    .line 63
    invoke-virtual {p1, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, p1}, Landroidx/media3/common/util/ParsableBitArray;->reset(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 67
    .line 68
    .line 69
    const/4 v3, 0x1

    .line 70
    invoke-virtual {p0, v2, v3, v0, v1}, La1/a;->b(Landroidx/media3/common/util/ParsableBitArray;ZLandroid/graphics/Rect;[I)V

    .line 71
    .line 72
    .line 73
    iget v3, p0, La1/a;->i:I

    .line 74
    .line 75
    invoke-virtual {p1, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, p1}, Landroidx/media3/common/util/ParsableBitArray;->reset(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 79
    .line 80
    .line 81
    const/4 p1, 0x0

    .line 82
    invoke-virtual {p0, v2, p1, v0, v1}, La1/a;->b(Landroidx/media3/common/util/ParsableBitArray;ZLandroid/graphics/Rect;[I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 94
    .line 95
    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    new-instance v2, Landroidx/media3/common/text/Cue$Builder;

    .line 100
    .line 101
    invoke-direct {v2}, Landroidx/media3/common/text/Cue$Builder;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, v1}, Landroidx/media3/common/text/Cue$Builder;->setBitmap(Landroid/graphics/Bitmap;)Landroidx/media3/common/text/Cue$Builder;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 109
    .line 110
    int-to-float v2, v2

    .line 111
    iget v3, p0, La1/a;->e:I

    .line 112
    .line 113
    int-to-float v3, v3

    .line 114
    div-float/2addr v2, v3

    .line 115
    invoke-virtual {v1, v2}, Landroidx/media3/common/text/Cue$Builder;->setPosition(F)Landroidx/media3/common/text/Cue$Builder;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v1, p1}, Landroidx/media3/common/text/Cue$Builder;->setPositionAnchor(I)Landroidx/media3/common/text/Cue$Builder;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 124
    .line 125
    int-to-float v2, v2

    .line 126
    iget v3, p0, La1/a;->f:I

    .line 127
    .line 128
    int-to-float v3, v3

    .line 129
    div-float/2addr v2, v3

    .line 130
    invoke-virtual {v1, v2, p1}, Landroidx/media3/common/text/Cue$Builder;->setLine(FI)Landroidx/media3/common/text/Cue$Builder;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v1, p1}, Landroidx/media3/common/text/Cue$Builder;->setLineAnchor(I)Landroidx/media3/common/text/Cue$Builder;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    int-to-float v1, v1

    .line 143
    iget v2, p0, La1/a;->e:I

    .line 144
    .line 145
    int-to-float v2, v2

    .line 146
    div-float/2addr v1, v2

    .line 147
    invoke-virtual {p1, v1}, Landroidx/media3/common/text/Cue$Builder;->setSize(F)Landroidx/media3/common/text/Cue$Builder;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    int-to-float v0, v0

    .line 156
    iget v1, p0, La1/a;->f:I

    .line 157
    .line 158
    int-to-float v1, v1

    .line 159
    div-float/2addr v0, v1

    .line 160
    invoke-virtual {p1, v0}, Landroidx/media3/common/text/Cue$Builder;->setBitmapHeight(F)Landroidx/media3/common/text/Cue$Builder;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-virtual {p1}, Landroidx/media3/common/text/Cue$Builder;->build()Landroidx/media3/common/text/Cue;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    return-object p1

    .line 169
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 170
    return-object p1
.end method

.method public parseIdx(Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "\\r?\\n"

    .line 6
    .line 7
    invoke-static {p1, v0}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    array-length v0, p1

    .line 12
    const/4 v1, 0x0

    .line 13
    move v2, v1

    .line 14
    :goto_0
    if-ge v2, v0, :cond_3

    .line 15
    .line 16
    aget-object v3, p1, v2

    .line 17
    .line 18
    const-string v4, "palette: "

    .line 19
    .line 20
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    const-string v5, "VobsubParser"

    .line 25
    .line 26
    if-eqz v4, :cond_0

    .line 27
    .line 28
    const/16 v4, 0x9

    .line 29
    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const-string v4, ","

    .line 35
    .line 36
    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    array-length v4, v3

    .line 41
    new-array v4, v4, [I

    .line 42
    .line 43
    iput-object v4, p0, La1/a;->d:[I

    .line 44
    .line 45
    move v4, v1

    .line 46
    :goto_1
    array-length v6, v3

    .line 47
    if-ge v4, v6, :cond_2

    .line 48
    .line 49
    iget-object v6, p0, La1/a;->d:[I

    .line 50
    .line 51
    aget-object v7, v3, v4

    .line 52
    .line 53
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    const/16 v8, 0x10

    .line 58
    .line 59
    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 60
    .line 61
    .line 62
    move-result v7
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    goto :goto_2

    .line 64
    :catch_0
    move-exception v7

    .line 65
    const-string v8, "Parsing color failed"

    .line 66
    .line 67
    invoke-static {v5, v8, v7}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    move v7, v1

    .line 71
    :goto_2
    aput v7, v6, v4

    .line 72
    .line 73
    add-int/lit8 v4, v4, 0x1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_0
    const-string v4, "size: "

    .line 77
    .line 78
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-eqz v4, :cond_2

    .line 83
    .line 84
    const/4 v4, 0x6

    .line 85
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    const-string v6, "x"

    .line 94
    .line 95
    invoke-static {v4, v6}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    array-length v6, v4

    .line 100
    const/4 v7, 0x2

    .line 101
    if-eq v6, v7, :cond_1

    .line 102
    .line 103
    new-instance v4, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string v6, "Ignoring malformed IDX size line: \'"

    .line 106
    .line 107
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v3, "\'"

    .line 114
    .line 115
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-static {v5, v3}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_1
    :try_start_1
    aget-object v3, v4, v1

    .line 127
    .line 128
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    iput v3, p0, La1/a;->e:I

    .line 133
    .line 134
    const/4 v3, 0x1

    .line 135
    aget-object v4, v4, v3

    .line 136
    .line 137
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    iput v4, p0, La1/a;->f:I

    .line 142
    .line 143
    iput-boolean v3, p0, La1/a;->b:Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :catch_1
    move-exception v3

    .line 147
    const-string v4, "Parsing IDX failed"

    .line 148
    .line 149
    invoke-static {v5, v4, v3}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    .line 151
    .line 152
    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 153
    .line 154
    goto/16 :goto_0

    .line 155
    .line 156
    :cond_3
    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, La1/a;->c:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, La1/a;->g:Landroid/graphics/Rect;

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, La1/a;->h:I

    .line 9
    .line 10
    iput v0, p0, La1/a;->i:I

    .line 11
    .line 12
    return-void
.end method
