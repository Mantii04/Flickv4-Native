.class final Lorg/threeten/bp/format/DateTimePrintContext;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private locale:Ljava/util/Locale;

.field private optional:I

.field private symbols:Lorg/threeten/bp/format/DecimalStyle;

.field private temporal:Lorg/threeten/bp/temporal/TemporalAccessor;


# direct methods
.method public constructor <init>(Lorg/threeten/bp/temporal/TemporalAccessor;Ljava/util/Locale;Lorg/threeten/bp/format/DecimalStyle;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lorg/threeten/bp/format/DateTimePrintContext;->temporal:Lorg/threeten/bp/temporal/TemporalAccessor;

    .line 7
    iput-object p2, p0, Lorg/threeten/bp/format/DateTimePrintContext;->locale:Ljava/util/Locale;

    .line 8
    iput-object p3, p0, Lorg/threeten/bp/format/DateTimePrintContext;->symbols:Lorg/threeten/bp/format/DecimalStyle;

    return-void
.end method

.method public constructor <init>(Lorg/threeten/bp/temporal/TemporalAccessor;Lorg/threeten/bp/format/DateTimeFormatter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1, p2}, Lorg/threeten/bp/format/DateTimePrintContext;->adjust(Lorg/threeten/bp/temporal/TemporalAccessor;Lorg/threeten/bp/format/DateTimeFormatter;)Lorg/threeten/bp/temporal/TemporalAccessor;

    move-result-object p1

    iput-object p1, p0, Lorg/threeten/bp/format/DateTimePrintContext;->temporal:Lorg/threeten/bp/temporal/TemporalAccessor;

    .line 3
    invoke-virtual {p2}, Lorg/threeten/bp/format/DateTimeFormatter;->getLocale()Ljava/util/Locale;

    move-result-object p1

    iput-object p1, p0, Lorg/threeten/bp/format/DateTimePrintContext;->locale:Ljava/util/Locale;

    .line 4
    invoke-virtual {p2}, Lorg/threeten/bp/format/DateTimeFormatter;->getDecimalStyle()Lorg/threeten/bp/format/DecimalStyle;

    move-result-object p1

    iput-object p1, p0, Lorg/threeten/bp/format/DateTimePrintContext;->symbols:Lorg/threeten/bp/format/DecimalStyle;

    return-void
.end method

.method private static adjust(Lorg/threeten/bp/temporal/TemporalAccessor;Lorg/threeten/bp/format/DateTimeFormatter;)Lorg/threeten/bp/temporal/TemporalAccessor;
    .locals 9

    .line 1
    invoke-virtual {p1}, Lorg/threeten/bp/format/DateTimeFormatter;->getChronology()Lorg/threeten/bp/chrono/Chronology;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lorg/threeten/bp/format/DateTimeFormatter;->getZone()Lorg/threeten/bp/ZoneId;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->chronology()Lorg/threeten/bp/temporal/TemporalQuery;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {p0, v1}, Lorg/threeten/bp/temporal/TemporalAccessor;->query(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lorg/threeten/bp/chrono/Chronology;

    .line 23
    .line 24
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->zoneId()Lorg/threeten/bp/temporal/TemporalQuery;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-interface {p0, v2}, Lorg/threeten/bp/temporal/TemporalAccessor;->query(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lorg/threeten/bp/ZoneId;

    .line 33
    .line 34
    invoke-static {v1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    const/4 v4, 0x0

    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    move-object v0, v4

    .line 42
    :cond_1
    invoke-static {v2, p1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    move-object p1, v4

    .line 49
    :cond_2
    if-nez v0, :cond_3

    .line 50
    .line 51
    if-nez p1, :cond_3

    .line 52
    .line 53
    return-object p0

    .line 54
    :cond_3
    if-eqz v0, :cond_4

    .line 55
    .line 56
    move-object v3, v0

    .line 57
    goto :goto_0

    .line 58
    :cond_4
    move-object v3, v1

    .line 59
    :goto_0
    if-eqz p1, :cond_5

    .line 60
    .line 61
    move-object v2, p1

    .line 62
    :cond_5
    const-string v5, " "

    .line 63
    .line 64
    if-eqz p1, :cond_9

    .line 65
    .line 66
    sget-object v6, Lorg/threeten/bp/temporal/ChronoField;->INSTANT_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    .line 67
    .line 68
    invoke-interface {p0, v6}, Lorg/threeten/bp/temporal/TemporalAccessor;->isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    if-eqz v6, :cond_7

    .line 73
    .line 74
    if-eqz v3, :cond_6

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_6
    sget-object v3, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    .line 78
    .line 79
    :goto_1
    invoke-static {p0}, Lorg/threeten/bp/Instant;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/Instant;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {v3, p0, p1}, Lorg/threeten/bp/chrono/Chronology;->zonedDateTime(Lorg/threeten/bp/Instant;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    return-object p0

    .line 88
    :cond_7
    invoke-virtual {p1}, Lorg/threeten/bp/ZoneId;->normalized()Lorg/threeten/bp/ZoneId;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->offset()Lorg/threeten/bp/temporal/TemporalQuery;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    invoke-interface {p0, v7}, Lorg/threeten/bp/temporal/TemporalAccessor;->query(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    check-cast v7, Lorg/threeten/bp/ZoneOffset;

    .line 101
    .line 102
    instance-of v8, v6, Lorg/threeten/bp/ZoneOffset;

    .line 103
    .line 104
    if-eqz v8, :cond_9

    .line 105
    .line 106
    if-eqz v7, :cond_9

    .line 107
    .line 108
    invoke-virtual {v6, v7}, Lorg/threeten/bp/ZoneId;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    if-eqz v6, :cond_8

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_8
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    .line 116
    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string v2, "Invalid override zone for temporal: "

    .line 120
    .line 121
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    invoke-direct {v0, p0}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw v0

    .line 141
    :cond_9
    :goto_2
    if-eqz v0, :cond_e

    .line 142
    .line 143
    sget-object p1, Lorg/threeten/bp/temporal/ChronoField;->EPOCH_DAY:Lorg/threeten/bp/temporal/ChronoField;

    .line 144
    .line 145
    invoke-interface {p0, p1}, Lorg/threeten/bp/temporal/TemporalAccessor;->isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-eqz p1, :cond_a

    .line 150
    .line 151
    invoke-virtual {v3, p0}, Lorg/threeten/bp/chrono/Chronology;->date(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    goto :goto_5

    .line 156
    :cond_a
    sget-object p1, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    .line 157
    .line 158
    if-ne v0, p1, :cond_b

    .line 159
    .line 160
    if-eqz v1, :cond_e

    .line 161
    .line 162
    :cond_b
    invoke-static {}, Lorg/threeten/bp/temporal/ChronoField;->values()[Lorg/threeten/bp/temporal/ChronoField;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    array-length v1, p1

    .line 167
    const/4 v6, 0x0

    .line 168
    :goto_3
    if-ge v6, v1, :cond_e

    .line 169
    .line 170
    aget-object v7, p1, v6

    .line 171
    .line 172
    invoke-virtual {v7}, Lorg/threeten/bp/temporal/ChronoField;->isDateBased()Z

    .line 173
    .line 174
    .line 175
    move-result v8

    .line 176
    if-eqz v8, :cond_d

    .line 177
    .line 178
    invoke-interface {p0, v7}, Lorg/threeten/bp/temporal/TemporalAccessor;->isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z

    .line 179
    .line 180
    .line 181
    move-result v7

    .line 182
    if-nez v7, :cond_c

    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_c
    new-instance p1, Lorg/threeten/bp/DateTimeException;

    .line 186
    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    const-string v2, "Invalid override chronology for temporal: "

    .line 190
    .line 191
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    invoke-direct {p1, p0}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    throw p1

    .line 211
    :cond_d
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 212
    .line 213
    goto :goto_3

    .line 214
    :cond_e
    :goto_5
    new-instance p1, Lorg/threeten/bp/format/DateTimePrintContext$1;

    .line 215
    .line 216
    invoke-direct {p1, v4, p0, v3, v2}, Lorg/threeten/bp/format/DateTimePrintContext$1;-><init>(Lorg/threeten/bp/chrono/ChronoLocalDate;Lorg/threeten/bp/temporal/TemporalAccessor;Lorg/threeten/bp/chrono/Chronology;Lorg/threeten/bp/ZoneId;)V

    .line 217
    .line 218
    .line 219
    return-object p1
.end method


# virtual methods
.method public endOptional()V
    .locals 1

    .line 1
    iget v0, p0, Lorg/threeten/bp/format/DateTimePrintContext;->optional:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Lorg/threeten/bp/format/DateTimePrintContext;->optional:I

    .line 6
    .line 7
    return-void
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimePrintContext;->locale:Ljava/util/Locale;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSymbols()Lorg/threeten/bp/format/DecimalStyle;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimePrintContext;->symbols:Lorg/threeten/bp/format/DecimalStyle;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTemporal()Lorg/threeten/bp/temporal/TemporalAccessor;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimePrintContext;->temporal:Lorg/threeten/bp/temporal/TemporalAccessor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getValue(Lorg/threeten/bp/temporal/TemporalField;)Ljava/lang/Long;
    .locals 2

    .line 4
    :try_start_0
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimePrintContext;->temporal:Lorg/threeten/bp/temporal/TemporalAccessor;

    invoke-interface {v0, p1}, Lorg/threeten/bp/temporal/TemporalAccessor;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catch Lorg/threeten/bp/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 5
    iget v0, p0, Lorg/threeten/bp/format/DateTimePrintContext;->optional:I

    if-lez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_0
    throw p1
.end method

.method public getValue(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/threeten/bp/temporal/TemporalQuery<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimePrintContext;->temporal:Lorg/threeten/bp/temporal/TemporalAccessor;

    invoke-interface {v0, p1}, Lorg/threeten/bp/temporal/TemporalAccessor;->query(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    .line 2
    iget v0, p0, Lorg/threeten/bp/format/DateTimePrintContext;->optional:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lorg/threeten/bp/DateTimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to extract value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimePrintContext;->temporal:Lorg/threeten/bp/temporal/TemporalAccessor;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method public setDateTime(Lorg/threeten/bp/temporal/TemporalAccessor;)V
    .locals 1

    .line 1
    const-string v0, "temporal"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lorg/threeten/bp/format/DateTimePrintContext;->temporal:Lorg/threeten/bp/temporal/TemporalAccessor;

    .line 7
    .line 8
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1

    .line 1
    const-string v0, "locale"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lorg/threeten/bp/format/DateTimePrintContext;->locale:Ljava/util/Locale;

    .line 7
    .line 8
    return-void
.end method

.method public startOptional()V
    .locals 1

    .line 1
    iget v0, p0, Lorg/threeten/bp/format/DateTimePrintContext;->optional:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lorg/threeten/bp/format/DateTimePrintContext;->optional:I

    .line 6
    .line 7
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimePrintContext;->temporal:Lorg/threeten/bp/temporal/TemporalAccessor;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
