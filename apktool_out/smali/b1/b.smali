.class public final Lb1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/util/regex/Pattern;

.field public static final d:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Landroidx/media3/common/util/ParsableByteArray;

.field public final b:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "\\[voice=\"([^\"]*)\"\\]"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lb1/b;->c:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    const-string v0, "^((?:[0-9]*\\.)?[0-9]+)(px|em|%)$"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lb1/b;->d:Ljava/util/regex/Pattern;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lb1/b;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lb1/b;->b:Ljava/lang/StringBuilder;

    .line 17
    .line 18
    return-void
.end method

.method public static a(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    :goto_0
    if-ge v1, v2, :cond_5

    .line 14
    .line 15
    if-nez v0, :cond_5

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    aget-byte v3, v3, v1

    .line 22
    .line 23
    int-to-char v3, v3

    .line 24
    const/16 v4, 0x41

    .line 25
    .line 26
    if-lt v3, v4, :cond_0

    .line 27
    .line 28
    const/16 v4, 0x5a

    .line 29
    .line 30
    if-le v3, v4, :cond_4

    .line 31
    .line 32
    :cond_0
    const/16 v4, 0x61

    .line 33
    .line 34
    if-lt v3, v4, :cond_1

    .line 35
    .line 36
    const/16 v4, 0x7a

    .line 37
    .line 38
    if-le v3, v4, :cond_4

    .line 39
    .line 40
    :cond_1
    const/16 v4, 0x30

    .line 41
    .line 42
    if-lt v3, v4, :cond_2

    .line 43
    .line 44
    const/16 v4, 0x39

    .line 45
    .line 46
    if-le v3, v4, :cond_4

    .line 47
    .line 48
    :cond_2
    const/16 v4, 0x23

    .line 49
    .line 50
    if-eq v3, v4, :cond_4

    .line 51
    .line 52
    const/16 v4, 0x2d

    .line 53
    .line 54
    if-eq v3, v4, :cond_4

    .line 55
    .line 56
    const/16 v4, 0x2e

    .line 57
    .line 58
    if-eq v3, v4, :cond_4

    .line 59
    .line 60
    const/16 v4, 0x5f

    .line 61
    .line 62
    if-ne v3, v4, :cond_3

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    const/4 v0, 0x1

    .line 66
    goto :goto_0

    .line 67
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 68
    .line 69
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_5
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    sub-int/2addr v1, v0

    .line 78
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    return-object p0
.end method

.method public static b(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lb1/b;->c(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-static {p0, p1}, Lb1/b;->a(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v0, ""

    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    int-to-char p0, p0

    .line 35
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method

.method public static c(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    :goto_0
    move v1, v0

    .line 3
    :goto_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-lez v2, :cond_4

    .line 8
    .line 9
    if-eqz v1, :cond_4

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    aget-byte v1, v2, v1

    .line 20
    .line 21
    int-to-char v1, v1

    .line 22
    const/16 v2, 0x9

    .line 23
    .line 24
    if-eq v1, v2, :cond_3

    .line 25
    .line 26
    const/16 v2, 0xa

    .line 27
    .line 28
    if-eq v1, v2, :cond_3

    .line 29
    .line 30
    const/16 v2, 0xc

    .line 31
    .line 32
    if-eq v1, v2, :cond_3

    .line 33
    .line 34
    const/16 v2, 0xd

    .line 35
    .line 36
    if-eq v1, v2, :cond_3

    .line 37
    .line 38
    const/16 v2, 0x20

    .line 39
    .line 40
    if-eq v1, v2, :cond_3

    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    add-int/lit8 v4, v1, 0x2

    .line 55
    .line 56
    if-gt v4, v2, :cond_2

    .line 57
    .line 58
    add-int/lit8 v5, v1, 0x1

    .line 59
    .line 60
    aget-byte v1, v3, v1

    .line 61
    .line 62
    const/16 v6, 0x2f

    .line 63
    .line 64
    if-ne v1, v6, :cond_2

    .line 65
    .line 66
    aget-byte v1, v3, v5

    .line 67
    .line 68
    const/16 v5, 0x2a

    .line 69
    .line 70
    if-ne v1, v5, :cond_2

    .line 71
    .line 72
    :goto_2
    add-int/lit8 v1, v4, 0x1

    .line 73
    .line 74
    if-ge v1, v2, :cond_1

    .line 75
    .line 76
    aget-byte v7, v3, v4

    .line 77
    .line 78
    int-to-char v7, v7

    .line 79
    if-ne v7, v5, :cond_0

    .line 80
    .line 81
    aget-byte v7, v3, v1

    .line 82
    .line 83
    int-to-char v7, v7

    .line 84
    if-ne v7, v6, :cond_0

    .line 85
    .line 86
    add-int/lit8 v4, v4, 0x2

    .line 87
    .line 88
    move v2, v4

    .line 89
    goto :goto_2

    .line 90
    :cond_0
    move v4, v1

    .line 91
    goto :goto_2

    .line 92
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    sub-int/2addr v2, v1

    .line 97
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_2
    const/4 v1, 0x0

    .line 102
    goto :goto_1

    .line 103
    :cond_3
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_4
    return-void
.end method


# virtual methods
.method public parseBlock(Landroidx/media3/common/util/ParsableByteArray;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/util/ParsableByteArray;",
            ")",
            "Ljava/util/List<",
            "Lb1/c;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, -0x1

    .line 5
    const/4 v3, 0x1

    .line 6
    iget-object v4, v0, Lb1/b;->b:Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const/4 v5, 0x0

    .line 9
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 13
    .line 14
    .line 15
    move-result v6

    .line 16
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readLine()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v7

    .line 20
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v7

    .line 24
    if-eqz v7, :cond_0

    .line 25
    .line 26
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 31
    .line 32
    .line 33
    move-result v8

    .line 34
    iget-object v9, v0, Lb1/b;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 35
    .line 36
    invoke-virtual {v9, v7, v8}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v9, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 40
    .line 41
    .line 42
    new-instance v6, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-static {v9}, Lb1/b;->c(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v9}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    const-string v8, "{"

    .line 55
    .line 56
    const/4 v11, 0x5

    .line 57
    if-ge v7, v11, :cond_1

    .line 58
    .line 59
    :goto_1
    const/4 v7, 0x0

    .line 60
    goto/16 :goto_5

    .line 61
    .line 62
    :cond_1
    invoke-virtual {v9, v11}, Landroidx/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    const-string v11, "::cue"

    .line 67
    .line 68
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    if-nez v7, :cond_2

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    invoke-virtual {v9}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    invoke-static {v9, v4}, Lb1/b;->b(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v11

    .line 83
    if-nez v11, :cond_3

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v12

    .line 90
    if-eqz v12, :cond_4

    .line 91
    .line 92
    invoke-virtual {v9, v7}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 93
    .line 94
    .line 95
    const-string v7, ""

    .line 96
    .line 97
    goto :goto_5

    .line 98
    :cond_4
    const-string v7, "("

    .line 99
    .line 100
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    if-eqz v7, :cond_7

    .line 105
    .line 106
    invoke-virtual {v9}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    invoke-virtual {v9}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 111
    .line 112
    .line 113
    move-result v11

    .line 114
    move v12, v5

    .line 115
    :goto_2
    if-ge v7, v11, :cond_6

    .line 116
    .line 117
    if-nez v12, :cond_6

    .line 118
    .line 119
    invoke-virtual {v9}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 120
    .line 121
    .line 122
    move-result-object v12

    .line 123
    add-int/lit8 v13, v7, 0x1

    .line 124
    .line 125
    aget-byte v7, v12, v7

    .line 126
    .line 127
    int-to-char v7, v7

    .line 128
    const/16 v12, 0x29

    .line 129
    .line 130
    if-ne v7, v12, :cond_5

    .line 131
    .line 132
    move v12, v3

    .line 133
    goto :goto_3

    .line 134
    :cond_5
    move v12, v5

    .line 135
    :goto_3
    move v7, v13

    .line 136
    goto :goto_2

    .line 137
    :cond_6
    add-int/2addr v7, v2

    .line 138
    invoke-virtual {v9}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 139
    .line 140
    .line 141
    move-result v11

    .line 142
    sub-int/2addr v7, v11

    .line 143
    invoke-virtual {v9, v7}, Landroidx/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v7

    .line 147
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v7

    .line 151
    goto :goto_4

    .line 152
    :cond_7
    const/4 v7, 0x0

    .line 153
    :goto_4
    invoke-static {v9, v4}, Lb1/b;->b(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v11

    .line 157
    const-string v12, ")"

    .line 158
    .line 159
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v11

    .line 163
    if-nez v11, :cond_8

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_8
    :goto_5
    if-eqz v7, :cond_2b

    .line 167
    .line 168
    invoke-static {v9, v4}, Lb1/b;->b(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v11

    .line 172
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v8

    .line 176
    if-nez v8, :cond_9

    .line 177
    .line 178
    goto/16 :goto_16

    .line 179
    .line 180
    :cond_9
    new-instance v8, Lb1/c;

    .line 181
    .line 182
    invoke-direct {v8}, Lb1/c;-><init>()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 186
    .line 187
    .line 188
    move-result v11

    .line 189
    if-eqz v11, :cond_a

    .line 190
    .line 191
    goto :goto_7

    .line 192
    :cond_a
    const/16 v11, 0x5b

    .line 193
    .line 194
    invoke-virtual {v7, v11}, Ljava/lang/String;->indexOf(I)I

    .line 195
    .line 196
    .line 197
    move-result v11

    .line 198
    if-eq v11, v2, :cond_c

    .line 199
    .line 200
    sget-object v12, Lb1/b;->c:Ljava/util/regex/Pattern;

    .line 201
    .line 202
    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v13

    .line 206
    invoke-virtual {v12, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 207
    .line 208
    .line 209
    move-result-object v12

    .line 210
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    .line 211
    .line 212
    .line 213
    move-result v13

    .line 214
    if-eqz v13, :cond_b

    .line 215
    .line 216
    invoke-virtual {v12, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v12

    .line 220
    invoke-static {v12}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v12

    .line 224
    check-cast v12, Ljava/lang/String;

    .line 225
    .line 226
    invoke-virtual {v8, v12}, Lb1/c;->setTargetVoice(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    :cond_b
    invoke-virtual {v7, v5, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v7

    .line 233
    :cond_c
    const-string v11, "\\."

    .line 234
    .line 235
    invoke-static {v7, v11}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v7

    .line 239
    aget-object v11, v7, v5

    .line 240
    .line 241
    const/16 v12, 0x23

    .line 242
    .line 243
    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    .line 244
    .line 245
    .line 246
    move-result v12

    .line 247
    if-eq v12, v2, :cond_d

    .line 248
    .line 249
    invoke-virtual {v11, v5, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v13

    .line 253
    invoke-virtual {v8, v13}, Lb1/c;->setTargetTagName(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    add-int/2addr v12, v3

    .line 257
    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v11

    .line 261
    invoke-virtual {v8, v11}, Lb1/c;->setTargetId(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    goto :goto_6

    .line 265
    :cond_d
    invoke-virtual {v8, v11}, Lb1/c;->setTargetTagName(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    :goto_6
    array-length v11, v7

    .line 269
    if-le v11, v3, :cond_e

    .line 270
    .line 271
    array-length v11, v7

    .line 272
    invoke-static {v7, v3, v11}, Landroidx/media3/common/util/Util;->nullSafeArrayCopyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v7

    .line 276
    check-cast v7, [Ljava/lang/String;

    .line 277
    .line 278
    invoke-virtual {v8, v7}, Lb1/c;->setTargetClasses([Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    :cond_e
    :goto_7
    move v7, v5

    .line 282
    const/4 v11, 0x0

    .line 283
    :goto_8
    const-string v12, "}"

    .line 284
    .line 285
    if-nez v7, :cond_29

    .line 286
    .line 287
    invoke-virtual {v9}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 288
    .line 289
    .line 290
    move-result v7

    .line 291
    invoke-static {v9, v4}, Lb1/b;->b(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v11

    .line 295
    if-eqz v11, :cond_10

    .line 296
    .line 297
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    move-result v13

    .line 301
    if-eqz v13, :cond_f

    .line 302
    .line 303
    goto :goto_9

    .line 304
    :cond_f
    move v13, v5

    .line 305
    goto :goto_a

    .line 306
    :cond_10
    :goto_9
    move v13, v3

    .line 307
    :goto_a
    if-nez v13, :cond_28

    .line 308
    .line 309
    invoke-virtual {v9, v7}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 310
    .line 311
    .line 312
    invoke-static {v9}, Lb1/b;->c(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 313
    .line 314
    .line 315
    invoke-static {v9, v4}, Lb1/b;->a(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v7

    .line 319
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 320
    .line 321
    .line 322
    move-result v14

    .line 323
    if-eqz v14, :cond_11

    .line 324
    .line 325
    goto/16 :goto_15

    .line 326
    .line 327
    :cond_11
    const-string v14, ":"

    .line 328
    .line 329
    invoke-static {v9, v4}, Lb1/b;->b(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v15

    .line 333
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    move-result v14

    .line 337
    if-nez v14, :cond_12

    .line 338
    .line 339
    goto/16 :goto_15

    .line 340
    .line 341
    :cond_12
    invoke-static {v9}, Lb1/b;->c(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 342
    .line 343
    .line 344
    new-instance v14, Ljava/lang/StringBuilder;

    .line 345
    .line 346
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 347
    .line 348
    .line 349
    move v15, v5

    .line 350
    :goto_b
    const-string v2, ";"

    .line 351
    .line 352
    if-nez v15, :cond_16

    .line 353
    .line 354
    invoke-virtual {v9}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 355
    .line 356
    .line 357
    move-result v5

    .line 358
    invoke-static {v9, v4}, Lb1/b;->b(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v10

    .line 362
    if-nez v10, :cond_13

    .line 363
    .line 364
    const/4 v5, 0x0

    .line 365
    goto :goto_e

    .line 366
    :cond_13
    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    move-result v16

    .line 370
    if-nez v16, :cond_15

    .line 371
    .line 372
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    move-result v2

    .line 376
    if-eqz v2, :cond_14

    .line 377
    .line 378
    goto :goto_d

    .line 379
    :cond_14
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    :goto_c
    const/4 v5, 0x0

    .line 383
    goto :goto_b

    .line 384
    :cond_15
    :goto_d
    invoke-virtual {v9, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 385
    .line 386
    .line 387
    move v15, v3

    .line 388
    goto :goto_c

    .line 389
    :cond_16
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v5

    .line 393
    :goto_e
    if-eqz v5, :cond_28

    .line 394
    .line 395
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 396
    .line 397
    .line 398
    move-result v10

    .line 399
    if-eqz v10, :cond_17

    .line 400
    .line 401
    goto/16 :goto_15

    .line 402
    .line 403
    :cond_17
    invoke-virtual {v9}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 404
    .line 405
    .line 406
    move-result v10

    .line 407
    invoke-static {v9, v4}, Lb1/b;->b(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v14

    .line 411
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 412
    .line 413
    .line 414
    move-result v2

    .line 415
    if-eqz v2, :cond_18

    .line 416
    .line 417
    goto :goto_f

    .line 418
    :cond_18
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 419
    .line 420
    .line 421
    move-result v2

    .line 422
    if-eqz v2, :cond_28

    .line 423
    .line 424
    invoke-virtual {v9, v10}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 425
    .line 426
    .line 427
    :goto_f
    const-string v2, "color"

    .line 428
    .line 429
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 430
    .line 431
    .line 432
    move-result v2

    .line 433
    if-eqz v2, :cond_19

    .line 434
    .line 435
    invoke-static {v5}, Landroidx/media3/common/util/ColorParser;->parseCssColor(Ljava/lang/String;)I

    .line 436
    .line 437
    .line 438
    move-result v2

    .line 439
    invoke-virtual {v8, v2}, Lb1/c;->setFontColor(I)Lb1/c;

    .line 440
    .line 441
    .line 442
    goto/16 :goto_15

    .line 443
    .line 444
    :cond_19
    const-string v2, "background-color"

    .line 445
    .line 446
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 447
    .line 448
    .line 449
    move-result v2

    .line 450
    if-eqz v2, :cond_1a

    .line 451
    .line 452
    invoke-static {v5}, Landroidx/media3/common/util/ColorParser;->parseCssColor(Ljava/lang/String;)I

    .line 453
    .line 454
    .line 455
    move-result v2

    .line 456
    invoke-virtual {v8, v2}, Lb1/c;->setBackgroundColor(I)Lb1/c;

    .line 457
    .line 458
    .line 459
    goto/16 :goto_15

    .line 460
    .line 461
    :cond_1a
    const-string v2, "ruby-position"

    .line 462
    .line 463
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    move-result v2

    .line 467
    if-eqz v2, :cond_1c

    .line 468
    .line 469
    const-string v2, "over"

    .line 470
    .line 471
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 472
    .line 473
    .line 474
    move-result v2

    .line 475
    if-eqz v2, :cond_1b

    .line 476
    .line 477
    invoke-virtual {v8, v3}, Lb1/c;->setRubyPosition(I)Lb1/c;

    .line 478
    .line 479
    .line 480
    goto/16 :goto_15

    .line 481
    .line 482
    :cond_1b
    const-string v2, "under"

    .line 483
    .line 484
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 485
    .line 486
    .line 487
    move-result v2

    .line 488
    if-eqz v2, :cond_28

    .line 489
    .line 490
    invoke-virtual {v8, v1}, Lb1/c;->setRubyPosition(I)Lb1/c;

    .line 491
    .line 492
    .line 493
    goto/16 :goto_15

    .line 494
    .line 495
    :cond_1c
    const-string v2, "text-combine-upright"

    .line 496
    .line 497
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 498
    .line 499
    .line 500
    move-result v2

    .line 501
    if-eqz v2, :cond_1f

    .line 502
    .line 503
    const-string v2, "all"

    .line 504
    .line 505
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 506
    .line 507
    .line 508
    move-result v2

    .line 509
    if-nez v2, :cond_1e

    .line 510
    .line 511
    const-string v2, "digits"

    .line 512
    .line 513
    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 514
    .line 515
    .line 516
    move-result v2

    .line 517
    if-eqz v2, :cond_1d

    .line 518
    .line 519
    goto :goto_10

    .line 520
    :cond_1d
    const/4 v2, 0x0

    .line 521
    goto :goto_11

    .line 522
    :cond_1e
    :goto_10
    move v2, v3

    .line 523
    :goto_11
    invoke-virtual {v8, v2}, Lb1/c;->setCombineUpright(Z)Lb1/c;

    .line 524
    .line 525
    .line 526
    goto/16 :goto_15

    .line 527
    .line 528
    :cond_1f
    const-string v2, "text-decoration"

    .line 529
    .line 530
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 531
    .line 532
    .line 533
    move-result v2

    .line 534
    if-eqz v2, :cond_20

    .line 535
    .line 536
    const-string v2, "underline"

    .line 537
    .line 538
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 539
    .line 540
    .line 541
    move-result v2

    .line 542
    if-eqz v2, :cond_28

    .line 543
    .line 544
    invoke-virtual {v8, v3}, Lb1/c;->setUnderline(Z)Lb1/c;

    .line 545
    .line 546
    .line 547
    goto/16 :goto_15

    .line 548
    .line 549
    :cond_20
    const-string v2, "font-family"

    .line 550
    .line 551
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 552
    .line 553
    .line 554
    move-result v2

    .line 555
    if-eqz v2, :cond_21

    .line 556
    .line 557
    invoke-virtual {v8, v5}, Lb1/c;->setFontFamily(Ljava/lang/String;)Lb1/c;

    .line 558
    .line 559
    .line 560
    goto/16 :goto_15

    .line 561
    .line 562
    :cond_21
    const-string v2, "font-weight"

    .line 563
    .line 564
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 565
    .line 566
    .line 567
    move-result v2

    .line 568
    if-eqz v2, :cond_22

    .line 569
    .line 570
    const-string v2, "bold"

    .line 571
    .line 572
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 573
    .line 574
    .line 575
    move-result v2

    .line 576
    if-eqz v2, :cond_28

    .line 577
    .line 578
    invoke-virtual {v8, v3}, Lb1/c;->setBold(Z)Lb1/c;

    .line 579
    .line 580
    .line 581
    goto/16 :goto_15

    .line 582
    .line 583
    :cond_22
    const-string v2, "font-style"

    .line 584
    .line 585
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 586
    .line 587
    .line 588
    move-result v2

    .line 589
    if-eqz v2, :cond_23

    .line 590
    .line 591
    const-string v2, "italic"

    .line 592
    .line 593
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 594
    .line 595
    .line 596
    move-result v2

    .line 597
    if-eqz v2, :cond_28

    .line 598
    .line 599
    invoke-virtual {v8, v3}, Lb1/c;->setItalic(Z)Lb1/c;

    .line 600
    .line 601
    .line 602
    goto/16 :goto_15

    .line 603
    .line 604
    :cond_23
    const-string v2, "font-size"

    .line 605
    .line 606
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 607
    .line 608
    .line 609
    move-result v2

    .line 610
    if-eqz v2, :cond_28

    .line 611
    .line 612
    sget-object v2, Lb1/b;->d:Ljava/util/regex/Pattern;

    .line 613
    .line 614
    invoke-static {v5}, LP3/a;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    move-result-object v7

    .line 618
    invoke-virtual {v2, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 619
    .line 620
    .line 621
    move-result-object v2

    .line 622
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    .line 623
    .line 624
    .line 625
    move-result v7

    .line 626
    if-nez v7, :cond_24

    .line 627
    .line 628
    new-instance v2, Ljava/lang/StringBuilder;

    .line 629
    .line 630
    const-string v7, "Invalid font-size: \'"

    .line 631
    .line 632
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 633
    .line 634
    .line 635
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    .line 637
    .line 638
    const-string v5, "\'."

    .line 639
    .line 640
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    .line 642
    .line 643
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 644
    .line 645
    .line 646
    move-result-object v2

    .line 647
    const-string v5, "WebvttCssParser"

    .line 648
    .line 649
    invoke-static {v5, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    .line 651
    .line 652
    goto :goto_15

    .line 653
    :cond_24
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object v5

    .line 657
    invoke-static {v5}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    .line 659
    .line 660
    move-result-object v5

    .line 661
    check-cast v5, Ljava/lang/String;

    .line 662
    .line 663
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 664
    .line 665
    .line 666
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 667
    .line 668
    .line 669
    move-result v7

    .line 670
    sparse-switch v7, :sswitch_data_0

    .line 671
    .line 672
    .line 673
    :goto_12
    const/4 v5, -0x1

    .line 674
    goto :goto_13

    .line 675
    :sswitch_0
    const-string v7, "px"

    .line 676
    .line 677
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 678
    .line 679
    .line 680
    move-result v5

    .line 681
    if-nez v5, :cond_25

    .line 682
    .line 683
    goto :goto_12

    .line 684
    :cond_25
    move v5, v1

    .line 685
    goto :goto_13

    .line 686
    :sswitch_1
    const-string v7, "em"

    .line 687
    .line 688
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 689
    .line 690
    .line 691
    move-result v5

    .line 692
    if-nez v5, :cond_26

    .line 693
    .line 694
    goto :goto_12

    .line 695
    :cond_26
    move v5, v3

    .line 696
    goto :goto_13

    .line 697
    :sswitch_2
    const-string v7, "%"

    .line 698
    .line 699
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 700
    .line 701
    .line 702
    move-result v5

    .line 703
    if-nez v5, :cond_27

    .line 704
    .line 705
    goto :goto_12

    .line 706
    :cond_27
    const/4 v5, 0x0

    .line 707
    :goto_13
    packed-switch v5, :pswitch_data_0

    .line 708
    .line 709
    .line 710
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 711
    .line 712
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 713
    .line 714
    .line 715
    throw v1

    .line 716
    :pswitch_0
    invoke-virtual {v8, v3}, Lb1/c;->setFontSizeUnit(I)Lb1/c;

    .line 717
    .line 718
    .line 719
    goto :goto_14

    .line 720
    :pswitch_1
    invoke-virtual {v8, v1}, Lb1/c;->setFontSizeUnit(I)Lb1/c;

    .line 721
    .line 722
    .line 723
    goto :goto_14

    .line 724
    :pswitch_2
    const/4 v5, 0x3

    .line 725
    invoke-virtual {v8, v5}, Lb1/c;->setFontSizeUnit(I)Lb1/c;

    .line 726
    .line 727
    .line 728
    :goto_14
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 729
    .line 730
    .line 731
    move-result-object v2

    .line 732
    invoke-static {v2}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    .line 734
    .line 735
    move-result-object v2

    .line 736
    check-cast v2, Ljava/lang/String;

    .line 737
    .line 738
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 739
    .line 740
    .line 741
    move-result v2

    .line 742
    invoke-virtual {v8, v2}, Lb1/c;->setFontSize(F)Lb1/c;

    .line 743
    .line 744
    .line 745
    :cond_28
    :goto_15
    move v7, v13

    .line 746
    const/4 v2, -0x1

    .line 747
    const/4 v5, 0x0

    .line 748
    goto/16 :goto_8

    .line 749
    .line 750
    :cond_29
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 751
    .line 752
    .line 753
    move-result v2

    .line 754
    if-eqz v2, :cond_2a

    .line 755
    .line 756
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    .line 758
    .line 759
    :cond_2a
    const/4 v2, -0x1

    .line 760
    const/4 v5, 0x0

    .line 761
    goto/16 :goto_0

    .line 762
    .line 763
    :cond_2b
    :goto_16
    return-object v6

    .line 764
    nop

    .line 765
    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_2
        0xca8 -> :sswitch_1
        0xe08 -> :sswitch_0
    .end sparse-switch

    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
