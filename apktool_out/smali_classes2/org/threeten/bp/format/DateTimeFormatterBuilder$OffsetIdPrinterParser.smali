.class final Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;
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
    name = "OffsetIdPrinterParser"
.end annotation


# static fields
.field static final INSTANCE_ID:Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

.field static final INSTANCE_ID_ZERO:Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

.field static final PATTERNS:[Ljava/lang/String;


# instance fields
.field private final noOffsetText:Ljava/lang/String;

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    const-string v7, "+HHMMSS"

    .line 2
    .line 3
    const-string v8, "+HH:MM:SS"

    .line 4
    .line 5
    const-string v0, "+HH"

    .line 6
    .line 7
    const-string v1, "+HHmm"

    .line 8
    .line 9
    const-string v2, "+HH:mm"

    .line 10
    .line 11
    const-string v3, "+HHMM"

    .line 12
    .line 13
    const-string v4, "+HH:MM"

    .line 14
    .line 15
    const-string v5, "+HHMMss"

    .line 16
    .line 17
    const-string v6, "+HH:MM:ss"

    .line 18
    .line 19
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->PATTERNS:[Ljava/lang/String;

    .line 24
    .line 25
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    .line 26
    .line 27
    const-string v1, "Z"

    .line 28
    .line 29
    const-string v2, "+HH:MM:ss"

    .line 30
    .line 31
    invoke-direct {v0, v1, v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID:Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    .line 35
    .line 36
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    .line 37
    .line 38
    const-string v1, "0"

    .line 39
    .line 40
    invoke-direct {v0, v1, v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    sput-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID_ZERO:Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    .line 44
    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "noOffsetText"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    const-string v0, "pattern"

    .line 10
    .line 11
    invoke-static {p2, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->noOffsetText:Ljava/lang/String;

    .line 15
    .line 16
    invoke-direct {p0, p2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->checkPattern(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iput p1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    .line 21
    .line 22
    return-void
.end method

.method private checkPattern(Ljava/lang/String;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    sget-object v1, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->PATTERNS:[Ljava/lang/String;

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    if-ge v0, v2, :cond_1

    .line 6
    .line 7
    aget-object v1, v1, v0

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    return v0

    .line 16
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    const-string v1, "Invalid zone offset pattern: "

    .line 22
    .line 23
    invoke-static {v1, p1}, LA/i;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v0
.end method

.method private parseNumber([IILjava/lang/CharSequence;Z)Z
    .locals 5

    .line 1
    iget v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x3

    .line 4
    .line 5
    div-int/lit8 v1, v1, 0x2

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-ge v1, p2, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    aget v1, p1, v2

    .line 12
    .line 13
    rem-int/lit8 v0, v0, 0x2

    .line 14
    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    if-le p2, v0, :cond_2

    .line 19
    .line 20
    add-int/lit8 v0, v1, 0x1

    .line 21
    .line 22
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-gt v0, v3, :cond_6

    .line 27
    .line 28
    invoke-interface {p3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/16 v3, 0x3a

    .line 33
    .line 34
    if-eq v1, v3, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move v1, v0

    .line 38
    :cond_2
    add-int/lit8 v0, v1, 0x2

    .line 39
    .line 40
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-le v0, v3, :cond_3

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    add-int/lit8 v0, v1, 0x1

    .line 48
    .line 49
    invoke-interface {p3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    add-int/lit8 v1, v1, 0x2

    .line 54
    .line 55
    invoke-interface {p3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 56
    .line 57
    .line 58
    move-result p3

    .line 59
    const/16 v0, 0x30

    .line 60
    .line 61
    if-lt v3, v0, :cond_6

    .line 62
    .line 63
    const/16 v4, 0x39

    .line 64
    .line 65
    if-gt v3, v4, :cond_6

    .line 66
    .line 67
    if-lt p3, v0, :cond_6

    .line 68
    .line 69
    if-le p3, v4, :cond_4

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_4
    sub-int/2addr v3, v0

    .line 73
    mul-int/lit8 v3, v3, 0xa

    .line 74
    .line 75
    sub-int/2addr p3, v0

    .line 76
    add-int/2addr p3, v3

    .line 77
    if-ltz p3, :cond_6

    .line 78
    .line 79
    const/16 v0, 0x3b

    .line 80
    .line 81
    if-le p3, v0, :cond_5

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_5
    aput p3, p1, p2

    .line 85
    .line 86
    aput v1, p1, v2

    .line 87
    .line 88
    return v2

    .line 89
    :cond_6
    :goto_0
    return p4
.end method


# virtual methods
.method public parse(Lorg/threeten/bp/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 11

    .line 1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->noOffsetText:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v7

    .line 11
    if-nez v7, :cond_0

    .line 12
    .line 13
    if-ne p3, v0, :cond_2

    .line 14
    .line 15
    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    .line 16
    .line 17
    const-wide/16 v3, 0x0

    .line 18
    .line 19
    move v6, p3

    .line 20
    move-object v1, p1

    .line 21
    move v5, p3

    .line 22
    invoke-virtual/range {v1 .. v6}, Lorg/threeten/bp/format/DateTimeParseContext;->setParsedField(Lorg/threeten/bp/temporal/TemporalField;JII)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1

    .line 27
    :cond_0
    if-ne p3, v0, :cond_1

    .line 28
    .line 29
    not-int p1, p3

    .line 30
    return p1

    .line 31
    :cond_1
    iget-object v5, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->noOffsetText:Ljava/lang/String;

    .line 32
    .line 33
    const/4 v6, 0x0

    .line 34
    move-object v2, p1

    .line 35
    move-object v3, p2

    .line 36
    move v4, p3

    .line 37
    invoke-virtual/range {v2 .. v7}, Lorg/threeten/bp/format/DateTimeParseContext;->subSequenceEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    .line 44
    .line 45
    const-wide/16 v2, 0x0

    .line 46
    .line 47
    add-int v5, p3, v7

    .line 48
    .line 49
    move-object v0, p1

    .line 50
    move v4, p3

    .line 51
    invoke-virtual/range {v0 .. v5}, Lorg/threeten/bp/format/DateTimeParseContext;->setParsedField(Lorg/threeten/bp/temporal/TemporalField;JII)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    return p1

    .line 56
    :cond_2
    invoke-interface/range {p2 .. p3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    const/16 v1, 0x2b

    .line 61
    .line 62
    const/16 v2, 0x2d

    .line 63
    .line 64
    if-eq v0, v1, :cond_3

    .line 65
    .line 66
    if-ne v0, v2, :cond_7

    .line 67
    .line 68
    :cond_3
    const/4 v1, 0x1

    .line 69
    if-ne v0, v2, :cond_4

    .line 70
    .line 71
    const/4 v0, -0x1

    .line 72
    goto :goto_0

    .line 73
    :cond_4
    move v0, v1

    .line 74
    :goto_0
    const/4 v2, 0x4

    .line 75
    new-array v2, v2, [I

    .line 76
    .line 77
    add-int/lit8 v4, p3, 0x1

    .line 78
    .line 79
    const/4 v5, 0x0

    .line 80
    aput v4, v2, v5

    .line 81
    .line 82
    invoke-direct {p0, v2, v1, p2, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseNumber([IILjava/lang/CharSequence;Z)Z

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    if-nez v4, :cond_7

    .line 87
    .line 88
    iget v4, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    .line 89
    .line 90
    const/4 v6, 0x3

    .line 91
    if-lt v4, v6, :cond_5

    .line 92
    .line 93
    move v4, v1

    .line 94
    goto :goto_1

    .line 95
    :cond_5
    move v4, v5

    .line 96
    :goto_1
    const/4 v8, 0x2

    .line 97
    invoke-direct {p0, v2, v8, p2, v4}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseNumber([IILjava/lang/CharSequence;Z)Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-nez v4, :cond_7

    .line 102
    .line 103
    invoke-direct {p0, v2, v6, p2, v5}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseNumber([IILjava/lang/CharSequence;Z)Z

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    if-eqz p2, :cond_6

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_6
    int-to-long v3, v0

    .line 111
    aget p2, v2, v1

    .line 112
    .line 113
    int-to-long v0, p2

    .line 114
    const-wide/16 v9, 0xe10

    .line 115
    .line 116
    mul-long/2addr v0, v9

    .line 117
    aget p2, v2, v8

    .line 118
    .line 119
    int-to-long v7, p2

    .line 120
    const-wide/16 v9, 0x3c

    .line 121
    .line 122
    mul-long/2addr v7, v9

    .line 123
    add-long/2addr v7, v0

    .line 124
    aget p2, v2, v6

    .line 125
    .line 126
    int-to-long v0, p2

    .line 127
    add-long/2addr v7, v0

    .line 128
    mul-long/2addr v7, v3

    .line 129
    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    .line 130
    .line 131
    aget v5, v2, v5

    .line 132
    .line 133
    move-object v0, p1

    .line 134
    move v4, p3

    .line 135
    move-wide v2, v7

    .line 136
    invoke-virtual/range {v0 .. v5}, Lorg/threeten/bp/format/DateTimeParseContext;->setParsedField(Lorg/threeten/bp/temporal/TemporalField;JII)I

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    return p1

    .line 141
    :cond_7
    :goto_2
    if-nez v7, :cond_8

    .line 142
    .line 143
    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    .line 144
    .line 145
    const-wide/16 v2, 0x0

    .line 146
    .line 147
    add-int v5, p3, v7

    .line 148
    .line 149
    move-object v0, p1

    .line 150
    move v4, p3

    .line 151
    invoke-virtual/range {v0 .. v5}, Lorg/threeten/bp/format/DateTimeParseContext;->setParsedField(Lorg/threeten/bp/temporal/TemporalField;JII)I

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    return p1

    .line 156
    :cond_8
    not-int p1, p3

    .line 157
    return p1
.end method

.method public print(Lorg/threeten/bp/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 7

    .line 1
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lorg/threeten/bp/format/DateTimePrintContext;->getValue(Lorg/threeten/bp/temporal/TemporalField;)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    invoke-static {v0, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeToInt(J)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/4 v0, 0x1

    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->noOffsetText:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    goto/16 :goto_2

    .line 28
    .line 29
    :cond_1
    div-int/lit16 v1, p1, 0xe10

    .line 30
    .line 31
    rem-int/lit8 v1, v1, 0x64

    .line 32
    .line 33
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    div-int/lit8 v2, p1, 0x3c

    .line 38
    .line 39
    rem-int/lit8 v2, v2, 0x3c

    .line 40
    .line 41
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    rem-int/lit8 v3, p1, 0x3c

    .line 46
    .line 47
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-gez p1, :cond_2

    .line 56
    .line 57
    const-string p1, "-"

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    const-string p1, "+"

    .line 61
    .line 62
    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    div-int/lit8 p1, v1, 0xa

    .line 66
    .line 67
    add-int/lit8 p1, p1, 0x30

    .line 68
    .line 69
    int-to-char p1, p1

    .line 70
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    rem-int/lit8 p1, v1, 0xa

    .line 74
    .line 75
    add-int/lit8 p1, p1, 0x30

    .line 76
    .line 77
    int-to-char p1, p1

    .line 78
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget p1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    .line 82
    .line 83
    const/4 v5, 0x3

    .line 84
    if-ge p1, v5, :cond_3

    .line 85
    .line 86
    if-lt p1, v0, :cond_7

    .line 87
    .line 88
    if-lez v2, :cond_7

    .line 89
    .line 90
    :cond_3
    rem-int/lit8 p1, p1, 0x2

    .line 91
    .line 92
    const-string v5, ""

    .line 93
    .line 94
    const-string v6, ":"

    .line 95
    .line 96
    if-nez p1, :cond_4

    .line 97
    .line 98
    move-object p1, v6

    .line 99
    goto :goto_1

    .line 100
    :cond_4
    move-object p1, v5

    .line 101
    :goto_1
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    div-int/lit8 p1, v2, 0xa

    .line 105
    .line 106
    add-int/lit8 p1, p1, 0x30

    .line 107
    .line 108
    int-to-char p1, p1

    .line 109
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    rem-int/lit8 p1, v2, 0xa

    .line 113
    .line 114
    add-int/lit8 p1, p1, 0x30

    .line 115
    .line 116
    int-to-char p1, p1

    .line 117
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    add-int/2addr v1, v2

    .line 121
    iget p1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    .line 122
    .line 123
    const/4 v2, 0x7

    .line 124
    if-ge p1, v2, :cond_5

    .line 125
    .line 126
    const/4 v2, 0x5

    .line 127
    if-lt p1, v2, :cond_7

    .line 128
    .line 129
    if-lez v3, :cond_7

    .line 130
    .line 131
    :cond_5
    rem-int/lit8 p1, p1, 0x2

    .line 132
    .line 133
    if-nez p1, :cond_6

    .line 134
    .line 135
    move-object v5, v6

    .line 136
    :cond_6
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    div-int/lit8 p1, v3, 0xa

    .line 140
    .line 141
    add-int/lit8 p1, p1, 0x30

    .line 142
    .line 143
    int-to-char p1, p1

    .line 144
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    rem-int/lit8 p1, v3, 0xa

    .line 148
    .line 149
    add-int/lit8 p1, p1, 0x30

    .line 150
    .line 151
    int-to-char p1, p1

    .line 152
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    add-int/2addr v1, v3

    .line 156
    :cond_7
    if-nez v1, :cond_8

    .line 157
    .line 158
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 159
    .line 160
    .line 161
    iget-object p1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->noOffsetText:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    :cond_8
    :goto_2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->noOffsetText:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "\'"

    .line 4
    .line 5
    const-string v2, "\'\'"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "Offset("

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sget-object v2, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->PATTERNS:[Ljava/lang/String;

    .line 19
    .line 20
    iget v3, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    .line 21
    .line 22
    aget-object v2, v2, v3

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, ",\'"

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v0, "\')"

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    return-object v0
.end method
