.class final Lorg/threeten/bp/format/DateTimeFormatterBuilder$LocalizedOffsetPrinterParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocalizedOffsetPrinterParser"
.end annotation


# instance fields
.field private final style:Lorg/threeten/bp/format/TextStyle;


# direct methods
.method public constructor <init>(Lorg/threeten/bp/format/TextStyle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$LocalizedOffsetPrinterParser;->style:Lorg/threeten/bp/format/TextStyle;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public parse(Lorg/threeten/bp/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 10

    .line 1
    const/4 v4, 0x0

    .line 2
    const/4 v5, 0x3

    .line 3
    const-string v3, "GMT"

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    move-object v1, p2

    .line 7
    move v2, p3

    .line 8
    invoke-virtual/range {v0 .. v5}, Lorg/threeten/bp/format/DateTimeParseContext;->subSequenceEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    not-int p1, v2

    .line 15
    return p1

    .line 16
    :cond_0
    add-int/lit8 v4, v2, 0x3

    .line 17
    .line 18
    iget-object p1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$LocalizedOffsetPrinterParser;->style:Lorg/threeten/bp/format/TextStyle;

    .line 19
    .line 20
    sget-object p2, Lorg/threeten/bp/format/TextStyle;->FULL:Lorg/threeten/bp/format/TextStyle;

    .line 21
    .line 22
    if-ne p1, p2, :cond_1

    .line 23
    .line 24
    new-instance p1, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    .line 25
    .line 26
    const-string p2, ""

    .line 27
    .line 28
    const-string p3, "+HH:MM:ss"

    .line 29
    .line 30
    invoke-direct {p1, p2, p3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0, v1, v4}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parse(Lorg/threeten/bp/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    return p1

    .line 38
    :cond_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-ne v4, p1, :cond_2

    .line 43
    .line 44
    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    .line 45
    .line 46
    const-wide/16 v2, 0x0

    .line 47
    .line 48
    move v5, v4

    .line 49
    invoke-virtual/range {v0 .. v5}, Lorg/threeten/bp/format/DateTimeParseContext;->setParsedField(Lorg/threeten/bp/temporal/TemporalField;JII)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    return p1

    .line 54
    :cond_2
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    const/16 p3, 0x2b

    .line 59
    .line 60
    const/16 v3, 0x2d

    .line 61
    .line 62
    if-eq p2, p3, :cond_3

    .line 63
    .line 64
    if-eq p2, v3, :cond_3

    .line 65
    .line 66
    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    .line 67
    .line 68
    const-wide/16 v2, 0x0

    .line 69
    .line 70
    move v5, v4

    .line 71
    invoke-virtual/range {v0 .. v5}, Lorg/threeten/bp/format/DateTimeParseContext;->setParsedField(Lorg/threeten/bp/temporal/TemporalField;JII)I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    return p1

    .line 76
    :cond_3
    if-ne p2, v3, :cond_4

    .line 77
    .line 78
    const/4 p2, -0x1

    .line 79
    goto :goto_0

    .line 80
    :cond_4
    const/4 p2, 0x1

    .line 81
    :goto_0
    if-ne v4, p1, :cond_5

    .line 82
    .line 83
    not-int p1, v4

    .line 84
    return p1

    .line 85
    :cond_5
    add-int/lit8 p3, v2, 0x4

    .line 86
    .line 87
    invoke-interface {v1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    const/16 v4, 0x30

    .line 92
    .line 93
    if-lt v3, v4, :cond_19

    .line 94
    .line 95
    const/16 v5, 0x39

    .line 96
    .line 97
    if-le v3, v5, :cond_6

    .line 98
    .line 99
    goto/16 :goto_7

    .line 100
    .line 101
    :cond_6
    add-int/lit8 p3, v2, 0x5

    .line 102
    .line 103
    sub-int/2addr v3, v4

    .line 104
    if-eq p3, p1, :cond_8

    .line 105
    .line 106
    invoke-interface {v1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    if-lt v6, v4, :cond_8

    .line 111
    .line 112
    if-gt v6, v5, :cond_8

    .line 113
    .line 114
    mul-int/lit8 v3, v3, 0xa

    .line 115
    .line 116
    sub-int/2addr v6, v4

    .line 117
    add-int/2addr v3, v6

    .line 118
    const/16 v6, 0x17

    .line 119
    .line 120
    if-le v3, v6, :cond_7

    .line 121
    .line 122
    not-int p1, p3

    .line 123
    return p1

    .line 124
    :cond_7
    add-int/lit8 p3, v2, 0x6

    .line 125
    .line 126
    :cond_8
    if-eq p3, p1, :cond_18

    .line 127
    .line 128
    invoke-interface {v1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    const/16 v6, 0x3a

    .line 133
    .line 134
    if-eq v2, v6, :cond_9

    .line 135
    .line 136
    goto/16 :goto_6

    .line 137
    .line 138
    :cond_9
    add-int/lit8 v2, p3, 0x1

    .line 139
    .line 140
    add-int/lit8 v7, p1, -0x2

    .line 141
    .line 142
    if-le v2, v7, :cond_a

    .line 143
    .line 144
    not-int p1, v2

    .line 145
    return p1

    .line 146
    :cond_a
    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 147
    .line 148
    .line 149
    move-result v8

    .line 150
    if-lt v8, v4, :cond_17

    .line 151
    .line 152
    if-le v8, v5, :cond_b

    .line 153
    .line 154
    goto/16 :goto_5

    .line 155
    .line 156
    :cond_b
    add-int/lit8 v2, p3, 0x2

    .line 157
    .line 158
    sub-int/2addr v8, v4

    .line 159
    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 160
    .line 161
    .line 162
    move-result v9

    .line 163
    if-lt v9, v4, :cond_16

    .line 164
    .line 165
    if-le v9, v5, :cond_c

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_c
    move v2, v4

    .line 169
    add-int/lit8 v4, p3, 0x3

    .line 170
    .line 171
    mul-int/lit8 v8, v8, 0xa

    .line 172
    .line 173
    sub-int/2addr v9, v2

    .line 174
    add-int/2addr v9, v8

    .line 175
    const/16 v8, 0x3b

    .line 176
    .line 177
    if-le v9, v8, :cond_d

    .line 178
    .line 179
    not-int p1, v4

    .line 180
    return p1

    .line 181
    :cond_d
    if-eq v4, p1, :cond_15

    .line 182
    .line 183
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    if-eq p1, v6, :cond_e

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_e
    add-int/lit8 p1, p3, 0x4

    .line 191
    .line 192
    if-le p1, v7, :cond_f

    .line 193
    .line 194
    not-int p1, p1

    .line 195
    return p1

    .line 196
    :cond_f
    invoke-interface {v1, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 197
    .line 198
    .line 199
    move-result v4

    .line 200
    if-lt v4, v2, :cond_14

    .line 201
    .line 202
    if-le v4, v5, :cond_10

    .line 203
    .line 204
    goto :goto_2

    .line 205
    :cond_10
    add-int/lit8 p1, p3, 0x5

    .line 206
    .line 207
    sub-int/2addr v4, v2

    .line 208
    invoke-interface {v1, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    if-lt v1, v2, :cond_13

    .line 213
    .line 214
    if-le v1, v5, :cond_11

    .line 215
    .line 216
    goto :goto_1

    .line 217
    :cond_11
    add-int/lit8 p3, p3, 0x6

    .line 218
    .line 219
    mul-int/lit8 v4, v4, 0xa

    .line 220
    .line 221
    sub-int/2addr v1, v2

    .line 222
    add-int/2addr v1, v4

    .line 223
    if-le v1, v8, :cond_12

    .line 224
    .line 225
    not-int p1, p3

    .line 226
    return p1

    .line 227
    :cond_12
    mul-int/lit16 v3, v3, 0xe10

    .line 228
    .line 229
    mul-int/lit8 v9, v9, 0x3c

    .line 230
    .line 231
    add-int/2addr v9, v3

    .line 232
    add-int/2addr v9, v1

    .line 233
    mul-int/2addr v9, p2

    .line 234
    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    .line 235
    .line 236
    int-to-long v2, v9

    .line 237
    move v5, p3

    .line 238
    move v4, p3

    .line 239
    invoke-virtual/range {v0 .. v5}, Lorg/threeten/bp/format/DateTimeParseContext;->setParsedField(Lorg/threeten/bp/temporal/TemporalField;JII)I

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    return p1

    .line 244
    :cond_13
    :goto_1
    not-int p1, p1

    .line 245
    return p1

    .line 246
    :cond_14
    :goto_2
    not-int p1, p1

    .line 247
    return p1

    .line 248
    :cond_15
    :goto_3
    mul-int/lit16 v3, v3, 0xe10

    .line 249
    .line 250
    mul-int/lit8 v9, v9, 0x3c

    .line 251
    .line 252
    add-int/2addr v9, v3

    .line 253
    mul-int/2addr v9, p2

    .line 254
    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    .line 255
    .line 256
    int-to-long v2, v9

    .line 257
    move v5, v4

    .line 258
    invoke-virtual/range {v0 .. v5}, Lorg/threeten/bp/format/DateTimeParseContext;->setParsedField(Lorg/threeten/bp/temporal/TemporalField;JII)I

    .line 259
    .line 260
    .line 261
    move-result p1

    .line 262
    return p1

    .line 263
    :cond_16
    :goto_4
    not-int p1, v2

    .line 264
    return p1

    .line 265
    :cond_17
    :goto_5
    not-int p1, v2

    .line 266
    return p1

    .line 267
    :cond_18
    :goto_6
    mul-int/lit16 p2, p2, 0xe10

    .line 268
    .line 269
    mul-int/2addr p2, v3

    .line 270
    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    .line 271
    .line 272
    int-to-long v2, p2

    .line 273
    move v5, p3

    .line 274
    move v4, p3

    .line 275
    invoke-virtual/range {v0 .. v5}, Lorg/threeten/bp/format/DateTimeParseContext;->setParsedField(Lorg/threeten/bp/temporal/TemporalField;JII)I

    .line 276
    .line 277
    .line 278
    move-result p1

    .line 279
    return p1

    .line 280
    :cond_19
    :goto_7
    not-int p1, p3

    .line 281
    return p1
.end method

.method public print(Lorg/threeten/bp/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 3

    .line 1
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lorg/threeten/bp/format/DateTimePrintContext;->getValue(Lorg/threeten/bp/temporal/TemporalField;)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_0
    const-string v1, "GMT"

    .line 12
    .line 13
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$LocalizedOffsetPrinterParser;->style:Lorg/threeten/bp/format/TextStyle;

    .line 17
    .line 18
    sget-object v2, Lorg/threeten/bp/format/TextStyle;->FULL:Lorg/threeten/bp/format/TextStyle;

    .line 19
    .line 20
    if-ne v1, v2, :cond_1

    .line 21
    .line 22
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    .line 23
    .line 24
    const-string v1, ""

    .line 25
    .line 26
    const-string v2, "+HH:MM:ss"

    .line 27
    .line 28
    invoke-direct {v0, v1, v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->print(Lorg/threeten/bp/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    return p1

    .line 36
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    invoke-static {v0, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeToInt(J)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_4

    .line 45
    .line 46
    div-int/lit16 v0, p1, 0xe10

    .line 47
    .line 48
    rem-int/lit8 v0, v0, 0x64

    .line 49
    .line 50
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    div-int/lit8 v1, p1, 0x3c

    .line 55
    .line 56
    rem-int/lit8 v1, v1, 0x3c

    .line 57
    .line 58
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    rem-int/lit8 v2, p1, 0x3c

    .line 63
    .line 64
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-gez p1, :cond_2

    .line 69
    .line 70
    const-string p1, "-"

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    const-string p1, "+"

    .line 74
    .line 75
    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    if-gtz v1, :cond_3

    .line 82
    .line 83
    if-lez v2, :cond_4

    .line 84
    .line 85
    :cond_3
    const-string p1, ":"

    .line 86
    .line 87
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    div-int/lit8 v0, v1, 0xa

    .line 91
    .line 92
    add-int/lit8 v0, v0, 0x30

    .line 93
    .line 94
    int-to-char v0, v0

    .line 95
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    rem-int/lit8 v1, v1, 0xa

    .line 99
    .line 100
    add-int/lit8 v1, v1, 0x30

    .line 101
    .line 102
    int-to-char v0, v1

    .line 103
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    if-lez v2, :cond_4

    .line 107
    .line 108
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    div-int/lit8 p1, v2, 0xa

    .line 112
    .line 113
    add-int/lit8 p1, p1, 0x30

    .line 114
    .line 115
    int-to-char p1, p1

    .line 116
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    rem-int/lit8 v2, v2, 0xa

    .line 120
    .line 121
    add-int/lit8 v2, v2, 0x30

    .line 122
    .line 123
    int-to-char p1, v2

    .line 124
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    :cond_4
    const/4 p1, 0x1

    .line 128
    return p1
.end method
