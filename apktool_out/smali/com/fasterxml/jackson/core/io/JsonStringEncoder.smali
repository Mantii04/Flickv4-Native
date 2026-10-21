.class public final Lcom/fasterxml/jackson/core/io/JsonStringEncoder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final HB:[B

.field private static final HC:[C

.field private static final INITIAL_BYTE_BUFFER_SIZE:I = 0xc8

.field private static final INITIAL_CHAR_BUFFER_SIZE:I = 0x78

.field private static final SURR1_FIRST:I = 0xd800

.field private static final SURR1_LAST:I = 0xdbff

.field private static final SURR2_FIRST:I = 0xdc00

.field private static final SURR2_LAST:I = 0xdfff

.field private static final instance:Lcom/fasterxml/jackson/core/io/JsonStringEncoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->copyHexChars()[C

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HC:[C

    .line 6
    .line 7
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->copyHexBytes()[B

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HB:[B

    .line 12
    .line 13
    new-instance v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    .line 14
    .line 15
    invoke-direct {v0}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;-><init>()V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->instance:Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private _appendByte(IILcom/fasterxml/jackson/core/util/ByteArrayBuilder;I)I
    .locals 1

    .line 1
    invoke-virtual {p3, p4}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->setCurrentSegmentLength(I)V

    .line 2
    .line 3
    .line 4
    const/16 p4, 0x5c

    .line 5
    .line 6
    invoke-virtual {p3, p4}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 7
    .line 8
    .line 9
    if-gez p2, :cond_1

    .line 10
    .line 11
    const/16 p2, 0x75

    .line 12
    .line 13
    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 14
    .line 15
    .line 16
    const/16 p2, 0xff

    .line 17
    .line 18
    if-le p1, p2, :cond_0

    .line 19
    .line 20
    shr-int/lit8 p2, p1, 0x8

    .line 21
    .line 22
    sget-object p4, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HB:[B

    .line 23
    .line 24
    shr-int/lit8 v0, p1, 0xc

    .line 25
    .line 26
    aget-byte v0, p4, v0

    .line 27
    .line 28
    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 29
    .line 30
    .line 31
    and-int/lit8 p2, p2, 0xf

    .line 32
    .line 33
    aget-byte p2, p4, p2

    .line 34
    .line 35
    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 36
    .line 37
    .line 38
    and-int/lit16 p1, p1, 0xff

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/16 p2, 0x30

    .line 42
    .line 43
    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 47
    .line 48
    .line 49
    :goto_0
    sget-object p2, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HB:[B

    .line 50
    .line 51
    shr-int/lit8 p4, p1, 0x4

    .line 52
    .line 53
    aget-byte p4, p2, p4

    .line 54
    .line 55
    invoke-virtual {p3, p4}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 56
    .line 57
    .line 58
    and-int/lit8 p1, p1, 0xf

    .line 59
    .line 60
    aget-byte p1, p2, p1

    .line 61
    .line 62
    invoke-virtual {p3, p1}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    int-to-byte p1, p2

    .line 67
    invoke-virtual {p3, p1}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 68
    .line 69
    .line 70
    :goto_1
    invoke-virtual {p3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->getCurrentSegmentLength()I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    return p1
.end method

.method private _appendNamed(I[C)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    int-to-char p1, p1

    .line 3
    aput-char p1, p2, v0

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    return p1
.end method

.method private _appendNumeric(I[C)I
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/16 v1, 0x75

    .line 3
    .line 4
    aput-char v1, p2, v0

    .line 5
    .line 6
    sget-object v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HC:[C

    .line 7
    .line 8
    shr-int/lit8 v1, p1, 0x4

    .line 9
    .line 10
    aget-char v1, v0, v1

    .line 11
    .line 12
    const/4 v2, 0x4

    .line 13
    aput-char v1, p2, v2

    .line 14
    .line 15
    and-int/lit8 p1, p1, 0xf

    .line 16
    .line 17
    aget-char p1, v0, p1

    .line 18
    .line 19
    const/4 v0, 0x5

    .line 20
    aput-char p1, p2, v0

    .line 21
    .line 22
    const/4 p1, 0x6

    .line 23
    return p1
.end method

.method private static _convert(II)I
    .locals 3

    .line 1
    const v0, 0xdc00

    .line 2
    .line 3
    .line 4
    if-lt p1, v0, :cond_0

    .line 5
    .line 6
    const v1, 0xdfff

    .line 7
    .line 8
    .line 9
    if-gt p1, v1, :cond_0

    .line 10
    .line 11
    const v1, 0xd800

    .line 12
    .line 13
    .line 14
    sub-int/2addr p0, v1

    .line 15
    shl-int/lit8 p0, p0, 0xa

    .line 16
    .line 17
    const/high16 v1, 0x10000

    .line 18
    .line 19
    add-int/2addr p0, v1

    .line 20
    sub-int/2addr p1, v0

    .line 21
    add-int/2addr p1, p0

    .line 22
    return p1

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v2, "Broken surrogate pair: first char 0x"

    .line 28
    .line 29
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p0, ", second 0x"

    .line 40
    .line 41
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string p0, "; illegal combination"

    .line 52
    .line 53
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v0
.end method

.method private static _illegal(I)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->illegalSurrogateDesc(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    throw v0
.end method

.method private _qbuf()[C
    .locals 3

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [C

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const/16 v2, 0x5c

    .line 6
    .line 7
    aput-char v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    const/16 v2, 0x30

    .line 11
    .line 12
    aput-char v2, v0, v1

    .line 13
    .line 14
    const/4 v1, 0x3

    .line 15
    aput-char v2, v0, v1

    .line 16
    .line 17
    return-object v0
.end method

.method public static getInstance()Lcom/fasterxml/jackson/core/io/JsonStringEncoder;
    .locals 1

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->instance:Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public encodeAsUTF8(Ljava/lang/String;)[B
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xc8

    .line 6
    .line 7
    new-array v2, v1, [B

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    move v5, v3

    .line 12
    move v6, v5

    .line 13
    :goto_0
    if-ge v5, v0, :cond_10

    .line 14
    .line 15
    add-int/lit8 v7, v5, 0x1

    .line 16
    .line 17
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    :goto_1
    const/16 v8, 0x7f

    .line 22
    .line 23
    if-gt v5, v8, :cond_3

    .line 24
    .line 25
    if-lt v6, v1, :cond_1

    .line 26
    .line 27
    if-nez v4, :cond_0

    .line 28
    .line 29
    invoke-static {v2, v6}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->fromInitial([BI)Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    :cond_0
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    array-length v2, v1

    .line 38
    move v6, v2

    .line 39
    move-object v2, v1

    .line 40
    move v1, v6

    .line 41
    move v6, v3

    .line 42
    :cond_1
    add-int/lit8 v8, v6, 0x1

    .line 43
    .line 44
    int-to-byte v5, v5

    .line 45
    aput-byte v5, v2, v6

    .line 46
    .line 47
    if-lt v7, v0, :cond_2

    .line 48
    .line 49
    move v6, v8

    .line 50
    goto/16 :goto_5

    .line 51
    .line 52
    :cond_2
    add-int/lit8 v5, v7, 0x1

    .line 53
    .line 54
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    move v7, v5

    .line 59
    move v5, v6

    .line 60
    move v6, v8

    .line 61
    goto :goto_1

    .line 62
    :cond_3
    if-nez v4, :cond_4

    .line 63
    .line 64
    invoke-static {v2, v6}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->fromInitial([BI)Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    :cond_4
    if-lt v6, v1, :cond_5

    .line 69
    .line 70
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    array-length v1, v2

    .line 75
    move v6, v3

    .line 76
    :cond_5
    const/16 v8, 0x800

    .line 77
    .line 78
    if-ge v5, v8, :cond_6

    .line 79
    .line 80
    add-int/lit8 v8, v6, 0x1

    .line 81
    .line 82
    shr-int/lit8 v9, v5, 0x6

    .line 83
    .line 84
    or-int/lit16 v9, v9, 0xc0

    .line 85
    .line 86
    int-to-byte v9, v9

    .line 87
    aput-byte v9, v2, v6

    .line 88
    .line 89
    :goto_2
    move v6, v5

    .line 90
    move v5, v7

    .line 91
    goto/16 :goto_4

    .line 92
    .line 93
    :cond_6
    const v8, 0xd800

    .line 94
    .line 95
    .line 96
    if-lt v5, v8, :cond_d

    .line 97
    .line 98
    const v8, 0xdfff

    .line 99
    .line 100
    .line 101
    if-le v5, v8, :cond_7

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_7
    const v8, 0xdbff

    .line 105
    .line 106
    .line 107
    if-le v5, v8, :cond_8

    .line 108
    .line 109
    invoke-static {v5}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_illegal(I)V

    .line 110
    .line 111
    .line 112
    :cond_8
    if-lt v7, v0, :cond_9

    .line 113
    .line 114
    invoke-static {v5}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_illegal(I)V

    .line 115
    .line 116
    .line 117
    :cond_9
    add-int/lit8 v8, v7, 0x1

    .line 118
    .line 119
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    .line 120
    .line 121
    .line 122
    move-result v7

    .line 123
    invoke-static {v5, v7}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_convert(II)I

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    const v7, 0x10ffff

    .line 128
    .line 129
    .line 130
    if-le v5, v7, :cond_a

    .line 131
    .line 132
    invoke-static {v5}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_illegal(I)V

    .line 133
    .line 134
    .line 135
    :cond_a
    add-int/lit8 v7, v6, 0x1

    .line 136
    .line 137
    shr-int/lit8 v9, v5, 0x12

    .line 138
    .line 139
    or-int/lit16 v9, v9, 0xf0

    .line 140
    .line 141
    int-to-byte v9, v9

    .line 142
    aput-byte v9, v2, v6

    .line 143
    .line 144
    if-lt v7, v1, :cond_b

    .line 145
    .line 146
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    array-length v1, v2

    .line 151
    move v7, v3

    .line 152
    :cond_b
    add-int/lit8 v6, v7, 0x1

    .line 153
    .line 154
    shr-int/lit8 v9, v5, 0xc

    .line 155
    .line 156
    and-int/lit8 v9, v9, 0x3f

    .line 157
    .line 158
    or-int/lit16 v9, v9, 0x80

    .line 159
    .line 160
    int-to-byte v9, v9

    .line 161
    aput-byte v9, v2, v7

    .line 162
    .line 163
    if-lt v6, v1, :cond_c

    .line 164
    .line 165
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    array-length v2, v1

    .line 170
    move v6, v2

    .line 171
    move-object v2, v1

    .line 172
    move v1, v6

    .line 173
    move v6, v3

    .line 174
    :cond_c
    add-int/lit8 v7, v6, 0x1

    .line 175
    .line 176
    shr-int/lit8 v9, v5, 0x6

    .line 177
    .line 178
    and-int/lit8 v9, v9, 0x3f

    .line 179
    .line 180
    or-int/lit16 v9, v9, 0x80

    .line 181
    .line 182
    int-to-byte v9, v9

    .line 183
    aput-byte v9, v2, v6

    .line 184
    .line 185
    move v6, v5

    .line 186
    move v5, v8

    .line 187
    move v8, v7

    .line 188
    goto :goto_4

    .line 189
    :cond_d
    :goto_3
    add-int/lit8 v8, v6, 0x1

    .line 190
    .line 191
    shr-int/lit8 v9, v5, 0xc

    .line 192
    .line 193
    or-int/lit16 v9, v9, 0xe0

    .line 194
    .line 195
    int-to-byte v9, v9

    .line 196
    aput-byte v9, v2, v6

    .line 197
    .line 198
    if-lt v8, v1, :cond_e

    .line 199
    .line 200
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    array-length v1, v2

    .line 205
    move v8, v3

    .line 206
    :cond_e
    add-int/lit8 v6, v8, 0x1

    .line 207
    .line 208
    shr-int/lit8 v9, v5, 0x6

    .line 209
    .line 210
    and-int/lit8 v9, v9, 0x3f

    .line 211
    .line 212
    or-int/lit16 v9, v9, 0x80

    .line 213
    .line 214
    int-to-byte v9, v9

    .line 215
    aput-byte v9, v2, v8

    .line 216
    .line 217
    move v8, v6

    .line 218
    goto/16 :goto_2

    .line 219
    .line 220
    :goto_4
    if-lt v8, v1, :cond_f

    .line 221
    .line 222
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    array-length v2, v1

    .line 227
    move v8, v2

    .line 228
    move-object v2, v1

    .line 229
    move v1, v8

    .line 230
    move v8, v3

    .line 231
    :cond_f
    add-int/lit8 v7, v8, 0x1

    .line 232
    .line 233
    and-int/lit8 v6, v6, 0x3f

    .line 234
    .line 235
    or-int/lit16 v6, v6, 0x80

    .line 236
    .line 237
    int-to-byte v6, v6

    .line 238
    aput-byte v6, v2, v8

    .line 239
    .line 240
    move v6, v7

    .line 241
    goto/16 :goto_0

    .line 242
    .line 243
    :cond_10
    :goto_5
    if-nez v4, :cond_11

    .line 244
    .line 245
    invoke-static {v2, v3, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    return-object p1

    .line 250
    :cond_11
    invoke-virtual {v4, v6}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->completeAndCoalesce(I)[B

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    return-object p1
.end method

.method public quoteAsString(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V
    .locals 8

    .line 53
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->get7BitOutputEscapes()[I

    move-result-object v0

    .line 54
    array-length v1, v0

    .line 55
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v3

    :goto_0
    if-ge v5, v2, :cond_4

    .line 56
    :cond_0
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ge v6, v1, :cond_3

    .line 57
    aget v7, v0, v6

    if-eqz v7, :cond_3

    if-nez v4, :cond_1

    .line 58
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_qbuf()[C

    move-result-object v4

    :cond_1
    add-int/lit8 v6, v5, 0x1

    .line 59
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 60
    aget v7, v0, v5

    if-gez v7, :cond_2

    .line 61
    invoke-direct {p0, v5, v4}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_appendNumeric(I[C)I

    move-result v5

    goto :goto_1

    .line 62
    :cond_2
    invoke-direct {p0, v7, v4}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_appendNamed(I[C)I

    move-result v5

    .line 63
    :goto_1
    invoke-virtual {p2, v4, v3, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move v5, v6

    goto :goto_0

    .line 64
    :cond_3
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    if-lt v5, v2, :cond_0

    :cond_4
    return-void
.end method

.method public quoteAsString(Ljava/lang/CharSequence;)[C
    .locals 12

    .line 26
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 27
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->quoteAsString(Ljava/lang/String;)[C

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v0, 0x78

    .line 28
    new-array v0, v0, [C

    .line 29
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->get7BitOutputEscapes()[I

    move-result-object v1

    .line 30
    array-length v2, v1

    .line 31
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v4

    move v7, v5

    move v8, v7

    :goto_0
    if-ge v7, v3, :cond_a

    .line 32
    :goto_1
    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-ge v9, v2, :cond_6

    .line 33
    aget v10, v1, v9

    if-eqz v10, :cond_6

    if-nez v6, :cond_1

    .line 34
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_qbuf()[C

    move-result-object v6

    :cond_1
    add-int/lit8 v9, v7, 0x1

    .line 35
    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 36
    aget v10, v1, v7

    if-gez v10, :cond_2

    .line 37
    invoke-direct {p0, v7, v6}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_appendNumeric(I[C)I

    move-result v7

    goto :goto_2

    .line 38
    :cond_2
    invoke-direct {p0, v10, v6}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_appendNamed(I[C)I

    move-result v7

    :goto_2
    add-int v10, v8, v7

    .line 39
    array-length v11, v0

    if-le v10, v11, :cond_5

    .line 40
    array-length v10, v0

    sub-int/2addr v10, v8

    if-lez v10, :cond_3

    .line 41
    invoke-static {v6, v5, v0, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    if-nez v4, :cond_4

    .line 42
    invoke-static {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->fromInitial([C)Lcom/fasterxml/jackson/core/util/TextBuffer;

    move-result-object v4

    .line 43
    :cond_4
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v0

    sub-int/2addr v7, v10

    .line 44
    invoke-static {v6, v10, v0, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v8, v7

    goto :goto_3

    .line 45
    :cond_5
    invoke-static {v6, v5, v0, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v8, v10

    :goto_3
    move v7, v9

    goto :goto_0

    .line 46
    :cond_6
    array-length v10, v0

    if-lt v8, v10, :cond_8

    if-nez v4, :cond_7

    .line 47
    invoke-static {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->fromInitial([C)Lcom/fasterxml/jackson/core/util/TextBuffer;

    move-result-object v4

    .line 48
    :cond_7
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v0

    move v8, v5

    :cond_8
    add-int/lit8 v10, v8, 0x1

    .line 49
    aput-char v9, v0, v8

    add-int/lit8 v7, v7, 0x1

    if-lt v7, v3, :cond_9

    move v8, v10

    goto :goto_4

    :cond_9
    move v8, v10

    goto :goto_1

    :cond_a
    :goto_4
    if-nez v4, :cond_b

    .line 50
    invoke-static {v0, v5, v8}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object p1

    return-object p1

    .line 51
    :cond_b
    invoke-virtual {v4, v8}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 52
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsArray()[C

    move-result-object p1

    return-object p1
.end method

.method public quoteAsString(Ljava/lang/String;)[C
    .locals 12

    const/16 v0, 0x78

    .line 1
    new-array v0, v0, [C

    .line 2
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->get7BitOutputEscapes()[I

    move-result-object v1

    .line 3
    array-length v2, v1

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v7, v4

    move v8, v7

    move-object v6, v5

    :goto_0
    if-ge v7, v3, :cond_9

    .line 5
    :goto_1
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ge v9, v2, :cond_5

    .line 6
    aget v10, v1, v9

    if-eqz v10, :cond_5

    if-nez v6, :cond_0

    .line 7
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_qbuf()[C

    move-result-object v6

    :cond_0
    add-int/lit8 v9, v7, 0x1

    .line 8
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 9
    aget v10, v1, v7

    if-gez v10, :cond_1

    .line 10
    invoke-direct {p0, v7, v6}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_appendNumeric(I[C)I

    move-result v7

    goto :goto_2

    .line 11
    :cond_1
    invoke-direct {p0, v10, v6}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_appendNamed(I[C)I

    move-result v7

    :goto_2
    add-int v10, v8, v7

    .line 12
    array-length v11, v0

    if-le v10, v11, :cond_4

    .line 13
    array-length v10, v0

    sub-int/2addr v10, v8

    if-lez v10, :cond_2

    .line 14
    invoke-static {v6, v4, v0, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    if-nez v5, :cond_3

    .line 15
    invoke-static {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->fromInitial([C)Lcom/fasterxml/jackson/core/util/TextBuffer;

    move-result-object v5

    .line 16
    :cond_3
    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v0

    sub-int/2addr v7, v10

    .line 17
    invoke-static {v6, v10, v0, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v8, v7

    goto :goto_3

    .line 18
    :cond_4
    invoke-static {v6, v4, v0, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v8, v10

    :goto_3
    move v7, v9

    goto :goto_0

    .line 19
    :cond_5
    array-length v10, v0

    if-lt v8, v10, :cond_7

    if-nez v5, :cond_6

    .line 20
    invoke-static {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->fromInitial([C)Lcom/fasterxml/jackson/core/util/TextBuffer;

    move-result-object v5

    .line 21
    :cond_6
    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v0

    move v8, v4

    :cond_7
    add-int/lit8 v10, v8, 0x1

    .line 22
    aput-char v9, v0, v8

    add-int/lit8 v7, v7, 0x1

    if-lt v7, v3, :cond_8

    move v8, v10

    goto :goto_4

    :cond_8
    move v8, v10

    goto :goto_1

    :cond_9
    :goto_4
    if-nez v5, :cond_a

    .line 23
    invoke-static {v0, v4, v8}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object p1

    return-object p1

    .line 24
    :cond_a
    invoke-virtual {v5, v8}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 25
    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsArray()[C

    move-result-object p1

    return-object p1
.end method

.method public quoteAsUTF8(Ljava/lang/String;)[B
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xc8

    .line 6
    .line 7
    new-array v1, v1, [B

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    move v4, v2

    .line 12
    move v5, v4

    .line 13
    :goto_0
    if-ge v4, v0, :cond_12

    .line 14
    .line 15
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->get7BitOutputEscapes()[I

    .line 16
    .line 17
    .line 18
    move-result-object v6

    .line 19
    :goto_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 20
    .line 21
    .line 22
    move-result v7

    .line 23
    const/16 v8, 0x7f

    .line 24
    .line 25
    if-gt v7, v8, :cond_4

    .line 26
    .line 27
    aget v9, v6, v7

    .line 28
    .line 29
    if-eqz v9, :cond_0

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_0
    array-length v8, v1

    .line 33
    if-lt v5, v8, :cond_2

    .line 34
    .line 35
    if-nez v3, :cond_1

    .line 36
    .line 37
    invoke-static {v1, v5}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->fromInitial([BI)Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    :cond_1
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    move v5, v2

    .line 46
    :cond_2
    add-int/lit8 v8, v5, 0x1

    .line 47
    .line 48
    int-to-byte v7, v7

    .line 49
    aput-byte v7, v1, v5

    .line 50
    .line 51
    add-int/lit8 v4, v4, 0x1

    .line 52
    .line 53
    if-lt v4, v0, :cond_3

    .line 54
    .line 55
    move v5, v8

    .line 56
    goto/16 :goto_7

    .line 57
    .line 58
    :cond_3
    move v5, v8

    .line 59
    goto :goto_1

    .line 60
    :cond_4
    :goto_2
    if-nez v3, :cond_5

    .line 61
    .line 62
    invoke-static {v1, v5}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->fromInitial([BI)Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    :cond_5
    array-length v7, v1

    .line 67
    if-lt v5, v7, :cond_6

    .line 68
    .line 69
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    move v5, v2

    .line 74
    :cond_6
    add-int/lit8 v7, v4, 0x1

    .line 75
    .line 76
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 77
    .line 78
    .line 79
    move-result v9

    .line 80
    if-gt v9, v8, :cond_7

    .line 81
    .line 82
    aget v1, v6, v9

    .line 83
    .line 84
    invoke-direct {p0, v9, v1, v3, v5}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_appendByte(IILcom/fasterxml/jackson/core/util/ByteArrayBuilder;I)I

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->getCurrentSegment()[B

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    :goto_3
    move v4, v7

    .line 93
    goto :goto_0

    .line 94
    :cond_7
    const/16 v6, 0x7ff

    .line 95
    .line 96
    if-gt v9, v6, :cond_8

    .line 97
    .line 98
    add-int/lit8 v4, v5, 0x1

    .line 99
    .line 100
    shr-int/lit8 v6, v9, 0x6

    .line 101
    .line 102
    or-int/lit16 v6, v6, 0xc0

    .line 103
    .line 104
    int-to-byte v6, v6

    .line 105
    aput-byte v6, v1, v5

    .line 106
    .line 107
    and-int/lit8 v5, v9, 0x3f

    .line 108
    .line 109
    or-int/lit16 v5, v5, 0x80

    .line 110
    .line 111
    goto/16 :goto_6

    .line 112
    .line 113
    :cond_8
    const v6, 0xd800

    .line 114
    .line 115
    .line 116
    if-lt v9, v6, :cond_f

    .line 117
    .line 118
    const v6, 0xdfff

    .line 119
    .line 120
    .line 121
    if-le v9, v6, :cond_9

    .line 122
    .line 123
    goto :goto_5

    .line 124
    :cond_9
    const v6, 0xdbff

    .line 125
    .line 126
    .line 127
    if-le v9, v6, :cond_a

    .line 128
    .line 129
    invoke-static {v9}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_illegal(I)V

    .line 130
    .line 131
    .line 132
    :cond_a
    if-lt v7, v0, :cond_b

    .line 133
    .line 134
    invoke-static {v9}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_illegal(I)V

    .line 135
    .line 136
    .line 137
    :cond_b
    add-int/lit8 v4, v4, 0x2

    .line 138
    .line 139
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    .line 140
    .line 141
    .line 142
    move-result v6

    .line 143
    invoke-static {v9, v6}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_convert(II)I

    .line 144
    .line 145
    .line 146
    move-result v6

    .line 147
    const v7, 0x10ffff

    .line 148
    .line 149
    .line 150
    if-le v6, v7, :cond_c

    .line 151
    .line 152
    invoke-static {v6}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_illegal(I)V

    .line 153
    .line 154
    .line 155
    :cond_c
    add-int/lit8 v7, v5, 0x1

    .line 156
    .line 157
    shr-int/lit8 v8, v6, 0x12

    .line 158
    .line 159
    or-int/lit16 v8, v8, 0xf0

    .line 160
    .line 161
    int-to-byte v8, v8

    .line 162
    aput-byte v8, v1, v5

    .line 163
    .line 164
    array-length v5, v1

    .line 165
    if-lt v7, v5, :cond_d

    .line 166
    .line 167
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    move v7, v2

    .line 172
    :cond_d
    add-int/lit8 v5, v7, 0x1

    .line 173
    .line 174
    shr-int/lit8 v8, v6, 0xc

    .line 175
    .line 176
    and-int/lit8 v8, v8, 0x3f

    .line 177
    .line 178
    or-int/lit16 v8, v8, 0x80

    .line 179
    .line 180
    int-to-byte v8, v8

    .line 181
    aput-byte v8, v1, v7

    .line 182
    .line 183
    array-length v7, v1

    .line 184
    if-lt v5, v7, :cond_e

    .line 185
    .line 186
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    move v5, v2

    .line 191
    :cond_e
    add-int/lit8 v7, v5, 0x1

    .line 192
    .line 193
    shr-int/lit8 v8, v6, 0x6

    .line 194
    .line 195
    and-int/lit8 v8, v8, 0x3f

    .line 196
    .line 197
    or-int/lit16 v8, v8, 0x80

    .line 198
    .line 199
    int-to-byte v8, v8

    .line 200
    aput-byte v8, v1, v5

    .line 201
    .line 202
    and-int/lit8 v5, v6, 0x3f

    .line 203
    .line 204
    or-int/lit16 v5, v5, 0x80

    .line 205
    .line 206
    move v10, v7

    .line 207
    move v7, v4

    .line 208
    :goto_4
    move v4, v10

    .line 209
    goto :goto_6

    .line 210
    :cond_f
    :goto_5
    add-int/lit8 v4, v5, 0x1

    .line 211
    .line 212
    shr-int/lit8 v6, v9, 0xc

    .line 213
    .line 214
    or-int/lit16 v6, v6, 0xe0

    .line 215
    .line 216
    int-to-byte v6, v6

    .line 217
    aput-byte v6, v1, v5

    .line 218
    .line 219
    array-length v5, v1

    .line 220
    if-lt v4, v5, :cond_10

    .line 221
    .line 222
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    move v4, v2

    .line 227
    :cond_10
    add-int/lit8 v5, v4, 0x1

    .line 228
    .line 229
    shr-int/lit8 v6, v9, 0x6

    .line 230
    .line 231
    and-int/lit8 v6, v6, 0x3f

    .line 232
    .line 233
    or-int/lit16 v6, v6, 0x80

    .line 234
    .line 235
    int-to-byte v6, v6

    .line 236
    aput-byte v6, v1, v4

    .line 237
    .line 238
    and-int/lit8 v4, v9, 0x3f

    .line 239
    .line 240
    or-int/lit16 v4, v4, 0x80

    .line 241
    .line 242
    move v10, v5

    .line 243
    move v5, v4

    .line 244
    goto :goto_4

    .line 245
    :goto_6
    array-length v6, v1

    .line 246
    if-lt v4, v6, :cond_11

    .line 247
    .line 248
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    move v4, v2

    .line 253
    :cond_11
    add-int/lit8 v6, v4, 0x1

    .line 254
    .line 255
    int-to-byte v5, v5

    .line 256
    aput-byte v5, v1, v4

    .line 257
    .line 258
    move v5, v6

    .line 259
    goto/16 :goto_3

    .line 260
    .line 261
    :cond_12
    :goto_7
    if-nez v3, :cond_13

    .line 262
    .line 263
    invoke-static {v1, v2, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    return-object p1

    .line 268
    :cond_13
    invoke-virtual {v3, v5}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->completeAndCoalesce(I)[B

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    return-object p1
.end method
