.class final Lorg/threeten/bp/format/DateTimeParseContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/threeten/bp/format/DateTimeParseContext$Parsed;
    }
.end annotation


# instance fields
.field private caseSensitive:Z

.field private locale:Ljava/util/Locale;

.field private overrideChronology:Lorg/threeten/bp/chrono/Chronology;

.field private overrideZone:Lorg/threeten/bp/ZoneId;

.field private final parsed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/threeten/bp/format/DateTimeParseContext$Parsed;",
            ">;"
        }
    .end annotation
.end field

.field private strict:Z

.field private symbols:Lorg/threeten/bp/format/DecimalStyle;


# direct methods
.method public constructor <init>(Ljava/util/Locale;Lorg/threeten/bp/format/DecimalStyle;Lorg/threeten/bp/chrono/Chronology;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lorg/threeten/bp/format/DateTimeParseContext;->caseSensitive:Z

    .line 12
    iput-boolean v0, p0, Lorg/threeten/bp/format/DateTimeParseContext;->strict:Z

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/threeten/bp/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    .line 14
    iput-object p1, p0, Lorg/threeten/bp/format/DateTimeParseContext;->locale:Ljava/util/Locale;

    .line 15
    iput-object p2, p0, Lorg/threeten/bp/format/DateTimeParseContext;->symbols:Lorg/threeten/bp/format/DecimalStyle;

    .line 16
    iput-object p3, p0, Lorg/threeten/bp/format/DateTimeParseContext;->overrideChronology:Lorg/threeten/bp/chrono/Chronology;

    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lorg/threeten/bp/format/DateTimeParseContext;->overrideZone:Lorg/threeten/bp/ZoneId;

    .line 18
    new-instance p2, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;

    invoke-direct {p2, p0, p1}, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;-><init>(Lorg/threeten/bp/format/DateTimeParseContext;Lorg/threeten/bp/format/DateTimeParseContext$1;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lorg/threeten/bp/format/DateTimeFormatter;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/threeten/bp/format/DateTimeParseContext;->caseSensitive:Z

    .line 3
    iput-boolean v0, p0, Lorg/threeten/bp/format/DateTimeParseContext;->strict:Z

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/threeten/bp/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p1}, Lorg/threeten/bp/format/DateTimeFormatter;->getLocale()Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Lorg/threeten/bp/format/DateTimeParseContext;->locale:Ljava/util/Locale;

    .line 6
    invoke-virtual {p1}, Lorg/threeten/bp/format/DateTimeFormatter;->getDecimalStyle()Lorg/threeten/bp/format/DecimalStyle;

    move-result-object v1

    iput-object v1, p0, Lorg/threeten/bp/format/DateTimeParseContext;->symbols:Lorg/threeten/bp/format/DecimalStyle;

    .line 7
    invoke-virtual {p1}, Lorg/threeten/bp/format/DateTimeFormatter;->getChronology()Lorg/threeten/bp/chrono/Chronology;

    move-result-object v1

    iput-object v1, p0, Lorg/threeten/bp/format/DateTimeParseContext;->overrideChronology:Lorg/threeten/bp/chrono/Chronology;

    .line 8
    invoke-virtual {p1}, Lorg/threeten/bp/format/DateTimeFormatter;->getZone()Lorg/threeten/bp/ZoneId;

    move-result-object p1

    iput-object p1, p0, Lorg/threeten/bp/format/DateTimeParseContext;->overrideZone:Lorg/threeten/bp/ZoneId;

    .line 9
    new-instance p1, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;-><init>(Lorg/threeten/bp/format/DateTimeParseContext;Lorg/threeten/bp/format/DateTimeParseContext$1;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lorg/threeten/bp/format/DateTimeParseContext;)V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lorg/threeten/bp/format/DateTimeParseContext;->caseSensitive:Z

    .line 21
    iput-boolean v0, p0, Lorg/threeten/bp/format/DateTimeParseContext;->strict:Z

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/threeten/bp/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    .line 23
    iget-object v1, p1, Lorg/threeten/bp/format/DateTimeParseContext;->locale:Ljava/util/Locale;

    iput-object v1, p0, Lorg/threeten/bp/format/DateTimeParseContext;->locale:Ljava/util/Locale;

    .line 24
    iget-object v1, p1, Lorg/threeten/bp/format/DateTimeParseContext;->symbols:Lorg/threeten/bp/format/DecimalStyle;

    iput-object v1, p0, Lorg/threeten/bp/format/DateTimeParseContext;->symbols:Lorg/threeten/bp/format/DecimalStyle;

    .line 25
    iget-object v1, p1, Lorg/threeten/bp/format/DateTimeParseContext;->overrideChronology:Lorg/threeten/bp/chrono/Chronology;

    iput-object v1, p0, Lorg/threeten/bp/format/DateTimeParseContext;->overrideChronology:Lorg/threeten/bp/chrono/Chronology;

    .line 26
    iget-object v1, p1, Lorg/threeten/bp/format/DateTimeParseContext;->overrideZone:Lorg/threeten/bp/ZoneId;

    iput-object v1, p0, Lorg/threeten/bp/format/DateTimeParseContext;->overrideZone:Lorg/threeten/bp/ZoneId;

    .line 27
    iget-boolean v1, p1, Lorg/threeten/bp/format/DateTimeParseContext;->caseSensitive:Z

    iput-boolean v1, p0, Lorg/threeten/bp/format/DateTimeParseContext;->caseSensitive:Z

    .line 28
    iget-boolean p1, p1, Lorg/threeten/bp/format/DateTimeParseContext;->strict:Z

    iput-boolean p1, p0, Lorg/threeten/bp/format/DateTimeParseContext;->strict:Z

    .line 29
    new-instance p1, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;-><init>(Lorg/threeten/bp/format/DateTimeParseContext;Lorg/threeten/bp/format/DateTimeParseContext$1;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic access$100(Lorg/threeten/bp/format/DateTimeParseContext;)Lorg/threeten/bp/ZoneId;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/threeten/bp/format/DateTimeParseContext;->overrideZone:Lorg/threeten/bp/ZoneId;

    .line 2
    .line 3
    return-object p0
.end method

.method public static charEqualsIgnoreCase(CC)Z
    .locals 2

    .line 1
    if-eq p0, p1, :cond_1

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-ne p0, p1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return p0

    .line 26
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 27
    return p0
.end method

.method private currentParsed()Lorg/threeten/bp/format/DateTimeParseContext$Parsed;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v1, v0}, Lb/c;->h(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;

    .line 9
    .line 10
    return-object v0
.end method


# virtual methods
.method public addChronologyChangedParser(Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;JII)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0}, Lorg/threeten/bp/format/DateTimeParseContext;->currentParsed()Lorg/threeten/bp/format/DateTimeParseContext$Parsed;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iget-object v2, v1, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->callbacks:Ljava/util/List;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    new-instance v2, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    .line 14
    .line 15
    iput-object v2, v1, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->callbacks:Ljava/util/List;

    .line 16
    .line 17
    :cond_0
    iget-object v1, v1, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->callbacks:Ljava/util/List;

    .line 18
    .line 19
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p4

    .line 31
    const/4 p5, 0x4

    .line 32
    new-array p5, p5, [Ljava/lang/Object;

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    aput-object p1, p5, v2

    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    aput-object p2, p5, p1

    .line 39
    .line 40
    aput-object p3, p5, v0

    .line 41
    .line 42
    const/4 p1, 0x3

    .line 43
    aput-object p4, p5, p1

    .line 44
    .line 45
    invoke-interface {v1, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public charEquals(CC)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/threeten/bp/format/DateTimeParseContext;->isCaseSensitive()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-ne p1, p2, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    return p1

    .line 13
    :cond_1
    invoke-static {p1, p2}, Lorg/threeten/bp/format/DateTimeParseContext;->charEqualsIgnoreCase(CC)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public copy()Lorg/threeten/bp/format/DateTimeParseContext;
    .locals 1

    .line 1
    new-instance v0, Lorg/threeten/bp/format/DateTimeParseContext;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/threeten/bp/format/DateTimeParseContext;-><init>(Lorg/threeten/bp/format/DateTimeParseContext;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public endOptional(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lorg/threeten/bp/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    add-int/lit8 v0, v0, -0x2

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object p1, p0, Lorg/threeten/bp/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    add-int/lit8 v0, v0, -0x1

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public getEffectiveChronology()Lorg/threeten/bp/chrono/Chronology;
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/threeten/bp/format/DateTimeParseContext;->currentParsed()Lorg/threeten/bp/format/DateTimeParseContext$Parsed;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->chrono:Lorg/threeten/bp/chrono/Chronology;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeParseContext;->overrideChronology:Lorg/threeten/bp/chrono/Chronology;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    .line 14
    .line 15
    :cond_0
    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeParseContext;->locale:Ljava/util/Locale;

    .line 2
    .line 3
    return-object v0
.end method

.method public getParsed(Lorg/threeten/bp/temporal/TemporalField;)Ljava/lang/Long;
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/threeten/bp/format/DateTimeParseContext;->currentParsed()Lorg/threeten/bp/format/DateTimeParseContext$Parsed;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->fieldValues:Ljava/util/Map;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/Long;

    .line 12
    .line 13
    return-object p1
.end method

.method public getSymbols()Lorg/threeten/bp/format/DecimalStyle;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeParseContext;->symbols:Lorg/threeten/bp/format/DecimalStyle;

    .line 2
    .line 3
    return-object v0
.end method

.method public isCaseSensitive()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/threeten/bp/format/DateTimeParseContext;->caseSensitive:Z

    .line 2
    .line 3
    return v0
.end method

.method public isStrict()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/threeten/bp/format/DateTimeParseContext;->strict:Z

    .line 2
    .line 3
    return v0
.end method

.method public setCaseSensitive(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/threeten/bp/format/DateTimeParseContext;->caseSensitive:Z

    .line 2
    .line 3
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
    iput-object p1, p0, Lorg/threeten/bp/format/DateTimeParseContext;->locale:Ljava/util/Locale;

    .line 7
    .line 8
    return-void
.end method

.method public setParsed(Lorg/threeten/bp/ZoneId;)V
    .locals 1

    .line 10
    const-string v0, "zone"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    invoke-direct {p0}, Lorg/threeten/bp/format/DateTimeParseContext;->currentParsed()Lorg/threeten/bp/format/DateTimeParseContext$Parsed;

    move-result-object v0

    iput-object p1, v0, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->zone:Lorg/threeten/bp/ZoneId;

    return-void
.end method

.method public setParsed(Lorg/threeten/bp/chrono/Chronology;)V
    .locals 8

    .line 1
    const-string v0, "chrono"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lorg/threeten/bp/format/DateTimeParseContext;->currentParsed()Lorg/threeten/bp/format/DateTimeParseContext$Parsed;

    move-result-object v0

    .line 3
    iput-object p1, v0, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->chrono:Lorg/threeten/bp/chrono/Chronology;

    .line 4
    iget-object p1, v0, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->callbacks:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, v0, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->callbacks:Ljava/util/List;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 8
    aget-object v1, v0, v1

    move-object v2, v1

    check-cast v2, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    const/4 v1, 0x1

    .line 9
    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v1, 0x2

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v1, 0x3

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;->setValue(Lorg/threeten/bp/format/DateTimeParseContext;JII)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setParsedField(Lorg/threeten/bp/temporal/TemporalField;JII)I
    .locals 2

    .line 1
    const-string v0, "field"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lorg/threeten/bp/format/DateTimeParseContext;->currentParsed()Lorg/threeten/bp/format/DateTimeParseContext$Parsed;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v0, v0, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->fieldValues:Ljava/util/Map;

    .line 11
    .line 12
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Ljava/lang/Long;

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    cmp-long p1, v0, p2

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    not-int p1, p4

    .line 33
    return p1

    .line 34
    :cond_0
    return p5
.end method

.method public setParsedLeapSecond()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/threeten/bp/format/DateTimeParseContext;->currentParsed()Lorg/threeten/bp/format/DateTimeParseContext$Parsed;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->leapSecond:Z

    .line 7
    .line 8
    return-void
.end method

.method public setStrict(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/threeten/bp/format/DateTimeParseContext;->strict:Z

    .line 2
    .line 3
    return-void
.end method

.method public startOptional()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {p0}, Lorg/threeten/bp/format/DateTimeParseContext;->currentParsed()Lorg/threeten/bp/format/DateTimeParseContext$Parsed;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->copy()Lorg/threeten/bp/format/DateTimeParseContext$Parsed;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public subSequenceEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z
    .locals 6

    .line 1
    add-int v0, p2, p5

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-gt v0, v1, :cond_5

    .line 9
    .line 10
    add-int v0, p4, p5

    .line 11
    .line 12
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-le v0, v1, :cond_0

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_0
    invoke-virtual {p0}, Lorg/threeten/bp/format/DateTimeParseContext;->isCaseSensitive()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    move v0, v2

    .line 26
    :goto_0
    if-ge v0, p5, :cond_4

    .line 27
    .line 28
    add-int v1, p2, v0

    .line 29
    .line 30
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    add-int v3, p4, v0

    .line 35
    .line 36
    invoke-interface {p3, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eq v1, v3, :cond_1

    .line 41
    .line 42
    return v2

    .line 43
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    move v0, v2

    .line 47
    :goto_1
    if-ge v0, p5, :cond_4

    .line 48
    .line 49
    add-int v1, p2, v0

    .line 50
    .line 51
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    add-int v3, p4, v0

    .line 56
    .line 57
    invoke-interface {p3, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eq v1, v3, :cond_3

    .line 62
    .line 63
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-eq v4, v5, :cond_3

    .line 72
    .line 73
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-eq v1, v3, :cond_3

    .line 82
    .line 83
    return v2

    .line 84
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_4
    const/4 p1, 0x1

    .line 88
    return p1

    .line 89
    :cond_5
    :goto_2
    return v2
.end method

.method public toParsed()Lorg/threeten/bp/format/DateTimeParseContext$Parsed;
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/threeten/bp/format/DateTimeParseContext;->currentParsed()Lorg/threeten/bp/format/DateTimeParseContext$Parsed;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/threeten/bp/format/DateTimeParseContext;->currentParsed()Lorg/threeten/bp/format/DateTimeParseContext$Parsed;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
