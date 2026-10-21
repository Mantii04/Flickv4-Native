.class public final LU0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS0/s;


# static fields
.field public static final h:[B

.field public static final i:[B

.field public static final j:[B


# instance fields
.field public final a:Landroid/graphics/Paint;

.field public final b:Landroid/graphics/Paint;

.field public final c:Landroid/graphics/Canvas;

.field public final d:LU0/b;

.field public final e:LU0/a;

.field public final f:LU0/h;

.field public g:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [B

    .line 3
    .line 4
    fill-array-data v1, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v1, LU0/i;->h:[B

    .line 8
    .line 9
    new-array v0, v0, [B

    .line 10
    .line 11
    fill-array-data v0, :array_1

    .line 12
    .line 13
    .line 14
    sput-object v0, LU0/i;->i:[B

    .line 15
    .line 16
    const/16 v0, 0x10

    .line 17
    .line 18
    new-array v0, v0, [B

    .line 19
    .line 20
    fill-array-data v0, :array_2

    .line 21
    .line 22
    .line 23
    sput-object v0, LU0/i;->j:[B

    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :array_0
    .array-data 1
        0x0t
        0x7t
        0x8t
        0xft
    .end array-data

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    :array_1
    .array-data 1
        0x0t
        0x77t
        -0x78t
        -0x1t
    .end array-data

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    :array_2
    .array-data 1
        0x0t
        0x11t
        0x22t
        0x33t
        0x44t
        0x55t
        0x66t
        0x77t
        -0x78t
        -0x67t
        -0x56t
        -0x45t
        -0x34t
        -0x23t
        -0x12t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, [B

    .line 12
    .line 13
    invoke-direct {v0, p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    new-instance v2, Landroid/graphics/Paint;

    .line 25
    .line 26
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v2, p0, LU0/i;->a:Landroid/graphics/Paint;

    .line 30
    .line 31
    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 34
    .line 35
    .line 36
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    .line 37
    .line 38
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    .line 39
    .line 40
    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 44
    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 48
    .line 49
    .line 50
    new-instance v2, Landroid/graphics/Paint;

    .line 51
    .line 52
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v2, p0, LU0/i;->b:Landroid/graphics/Paint;

    .line 56
    .line 57
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 58
    .line 59
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    .line 61
    .line 62
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    .line 63
    .line 64
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 65
    .line 66
    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 73
    .line 74
    .line 75
    new-instance v2, Landroid/graphics/Canvas;

    .line 76
    .line 77
    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object v2, p0, LU0/i;->c:Landroid/graphics/Canvas;

    .line 81
    .line 82
    new-instance v3, LU0/b;

    .line 83
    .line 84
    const/4 v6, 0x0

    .line 85
    const/16 v7, 0x2cf

    .line 86
    .line 87
    const/16 v4, 0x2cf

    .line 88
    .line 89
    const/16 v5, 0x23f

    .line 90
    .line 91
    const/4 v8, 0x0

    .line 92
    const/16 v9, 0x23f

    .line 93
    .line 94
    invoke-direct/range {v3 .. v9}, LU0/b;-><init>(IIIIII)V

    .line 95
    .line 96
    .line 97
    iput-object v3, p0, LU0/i;->d:LU0/b;

    .line 98
    .line 99
    new-instance v2, LU0/a;

    .line 100
    .line 101
    const v3, -0x808081

    .line 102
    .line 103
    .line 104
    const/4 v4, -0x1

    .line 105
    const/high16 v5, -0x1000000

    .line 106
    .line 107
    filled-new-array {v1, v4, v5, v3}, [I

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-static {}, LU0/i;->b()[I

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-static {}, LU0/i;->c()[I

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    invoke-direct {v2, v1, v3, v4, v5}, LU0/a;-><init>(I[I[I[I)V

    .line 120
    .line 121
    .line 122
    iput-object v2, p0, LU0/i;->e:LU0/a;

    .line 123
    .line 124
    new-instance v1, LU0/h;

    .line 125
    .line 126
    invoke-direct {v1, p1, v0}, LU0/h;-><init>(II)V

    .line 127
    .line 128
    .line 129
    iput-object v1, p0, LU0/i;->f:LU0/h;

    .line 130
    .line 131
    return-void
.end method

.method public static a(IILandroidx/media3/common/util/ParsableBitArray;)[B
    .locals 3

    .line 1
    new-array v0, p0, [B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    if-ge v1, p0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p2, p1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    int-to-byte v2, v2

    .line 11
    aput-byte v2, v0, v1

    .line 12
    .line 13
    add-int/lit8 v1, v1, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return-object v0
.end method

.method public static b()[I
    .locals 9

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aput v2, v1, v2

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    :goto_0
    if-ge v3, v0, :cond_7

    .line 10
    .line 11
    const/16 v4, 0x8

    .line 12
    .line 13
    const/16 v5, 0xff

    .line 14
    .line 15
    if-ge v3, v4, :cond_3

    .line 16
    .line 17
    and-int/lit8 v4, v3, 0x1

    .line 18
    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    move v4, v5

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    move v4, v2

    .line 24
    :goto_1
    and-int/lit8 v6, v3, 0x2

    .line 25
    .line 26
    if-eqz v6, :cond_1

    .line 27
    .line 28
    move v6, v5

    .line 29
    goto :goto_2

    .line 30
    :cond_1
    move v6, v2

    .line 31
    :goto_2
    and-int/lit8 v7, v3, 0x4

    .line 32
    .line 33
    if-eqz v7, :cond_2

    .line 34
    .line 35
    move v7, v5

    .line 36
    goto :goto_3

    .line 37
    :cond_2
    move v7, v2

    .line 38
    :goto_3
    invoke-static {v5, v4, v6, v7}, LU0/i;->d(IIII)I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    aput v4, v1, v3

    .line 43
    .line 44
    goto :goto_7

    .line 45
    :cond_3
    and-int/lit8 v4, v3, 0x1

    .line 46
    .line 47
    const/16 v6, 0x7f

    .line 48
    .line 49
    if-eqz v4, :cond_4

    .line 50
    .line 51
    move v4, v6

    .line 52
    goto :goto_4

    .line 53
    :cond_4
    move v4, v2

    .line 54
    :goto_4
    and-int/lit8 v7, v3, 0x2

    .line 55
    .line 56
    if-eqz v7, :cond_5

    .line 57
    .line 58
    move v7, v6

    .line 59
    goto :goto_5

    .line 60
    :cond_5
    move v7, v2

    .line 61
    :goto_5
    and-int/lit8 v8, v3, 0x4

    .line 62
    .line 63
    if-eqz v8, :cond_6

    .line 64
    .line 65
    goto :goto_6

    .line 66
    :cond_6
    move v6, v2

    .line 67
    :goto_6
    invoke-static {v5, v4, v7, v6}, LU0/i;->d(IIII)I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    aput v4, v1, v3

    .line 72
    .line 73
    :goto_7
    add-int/lit8 v3, v3, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_7
    return-object v1
.end method

.method public static c()[I
    .locals 11

    .line 1
    const/16 v0, 0x100

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aput v2, v1, v2

    .line 7
    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ge v3, v0, :cond_20

    .line 10
    .line 11
    const/16 v4, 0x8

    .line 12
    .line 13
    const/16 v5, 0xff

    .line 14
    .line 15
    if-ge v3, v4, :cond_3

    .line 16
    .line 17
    and-int/lit8 v4, v3, 0x1

    .line 18
    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    move v4, v5

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    move v4, v2

    .line 24
    :goto_1
    and-int/lit8 v6, v3, 0x2

    .line 25
    .line 26
    if-eqz v6, :cond_1

    .line 27
    .line 28
    move v6, v5

    .line 29
    goto :goto_2

    .line 30
    :cond_1
    move v6, v2

    .line 31
    :goto_2
    and-int/lit8 v7, v3, 0x4

    .line 32
    .line 33
    if-eqz v7, :cond_2

    .line 34
    .line 35
    goto :goto_3

    .line 36
    :cond_2
    move v5, v2

    .line 37
    :goto_3
    const/16 v7, 0x3f

    .line 38
    .line 39
    invoke-static {v7, v4, v6, v5}, LU0/i;->d(IIII)I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    aput v4, v1, v3

    .line 44
    .line 45
    goto/16 :goto_1c

    .line 46
    .line 47
    :cond_3
    and-int/lit16 v6, v3, 0x88

    .line 48
    .line 49
    const/16 v7, 0xaa

    .line 50
    .line 51
    const/16 v8, 0x55

    .line 52
    .line 53
    if-eqz v6, :cond_19

    .line 54
    .line 55
    const/16 v9, 0x7f

    .line 56
    .line 57
    if-eq v6, v4, :cond_12

    .line 58
    .line 59
    const/16 v4, 0x80

    .line 60
    .line 61
    const/16 v7, 0x2b

    .line 62
    .line 63
    if-eq v6, v4, :cond_b

    .line 64
    .line 65
    const/16 v4, 0x88

    .line 66
    .line 67
    if-eq v6, v4, :cond_4

    .line 68
    .line 69
    goto/16 :goto_1c

    .line 70
    .line 71
    :cond_4
    and-int/lit8 v4, v3, 0x1

    .line 72
    .line 73
    if-eqz v4, :cond_5

    .line 74
    .line 75
    move v4, v7

    .line 76
    goto :goto_4

    .line 77
    :cond_5
    move v4, v2

    .line 78
    :goto_4
    and-int/lit8 v6, v3, 0x10

    .line 79
    .line 80
    if-eqz v6, :cond_6

    .line 81
    .line 82
    move v6, v8

    .line 83
    goto :goto_5

    .line 84
    :cond_6
    move v6, v2

    .line 85
    :goto_5
    add-int/2addr v4, v6

    .line 86
    and-int/lit8 v6, v3, 0x2

    .line 87
    .line 88
    if-eqz v6, :cond_7

    .line 89
    .line 90
    move v6, v7

    .line 91
    goto :goto_6

    .line 92
    :cond_7
    move v6, v2

    .line 93
    :goto_6
    and-int/lit8 v9, v3, 0x20

    .line 94
    .line 95
    if-eqz v9, :cond_8

    .line 96
    .line 97
    move v9, v8

    .line 98
    goto :goto_7

    .line 99
    :cond_8
    move v9, v2

    .line 100
    :goto_7
    add-int/2addr v6, v9

    .line 101
    and-int/lit8 v9, v3, 0x4

    .line 102
    .line 103
    if-eqz v9, :cond_9

    .line 104
    .line 105
    goto :goto_8

    .line 106
    :cond_9
    move v7, v2

    .line 107
    :goto_8
    and-int/lit8 v9, v3, 0x40

    .line 108
    .line 109
    if-eqz v9, :cond_a

    .line 110
    .line 111
    goto :goto_9

    .line 112
    :cond_a
    move v8, v2

    .line 113
    :goto_9
    add-int/2addr v7, v8

    .line 114
    invoke-static {v5, v4, v6, v7}, LU0/i;->d(IIII)I

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    aput v4, v1, v3

    .line 119
    .line 120
    goto/16 :goto_1c

    .line 121
    .line 122
    :cond_b
    and-int/lit8 v4, v3, 0x1

    .line 123
    .line 124
    if-eqz v4, :cond_c

    .line 125
    .line 126
    move v4, v7

    .line 127
    goto :goto_a

    .line 128
    :cond_c
    move v4, v2

    .line 129
    :goto_a
    add-int/2addr v4, v9

    .line 130
    and-int/lit8 v6, v3, 0x10

    .line 131
    .line 132
    if-eqz v6, :cond_d

    .line 133
    .line 134
    move v6, v8

    .line 135
    goto :goto_b

    .line 136
    :cond_d
    move v6, v2

    .line 137
    :goto_b
    add-int/2addr v4, v6

    .line 138
    and-int/lit8 v6, v3, 0x2

    .line 139
    .line 140
    if-eqz v6, :cond_e

    .line 141
    .line 142
    move v6, v7

    .line 143
    goto :goto_c

    .line 144
    :cond_e
    move v6, v2

    .line 145
    :goto_c
    add-int/2addr v6, v9

    .line 146
    and-int/lit8 v10, v3, 0x20

    .line 147
    .line 148
    if-eqz v10, :cond_f

    .line 149
    .line 150
    move v10, v8

    .line 151
    goto :goto_d

    .line 152
    :cond_f
    move v10, v2

    .line 153
    :goto_d
    add-int/2addr v6, v10

    .line 154
    and-int/lit8 v10, v3, 0x4

    .line 155
    .line 156
    if-eqz v10, :cond_10

    .line 157
    .line 158
    goto :goto_e

    .line 159
    :cond_10
    move v7, v2

    .line 160
    :goto_e
    add-int/2addr v7, v9

    .line 161
    and-int/lit8 v9, v3, 0x40

    .line 162
    .line 163
    if-eqz v9, :cond_11

    .line 164
    .line 165
    goto :goto_f

    .line 166
    :cond_11
    move v8, v2

    .line 167
    :goto_f
    add-int/2addr v7, v8

    .line 168
    invoke-static {v5, v4, v6, v7}, LU0/i;->d(IIII)I

    .line 169
    .line 170
    .line 171
    move-result v4

    .line 172
    aput v4, v1, v3

    .line 173
    .line 174
    goto/16 :goto_1c

    .line 175
    .line 176
    :cond_12
    and-int/lit8 v4, v3, 0x1

    .line 177
    .line 178
    if-eqz v4, :cond_13

    .line 179
    .line 180
    move v4, v8

    .line 181
    goto :goto_10

    .line 182
    :cond_13
    move v4, v2

    .line 183
    :goto_10
    and-int/lit8 v5, v3, 0x10

    .line 184
    .line 185
    if-eqz v5, :cond_14

    .line 186
    .line 187
    move v5, v7

    .line 188
    goto :goto_11

    .line 189
    :cond_14
    move v5, v2

    .line 190
    :goto_11
    add-int/2addr v4, v5

    .line 191
    and-int/lit8 v5, v3, 0x2

    .line 192
    .line 193
    if-eqz v5, :cond_15

    .line 194
    .line 195
    move v5, v8

    .line 196
    goto :goto_12

    .line 197
    :cond_15
    move v5, v2

    .line 198
    :goto_12
    and-int/lit8 v6, v3, 0x20

    .line 199
    .line 200
    if-eqz v6, :cond_16

    .line 201
    .line 202
    move v6, v7

    .line 203
    goto :goto_13

    .line 204
    :cond_16
    move v6, v2

    .line 205
    :goto_13
    add-int/2addr v5, v6

    .line 206
    and-int/lit8 v6, v3, 0x4

    .line 207
    .line 208
    if-eqz v6, :cond_17

    .line 209
    .line 210
    goto :goto_14

    .line 211
    :cond_17
    move v8, v2

    .line 212
    :goto_14
    and-int/lit8 v6, v3, 0x40

    .line 213
    .line 214
    if-eqz v6, :cond_18

    .line 215
    .line 216
    goto :goto_15

    .line 217
    :cond_18
    move v7, v2

    .line 218
    :goto_15
    add-int/2addr v8, v7

    .line 219
    invoke-static {v9, v4, v5, v8}, LU0/i;->d(IIII)I

    .line 220
    .line 221
    .line 222
    move-result v4

    .line 223
    aput v4, v1, v3

    .line 224
    .line 225
    goto :goto_1c

    .line 226
    :cond_19
    and-int/lit8 v4, v3, 0x1

    .line 227
    .line 228
    if-eqz v4, :cond_1a

    .line 229
    .line 230
    move v4, v8

    .line 231
    goto :goto_16

    .line 232
    :cond_1a
    move v4, v2

    .line 233
    :goto_16
    and-int/lit8 v6, v3, 0x10

    .line 234
    .line 235
    if-eqz v6, :cond_1b

    .line 236
    .line 237
    move v6, v7

    .line 238
    goto :goto_17

    .line 239
    :cond_1b
    move v6, v2

    .line 240
    :goto_17
    add-int/2addr v4, v6

    .line 241
    and-int/lit8 v6, v3, 0x2

    .line 242
    .line 243
    if-eqz v6, :cond_1c

    .line 244
    .line 245
    move v6, v8

    .line 246
    goto :goto_18

    .line 247
    :cond_1c
    move v6, v2

    .line 248
    :goto_18
    and-int/lit8 v9, v3, 0x20

    .line 249
    .line 250
    if-eqz v9, :cond_1d

    .line 251
    .line 252
    move v9, v7

    .line 253
    goto :goto_19

    .line 254
    :cond_1d
    move v9, v2

    .line 255
    :goto_19
    add-int/2addr v6, v9

    .line 256
    and-int/lit8 v9, v3, 0x4

    .line 257
    .line 258
    if-eqz v9, :cond_1e

    .line 259
    .line 260
    goto :goto_1a

    .line 261
    :cond_1e
    move v8, v2

    .line 262
    :goto_1a
    and-int/lit8 v9, v3, 0x40

    .line 263
    .line 264
    if-eqz v9, :cond_1f

    .line 265
    .line 266
    goto :goto_1b

    .line 267
    :cond_1f
    move v7, v2

    .line 268
    :goto_1b
    add-int/2addr v8, v7

    .line 269
    invoke-static {v5, v4, v6, v8}, LU0/i;->d(IIII)I

    .line 270
    .line 271
    .line 272
    move-result v4

    .line 273
    aput v4, v1, v3

    .line 274
    .line 275
    :goto_1c
    add-int/lit8 v3, v3, 0x1

    .line 276
    .line 277
    goto/16 :goto_0

    .line 278
    .line 279
    :cond_20
    return-object v1
.end method

.method public static d(IIII)I
    .locals 0

    .line 1
    shl-int/lit8 p0, p0, 0x18

    .line 2
    .line 3
    shl-int/lit8 p1, p1, 0x10

    .line 4
    .line 5
    or-int/2addr p0, p1

    .line 6
    shl-int/lit8 p1, p2, 0x8

    .line 7
    .line 8
    or-int/2addr p0, p1

    .line 9
    or-int/2addr p0, p3

    .line 10
    return p0
.end method

.method public static e([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 22

    .line 1
    move/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v6, p5

    .line 4
    .line 5
    new-instance v7, Landroidx/media3/common/util/ParsableBitArray;

    .line 6
    .line 7
    move-object/from16 v1, p0

    .line 8
    .line 9
    invoke-direct {v7, v1}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    .line 10
    .line 11
    .line 12
    move/from16 v1, p3

    .line 13
    .line 14
    move/from16 v9, p4

    .line 15
    .line 16
    const/4 v10, 0x0

    .line 17
    const/4 v11, 0x0

    .line 18
    const/4 v12, 0x0

    .line 19
    :goto_0
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_21

    .line 24
    .line 25
    const/16 v13, 0x8

    .line 26
    .line 27
    invoke-virtual {v7, v13}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const/16 v3, 0xf0

    .line 32
    .line 33
    if-eq v2, v3, :cond_20

    .line 34
    .line 35
    const/4 v14, 0x2

    .line 36
    const/4 v15, 0x1

    .line 37
    const/16 v16, 0x0

    .line 38
    .line 39
    const/4 v3, 0x3

    .line 40
    const/4 v4, 0x4

    .line 41
    packed-switch v2, :pswitch_data_0

    .line 42
    .line 43
    .line 44
    packed-switch v2, :pswitch_data_1

    .line 45
    .line 46
    .line 47
    goto/16 :goto_12

    .line 48
    .line 49
    :pswitch_0
    const/16 v2, 0x10

    .line 50
    .line 51
    invoke-static {v2, v13, v7}, LU0/i;->a(IILandroidx/media3/common/util/ParsableBitArray;)[B

    .line 52
    .line 53
    .line 54
    move-result-object v11

    .line 55
    goto/16 :goto_12

    .line 56
    .line 57
    :pswitch_1
    invoke-static {v4, v13, v7}, LU0/i;->a(IILandroidx/media3/common/util/ParsableBitArray;)[B

    .line 58
    .line 59
    .line 60
    move-result-object v10

    .line 61
    goto/16 :goto_12

    .line 62
    .line 63
    :pswitch_2
    invoke-static {v4, v4, v7}, LU0/i;->a(IILandroidx/media3/common/util/ParsableBitArray;)[B

    .line 64
    .line 65
    .line 66
    move-result-object v12

    .line 67
    goto/16 :goto_12

    .line 68
    .line 69
    :pswitch_3
    move v14, v1

    .line 70
    move/from16 v1, v16

    .line 71
    .line 72
    :goto_1
    invoke-virtual {v7, v13}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_0

    .line 77
    .line 78
    move/from16 v17, v1

    .line 79
    .line 80
    move/from16 v18, v15

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_0
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    const/4 v3, 0x7

    .line 88
    if-nez v2, :cond_2

    .line 89
    .line 90
    invoke-virtual {v7, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_1

    .line 95
    .line 96
    move/from16 v17, v1

    .line 97
    .line 98
    move/from16 v18, v2

    .line 99
    .line 100
    move/from16 v2, v16

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_1
    move/from16 v17, v15

    .line 104
    .line 105
    move/from16 v2, v16

    .line 106
    .line 107
    move/from16 v18, v2

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_2
    invoke-virtual {v7, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    invoke-virtual {v7, v13}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    move/from16 v17, v1

    .line 119
    .line 120
    move/from16 v18, v2

    .line 121
    .line 122
    move v2, v3

    .line 123
    :goto_2
    if-eqz v18, :cond_3

    .line 124
    .line 125
    if-eqz v6, :cond_3

    .line 126
    .line 127
    aget v1, p1, v2

    .line 128
    .line 129
    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    .line 131
    .line 132
    int-to-float v2, v14

    .line 133
    int-to-float v3, v9

    .line 134
    add-int v1, v14, v18

    .line 135
    .line 136
    int-to-float v4, v1

    .line 137
    add-int/lit8 v1, v9, 0x1

    .line 138
    .line 139
    int-to-float v5, v1

    .line 140
    move-object/from16 v1, p6

    .line 141
    .line 142
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 143
    .line 144
    .line 145
    :cond_3
    add-int v14, v14, v18

    .line 146
    .line 147
    if-eqz v17, :cond_4

    .line 148
    .line 149
    move v1, v14

    .line 150
    goto/16 :goto_12

    .line 151
    .line 152
    :cond_4
    move/from16 v1, v17

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :pswitch_4
    if-ne v0, v3, :cond_6

    .line 156
    .line 157
    if-nez v11, :cond_5

    .line 158
    .line 159
    sget-object v2, LU0/i;->j:[B

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_5
    move-object v2, v11

    .line 163
    :goto_3
    move-object/from16 v17, v2

    .line 164
    .line 165
    goto :goto_4

    .line 166
    :cond_6
    const/16 v17, 0x0

    .line 167
    .line 168
    :goto_4
    move/from16 v2, v16

    .line 169
    .line 170
    :goto_5
    invoke-virtual {v7, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 171
    .line 172
    .line 173
    move-result v5

    .line 174
    if-eqz v5, :cond_7

    .line 175
    .line 176
    move/from16 v18, v2

    .line 177
    .line 178
    move/from16 v19, v15

    .line 179
    .line 180
    goto/16 :goto_9

    .line 181
    .line 182
    :cond_7
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 183
    .line 184
    .line 185
    move-result v5

    .line 186
    if-nez v5, :cond_9

    .line 187
    .line 188
    invoke-virtual {v7, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 189
    .line 190
    .line 191
    move-result v5

    .line 192
    if-eqz v5, :cond_8

    .line 193
    .line 194
    add-int/lit8 v5, v5, 0x2

    .line 195
    .line 196
    move/from16 v18, v2

    .line 197
    .line 198
    move/from16 v19, v5

    .line 199
    .line 200
    :goto_6
    move/from16 v5, v16

    .line 201
    .line 202
    goto :goto_9

    .line 203
    :cond_8
    move/from16 v18, v15

    .line 204
    .line 205
    :goto_7
    move/from16 v5, v16

    .line 206
    .line 207
    move/from16 v19, v5

    .line 208
    .line 209
    goto :goto_9

    .line 210
    :cond_9
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 211
    .line 212
    .line 213
    move-result v5

    .line 214
    if-nez v5, :cond_a

    .line 215
    .line 216
    invoke-virtual {v7, v14}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 217
    .line 218
    .line 219
    move-result v5

    .line 220
    add-int/2addr v5, v4

    .line 221
    invoke-virtual {v7, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 222
    .line 223
    .line 224
    move-result v18

    .line 225
    :goto_8
    move/from16 v19, v5

    .line 226
    .line 227
    move/from16 v5, v18

    .line 228
    .line 229
    move/from16 v18, v2

    .line 230
    .line 231
    goto :goto_9

    .line 232
    :cond_a
    invoke-virtual {v7, v14}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 233
    .line 234
    .line 235
    move-result v5

    .line 236
    if-eqz v5, :cond_e

    .line 237
    .line 238
    if-eq v5, v15, :cond_d

    .line 239
    .line 240
    if-eq v5, v14, :cond_c

    .line 241
    .line 242
    if-eq v5, v3, :cond_b

    .line 243
    .line 244
    move/from16 v18, v2

    .line 245
    .line 246
    goto :goto_7

    .line 247
    :cond_b
    invoke-virtual {v7, v13}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 248
    .line 249
    .line 250
    move-result v5

    .line 251
    add-int/lit8 v5, v5, 0x19

    .line 252
    .line 253
    invoke-virtual {v7, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 254
    .line 255
    .line 256
    move-result v18

    .line 257
    goto :goto_8

    .line 258
    :cond_c
    invoke-virtual {v7, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 259
    .line 260
    .line 261
    move-result v5

    .line 262
    add-int/lit8 v5, v5, 0x9

    .line 263
    .line 264
    invoke-virtual {v7, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 265
    .line 266
    .line 267
    move-result v18

    .line 268
    goto :goto_8

    .line 269
    :cond_d
    move/from16 v18, v2

    .line 270
    .line 271
    move/from16 v19, v14

    .line 272
    .line 273
    goto :goto_6

    .line 274
    :cond_e
    move/from16 v18, v2

    .line 275
    .line 276
    move/from16 v19, v15

    .line 277
    .line 278
    goto :goto_6

    .line 279
    :goto_9
    if-eqz v19, :cond_10

    .line 280
    .line 281
    if-eqz v6, :cond_10

    .line 282
    .line 283
    if-eqz v17, :cond_f

    .line 284
    .line 285
    aget-byte v5, v17, v5

    .line 286
    .line 287
    :cond_f
    aget v2, p1, v5

    .line 288
    .line 289
    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 290
    .line 291
    .line 292
    int-to-float v2, v1

    .line 293
    move v5, v3

    .line 294
    int-to-float v3, v9

    .line 295
    add-int v4, v1, v19

    .line 296
    .line 297
    int-to-float v4, v4

    .line 298
    add-int/lit8 v5, v9, 0x1

    .line 299
    .line 300
    int-to-float v5, v5

    .line 301
    move/from16 v21, v1

    .line 302
    .line 303
    const/4 v8, 0x3

    .line 304
    move-object/from16 v1, p6

    .line 305
    .line 306
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 307
    .line 308
    .line 309
    goto :goto_a

    .line 310
    :cond_10
    move/from16 v21, v1

    .line 311
    .line 312
    move v8, v3

    .line 313
    :goto_a
    add-int v1, v21, v19

    .line 314
    .line 315
    if-eqz v18, :cond_11

    .line 316
    .line 317
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableBitArray;->byteAlign()V

    .line 318
    .line 319
    .line 320
    goto/16 :goto_12

    .line 321
    .line 322
    :cond_11
    move v3, v8

    .line 323
    move/from16 v2, v18

    .line 324
    .line 325
    const/4 v4, 0x4

    .line 326
    goto/16 :goto_5

    .line 327
    .line 328
    :pswitch_5
    move v8, v3

    .line 329
    if-ne v0, v8, :cond_13

    .line 330
    .line 331
    if-nez v10, :cond_12

    .line 332
    .line 333
    sget-object v2, LU0/i;->i:[B

    .line 334
    .line 335
    goto :goto_b

    .line 336
    :cond_12
    move-object v2, v10

    .line 337
    :goto_b
    move-object/from16 v17, v2

    .line 338
    .line 339
    goto :goto_c

    .line 340
    :cond_13
    if-ne v0, v14, :cond_15

    .line 341
    .line 342
    if-nez v12, :cond_14

    .line 343
    .line 344
    sget-object v2, LU0/i;->h:[B

    .line 345
    .line 346
    goto :goto_b

    .line 347
    :cond_14
    move-object v2, v12

    .line 348
    goto :goto_b

    .line 349
    :cond_15
    const/16 v17, 0x0

    .line 350
    .line 351
    :goto_c
    move/from16 v2, v16

    .line 352
    .line 353
    :goto_d
    invoke-virtual {v7, v14}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 354
    .line 355
    .line 356
    move-result v3

    .line 357
    if-eqz v3, :cond_16

    .line 358
    .line 359
    move/from16 v18, v2

    .line 360
    .line 361
    move v4, v3

    .line 362
    move/from16 v19, v15

    .line 363
    .line 364
    :goto_e
    const/4 v3, 0x4

    .line 365
    goto/16 :goto_10

    .line 366
    .line 367
    :cond_16
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 368
    .line 369
    .line 370
    move-result v3

    .line 371
    if-eqz v3, :cond_17

    .line 372
    .line 373
    invoke-virtual {v7, v8}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 374
    .line 375
    .line 376
    move-result v3

    .line 377
    add-int/2addr v3, v8

    .line 378
    invoke-virtual {v7, v14}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 379
    .line 380
    .line 381
    move-result v4

    .line 382
    :goto_f
    move/from16 v18, v2

    .line 383
    .line 384
    move/from16 v19, v3

    .line 385
    .line 386
    goto :goto_e

    .line 387
    :cond_17
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 388
    .line 389
    .line 390
    move-result v3

    .line 391
    if-eqz v3, :cond_18

    .line 392
    .line 393
    move/from16 v18, v2

    .line 394
    .line 395
    move/from16 v19, v15

    .line 396
    .line 397
    move/from16 v4, v16

    .line 398
    .line 399
    goto :goto_e

    .line 400
    :cond_18
    invoke-virtual {v7, v14}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 401
    .line 402
    .line 403
    move-result v3

    .line 404
    if-eqz v3, :cond_1c

    .line 405
    .line 406
    if-eq v3, v15, :cond_1b

    .line 407
    .line 408
    if-eq v3, v14, :cond_1a

    .line 409
    .line 410
    if-eq v3, v8, :cond_19

    .line 411
    .line 412
    move/from16 v18, v2

    .line 413
    .line 414
    move/from16 v4, v16

    .line 415
    .line 416
    move/from16 v19, v4

    .line 417
    .line 418
    goto :goto_e

    .line 419
    :cond_19
    invoke-virtual {v7, v13}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 420
    .line 421
    .line 422
    move-result v3

    .line 423
    add-int/lit8 v3, v3, 0x1d

    .line 424
    .line 425
    invoke-virtual {v7, v14}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 426
    .line 427
    .line 428
    move-result v4

    .line 429
    goto :goto_f

    .line 430
    :cond_1a
    const/4 v3, 0x4

    .line 431
    invoke-virtual {v7, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 432
    .line 433
    .line 434
    move-result v4

    .line 435
    add-int/lit8 v4, v4, 0xc

    .line 436
    .line 437
    invoke-virtual {v7, v14}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 438
    .line 439
    .line 440
    move-result v5

    .line 441
    move/from16 v18, v2

    .line 442
    .line 443
    move/from16 v19, v4

    .line 444
    .line 445
    move v4, v5

    .line 446
    goto :goto_10

    .line 447
    :cond_1b
    const/4 v3, 0x4

    .line 448
    move/from16 v18, v2

    .line 449
    .line 450
    move/from16 v19, v14

    .line 451
    .line 452
    move/from16 v4, v16

    .line 453
    .line 454
    goto :goto_10

    .line 455
    :cond_1c
    const/4 v3, 0x4

    .line 456
    move/from16 v18, v15

    .line 457
    .line 458
    move/from16 v4, v16

    .line 459
    .line 460
    move/from16 v19, v4

    .line 461
    .line 462
    :goto_10
    if-eqz v19, :cond_1e

    .line 463
    .line 464
    if-eqz v6, :cond_1e

    .line 465
    .line 466
    if-eqz v17, :cond_1d

    .line 467
    .line 468
    aget-byte v4, v17, v4

    .line 469
    .line 470
    :cond_1d
    aget v2, p1, v4

    .line 471
    .line 472
    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 473
    .line 474
    .line 475
    int-to-float v2, v1

    .line 476
    move/from16 v20, v3

    .line 477
    .line 478
    int-to-float v3, v9

    .line 479
    add-int v4, v1, v19

    .line 480
    .line 481
    int-to-float v4, v4

    .line 482
    add-int/lit8 v5, v9, 0x1

    .line 483
    .line 484
    int-to-float v5, v5

    .line 485
    move/from16 v21, v1

    .line 486
    .line 487
    move-object/from16 v1, p6

    .line 488
    .line 489
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 490
    .line 491
    .line 492
    goto :goto_11

    .line 493
    :cond_1e
    move/from16 v21, v1

    .line 494
    .line 495
    move/from16 v20, v3

    .line 496
    .line 497
    :goto_11
    add-int v1, v21, v19

    .line 498
    .line 499
    if-eqz v18, :cond_1f

    .line 500
    .line 501
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableBitArray;->byteAlign()V

    .line 502
    .line 503
    .line 504
    goto :goto_12

    .line 505
    :cond_1f
    move-object/from16 v6, p5

    .line 506
    .line 507
    move/from16 v2, v18

    .line 508
    .line 509
    goto/16 :goto_d

    .line 510
    .line 511
    :cond_20
    add-int/lit8 v9, v9, 0x2

    .line 512
    .line 513
    move/from16 v1, p3

    .line 514
    .line 515
    :goto_12
    move-object/from16 v6, p5

    .line 516
    .line 517
    goto/16 :goto_0

    .line 518
    .line 519
    :cond_21
    return-void

    .line 520
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static f(Landroidx/media3/common/util/ParsableBitArray;I)LU0/a;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x2

    .line 13
    add-int/lit8 v4, p1, -0x2

    .line 14
    .line 15
    const v5, -0x808081

    .line 16
    .line 17
    .line 18
    const/4 v6, -0x1

    .line 19
    const/4 v7, 0x0

    .line 20
    const/high16 v8, -0x1000000

    .line 21
    .line 22
    filled-new-array {v7, v6, v8, v5}, [I

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    invoke-static {}, LU0/i;->b()[I

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    invoke-static {}, LU0/i;->c()[I

    .line 31
    .line 32
    .line 33
    move-result-object v8

    .line 34
    :goto_0
    if-lez v4, :cond_4

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 37
    .line 38
    .line 39
    move-result v9

    .line 40
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 41
    .line 42
    .line 43
    move-result v10

    .line 44
    and-int/lit16 v11, v10, 0x80

    .line 45
    .line 46
    if-eqz v11, :cond_0

    .line 47
    .line 48
    move-object v11, v5

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    and-int/lit8 v11, v10, 0x40

    .line 51
    .line 52
    if-eqz v11, :cond_1

    .line 53
    .line 54
    move-object v11, v6

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    move-object v11, v8

    .line 57
    :goto_1
    and-int/lit8 v10, v10, 0x1

    .line 58
    .line 59
    if-eqz v10, :cond_2

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 62
    .line 63
    .line 64
    move-result v10

    .line 65
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 66
    .line 67
    .line 68
    move-result v12

    .line 69
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 70
    .line 71
    .line 72
    move-result v13

    .line 73
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 74
    .line 75
    .line 76
    move-result v14

    .line 77
    add-int/lit8 v4, v4, -0x6

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_2
    const/4 v10, 0x6

    .line 81
    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 82
    .line 83
    .line 84
    move-result v12

    .line 85
    shl-int/2addr v12, v3

    .line 86
    const/4 v13, 0x4

    .line 87
    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 88
    .line 89
    .line 90
    move-result v14

    .line 91
    shl-int/2addr v14, v13

    .line 92
    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 93
    .line 94
    .line 95
    move-result v15

    .line 96
    shl-int/lit8 v13, v15, 0x4

    .line 97
    .line 98
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 99
    .line 100
    .line 101
    move-result v15

    .line 102
    shl-int/lit8 v10, v15, 0x6

    .line 103
    .line 104
    add-int/lit8 v4, v4, -0x4

    .line 105
    .line 106
    move/from16 v23, v14

    .line 107
    .line 108
    move v14, v10

    .line 109
    move v10, v12

    .line 110
    move/from16 v12, v23

    .line 111
    .line 112
    :goto_2
    const/16 v15, 0xff

    .line 113
    .line 114
    if-nez v10, :cond_3

    .line 115
    .line 116
    move v12, v7

    .line 117
    move v13, v12

    .line 118
    move v14, v15

    .line 119
    :cond_3
    and-int/2addr v14, v15

    .line 120
    rsub-int v14, v14, 0xff

    .line 121
    .line 122
    int-to-byte v14, v14

    .line 123
    move/from16 p1, v4

    .line 124
    .line 125
    int-to-double v3, v10

    .line 126
    add-int/lit8 v12, v12, -0x80

    .line 127
    .line 128
    move/from16 v16, v2

    .line 129
    .line 130
    int-to-double v1, v12

    .line 131
    const-wide v17, 0x3ff66e978d4fdf3bL    # 1.402

    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    mul-double v17, v17, v1

    .line 137
    .line 138
    move-object v12, v11

    .line 139
    add-double v10, v17, v3

    .line 140
    .line 141
    double-to-int v10, v10

    .line 142
    add-int/lit8 v13, v13, -0x80

    .line 143
    .line 144
    move-object/from16 v17, v8

    .line 145
    .line 146
    int-to-double v7, v13

    .line 147
    const-wide v19, 0x3fd60663c74fb54aL    # 0.34414

    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    mul-double v19, v19, v7

    .line 153
    .line 154
    sub-double v19, v3, v19

    .line 155
    .line 156
    const-wide v21, 0x3fe6da3c21187e7cL    # 0.71414

    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    mul-double v1, v1, v21

    .line 162
    .line 163
    sub-double v1, v19, v1

    .line 164
    .line 165
    double-to-int v1, v1

    .line 166
    const-wide v19, 0x3ffc5a1cac083127L    # 1.772

    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    mul-double v7, v7, v19

    .line 172
    .line 173
    add-double/2addr v7, v3

    .line 174
    double-to-int v2, v7

    .line 175
    const/4 v11, 0x0

    .line 176
    invoke-static {v10, v11, v15}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    invoke-static {v1, v11, v15}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    invoke-static {v2, v11, v15}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    invoke-static {v14, v3, v1, v2}, LU0/i;->d(IIII)I

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    aput v1, v12, v9

    .line 193
    .line 194
    move/from16 v4, p1

    .line 195
    .line 196
    move v7, v11

    .line 197
    move/from16 v2, v16

    .line 198
    .line 199
    move-object/from16 v8, v17

    .line 200
    .line 201
    const/16 v1, 0x8

    .line 202
    .line 203
    const/4 v3, 0x2

    .line 204
    goto/16 :goto_0

    .line 205
    .line 206
    :cond_4
    move/from16 v16, v2

    .line 207
    .line 208
    move-object/from16 v17, v8

    .line 209
    .line 210
    new-instance v0, LU0/a;

    .line 211
    .line 212
    move/from16 v1, v16

    .line 213
    .line 214
    move-object/from16 v2, v17

    .line 215
    .line 216
    invoke-direct {v0, v1, v5, v6, v2}, LU0/a;-><init>(I[I[I[I)V

    .line 217
    .line 218
    .line 219
    return-object v0
.end method

.method public static g(Landroidx/media3/common/util/ParsableBitArray;)LU0/c;
    .locals 6

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x4

    .line 8
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const/4 v4, 0x1

    .line 21
    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 22
    .line 23
    .line 24
    sget-object v5, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    .line 25
    .line 26
    if-ne v2, v4, :cond_0

    .line 27
    .line 28
    const/16 v2, 0x8

    .line 29
    .line 30
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    mul-int/2addr v2, v0

    .line 35
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    if-nez v2, :cond_2

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const/4 v4, 0x0

    .line 50
    if-lez v2, :cond_1

    .line 51
    .line 52
    new-array v5, v2, [B

    .line 53
    .line 54
    invoke-virtual {p0, v5, v4, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBytes([BII)V

    .line 55
    .line 56
    .line 57
    :cond_1
    if-lez v0, :cond_2

    .line 58
    .line 59
    new-array v2, v0, [B

    .line 60
    .line 61
    invoke-virtual {p0, v2, v4, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBytes([BII)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    :goto_0
    move-object v2, v5

    .line 66
    :goto_1
    new-instance p0, LU0/c;

    .line 67
    .line 68
    invoke-direct {p0, v1, v3, v5, v2}, LU0/c;-><init>(IZ[B[B)V

    .line 69
    .line 70
    .line 71
    return-object p0
.end method


# virtual methods
.method public getCueReplacementBehavior()I
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    return v0
.end method

.method public parse([BIILS0/r;Landroidx/media3/common/util/Consumer;)V
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "LS0/r;",
            "Landroidx/media3/common/util/Consumer<",
            "LS0/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    new-instance v2, Landroidx/media3/common/util/ParsableBitArray;

    .line 6
    .line 7
    add-int v3, v1, p3

    .line 8
    .line 9
    move-object/from16 v4, p1

    .line 10
    .line 11
    invoke-direct {v2, v4, v3}, Landroidx/media3/common/util/ParsableBitArray;-><init>([BI)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v3, 0x2

    .line 22
    const/4 v4, 0x1

    .line 23
    const/16 v5, 0x30

    .line 24
    .line 25
    const/4 v6, 0x3

    .line 26
    iget-object v8, v0, LU0/i;->f:LU0/h;

    .line 27
    .line 28
    if-lt v1, v5, :cond_b

    .line 29
    .line 30
    const/16 v1, 0x8

    .line 31
    .line 32
    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    const/16 v9, 0xf

    .line 37
    .line 38
    if-ne v5, v9, :cond_b

    .line 39
    .line 40
    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    const/16 v9, 0x10

    .line 45
    .line 46
    invoke-virtual {v2, v9}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 47
    .line 48
    .line 49
    move-result v10

    .line 50
    invoke-virtual {v2, v9}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 51
    .line 52
    .line 53
    move-result v11

    .line 54
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->getBytePosition()I

    .line 55
    .line 56
    .line 57
    move-result v12

    .line 58
    add-int/2addr v12, v11

    .line 59
    mul-int/lit8 v13, v11, 0x8

    .line 60
    .line 61
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    .line 62
    .line 63
    .line 64
    move-result v14

    .line 65
    if-le v13, v14, :cond_0

    .line 66
    .line 67
    const-string v1, "DvbParser"

    .line 68
    .line 69
    const-string v3, "Data field length exceeds limit"

    .line 70
    .line 71
    invoke-static {v1, v3}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    const/4 v13, 0x4

    .line 83
    packed-switch v5, :pswitch_data_0

    .line 84
    .line 85
    .line 86
    goto/16 :goto_6

    .line 87
    .line 88
    :pswitch_0
    iget v1, v8, LU0/h;->a:I

    .line 89
    .line 90
    if-ne v10, v1, :cond_a

    .line 91
    .line 92
    invoke-virtual {v2, v13}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v9}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 103
    .line 104
    .line 105
    move-result v14

    .line 106
    invoke-virtual {v2, v9}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 107
    .line 108
    .line 109
    move-result v15

    .line 110
    if-eqz v1, :cond_1

    .line 111
    .line 112
    invoke-virtual {v2, v9}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 113
    .line 114
    .line 115
    move-result v7

    .line 116
    invoke-virtual {v2, v9}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    invoke-virtual {v2, v9}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    invoke-virtual {v2, v9}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    move/from16 v17, v1

    .line 129
    .line 130
    move/from16 v18, v3

    .line 131
    .line 132
    move/from16 v19, v4

    .line 133
    .line 134
    move/from16 v16, v7

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_1
    move/from16 v17, v14

    .line 138
    .line 139
    move/from16 v19, v15

    .line 140
    .line 141
    const/16 v16, 0x0

    .line 142
    .line 143
    const/16 v18, 0x0

    .line 144
    .line 145
    :goto_1
    new-instance v13, LU0/b;

    .line 146
    .line 147
    invoke-direct/range {v13 .. v19}, LU0/b;-><init>(IIIIII)V

    .line 148
    .line 149
    .line 150
    iput-object v13, v8, LU0/h;->h:LU0/b;

    .line 151
    .line 152
    goto/16 :goto_6

    .line 153
    .line 154
    :pswitch_1
    iget v1, v8, LU0/h;->a:I

    .line 155
    .line 156
    if-ne v10, v1, :cond_2

    .line 157
    .line 158
    invoke-static {v2}, LU0/i;->g(Landroidx/media3/common/util/ParsableBitArray;)LU0/c;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    iget-object v3, v8, LU0/h;->e:Landroid/util/SparseArray;

    .line 163
    .line 164
    iget v4, v1, LU0/c;->a:I

    .line 165
    .line 166
    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    goto/16 :goto_6

    .line 170
    .line 171
    :cond_2
    iget v1, v8, LU0/h;->b:I

    .line 172
    .line 173
    if-ne v10, v1, :cond_a

    .line 174
    .line 175
    invoke-static {v2}, LU0/i;->g(Landroidx/media3/common/util/ParsableBitArray;)LU0/c;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    iget-object v3, v8, LU0/h;->g:Landroid/util/SparseArray;

    .line 180
    .line 181
    iget v4, v1, LU0/c;->a:I

    .line 182
    .line 183
    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    goto/16 :goto_6

    .line 187
    .line 188
    :pswitch_2
    iget v1, v8, LU0/h;->a:I

    .line 189
    .line 190
    if-ne v10, v1, :cond_3

    .line 191
    .line 192
    invoke-static {v2, v11}, LU0/i;->f(Landroidx/media3/common/util/ParsableBitArray;I)LU0/a;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    iget-object v3, v8, LU0/h;->d:Landroid/util/SparseArray;

    .line 197
    .line 198
    iget v4, v1, LU0/a;->a:I

    .line 199
    .line 200
    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    goto/16 :goto_6

    .line 204
    .line 205
    :cond_3
    iget v1, v8, LU0/h;->b:I

    .line 206
    .line 207
    if-ne v10, v1, :cond_a

    .line 208
    .line 209
    invoke-static {v2, v11}, LU0/i;->f(Landroidx/media3/common/util/ParsableBitArray;I)LU0/a;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    iget-object v3, v8, LU0/h;->f:Landroid/util/SparseArray;

    .line 214
    .line 215
    iget v4, v1, LU0/a;->a:I

    .line 216
    .line 217
    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    goto/16 :goto_6

    .line 221
    .line 222
    :pswitch_3
    iget-object v5, v8, LU0/h;->i:LU0/d;

    .line 223
    .line 224
    iget v14, v8, LU0/h;->a:I

    .line 225
    .line 226
    if-ne v10, v14, :cond_a

    .line 227
    .line 228
    if-eqz v5, :cond_a

    .line 229
    .line 230
    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 231
    .line 232
    .line 233
    move-result v16

    .line 234
    invoke-virtual {v2, v13}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 238
    .line 239
    .line 240
    move-result v17

    .line 241
    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v2, v9}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 245
    .line 246
    .line 247
    move-result v18

    .line 248
    invoke-virtual {v2, v9}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 249
    .line 250
    .line 251
    move-result v19

    .line 252
    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 253
    .line 254
    .line 255
    move-result v20

    .line 256
    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 257
    .line 258
    .line 259
    move-result v21

    .line 260
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 264
    .line 265
    .line 266
    move-result v22

    .line 267
    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 268
    .line 269
    .line 270
    move-result v23

    .line 271
    invoke-virtual {v2, v13}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 272
    .line 273
    .line 274
    move-result v24

    .line 275
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 276
    .line 277
    .line 278
    move-result v25

    .line 279
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 280
    .line 281
    .line 282
    add-int/lit8 v11, v11, -0xa

    .line 283
    .line 284
    new-instance v6, Landroid/util/SparseArray;

    .line 285
    .line 286
    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 287
    .line 288
    .line 289
    :goto_2
    if-lez v11, :cond_6

    .line 290
    .line 291
    invoke-virtual {v2, v9}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 292
    .line 293
    .line 294
    move-result v10

    .line 295
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 296
    .line 297
    .line 298
    move-result v14

    .line 299
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 300
    .line 301
    .line 302
    move-result v28

    .line 303
    const/16 v15, 0xc

    .line 304
    .line 305
    invoke-virtual {v2, v15}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 306
    .line 307
    .line 308
    move-result v29

    .line 309
    invoke-virtual {v2, v13}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v2, v15}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 313
    .line 314
    .line 315
    move-result v30

    .line 316
    add-int/lit8 v15, v11, -0x6

    .line 317
    .line 318
    if-eq v14, v4, :cond_5

    .line 319
    .line 320
    if-ne v14, v3, :cond_4

    .line 321
    .line 322
    goto :goto_3

    .line 323
    :cond_4
    move v11, v15

    .line 324
    const/16 v31, 0x0

    .line 325
    .line 326
    const/16 v32, 0x0

    .line 327
    .line 328
    goto :goto_4

    .line 329
    :cond_5
    :goto_3
    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 330
    .line 331
    .line 332
    move-result v15

    .line 333
    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 334
    .line 335
    .line 336
    move-result v26

    .line 337
    add-int/lit8 v11, v11, -0x8

    .line 338
    .line 339
    move/from16 v31, v15

    .line 340
    .line 341
    move/from16 v32, v26

    .line 342
    .line 343
    :goto_4
    new-instance v26, LU0/g;

    .line 344
    .line 345
    move/from16 v27, v14

    .line 346
    .line 347
    invoke-direct/range {v26 .. v32}, LU0/g;-><init>(IIIIII)V

    .line 348
    .line 349
    .line 350
    move-object/from16 v14, v26

    .line 351
    .line 352
    invoke-virtual {v6, v10, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 353
    .line 354
    .line 355
    goto :goto_2

    .line 356
    :cond_6
    new-instance v15, LU0/f;

    .line 357
    .line 358
    move-object/from16 v26, v6

    .line 359
    .line 360
    invoke-direct/range {v15 .. v26}, LU0/f;-><init>(IZIIIIIIIILandroid/util/SparseArray;)V

    .line 361
    .line 362
    .line 363
    iget-object v1, v8, LU0/h;->c:Landroid/util/SparseArray;

    .line 364
    .line 365
    iget v3, v5, LU0/d;->b:I

    .line 366
    .line 367
    iget v4, v15, LU0/f;->a:I

    .line 368
    .line 369
    if-nez v3, :cond_7

    .line 370
    .line 371
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object v3

    .line 375
    check-cast v3, LU0/f;

    .line 376
    .line 377
    if-eqz v3, :cond_7

    .line 378
    .line 379
    invoke-virtual {v15, v3}, LU0/f;->mergeFrom(LU0/f;)V

    .line 380
    .line 381
    .line 382
    :cond_7
    invoke-virtual {v1, v4, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 383
    .line 384
    .line 385
    goto :goto_6

    .line 386
    :pswitch_4
    iget v4, v8, LU0/h;->a:I

    .line 387
    .line 388
    if-ne v10, v4, :cond_a

    .line 389
    .line 390
    iget-object v4, v8, LU0/h;->i:LU0/d;

    .line 391
    .line 392
    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 393
    .line 394
    .line 395
    move-result v5

    .line 396
    invoke-virtual {v2, v13}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 397
    .line 398
    .line 399
    move-result v6

    .line 400
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 401
    .line 402
    .line 403
    move-result v7

    .line 404
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 405
    .line 406
    .line 407
    add-int/lit8 v11, v11, -0x2

    .line 408
    .line 409
    new-instance v3, Landroid/util/SparseArray;

    .line 410
    .line 411
    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 412
    .line 413
    .line 414
    :goto_5
    if-lez v11, :cond_8

    .line 415
    .line 416
    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 417
    .line 418
    .line 419
    move-result v10

    .line 420
    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v2, v9}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 424
    .line 425
    .line 426
    move-result v13

    .line 427
    invoke-virtual {v2, v9}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 428
    .line 429
    .line 430
    move-result v14

    .line 431
    add-int/lit8 v11, v11, -0x6

    .line 432
    .line 433
    new-instance v15, LU0/e;

    .line 434
    .line 435
    invoke-direct {v15, v13, v14}, LU0/e;-><init>(II)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v3, v10, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 439
    .line 440
    .line 441
    goto :goto_5

    .line 442
    :cond_8
    new-instance v1, LU0/d;

    .line 443
    .line 444
    invoke-direct {v1, v5, v6, v7, v3}, LU0/d;-><init>(IIILandroid/util/SparseArray;)V

    .line 445
    .line 446
    .line 447
    iget v3, v1, LU0/d;->b:I

    .line 448
    .line 449
    if-eqz v3, :cond_9

    .line 450
    .line 451
    iput-object v1, v8, LU0/h;->i:LU0/d;

    .line 452
    .line 453
    iget-object v1, v8, LU0/h;->c:Landroid/util/SparseArray;

    .line 454
    .line 455
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 456
    .line 457
    .line 458
    iget-object v1, v8, LU0/h;->d:Landroid/util/SparseArray;

    .line 459
    .line 460
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 461
    .line 462
    .line 463
    iget-object v1, v8, LU0/h;->e:Landroid/util/SparseArray;

    .line 464
    .line 465
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 466
    .line 467
    .line 468
    goto :goto_6

    .line 469
    :cond_9
    if-eqz v4, :cond_a

    .line 470
    .line 471
    iget v3, v4, LU0/d;->a:I

    .line 472
    .line 473
    iget v4, v1, LU0/d;->a:I

    .line 474
    .line 475
    if-eq v3, v4, :cond_a

    .line 476
    .line 477
    iput-object v1, v8, LU0/h;->i:LU0/d;

    .line 478
    .line 479
    :cond_a
    :goto_6
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->getBytePosition()I

    .line 480
    .line 481
    .line 482
    move-result v1

    .line 483
    sub-int/2addr v12, v1

    .line 484
    invoke-virtual {v2, v12}, Landroidx/media3/common/util/ParsableBitArray;->skipBytes(I)V

    .line 485
    .line 486
    .line 487
    goto/16 :goto_0

    .line 488
    .line 489
    :cond_b
    iget-object v1, v8, LU0/h;->i:LU0/d;

    .line 490
    .line 491
    if-nez v1, :cond_c

    .line 492
    .line 493
    new-instance v9, LS0/c;

    .line 494
    .line 495
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    .line 496
    .line 497
    .line 498
    move-result-object v10

    .line 499
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    invoke-direct/range {v9 .. v14}, LS0/c;-><init>(Ljava/util/List;JJ)V

    .line 510
    .line 511
    .line 512
    :goto_7
    move-object/from16 v1, p5

    .line 513
    .line 514
    goto/16 :goto_12

    .line 515
    .line 516
    :cond_c
    iget-object v2, v8, LU0/h;->h:LU0/b;

    .line 517
    .line 518
    if-eqz v2, :cond_d

    .line 519
    .line 520
    goto :goto_8

    .line 521
    :cond_d
    iget-object v2, v0, LU0/i;->d:LU0/b;

    .line 522
    .line 523
    :goto_8
    iget-object v5, v0, LU0/i;->g:Landroid/graphics/Bitmap;

    .line 524
    .line 525
    iget-object v15, v0, LU0/i;->c:Landroid/graphics/Canvas;

    .line 526
    .line 527
    if-eqz v5, :cond_e

    .line 528
    .line 529
    iget v9, v2, LU0/b;->a:I

    .line 530
    .line 531
    add-int/2addr v9, v4

    .line 532
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    .line 533
    .line 534
    .line 535
    move-result v5

    .line 536
    if-ne v9, v5, :cond_e

    .line 537
    .line 538
    iget v5, v2, LU0/b;->b:I

    .line 539
    .line 540
    add-int/2addr v5, v4

    .line 541
    iget-object v9, v0, LU0/i;->g:Landroid/graphics/Bitmap;

    .line 542
    .line 543
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    .line 544
    .line 545
    .line 546
    move-result v9

    .line 547
    if-eq v5, v9, :cond_f

    .line 548
    .line 549
    :cond_e
    iget v5, v2, LU0/b;->a:I

    .line 550
    .line 551
    add-int/2addr v5, v4

    .line 552
    iget v9, v2, LU0/b;->b:I

    .line 553
    .line 554
    add-int/2addr v9, v4

    .line 555
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 556
    .line 557
    invoke-static {v5, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 558
    .line 559
    .line 560
    move-result-object v5

    .line 561
    iput-object v5, v0, LU0/i;->g:Landroid/graphics/Bitmap;

    .line 562
    .line 563
    invoke-virtual {v15, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 564
    .line 565
    .line 566
    :cond_f
    new-instance v5, Ljava/util/ArrayList;

    .line 567
    .line 568
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 569
    .line 570
    .line 571
    const/4 v9, 0x0

    .line 572
    :goto_9
    iget-object v10, v1, LU0/d;->c:Landroid/util/SparseArray;

    .line 573
    .line 574
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    .line 575
    .line 576
    .line 577
    move-result v11

    .line 578
    if-ge v9, v11, :cond_1a

    .line 579
    .line 580
    invoke-virtual {v15}, Landroid/graphics/Canvas;->save()I

    .line 581
    .line 582
    .line 583
    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 584
    .line 585
    .line 586
    move-result-object v11

    .line 587
    check-cast v11, LU0/e;

    .line 588
    .line 589
    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->keyAt(I)I

    .line 590
    .line 591
    .line 592
    move-result v10

    .line 593
    iget-object v12, v8, LU0/h;->c:Landroid/util/SparseArray;

    .line 594
    .line 595
    invoke-virtual {v12, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 596
    .line 597
    .line 598
    move-result-object v10

    .line 599
    check-cast v10, LU0/f;

    .line 600
    .line 601
    iget v12, v11, LU0/e;->a:I

    .line 602
    .line 603
    iget v13, v2, LU0/b;->c:I

    .line 604
    .line 605
    add-int/2addr v12, v13

    .line 606
    iget v11, v11, LU0/e;->b:I

    .line 607
    .line 608
    iget v13, v2, LU0/b;->e:I

    .line 609
    .line 610
    add-int/2addr v11, v13

    .line 611
    iget v13, v10, LU0/f;->c:I

    .line 612
    .line 613
    add-int/2addr v13, v12

    .line 614
    iget v14, v2, LU0/b;->d:I

    .line 615
    .line 616
    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    .line 617
    .line 618
    .line 619
    move-result v13

    .line 620
    iget v14, v10, LU0/f;->d:I

    .line 621
    .line 622
    move/from16 p1, v4

    .line 623
    .line 624
    add-int v4, v11, v14

    .line 625
    .line 626
    iget v7, v2, LU0/b;->f:I

    .line 627
    .line 628
    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    .line 629
    .line 630
    .line 631
    move-result v7

    .line 632
    invoke-virtual {v15, v12, v11, v13, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 633
    .line 634
    .line 635
    iget-object v7, v8, LU0/h;->d:Landroid/util/SparseArray;

    .line 636
    .line 637
    iget v13, v10, LU0/f;->f:I

    .line 638
    .line 639
    invoke-virtual {v7, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 640
    .line 641
    .line 642
    move-result-object v7

    .line 643
    check-cast v7, LU0/a;

    .line 644
    .line 645
    if-nez v7, :cond_10

    .line 646
    .line 647
    iget-object v7, v8, LU0/h;->f:Landroid/util/SparseArray;

    .line 648
    .line 649
    invoke-virtual {v7, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 650
    .line 651
    .line 652
    move-result-object v7

    .line 653
    check-cast v7, LU0/a;

    .line 654
    .line 655
    if-nez v7, :cond_10

    .line 656
    .line 657
    iget-object v7, v0, LU0/i;->e:LU0/a;

    .line 658
    .line 659
    :cond_10
    const/4 v13, 0x0

    .line 660
    :goto_a
    iget-object v3, v10, LU0/f;->j:Landroid/util/SparseArray;

    .line 661
    .line 662
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 663
    .line 664
    .line 665
    move-result v6

    .line 666
    if-ge v13, v6, :cond_16

    .line 667
    .line 668
    invoke-virtual {v3, v13}, Landroid/util/SparseArray;->keyAt(I)I

    .line 669
    .line 670
    .line 671
    move-result v6

    .line 672
    invoke-virtual {v3, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 673
    .line 674
    .line 675
    move-result-object v3

    .line 676
    check-cast v3, LU0/g;

    .line 677
    .line 678
    move-object/from16 v16, v1

    .line 679
    .line 680
    iget-object v1, v8, LU0/h;->e:Landroid/util/SparseArray;

    .line 681
    .line 682
    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 683
    .line 684
    .line 685
    move-result-object v1

    .line 686
    check-cast v1, LU0/c;

    .line 687
    .line 688
    if-nez v1, :cond_11

    .line 689
    .line 690
    iget-object v1, v8, LU0/h;->g:Landroid/util/SparseArray;

    .line 691
    .line 692
    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 693
    .line 694
    .line 695
    move-result-object v1

    .line 696
    check-cast v1, LU0/c;

    .line 697
    .line 698
    :cond_11
    if-eqz v1, :cond_15

    .line 699
    .line 700
    iget-boolean v6, v1, LU0/c;->b:Z

    .line 701
    .line 702
    if-eqz v6, :cond_12

    .line 703
    .line 704
    const/4 v6, 0x0

    .line 705
    :goto_b
    move-object/from16 v17, v6

    .line 706
    .line 707
    goto :goto_c

    .line 708
    :cond_12
    iget-object v6, v0, LU0/i;->a:Landroid/graphics/Paint;

    .line 709
    .line 710
    goto :goto_b

    .line 711
    :goto_c
    iget v6, v3, LU0/g;->a:I

    .line 712
    .line 713
    add-int/2addr v6, v12

    .line 714
    iget v3, v3, LU0/g;->b:I

    .line 715
    .line 716
    add-int/2addr v3, v11

    .line 717
    move/from16 v18, v11

    .line 718
    .line 719
    iget v11, v10, LU0/f;->e:I

    .line 720
    .line 721
    move/from16 v19, v3

    .line 722
    .line 723
    const/4 v3, 0x3

    .line 724
    if-ne v11, v3, :cond_13

    .line 725
    .line 726
    iget-object v3, v7, LU0/a;->d:[I

    .line 727
    .line 728
    :goto_d
    move/from16 v20, v9

    .line 729
    .line 730
    goto :goto_e

    .line 731
    :cond_13
    const/4 v3, 0x2

    .line 732
    if-ne v11, v3, :cond_14

    .line 733
    .line 734
    iget-object v3, v7, LU0/a;->c:[I

    .line 735
    .line 736
    goto :goto_d

    .line 737
    :cond_14
    iget-object v3, v7, LU0/a;->b:[I

    .line 738
    .line 739
    goto :goto_d

    .line 740
    :goto_e
    iget-object v9, v1, LU0/c;->c:[B

    .line 741
    .line 742
    move-object/from16 v33, v10

    .line 743
    .line 744
    move-object v10, v3

    .line 745
    move-object/from16 v3, v33

    .line 746
    .line 747
    move/from16 v33, v18

    .line 748
    .line 749
    move-object/from16 v18, v5

    .line 750
    .line 751
    move v5, v14

    .line 752
    move-object/from16 v14, v17

    .line 753
    .line 754
    move-object/from16 v17, v8

    .line 755
    .line 756
    move/from16 v8, v33

    .line 757
    .line 758
    move/from16 v33, v12

    .line 759
    .line 760
    move v12, v6

    .line 761
    move/from16 v6, v33

    .line 762
    .line 763
    move/from16 v33, v19

    .line 764
    .line 765
    move/from16 v19, v13

    .line 766
    .line 767
    move/from16 v13, v33

    .line 768
    .line 769
    invoke-static/range {v9 .. v15}, LU0/i;->e([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 770
    .line 771
    .line 772
    add-int/lit8 v13, v13, 0x1

    .line 773
    .line 774
    iget-object v9, v1, LU0/c;->d:[B

    .line 775
    .line 776
    invoke-static/range {v9 .. v15}, LU0/i;->e([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 777
    .line 778
    .line 779
    goto :goto_f

    .line 780
    :cond_15
    move-object/from16 v18, v5

    .line 781
    .line 782
    move-object/from16 v17, v8

    .line 783
    .line 784
    move/from16 v20, v9

    .line 785
    .line 786
    move-object v3, v10

    .line 787
    move v8, v11

    .line 788
    move v6, v12

    .line 789
    move/from16 v19, v13

    .line 790
    .line 791
    move v5, v14

    .line 792
    :goto_f
    add-int/lit8 v13, v19, 0x1

    .line 793
    .line 794
    move-object v10, v3

    .line 795
    move v14, v5

    .line 796
    move v12, v6

    .line 797
    move v11, v8

    .line 798
    move-object/from16 v1, v16

    .line 799
    .line 800
    move-object/from16 v8, v17

    .line 801
    .line 802
    move-object/from16 v5, v18

    .line 803
    .line 804
    move/from16 v9, v20

    .line 805
    .line 806
    const/4 v6, 0x3

    .line 807
    goto/16 :goto_a

    .line 808
    .line 809
    :cond_16
    move-object/from16 v16, v1

    .line 810
    .line 811
    move-object/from16 v18, v5

    .line 812
    .line 813
    move-object/from16 v17, v8

    .line 814
    .line 815
    move/from16 v20, v9

    .line 816
    .line 817
    move-object v3, v10

    .line 818
    move v8, v11

    .line 819
    move v6, v12

    .line 820
    move v5, v14

    .line 821
    iget-boolean v1, v3, LU0/f;->b:Z

    .line 822
    .line 823
    iget v9, v3, LU0/f;->c:I

    .line 824
    .line 825
    if-eqz v1, :cond_19

    .line 826
    .line 827
    iget v1, v3, LU0/f;->e:I

    .line 828
    .line 829
    const/4 v10, 0x3

    .line 830
    if-ne v1, v10, :cond_17

    .line 831
    .line 832
    iget-object v1, v7, LU0/a;->d:[I

    .line 833
    .line 834
    iget v3, v3, LU0/f;->g:I

    .line 835
    .line 836
    aget v1, v1, v3

    .line 837
    .line 838
    const/4 v11, 0x2

    .line 839
    goto :goto_10

    .line 840
    :cond_17
    const/4 v11, 0x2

    .line 841
    if-ne v1, v11, :cond_18

    .line 842
    .line 843
    iget-object v1, v7, LU0/a;->c:[I

    .line 844
    .line 845
    iget v3, v3, LU0/f;->h:I

    .line 846
    .line 847
    aget v1, v1, v3

    .line 848
    .line 849
    goto :goto_10

    .line 850
    :cond_18
    iget-object v1, v7, LU0/a;->b:[I

    .line 851
    .line 852
    iget v3, v3, LU0/f;->i:I

    .line 853
    .line 854
    aget v1, v1, v3

    .line 855
    .line 856
    :goto_10
    iget-object v14, v0, LU0/i;->b:Landroid/graphics/Paint;

    .line 857
    .line 858
    invoke-virtual {v14, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 859
    .line 860
    .line 861
    move v3, v10

    .line 862
    int-to-float v10, v6

    .line 863
    move v1, v11

    .line 864
    int-to-float v11, v8

    .line 865
    add-int v12, v6, v9

    .line 866
    .line 867
    int-to-float v12, v12

    .line 868
    int-to-float v13, v4

    .line 869
    move v4, v9

    .line 870
    move-object v9, v15

    .line 871
    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 872
    .line 873
    .line 874
    goto :goto_11

    .line 875
    :cond_19
    move v4, v9

    .line 876
    const/4 v1, 0x2

    .line 877
    const/4 v3, 0x3

    .line 878
    :goto_11
    new-instance v7, Landroidx/media3/common/text/Cue$Builder;

    .line 879
    .line 880
    invoke-direct {v7}, Landroidx/media3/common/text/Cue$Builder;-><init>()V

    .line 881
    .line 882
    .line 883
    iget-object v9, v0, LU0/i;->g:Landroid/graphics/Bitmap;

    .line 884
    .line 885
    invoke-static {v9, v6, v8, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    .line 886
    .line 887
    .line 888
    move-result-object v9

    .line 889
    invoke-virtual {v7, v9}, Landroidx/media3/common/text/Cue$Builder;->setBitmap(Landroid/graphics/Bitmap;)Landroidx/media3/common/text/Cue$Builder;

    .line 890
    .line 891
    .line 892
    move-result-object v7

    .line 893
    int-to-float v6, v6

    .line 894
    iget v9, v2, LU0/b;->a:I

    .line 895
    .line 896
    int-to-float v9, v9

    .line 897
    div-float/2addr v6, v9

    .line 898
    invoke-virtual {v7, v6}, Landroidx/media3/common/text/Cue$Builder;->setPosition(F)Landroidx/media3/common/text/Cue$Builder;

    .line 899
    .line 900
    .line 901
    move-result-object v6

    .line 902
    const/4 v7, 0x0

    .line 903
    invoke-virtual {v6, v7}, Landroidx/media3/common/text/Cue$Builder;->setPositionAnchor(I)Landroidx/media3/common/text/Cue$Builder;

    .line 904
    .line 905
    .line 906
    move-result-object v6

    .line 907
    int-to-float v8, v8

    .line 908
    iget v10, v2, LU0/b;->b:I

    .line 909
    .line 910
    int-to-float v10, v10

    .line 911
    div-float/2addr v8, v10

    .line 912
    invoke-virtual {v6, v8, v7}, Landroidx/media3/common/text/Cue$Builder;->setLine(FI)Landroidx/media3/common/text/Cue$Builder;

    .line 913
    .line 914
    .line 915
    move-result-object v6

    .line 916
    invoke-virtual {v6, v7}, Landroidx/media3/common/text/Cue$Builder;->setLineAnchor(I)Landroidx/media3/common/text/Cue$Builder;

    .line 917
    .line 918
    .line 919
    move-result-object v6

    .line 920
    int-to-float v4, v4

    .line 921
    div-float/2addr v4, v9

    .line 922
    invoke-virtual {v6, v4}, Landroidx/media3/common/text/Cue$Builder;->setSize(F)Landroidx/media3/common/text/Cue$Builder;

    .line 923
    .line 924
    .line 925
    move-result-object v4

    .line 926
    int-to-float v5, v5

    .line 927
    div-float/2addr v5, v10

    .line 928
    invoke-virtual {v4, v5}, Landroidx/media3/common/text/Cue$Builder;->setBitmapHeight(F)Landroidx/media3/common/text/Cue$Builder;

    .line 929
    .line 930
    .line 931
    move-result-object v4

    .line 932
    invoke-virtual {v4}, Landroidx/media3/common/text/Cue$Builder;->build()Landroidx/media3/common/text/Cue;

    .line 933
    .line 934
    .line 935
    move-result-object v4

    .line 936
    move-object/from16 v10, v18

    .line 937
    .line 938
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 939
    .line 940
    .line 941
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 942
    .line 943
    invoke-virtual {v15, v7, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 944
    .line 945
    .line 946
    invoke-virtual {v15}, Landroid/graphics/Canvas;->restore()V

    .line 947
    .line 948
    .line 949
    add-int/lit8 v9, v20, 0x1

    .line 950
    .line 951
    move/from16 v4, p1

    .line 952
    .line 953
    move v6, v3

    .line 954
    move-object v5, v10

    .line 955
    move-object/from16 v8, v17

    .line 956
    .line 957
    move v3, v1

    .line 958
    move-object/from16 v1, v16

    .line 959
    .line 960
    goto/16 :goto_9

    .line 961
    .line 962
    :cond_1a
    move-object v10, v5

    .line 963
    new-instance v9, LS0/c;

    .line 964
    .line 965
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    invoke-direct/range {v9 .. v14}, LS0/c;-><init>(Ljava/util/List;JJ)V

    .line 976
    .line 977
    .line 978
    goto/16 :goto_7

    .line 979
    .line 980
    :goto_12
    invoke-interface {v1, v9}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 981
    .line 982
    .line 983
    return-void

    .line 984
    nop

    .line 985
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic parseToLegacySubtitle([BII)LS0/i;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, LS0/o;->a(LS0/s;[BII)LS0/i;

    move-result-object p1

    return-object p1
.end method

.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, LU0/i;->f:LU0/h;

    .line 2
    .line 3
    invoke-virtual {v0}, LU0/h;->reset()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
