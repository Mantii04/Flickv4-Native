.class public final Lorg/threeten/bp/format/DateTimeFormatterBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/threeten/bp/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;,
        Lorg/threeten/bp/format/DateTimeFormatterBuilder$LocalizedPrinterParser;,
        Lorg/threeten/bp/format/DateTimeFormatterBuilder$ChronoPrinterParser;,
        Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;,
        Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;,
        Lorg/threeten/bp/format/DateTimeFormatterBuilder$LocalizedOffsetPrinterParser;,
        Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;,
        Lorg/threeten/bp/format/DateTimeFormatterBuilder$InstantPrinterParser;,
        Lorg/threeten/bp/format/DateTimeFormatterBuilder$TextPrinterParser;,
        Lorg/threeten/bp/format/DateTimeFormatterBuilder$FractionPrinterParser;,
        Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;,
        Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;,
        Lorg/threeten/bp/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;,
        Lorg/threeten/bp/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;,
        Lorg/threeten/bp/format/DateTimeFormatterBuilder$DefaultingParser;,
        Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;,
        Lorg/threeten/bp/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;,
        Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;,
        Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    }
.end annotation


# static fields
.field private static final FIELD_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Lorg/threeten/bp/temporal/TemporalField;",
            ">;"
        }
    .end annotation
.end field

.field static final LENGTH_SORT:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final QUERY_REGION_ONLY:Lorg/threeten/bp/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/TemporalQuery<",
            "Lorg/threeten/bp/ZoneId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

.field private final optional:Z

.field private padNextChar:C

.field private padNextWidth:I

.field private final parent:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

.field private final printerParsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;",
            ">;"
        }
    .end annotation
.end field

.field private valueParserIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->QUERY_REGION_ONLY:Lorg/threeten/bp/temporal/TemporalQuery;

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    .line 14
    .line 15
    const/16 v1, 0x47

    .line 16
    .line 17
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->ERA:Lorg/threeten/bp/temporal/ChronoField;

    .line 22
    .line 23
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    const/16 v1, 0x79

    .line 27
    .line 28
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->YEAR_OF_ERA:Lorg/threeten/bp/temporal/ChronoField;

    .line 33
    .line 34
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    const/16 v1, 0x75

    .line 38
    .line 39
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    .line 44
    .line 45
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    const/16 v1, 0x51

    .line 49
    .line 50
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    sget-object v2, Lorg/threeten/bp/temporal/IsoFields;->QUARTER_OF_YEAR:Lorg/threeten/bp/temporal/TemporalField;

    .line 55
    .line 56
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    const/16 v1, 0x71

    .line 60
    .line 61
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    const/16 v1, 0x4d

    .line 69
    .line 70
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    .line 75
    .line 76
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    const/16 v1, 0x4c

    .line 80
    .line 81
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    const/16 v1, 0x44

    .line 89
    .line 90
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    .line 95
    .line 96
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    const/16 v1, 0x64

    .line 100
    .line 101
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    .line 106
    .line 107
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    const/16 v1, 0x46

    .line 111
    .line 112
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    .line 117
    .line 118
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    const/16 v1, 0x45

    .line 122
    .line 123
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    .line 128
    .line 129
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    const/16 v1, 0x63

    .line 133
    .line 134
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    const/16 v1, 0x65

    .line 142
    .line 143
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    const/16 v1, 0x61

    .line 151
    .line 152
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->AMPM_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    .line 157
    .line 158
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    const/16 v1, 0x48

    .line 162
    .line 163
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->HOUR_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    .line 168
    .line 169
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    const/16 v1, 0x6b

    .line 173
    .line 174
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    .line 179
    .line 180
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    const/16 v1, 0x4b

    .line 184
    .line 185
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->HOUR_OF_AMPM:Lorg/threeten/bp/temporal/ChronoField;

    .line 190
    .line 191
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    const/16 v1, 0x68

    .line 195
    .line 196
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Lorg/threeten/bp/temporal/ChronoField;

    .line 201
    .line 202
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    const/16 v1, 0x6d

    .line 206
    .line 207
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->MINUTE_OF_HOUR:Lorg/threeten/bp/temporal/ChronoField;

    .line 212
    .line 213
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    const/16 v1, 0x73

    .line 217
    .line 218
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->SECOND_OF_MINUTE:Lorg/threeten/bp/temporal/ChronoField;

    .line 223
    .line 224
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    const/16 v1, 0x53

    .line 228
    .line 229
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    .line 234
    .line 235
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    const/16 v1, 0x41

    .line 239
    .line 240
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    sget-object v3, Lorg/threeten/bp/temporal/ChronoField;->MILLI_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    .line 245
    .line 246
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    const/16 v1, 0x6e

    .line 250
    .line 251
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    const/16 v1, 0x4e

    .line 259
    .line 260
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    .line 265
    .line 266
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$3;

    .line 270
    .line 271
    invoke-direct {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$3;-><init>()V

    .line 272
    .line 273
    .line 274
    sput-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->LENGTH_SORT:Ljava/util/Comparator;

    .line 275
    .line 276
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->valueParserIndex:I

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->parent:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->optional:Z

    return-void
.end method

.method private constructor <init>(Lorg/threeten/bp/format/DateTimeFormatterBuilder;Z)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 11
    iput-object p1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->parent:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 12
    iput-boolean p2, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->optional:Z

    return-void
.end method

.method private appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I
    .locals 3

    .line 1
    const-string v0, "pp"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 7
    .line 8
    iget v1, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->padNextWidth:I

    .line 9
    .line 10
    if-lez v1, :cond_1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    new-instance v2, Lorg/threeten/bp/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;

    .line 15
    .line 16
    iget-char v0, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->padNextChar:C

    .line 17
    .line 18
    invoke-direct {v2, p1, v1, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;-><init>(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;IC)V

    .line 19
    .line 20
    .line 21
    move-object p1, v2

    .line 22
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    iput v1, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->padNextWidth:I

    .line 26
    .line 27
    iput-char v1, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->padNextChar:C

    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 30
    .line 31
    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 37
    .line 38
    const/4 v0, -0x1

    .line 39
    iput v0, p1, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 40
    .line 41
    iget-object p1, p1, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    add-int/lit8 p1, p1, -0x1

    .line 48
    .line 49
    return p1
.end method

.method private appendValue(Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 5

    .line 42
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    iget v1, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->valueParserIndex:I

    if-ltz v1, :cond_1

    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    .line 43
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    iget v1, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 45
    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;

    .line 46
    iget v2, p1, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    iget v3, p1, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    if-ne v2, v3, :cond_0

    iget-object v2, p1, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Lorg/threeten/bp/format/SignStyle;

    sget-object v4, Lorg/threeten/bp/format/SignStyle;->NOT_NEGATIVE:Lorg/threeten/bp/format/SignStyle;

    if-ne v2, v4, :cond_0

    .line 47
    invoke-virtual {v0, v3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->withSubsequentWidth(I)Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-result-object v0

    .line 48
    invoke-virtual {p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->withFixedWidth()Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 49
    iget-object p1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    iput v1, p1, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->valueParserIndex:I

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->withFixedWidth()Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-result-object v0

    .line 51
    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    invoke-direct {p0, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    move-result p1

    iput p1, v2, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 52
    :goto_0
    iget-object p1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    iget-object p1, p1, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    invoke-interface {p1, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 53
    :cond_1
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    invoke-direct {p0, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    move-result p1

    iput p1, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->valueParserIndex:I

    return-object p0
.end method

.method public static getLocalizedDateTimePattern(Lorg/threeten/bp/format/FormatStyle;Lorg/threeten/bp/format/FormatStyle;Lorg/threeten/bp/chrono/Chronology;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "locale"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const-string v0, "chrono"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    if-nez p0, :cond_1

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    const-string p1, "Either dateStyle or timeStyle must be non-null"

    .line 19
    .line 20
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p0

    .line 24
    :cond_1
    :goto_0
    if-eqz p0, :cond_3

    .line 25
    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-static {p0, p1, p3}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    invoke-static {p0, p3}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    goto :goto_1

    .line 50
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    invoke-static {p0, p3}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    :goto_1
    instance-of p1, p0, Ljava/text/SimpleDateFormat;

    .line 59
    .line 60
    if-eqz p1, :cond_4

    .line 61
    .line 62
    check-cast p0, Ljava/text/SimpleDateFormat;

    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    return-object p0

    .line 69
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 70
    .line 71
    const-string p1, "Unable to determine pattern"

    .line 72
    .line 73
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p0
.end method

.method private parseField(CILorg/threeten/bp/temporal/TemporalField;)V
    .locals 7

    .line 1
    const/16 v0, 0x51

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x3

    .line 5
    const/4 v3, 0x4

    .line 6
    const-string v4, "Too many pattern letters: "

    .line 7
    .line 8
    const/4 v5, 0x1

    .line 9
    const/4 v6, 0x2

    .line 10
    if-eq p1, v0, :cond_1f

    .line 11
    .line 12
    const/16 v0, 0x53

    .line 13
    .line 14
    if-eq p1, v0, :cond_1e

    .line 15
    .line 16
    const/16 v0, 0x61

    .line 17
    .line 18
    if-eq p1, v0, :cond_1c

    .line 19
    .line 20
    const/16 v0, 0x68

    .line 21
    .line 22
    if-eq p1, v0, :cond_19

    .line 23
    .line 24
    const/16 v0, 0x6b

    .line 25
    .line 26
    if-eq p1, v0, :cond_19

    .line 27
    .line 28
    const/16 v0, 0x6d

    .line 29
    .line 30
    if-eq p1, v0, :cond_19

    .line 31
    .line 32
    const/16 v0, 0x71

    .line 33
    .line 34
    if-eq p1, v0, :cond_13

    .line 35
    .line 36
    const/16 v0, 0x73

    .line 37
    .line 38
    if-eq p1, v0, :cond_19

    .line 39
    .line 40
    const/16 v0, 0x75

    .line 41
    .line 42
    if-eq p1, v0, :cond_10

    .line 43
    .line 44
    const/16 v0, 0x79

    .line 45
    .line 46
    if-eq p1, v0, :cond_10

    .line 47
    .line 48
    packed-switch p1, :pswitch_data_0

    .line 49
    .line 50
    .line 51
    packed-switch p1, :pswitch_data_1

    .line 52
    .line 53
    .line 54
    packed-switch p1, :pswitch_data_2

    .line 55
    .line 56
    .line 57
    if-ne p2, v5, :cond_0

    .line 58
    .line 59
    invoke-virtual {p0, p3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_0
    invoke-virtual {p0, p3, p2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :pswitch_0
    if-eq p2, v5, :cond_4

    .line 68
    .line 69
    if-eq p2, v6, :cond_4

    .line 70
    .line 71
    if-eq p2, v2, :cond_3

    .line 72
    .line 73
    if-eq p2, v3, :cond_2

    .line 74
    .line 75
    if-ne p2, v1, :cond_1

    .line 76
    .line 77
    sget-object p1, Lorg/threeten/bp/format/TextStyle;->NARROW:Lorg/threeten/bp/format/TextStyle;

    .line 78
    .line 79
    invoke-virtual {p0, p3, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendText(Lorg/threeten/bp/temporal/TemporalField;Lorg/threeten/bp/format/TextStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 84
    .line 85
    invoke-static {v4, p1}, LA/i;->h(Ljava/lang/String;C)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p2

    .line 93
    :cond_2
    sget-object p1, Lorg/threeten/bp/format/TextStyle;->FULL:Lorg/threeten/bp/format/TextStyle;

    .line 94
    .line 95
    invoke-virtual {p0, p3, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendText(Lorg/threeten/bp/temporal/TemporalField;Lorg/threeten/bp/format/TextStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_3
    sget-object p1, Lorg/threeten/bp/format/TextStyle;->SHORT:Lorg/threeten/bp/format/TextStyle;

    .line 100
    .line 101
    invoke-virtual {p0, p3, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendText(Lorg/threeten/bp/temporal/TemporalField;Lorg/threeten/bp/format/TextStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_4
    new-instance p1, Lorg/threeten/bp/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;

    .line 106
    .line 107
    const/16 p3, 0x65

    .line 108
    .line 109
    invoke-direct {p1, p3, p2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;-><init>(CI)V

    .line 110
    .line 111
    .line 112
    invoke-direct {p0, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :pswitch_1
    if-eq p2, v5, :cond_9

    .line 117
    .line 118
    if-eq p2, v6, :cond_8

    .line 119
    .line 120
    if-eq p2, v2, :cond_7

    .line 121
    .line 122
    if-eq p2, v3, :cond_6

    .line 123
    .line 124
    if-ne p2, v1, :cond_5

    .line 125
    .line 126
    sget-object p1, Lorg/threeten/bp/format/TextStyle;->NARROW_STANDALONE:Lorg/threeten/bp/format/TextStyle;

    .line 127
    .line 128
    invoke-virtual {p0, p3, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendText(Lorg/threeten/bp/temporal/TemporalField;Lorg/threeten/bp/format/TextStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :cond_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 133
    .line 134
    invoke-static {v4, p1}, LA/i;->h(Ljava/lang/String;C)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw p2

    .line 142
    :cond_6
    sget-object p1, Lorg/threeten/bp/format/TextStyle;->FULL_STANDALONE:Lorg/threeten/bp/format/TextStyle;

    .line 143
    .line 144
    invoke-virtual {p0, p3, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendText(Lorg/threeten/bp/temporal/TemporalField;Lorg/threeten/bp/format/TextStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    :cond_7
    sget-object p1, Lorg/threeten/bp/format/TextStyle;->SHORT_STANDALONE:Lorg/threeten/bp/format/TextStyle;

    .line 149
    .line 150
    invoke-virtual {p0, p3, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendText(Lorg/threeten/bp/temporal/TemporalField;Lorg/threeten/bp/format/TextStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :cond_8
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 155
    .line 156
    const-string p3, "Invalid number of pattern letters: "

    .line 157
    .line 158
    invoke-static {p3, p1}, LA/i;->h(Ljava/lang/String;C)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw p2

    .line 166
    :cond_9
    new-instance p1, Lorg/threeten/bp/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;

    .line 167
    .line 168
    const/16 p3, 0x63

    .line 169
    .line 170
    invoke-direct {p1, p3, p2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;-><init>(CI)V

    .line 171
    .line 172
    .line 173
    invoke-direct {p0, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :pswitch_2
    if-ne p2, v5, :cond_a

    .line 178
    .line 179
    invoke-virtual {p0, p3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 180
    .line 181
    .line 182
    return-void

    .line 183
    :cond_a
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 184
    .line 185
    invoke-static {v4, p1}, LA/i;->h(Ljava/lang/String;C)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    throw p2

    .line 193
    :pswitch_3
    if-eq p2, v5, :cond_d

    .line 194
    .line 195
    if-eq p2, v6, :cond_d

    .line 196
    .line 197
    if-eq p2, v2, :cond_d

    .line 198
    .line 199
    if-eq p2, v3, :cond_c

    .line 200
    .line 201
    if-ne p2, v1, :cond_b

    .line 202
    .line 203
    sget-object p1, Lorg/threeten/bp/format/TextStyle;->NARROW:Lorg/threeten/bp/format/TextStyle;

    .line 204
    .line 205
    invoke-virtual {p0, p3, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendText(Lorg/threeten/bp/temporal/TemporalField;Lorg/threeten/bp/format/TextStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 206
    .line 207
    .line 208
    return-void

    .line 209
    :cond_b
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 210
    .line 211
    invoke-static {v4, p1}, LA/i;->h(Ljava/lang/String;C)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    throw p2

    .line 219
    :cond_c
    sget-object p1, Lorg/threeten/bp/format/TextStyle;->FULL:Lorg/threeten/bp/format/TextStyle;

    .line 220
    .line 221
    invoke-virtual {p0, p3, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendText(Lorg/threeten/bp/temporal/TemporalField;Lorg/threeten/bp/format/TextStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 222
    .line 223
    .line 224
    return-void

    .line 225
    :cond_d
    sget-object p1, Lorg/threeten/bp/format/TextStyle;->SHORT:Lorg/threeten/bp/format/TextStyle;

    .line 226
    .line 227
    invoke-virtual {p0, p3, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendText(Lorg/threeten/bp/temporal/TemporalField;Lorg/threeten/bp/format/TextStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 228
    .line 229
    .line 230
    return-void

    .line 231
    :pswitch_4
    if-ne p2, v5, :cond_e

    .line 232
    .line 233
    invoke-virtual {p0, p3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 234
    .line 235
    .line 236
    return-void

    .line 237
    :cond_e
    if-gt p2, v2, :cond_f

    .line 238
    .line 239
    invoke-virtual {p0, p3, p2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 240
    .line 241
    .line 242
    return-void

    .line 243
    :cond_f
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 244
    .line 245
    invoke-static {v4, p1}, LA/i;->h(Ljava/lang/String;C)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    throw p2

    .line 253
    :cond_10
    if-ne p2, v6, :cond_11

    .line 254
    .line 255
    sget-object p1, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;->BASE_DATE:Lorg/threeten/bp/LocalDate;

    .line 256
    .line 257
    invoke-virtual {p0, p3, v6, v6, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValueReduced(Lorg/threeten/bp/temporal/TemporalField;IILorg/threeten/bp/chrono/ChronoLocalDate;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 258
    .line 259
    .line 260
    return-void

    .line 261
    :cond_11
    const/16 p1, 0x13

    .line 262
    .line 263
    if-ge p2, v3, :cond_12

    .line 264
    .line 265
    sget-object v0, Lorg/threeten/bp/format/SignStyle;->NORMAL:Lorg/threeten/bp/format/SignStyle;

    .line 266
    .line 267
    invoke-virtual {p0, p3, p2, p1, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;IILorg/threeten/bp/format/SignStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 268
    .line 269
    .line 270
    return-void

    .line 271
    :cond_12
    sget-object v0, Lorg/threeten/bp/format/SignStyle;->EXCEEDS_PAD:Lorg/threeten/bp/format/SignStyle;

    .line 272
    .line 273
    invoke-virtual {p0, p3, p2, p1, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;IILorg/threeten/bp/format/SignStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 274
    .line 275
    .line 276
    return-void

    .line 277
    :cond_13
    :pswitch_5
    if-eq p2, v5, :cond_18

    .line 278
    .line 279
    if-eq p2, v6, :cond_17

    .line 280
    .line 281
    if-eq p2, v2, :cond_16

    .line 282
    .line 283
    if-eq p2, v3, :cond_15

    .line 284
    .line 285
    if-ne p2, v1, :cond_14

    .line 286
    .line 287
    sget-object p1, Lorg/threeten/bp/format/TextStyle;->NARROW_STANDALONE:Lorg/threeten/bp/format/TextStyle;

    .line 288
    .line 289
    invoke-virtual {p0, p3, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendText(Lorg/threeten/bp/temporal/TemporalField;Lorg/threeten/bp/format/TextStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 290
    .line 291
    .line 292
    return-void

    .line 293
    :cond_14
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 294
    .line 295
    invoke-static {v4, p1}, LA/i;->h(Ljava/lang/String;C)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    throw p2

    .line 303
    :cond_15
    sget-object p1, Lorg/threeten/bp/format/TextStyle;->FULL_STANDALONE:Lorg/threeten/bp/format/TextStyle;

    .line 304
    .line 305
    invoke-virtual {p0, p3, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendText(Lorg/threeten/bp/temporal/TemporalField;Lorg/threeten/bp/format/TextStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 306
    .line 307
    .line 308
    return-void

    .line 309
    :cond_16
    sget-object p1, Lorg/threeten/bp/format/TextStyle;->SHORT_STANDALONE:Lorg/threeten/bp/format/TextStyle;

    .line 310
    .line 311
    invoke-virtual {p0, p3, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendText(Lorg/threeten/bp/temporal/TemporalField;Lorg/threeten/bp/format/TextStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 312
    .line 313
    .line 314
    return-void

    .line 315
    :cond_17
    invoke-virtual {p0, p3, v6}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 316
    .line 317
    .line 318
    return-void

    .line 319
    :cond_18
    invoke-virtual {p0, p3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 320
    .line 321
    .line 322
    return-void

    .line 323
    :cond_19
    :pswitch_6
    if-ne p2, v5, :cond_1a

    .line 324
    .line 325
    invoke-virtual {p0, p3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 326
    .line 327
    .line 328
    return-void

    .line 329
    :cond_1a
    if-ne p2, v6, :cond_1b

    .line 330
    .line 331
    invoke-virtual {p0, p3, p2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 332
    .line 333
    .line 334
    return-void

    .line 335
    :cond_1b
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 336
    .line 337
    invoke-static {v4, p1}, LA/i;->h(Ljava/lang/String;C)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object p1

    .line 341
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    throw p2

    .line 345
    :cond_1c
    if-ne p2, v5, :cond_1d

    .line 346
    .line 347
    sget-object p1, Lorg/threeten/bp/format/TextStyle;->SHORT:Lorg/threeten/bp/format/TextStyle;

    .line 348
    .line 349
    invoke-virtual {p0, p3, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendText(Lorg/threeten/bp/temporal/TemporalField;Lorg/threeten/bp/format/TextStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 350
    .line 351
    .line 352
    return-void

    .line 353
    :cond_1d
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 354
    .line 355
    invoke-static {v4, p1}, LA/i;->h(Ljava/lang/String;C)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object p1

    .line 359
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    throw p2

    .line 363
    :cond_1e
    sget-object p1, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    .line 364
    .line 365
    const/4 p3, 0x0

    .line 366
    invoke-virtual {p0, p1, p2, p2, p3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendFraction(Lorg/threeten/bp/temporal/TemporalField;IIZ)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 367
    .line 368
    .line 369
    return-void

    .line 370
    :cond_1f
    :pswitch_7
    if-eq p2, v5, :cond_24

    .line 371
    .line 372
    if-eq p2, v6, :cond_23

    .line 373
    .line 374
    if-eq p2, v2, :cond_22

    .line 375
    .line 376
    if-eq p2, v3, :cond_21

    .line 377
    .line 378
    if-ne p2, v1, :cond_20

    .line 379
    .line 380
    sget-object p1, Lorg/threeten/bp/format/TextStyle;->NARROW:Lorg/threeten/bp/format/TextStyle;

    .line 381
    .line 382
    invoke-virtual {p0, p3, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendText(Lorg/threeten/bp/temporal/TemporalField;Lorg/threeten/bp/format/TextStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 383
    .line 384
    .line 385
    return-void

    .line 386
    :cond_20
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 387
    .line 388
    invoke-static {v4, p1}, LA/i;->h(Ljava/lang/String;C)Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object p1

    .line 392
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    throw p2

    .line 396
    :cond_21
    sget-object p1, Lorg/threeten/bp/format/TextStyle;->FULL:Lorg/threeten/bp/format/TextStyle;

    .line 397
    .line 398
    invoke-virtual {p0, p3, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendText(Lorg/threeten/bp/temporal/TemporalField;Lorg/threeten/bp/format/TextStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 399
    .line 400
    .line 401
    return-void

    .line 402
    :cond_22
    sget-object p1, Lorg/threeten/bp/format/TextStyle;->SHORT:Lorg/threeten/bp/format/TextStyle;

    .line 403
    .line 404
    invoke-virtual {p0, p3, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendText(Lorg/threeten/bp/temporal/TemporalField;Lorg/threeten/bp/format/TextStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 405
    .line 406
    .line 407
    return-void

    .line 408
    :cond_23
    invoke-virtual {p0, p3, v6}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 409
    .line 410
    .line 411
    return-void

    .line 412
    :cond_24
    invoke-virtual {p0, p3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 413
    .line 414
    .line 415
    return-void

    .line 416
    nop

    .line 417
    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_6
    .end packed-switch

    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    :pswitch_data_1
    .packed-switch 0x4b
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch

    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    :pswitch_data_2
    .packed-switch 0x63
        :pswitch_1
        :pswitch_6
        :pswitch_0
    .end packed-switch
.end method

.method private parsePattern(Ljava/lang/String;)V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-ge v1, v2, :cond_2d

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/16 v3, 0x61

    .line 14
    .line 15
    const/16 v4, 0x41

    .line 16
    .line 17
    const/16 v5, 0x7a

    .line 18
    .line 19
    const/16 v6, 0x5a

    .line 20
    .line 21
    const/4 v7, 0x1

    .line 22
    if-lt v2, v4, :cond_0

    .line 23
    .line 24
    if-le v2, v6, :cond_1

    .line 25
    .line 26
    :cond_0
    if-lt v2, v3, :cond_23

    .line 27
    .line 28
    if-gt v2, v5, :cond_23

    .line 29
    .line 30
    :cond_1
    add-int/lit8 v8, v1, 0x1

    .line 31
    .line 32
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 33
    .line 34
    .line 35
    move-result v9

    .line 36
    if-ge v8, v9, :cond_2

    .line 37
    .line 38
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    .line 39
    .line 40
    .line 41
    move-result v9

    .line 42
    if-ne v9, v2, :cond_2

    .line 43
    .line 44
    add-int/lit8 v8, v8, 0x1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    sub-int v1, v8, v1

    .line 48
    .line 49
    const/16 v9, 0x70

    .line 50
    .line 51
    if-ne v2, v9, :cond_8

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 54
    .line 55
    .line 56
    move-result v9

    .line 57
    if-ge v8, v9, :cond_6

    .line 58
    .line 59
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-lt v2, v4, :cond_3

    .line 64
    .line 65
    if-le v2, v6, :cond_4

    .line 66
    .line 67
    :cond_3
    if-lt v2, v3, :cond_6

    .line 68
    .line 69
    if-gt v2, v5, :cond_6

    .line 70
    .line 71
    :cond_4
    add-int/lit8 v3, v8, 0x1

    .line 72
    .line 73
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-ge v3, v4, :cond_5

    .line 78
    .line 79
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-ne v4, v2, :cond_5

    .line 84
    .line 85
    add-int/lit8 v3, v3, 0x1

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_5
    sub-int v4, v3, v8

    .line 89
    .line 90
    move v8, v3

    .line 91
    goto :goto_3

    .line 92
    :cond_6
    move v4, v1

    .line 93
    move v1, v0

    .line 94
    :goto_3
    if-eqz v1, :cond_7

    .line 95
    .line 96
    invoke-virtual {p0, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->padNext(I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 97
    .line 98
    .line 99
    move v1, v4

    .line 100
    goto :goto_4

    .line 101
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 102
    .line 103
    const-string v1, "Pad letter \'p\' must be followed by valid pad pattern: "

    .line 104
    .line 105
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw v0

    .line 113
    :cond_8
    :goto_4
    sget-object v3, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    .line 114
    .line 115
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    check-cast v3, Lorg/threeten/bp/temporal/TemporalField;

    .line 124
    .line 125
    if-eqz v3, :cond_9

    .line 126
    .line 127
    invoke-direct {p0, v2, v1, v3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->parseField(CILorg/threeten/bp/temporal/TemporalField;)V

    .line 128
    .line 129
    .line 130
    goto/16 :goto_8

    .line 131
    .line 132
    :cond_9
    const/4 v3, 0x4

    .line 133
    const-string v4, "Too many pattern letters: "

    .line 134
    .line 135
    if-ne v2, v5, :cond_c

    .line 136
    .line 137
    if-gt v1, v3, :cond_b

    .line 138
    .line 139
    if-ne v1, v3, :cond_a

    .line 140
    .line 141
    sget-object v1, Lorg/threeten/bp/format/TextStyle;->FULL:Lorg/threeten/bp/format/TextStyle;

    .line 142
    .line 143
    invoke-virtual {p0, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendZoneText(Lorg/threeten/bp/format/TextStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 144
    .line 145
    .line 146
    goto/16 :goto_8

    .line 147
    .line 148
    :cond_a
    sget-object v1, Lorg/threeten/bp/format/TextStyle;->SHORT:Lorg/threeten/bp/format/TextStyle;

    .line 149
    .line 150
    invoke-virtual {p0, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendZoneText(Lorg/threeten/bp/format/TextStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 151
    .line 152
    .line 153
    goto/16 :goto_8

    .line 154
    .line 155
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 156
    .line 157
    invoke-static {v4, v2}, LA/i;->h(Ljava/lang/String;C)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw p1

    .line 165
    :cond_c
    const/16 v5, 0x56

    .line 166
    .line 167
    const/4 v9, 0x2

    .line 168
    if-ne v2, v5, :cond_e

    .line 169
    .line 170
    if-ne v1, v9, :cond_d

    .line 171
    .line 172
    invoke-virtual {p0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendZoneId()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 173
    .line 174
    .line 175
    goto/16 :goto_8

    .line 176
    .line 177
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 178
    .line 179
    const-string v0, "Pattern letter count must be 2: "

    .line 180
    .line 181
    invoke-static {v0, v2}, LA/i;->h(Ljava/lang/String;C)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    throw p1

    .line 189
    :cond_e
    const-string v5, "Z"

    .line 190
    .line 191
    const-string v10, "+0000"

    .line 192
    .line 193
    const/4 v11, 0x5

    .line 194
    if-ne v2, v6, :cond_12

    .line 195
    .line 196
    if-ge v1, v3, :cond_f

    .line 197
    .line 198
    const-string v1, "+HHMM"

    .line 199
    .line 200
    invoke-virtual {p0, v1, v10}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 201
    .line 202
    .line 203
    goto/16 :goto_8

    .line 204
    .line 205
    :cond_f
    if-ne v1, v3, :cond_10

    .line 206
    .line 207
    sget-object v1, Lorg/threeten/bp/format/TextStyle;->FULL:Lorg/threeten/bp/format/TextStyle;

    .line 208
    .line 209
    invoke-virtual {p0, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLocalizedOffset(Lorg/threeten/bp/format/TextStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 210
    .line 211
    .line 212
    goto/16 :goto_8

    .line 213
    .line 214
    :cond_10
    if-ne v1, v11, :cond_11

    .line 215
    .line 216
    const-string v1, "+HH:MM:ss"

    .line 217
    .line 218
    invoke-virtual {p0, v1, v5}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 219
    .line 220
    .line 221
    goto/16 :goto_8

    .line 222
    .line 223
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 224
    .line 225
    invoke-static {v4, v2}, LA/i;->h(Ljava/lang/String;C)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    throw p1

    .line 233
    :cond_12
    const/16 v6, 0x4f

    .line 234
    .line 235
    if-ne v2, v6, :cond_15

    .line 236
    .line 237
    if-ne v1, v7, :cond_13

    .line 238
    .line 239
    sget-object v1, Lorg/threeten/bp/format/TextStyle;->SHORT:Lorg/threeten/bp/format/TextStyle;

    .line 240
    .line 241
    invoke-virtual {p0, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLocalizedOffset(Lorg/threeten/bp/format/TextStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 242
    .line 243
    .line 244
    goto/16 :goto_8

    .line 245
    .line 246
    :cond_13
    if-ne v1, v3, :cond_14

    .line 247
    .line 248
    sget-object v1, Lorg/threeten/bp/format/TextStyle;->FULL:Lorg/threeten/bp/format/TextStyle;

    .line 249
    .line 250
    invoke-virtual {p0, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLocalizedOffset(Lorg/threeten/bp/format/TextStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 251
    .line 252
    .line 253
    goto/16 :goto_8

    .line 254
    .line 255
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 256
    .line 257
    const-string v0, "Pattern letter count must be 1 or 4: "

    .line 258
    .line 259
    invoke-static {v0, v2}, LA/i;->h(Ljava/lang/String;C)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    throw p1

    .line 267
    :cond_15
    const/16 v3, 0x58

    .line 268
    .line 269
    if-ne v2, v3, :cond_18

    .line 270
    .line 271
    if-gt v1, v11, :cond_17

    .line 272
    .line 273
    sget-object v2, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->PATTERNS:[Ljava/lang/String;

    .line 274
    .line 275
    if-ne v1, v7, :cond_16

    .line 276
    .line 277
    move v3, v0

    .line 278
    goto :goto_5

    .line 279
    :cond_16
    move v3, v7

    .line 280
    :goto_5
    add-int/2addr v1, v3

    .line 281
    aget-object v1, v2, v1

    .line 282
    .line 283
    invoke-virtual {p0, v1, v5}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 284
    .line 285
    .line 286
    goto/16 :goto_8

    .line 287
    .line 288
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 289
    .line 290
    invoke-static {v4, v2}, LA/i;->h(Ljava/lang/String;C)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    throw p1

    .line 298
    :cond_18
    const/16 v3, 0x78

    .line 299
    .line 300
    if-ne v2, v3, :cond_1d

    .line 301
    .line 302
    if-gt v1, v11, :cond_1c

    .line 303
    .line 304
    if-ne v1, v7, :cond_19

    .line 305
    .line 306
    const-string v10, "+00"

    .line 307
    .line 308
    goto :goto_6

    .line 309
    :cond_19
    rem-int/lit8 v2, v1, 0x2

    .line 310
    .line 311
    if-nez v2, :cond_1a

    .line 312
    .line 313
    goto :goto_6

    .line 314
    :cond_1a
    const-string v10, "+00:00"

    .line 315
    .line 316
    :goto_6
    sget-object v2, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->PATTERNS:[Ljava/lang/String;

    .line 317
    .line 318
    if-ne v1, v7, :cond_1b

    .line 319
    .line 320
    move v3, v0

    .line 321
    goto :goto_7

    .line 322
    :cond_1b
    move v3, v7

    .line 323
    :goto_7
    add-int/2addr v1, v3

    .line 324
    aget-object v1, v2, v1

    .line 325
    .line 326
    invoke-virtual {p0, v1, v10}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 327
    .line 328
    .line 329
    goto :goto_8

    .line 330
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 331
    .line 332
    invoke-static {v4, v2}, LA/i;->h(Ljava/lang/String;C)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    throw p1

    .line 340
    :cond_1d
    const/16 v3, 0x57

    .line 341
    .line 342
    if-ne v2, v3, :cond_1f

    .line 343
    .line 344
    if-gt v1, v7, :cond_1e

    .line 345
    .line 346
    new-instance v2, Lorg/threeten/bp/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;

    .line 347
    .line 348
    invoke-direct {v2, v3, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;-><init>(CI)V

    .line 349
    .line 350
    .line 351
    invoke-direct {p0, v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 352
    .line 353
    .line 354
    goto :goto_8

    .line 355
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 356
    .line 357
    invoke-static {v4, v2}, LA/i;->h(Ljava/lang/String;C)Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    throw p1

    .line 365
    :cond_1f
    const/16 v3, 0x77

    .line 366
    .line 367
    if-ne v2, v3, :cond_21

    .line 368
    .line 369
    if-gt v1, v9, :cond_20

    .line 370
    .line 371
    new-instance v2, Lorg/threeten/bp/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;

    .line 372
    .line 373
    invoke-direct {v2, v3, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;-><init>(CI)V

    .line 374
    .line 375
    .line 376
    invoke-direct {p0, v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 377
    .line 378
    .line 379
    goto :goto_8

    .line 380
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 381
    .line 382
    invoke-static {v4, v2}, LA/i;->h(Ljava/lang/String;C)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    throw p1

    .line 390
    :cond_21
    const/16 v3, 0x59

    .line 391
    .line 392
    if-ne v2, v3, :cond_22

    .line 393
    .line 394
    new-instance v2, Lorg/threeten/bp/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;

    .line 395
    .line 396
    invoke-direct {v2, v3, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;-><init>(CI)V

    .line 397
    .line 398
    .line 399
    invoke-direct {p0, v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 400
    .line 401
    .line 402
    :goto_8
    add-int/lit8 v1, v8, -0x1

    .line 403
    .line 404
    goto/16 :goto_b

    .line 405
    .line 406
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 407
    .line 408
    const-string v0, "Unknown pattern letter: "

    .line 409
    .line 410
    invoke-static {v0, v2}, LA/i;->h(Ljava/lang/String;C)Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    throw p1

    .line 418
    :cond_23
    const-string v3, "\'"

    .line 419
    .line 420
    const/16 v4, 0x27

    .line 421
    .line 422
    if-ne v2, v4, :cond_28

    .line 423
    .line 424
    add-int/lit8 v1, v1, 0x1

    .line 425
    .line 426
    move v2, v1

    .line 427
    :goto_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 428
    .line 429
    .line 430
    move-result v5

    .line 431
    if-ge v2, v5, :cond_25

    .line 432
    .line 433
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 434
    .line 435
    .line 436
    move-result v5

    .line 437
    if-ne v5, v4, :cond_24

    .line 438
    .line 439
    add-int/lit8 v5, v2, 0x1

    .line 440
    .line 441
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 442
    .line 443
    .line 444
    move-result v6

    .line 445
    if-ge v5, v6, :cond_25

    .line 446
    .line 447
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    .line 448
    .line 449
    .line 450
    move-result v6

    .line 451
    if-ne v6, v4, :cond_25

    .line 452
    .line 453
    move v2, v5

    .line 454
    :cond_24
    add-int/2addr v2, v7

    .line 455
    goto :goto_9

    .line 456
    :cond_25
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 457
    .line 458
    .line 459
    move-result v5

    .line 460
    if-ge v2, v5, :cond_27

    .line 461
    .line 462
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v1

    .line 466
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 467
    .line 468
    .line 469
    move-result v5

    .line 470
    if-nez v5, :cond_26

    .line 471
    .line 472
    invoke-virtual {p0, v4}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 473
    .line 474
    .line 475
    goto :goto_a

    .line 476
    :cond_26
    const-string v4, "\'\'"

    .line 477
    .line 478
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v1

    .line 482
    invoke-virtual {p0, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLiteral(Ljava/lang/String;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 483
    .line 484
    .line 485
    :goto_a
    move v1, v2

    .line 486
    goto :goto_b

    .line 487
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 488
    .line 489
    const-string v1, "Pattern ends with an incomplete string literal: "

    .line 490
    .line 491
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object p1

    .line 495
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    throw v0

    .line 499
    :cond_28
    const/16 v4, 0x5b

    .line 500
    .line 501
    if-ne v2, v4, :cond_29

    .line 502
    .line 503
    invoke-virtual {p0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->optionalStart()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 504
    .line 505
    .line 506
    goto :goto_b

    .line 507
    :cond_29
    const/16 v4, 0x5d

    .line 508
    .line 509
    if-ne v2, v4, :cond_2b

    .line 510
    .line 511
    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 512
    .line 513
    iget-object v2, v2, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->parent:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 514
    .line 515
    if-eqz v2, :cond_2a

    .line 516
    .line 517
    invoke-virtual {p0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->optionalEnd()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 518
    .line 519
    .line 520
    goto :goto_b

    .line 521
    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 522
    .line 523
    const-string v0, "Pattern invalid as it contains ] without previous ["

    .line 524
    .line 525
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 526
    .line 527
    .line 528
    throw p1

    .line 529
    :cond_2b
    const/16 v4, 0x7b

    .line 530
    .line 531
    if-eq v2, v4, :cond_2c

    .line 532
    .line 533
    const/16 v4, 0x7d

    .line 534
    .line 535
    if-eq v2, v4, :cond_2c

    .line 536
    .line 537
    const/16 v4, 0x23

    .line 538
    .line 539
    if-eq v2, v4, :cond_2c

    .line 540
    .line 541
    invoke-virtual {p0, v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 542
    .line 543
    .line 544
    :goto_b
    add-int/2addr v1, v7

    .line 545
    goto/16 :goto_0

    .line 546
    .line 547
    :cond_2c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 548
    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    .line 550
    .line 551
    const-string v1, "Pattern includes reserved character: \'"

    .line 552
    .line 553
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 554
    .line 555
    .line 556
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 557
    .line 558
    .line 559
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    .line 561
    .line 562
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v0

    .line 566
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 567
    .line 568
    .line 569
    throw p1

    .line 570
    :cond_2d
    return-void
.end method


# virtual methods
.method public append(Lorg/threeten/bp/format/DateTimeFormatter;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 1

    .line 1
    const-string v0, "formatter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Lorg/threeten/bp/format/DateTimeFormatter;->toPrinterParser(Z)Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {p0, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public appendChronologyId()Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 2

    .line 1
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ChronoPrinterParser;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ChronoPrinterParser;-><init>(Lorg/threeten/bp/format/TextStyle;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public appendChronologyText(Lorg/threeten/bp/format/TextStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 1

    .line 1
    const-string v0, "textStyle"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ChronoPrinterParser;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ChronoPrinterParser;-><init>(Lorg/threeten/bp/format/TextStyle;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public appendFraction(Lorg/threeten/bp/temporal/TemporalField;IIZ)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 1

    .line 1
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$FractionPrinterParser;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$FractionPrinterParser;-><init>(Lorg/threeten/bp/temporal/TemporalField;IIZ)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public appendInstant()Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 2

    .line 1
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$InstantPrinterParser;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$InstantPrinterParser;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public appendInstant(I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 2

    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x9

    if-gt p1, v0, :cond_0

    .line 2
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$InstantPrinterParser;

    invoke-direct {v0, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$InstantPrinterParser;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid fractional digits: "

    .line 4
    invoke-static {p1, v1}, LA/i;->f(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public appendLiteral(C)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 1

    .line 1
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;

    invoke-direct {v0, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;-><init>(C)V

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public appendLiteral(Ljava/lang/String;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 2

    .line 2
    const-string v0, "literal"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-direct {v0, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;-><init>(C)V

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0

    .line 6
    :cond_0
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;

    invoke-direct {v0, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    :cond_1
    return-object p0
.end method

.method public appendLocalized(Lorg/threeten/bp/format/FormatStyle;Lorg/threeten/bp/format/FormatStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 1

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    const-string p2, "Either the date or time style must be non-null"

    .line 9
    .line 10
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1

    .line 14
    :cond_1
    :goto_0
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$LocalizedPrinterParser;

    .line 15
    .line 16
    invoke-direct {v0, p1, p2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$LocalizedPrinterParser;-><init>(Lorg/threeten/bp/format/FormatStyle;Lorg/threeten/bp/format/FormatStyle;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 20
    .line 21
    .line 22
    return-object p0
.end method

.method public appendLocalizedOffset(Lorg/threeten/bp/format/TextStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 1

    .line 1
    const-string v0, "style"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lorg/threeten/bp/format/TextStyle;->FULL:Lorg/threeten/bp/format/TextStyle;

    .line 7
    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    .line 10
    sget-object v0, Lorg/threeten/bp/format/TextStyle;->SHORT:Lorg/threeten/bp/format/TextStyle;

    .line 11
    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    const-string v0, "Style must be either full or short"

    .line 18
    .line 19
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1

    .line 23
    :cond_1
    :goto_0
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$LocalizedOffsetPrinterParser;

    .line 24
    .line 25
    invoke-direct {v0, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$LocalizedOffsetPrinterParser;-><init>(Lorg/threeten/bp/format/TextStyle;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 29
    .line 30
    .line 31
    return-object p0
.end method

.method public appendOffset(Ljava/lang/String;Ljava/lang/String;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 1

    .line 1
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    .line 2
    .line 3
    invoke-direct {v0, p2, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public appendOffsetId()Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 1

    .line 1
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID:Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public appendOptional(Lorg/threeten/bp/format/DateTimeFormatter;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 1

    .line 1
    const-string v0, "formatter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p1, v0}, Lorg/threeten/bp/format/DateTimeFormatter;->toPrinterParser(Z)Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {p0, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public appendPattern(Ljava/lang/String;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 1

    .line 1
    const-string v0, "pattern"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->parsePattern(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public appendText(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 1

    .line 1
    sget-object v0, Lorg/threeten/bp/format/TextStyle;->FULL:Lorg/threeten/bp/format/TextStyle;

    invoke-virtual {p0, p1, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendText(Lorg/threeten/bp/temporal/TemporalField;Lorg/threeten/bp/format/TextStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendText(Lorg/threeten/bp/temporal/TemporalField;Ljava/util/Map;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/TemporalField;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/threeten/bp/format/DateTimeFormatterBuilder;"
        }
    .end annotation

    .line 5
    const-string v0, "field"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    const-string v0, "textLookup"

    invoke-static {p2, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 8
    sget-object p2, Lorg/threeten/bp/format/TextStyle;->FULL:Lorg/threeten/bp/format/TextStyle;

    invoke-static {p2, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 9
    new-instance v1, Lorg/threeten/bp/format/SimpleDateTimeTextProvider$LocaleStore;

    invoke-direct {v1, v0}, Lorg/threeten/bp/format/SimpleDateTimeTextProvider$LocaleStore;-><init>(Ljava/util/Map;)V

    .line 10
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$2;

    invoke-direct {v0, p0, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$2;-><init>(Lorg/threeten/bp/format/DateTimeFormatterBuilder;Lorg/threeten/bp/format/SimpleDateTimeTextProvider$LocaleStore;)V

    .line 11
    new-instance v1, Lorg/threeten/bp/format/DateTimeFormatterBuilder$TextPrinterParser;

    invoke-direct {v1, p1, p2, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$TextPrinterParser;-><init>(Lorg/threeten/bp/temporal/TemporalField;Lorg/threeten/bp/format/TextStyle;Lorg/threeten/bp/format/DateTimeTextProvider;)V

    invoke-direct {p0, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public appendText(Lorg/threeten/bp/temporal/TemporalField;Lorg/threeten/bp/format/TextStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 2

    .line 2
    const-string v0, "field"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    const-string v0, "textStyle"

    invoke-static {p2, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$TextPrinterParser;

    invoke-static {}, Lorg/threeten/bp/format/DateTimeTextProvider;->getInstance()Lorg/threeten/bp/format/DateTimeTextProvider;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$TextPrinterParser;-><init>(Lorg/threeten/bp/temporal/TemporalField;Lorg/threeten/bp/format/TextStyle;Lorg/threeten/bp/format/DateTimeTextProvider;)V

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public appendValue(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 4

    .line 1
    const-string v0, "field"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;

    const/16 v1, 0x13

    sget-object v2, Lorg/threeten/bp/format/SignStyle;->NORMAL:Lorg/threeten/bp/format/SignStyle;

    const/4 v3, 0x1

    invoke-direct {v0, p1, v3, v1, v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Lorg/threeten/bp/temporal/TemporalField;IILorg/threeten/bp/format/SignStyle;)V

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    return-object p0
.end method

.method public appendValue(Lorg/threeten/bp/temporal/TemporalField;I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 2

    .line 3
    const-string v0, "field"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    const/16 v0, 0x13

    if-gt p2, v0, :cond_0

    .line 4
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;

    sget-object v1, Lorg/threeten/bp/format/SignStyle;->NOT_NEGATIVE:Lorg/threeten/bp/format/SignStyle;

    invoke-direct {v0, p1, p2, p2, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Lorg/threeten/bp/temporal/TemporalField;IILorg/threeten/bp/format/SignStyle;)V

    .line 5
    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The width must be from 1 to 19 inclusive but was "

    .line 7
    invoke-static {p2, v0}, LA/i;->f(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 8
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public appendValue(Lorg/threeten/bp/temporal/TemporalField;IILorg/threeten/bp/format/SignStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 2

    if-ne p2, p3, :cond_0

    .line 13
    sget-object v0, Lorg/threeten/bp/format/SignStyle;->NOT_NEGATIVE:Lorg/threeten/bp/format/SignStyle;

    if-ne p4, v0, :cond_0

    .line 14
    invoke-virtual {p0, p1, p3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1

    .line 15
    :cond_0
    const-string v0, "field"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    const-string v0, "signStyle"

    invoke-static {p4, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    if-lt p2, v0, :cond_3

    const/16 v1, 0x13

    if-gt p2, v1, :cond_3

    if-lt p3, v0, :cond_2

    if-gt p3, v1, :cond_2

    if-lt p3, p2, :cond_1

    .line 17
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Lorg/threeten/bp/temporal/TemporalField;IILorg/threeten/bp/format/SignStyle;)V

    .line 18
    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    return-object p0

    .line 19
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p4, "The maximum width must exceed or equal the minimum width but "

    const-string v0, " < "

    .line 20
    invoke-static {p3, p2, p4, v0}, LA/i;->e(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 21
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The maximum width must be from 1 to 19 inclusive but was "

    .line 23
    invoke-static {p3, p2}, LA/i;->f(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 24
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "The minimum width must be from 1 to 19 inclusive but was "

    .line 26
    invoke-static {p2, p3}, LA/i;->f(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 27
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public appendValueReduced(Lorg/threeten/bp/temporal/TemporalField;III)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 7

    .line 1
    const-string v0, "field"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v1, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;-><init>(Lorg/threeten/bp/temporal/TemporalField;IIILorg/threeten/bp/chrono/ChronoLocalDate;)V

    .line 3
    invoke-direct {p0, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    return-object p0
.end method

.method public appendValueReduced(Lorg/threeten/bp/temporal/TemporalField;IILorg/threeten/bp/chrono/ChronoLocalDate;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 7

    .line 4
    const-string v0, "field"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    const-string v0, "baseDate"

    invoke-static {p4, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    new-instance v1, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    const/4 v5, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;-><init>(Lorg/threeten/bp/temporal/TemporalField;IIILorg/threeten/bp/chrono/ChronoLocalDate;)V

    .line 7
    invoke-direct {p0, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    return-object p0
.end method

.method public appendZoneId()Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 3

    .line 1
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;

    .line 2
    .line 3
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->zoneId()Lorg/threeten/bp/temporal/TemporalQuery;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "ZoneId()"

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;-><init>(Lorg/threeten/bp/temporal/TemporalQuery;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public appendZoneOrOffsetId()Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 3

    .line 1
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;

    .line 2
    .line 3
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->zone()Lorg/threeten/bp/temporal/TemporalQuery;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "ZoneOrOffsetId()"

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;-><init>(Lorg/threeten/bp/temporal/TemporalQuery;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public appendZoneRegionId()Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 3

    .line 1
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;

    .line 2
    .line 3
    sget-object v1, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->QUERY_REGION_ONLY:Lorg/threeten/bp/temporal/TemporalQuery;

    .line 4
    .line 5
    const-string v2, "ZoneRegionId()"

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;-><init>(Lorg/threeten/bp/temporal/TemporalQuery;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public appendZoneText(Lorg/threeten/bp/format/TextStyle;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 1

    .line 1
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;

    invoke-direct {v0, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;-><init>(Lorg/threeten/bp/format/TextStyle;)V

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public appendZoneText(Lorg/threeten/bp/format/TextStyle;Ljava/util/Set;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/format/TextStyle;",
            "Ljava/util/Set<",
            "Lorg/threeten/bp/ZoneId;",
            ">;)",
            "Lorg/threeten/bp/format/DateTimeFormatterBuilder;"
        }
    .end annotation

    .line 2
    const-string v0, "preferredZones"

    invoke-static {p2, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance p2, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;

    invoke-direct {p2, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;-><init>(Lorg/threeten/bp/format/TextStyle;)V

    invoke-direct {p0, p2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public optionalEnd()Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->parent:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;

    .line 16
    .line 17
    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 18
    .line 19
    iget-object v2, v1, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    .line 20
    .line 21
    iget-boolean v1, v1, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->optional:Z

    .line 22
    .line 23
    invoke-direct {v0, v2, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;-><init>(Ljava/util/List;Z)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 27
    .line 28
    iget-object v1, v1, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->parent:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 29
    .line 30
    iput-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 31
    .line 32
    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 33
    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 37
    .line 38
    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->parent:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 39
    .line 40
    iput-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    const-string v1, "Cannot call optionalEnd() as there was no previous call to optionalStart()"

    .line 46
    .line 47
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v0
.end method

.method public optionalStart()Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    iput v1, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 5
    .line 6
    new-instance v1, Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-direct {v1, v0, v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;-><init>(Lorg/threeten/bp/format/DateTimeFormatterBuilder;Z)V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    .line 13
    .line 14
    return-object p0
.end method

.method public padNext(I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 1

    const/16 v0, 0x20

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->padNext(IC)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public padNext(IC)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    iput p1, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->padNextWidth:I

    .line 3
    iput-char p2, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->padNextChar:C

    const/4 p1, -0x1

    .line 4
    iput p1, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->valueParserIndex:I

    return-object p0

    .line 5
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "The pad width must be at least one but was "

    .line 6
    invoke-static {p1, v0}, LA/i;->f(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public parseCaseInsensitive()Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 1

    .line 1
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;->INSENSITIVE:Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public parseCaseSensitive()Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 1

    .line 1
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;->SENSITIVE:Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public parseDefaulting(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 1

    .line 1
    const-string v0, "field"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$DefaultingParser;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2, p3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$DefaultingParser;-><init>(Lorg/threeten/bp/temporal/TemporalField;J)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public parseLenient()Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 1

    .line 1
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;->LENIENT:Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public parseStrict()Lorg/threeten/bp/format/DateTimeFormatterBuilder;
    .locals 1

    .line 1
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;->STRICT:Lorg/threeten/bp/format/DateTimeFormatterBuilder$SettingsParser;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendInternal(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public toFormatter()Lorg/threeten/bp/format/DateTimeFormatter;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public toFormatter(Ljava/util/Locale;)Lorg/threeten/bp/format/DateTimeFormatter;
    .locals 9

    .line 2
    const-string v0, "locale"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    :goto_0
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->active:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->parent:Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->optionalEnd()Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    goto :goto_0

    .line 5
    :cond_0
    new-instance v2, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;-><init>(Ljava/util/List;Z)V

    .line 6
    new-instance v1, Lorg/threeten/bp/format/DateTimeFormatter;

    sget-object v4, Lorg/threeten/bp/format/DecimalStyle;->STANDARD:Lorg/threeten/bp/format/DecimalStyle;

    sget-object v5, Lorg/threeten/bp/format/ResolverStyle;->SMART:Lorg/threeten/bp/format/ResolverStyle;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lorg/threeten/bp/format/DateTimeFormatter;-><init>(Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Lorg/threeten/bp/format/DecimalStyle;Lorg/threeten/bp/format/ResolverStyle;Ljava/util/Set;Lorg/threeten/bp/chrono/Chronology;Lorg/threeten/bp/ZoneId;)V

    return-object v1
.end method

.method public toFormatter(Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/format/DateTimeFormatter;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->toFormatter()Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/threeten/bp/format/DateTimeFormatter;->withResolverStyle(Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object p1

    return-object p1
.end method
