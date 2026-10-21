.class Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/zone/ZoneRulesBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TZRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;",
        ">;"
    }
.end annotation


# instance fields
.field private adjustDays:I

.field private dayOfMonthIndicator:I

.field private dayOfWeek:Lorg/threeten/bp/DayOfWeek;

.field private month:Lorg/threeten/bp/Month;

.field private savingAmountSecs:I

.field final synthetic this$0:Lorg/threeten/bp/zone/ZoneRulesBuilder;

.field private time:Lorg/threeten/bp/LocalTime;

.field private timeDefinition:Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

.field private year:I


# direct methods
.method public constructor <init>(Lorg/threeten/bp/zone/ZoneRulesBuilder;ILorg/threeten/bp/Month;ILorg/threeten/bp/DayOfWeek;Lorg/threeten/bp/LocalTime;ILorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->this$0:Lorg/threeten/bp/zone/ZoneRulesBuilder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->year:I

    .line 7
    .line 8
    iput-object p3, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->month:Lorg/threeten/bp/Month;

    .line 9
    .line 10
    iput p4, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->dayOfMonthIndicator:I

    .line 11
    .line 12
    iput-object p5, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->dayOfWeek:Lorg/threeten/bp/DayOfWeek;

    .line 13
    .line 14
    iput-object p6, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->time:Lorg/threeten/bp/LocalTime;

    .line 15
    .line 16
    iput p7, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->adjustDays:I

    .line 17
    .line 18
    iput-object p8, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->timeDefinition:Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    .line 19
    .line 20
    iput p9, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->savingAmountSecs:I

    .line 21
    .line 22
    return-void
.end method

.method public static synthetic access$1000(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->adjustDays:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1100(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;)Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->timeDefinition:Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->savingAmountSecs:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$500(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->year:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$502(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;I)I
    .locals 0

    .line 1
    iput p1, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->year:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$600(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;)Lorg/threeten/bp/Month;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->month:Lorg/threeten/bp/Month;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$700(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->dayOfMonthIndicator:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$800(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;)Lorg/threeten/bp/DayOfWeek;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->dayOfWeek:Lorg/threeten/bp/DayOfWeek;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$900(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;)Lorg/threeten/bp/LocalTime;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->time:Lorg/threeten/bp/LocalTime;

    .line 2
    .line 3
    return-object p0
.end method

.method private toLocalDate()Lorg/threeten/bp/LocalDate;
    .locals 4

    .line 1
    iget v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->dayOfMonthIndicator:I

    .line 2
    .line 3
    if-gez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->month:Lorg/threeten/bp/Month;

    .line 6
    .line 7
    sget-object v1, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    .line 8
    .line 9
    iget v2, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->year:I

    .line 10
    .line 11
    int-to-long v2, v2

    .line 12
    invoke-virtual {v1, v2, v3}, Lorg/threeten/bp/chrono/IsoChronology;->isLeapYear(J)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Lorg/threeten/bp/Month;->length(Z)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget v1, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->year:I

    .line 21
    .line 22
    iget-object v2, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->month:Lorg/threeten/bp/Month;

    .line 23
    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    iget v3, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->dayOfMonthIndicator:I

    .line 27
    .line 28
    add-int/2addr v0, v3

    .line 29
    invoke-static {v1, v2, v0}, Lorg/threeten/bp/LocalDate;->of(ILorg/threeten/bp/Month;I)Lorg/threeten/bp/LocalDate;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->dayOfWeek:Lorg/threeten/bp/DayOfWeek;

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    invoke-static {v1}, Lorg/threeten/bp/temporal/TemporalAdjusters;->previousOrSame(Lorg/threeten/bp/DayOfWeek;)Lorg/threeten/bp/temporal/TemporalAdjuster;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Lorg/threeten/bp/LocalDate;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/LocalDate;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    :cond_0
    return-object v0

    .line 46
    :cond_1
    iget v1, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->year:I

    .line 47
    .line 48
    iget-object v2, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->month:Lorg/threeten/bp/Month;

    .line 49
    .line 50
    invoke-static {v1, v2, v0}, Lorg/threeten/bp/LocalDate;->of(ILorg/threeten/bp/Month;I)Lorg/threeten/bp/LocalDate;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-object v1, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->dayOfWeek:Lorg/threeten/bp/DayOfWeek;

    .line 55
    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    invoke-static {v1}, Lorg/threeten/bp/temporal/TemporalAdjusters;->nextOrSame(Lorg/threeten/bp/DayOfWeek;)Lorg/threeten/bp/temporal/TemporalAdjuster;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Lorg/threeten/bp/LocalDate;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/LocalDate;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    :cond_2
    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->compareTo(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;)I
    .locals 4

    .line 2
    iget v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->year:I

    iget v1, p1, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->year:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->month:Lorg/threeten/bp/Month;

    iget-object v1, p1, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->month:Lorg/threeten/bp/Month;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    .line 4
    invoke-direct {p0}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->toLocalDate()Lorg/threeten/bp/LocalDate;

    move-result-object v0

    .line 5
    invoke-direct {p1}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->toLocalDate()Lorg/threeten/bp/LocalDate;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Lorg/threeten/bp/LocalDate;->compareTo(Lorg/threeten/bp/chrono/ChronoLocalDate;)I

    move-result v0

    :cond_1
    if-eqz v0, :cond_2

    return v0

    .line 7
    :cond_2
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalTime;->toSecondOfDay()I

    move-result v0

    iget v1, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->adjustDays:I

    const v2, 0x15180

    mul-int/2addr v1, v2

    add-int/2addr v1, v0

    int-to-long v0, v1

    .line 8
    iget-object v3, p1, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v3}, Lorg/threeten/bp/LocalTime;->toSecondOfDay()I

    move-result v3

    iget p1, p1, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->adjustDays:I

    mul-int/2addr p1, v2

    add-int/2addr p1, v3

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-gez p1, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_3
    if-lez p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public toTransition(Lorg/threeten/bp/ZoneOffset;I)Lorg/threeten/bp/zone/ZoneOffsetTransition;
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->toLocalDate()Lorg/threeten/bp/LocalDate;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->this$0:Lorg/threeten/bp/zone/ZoneRulesBuilder;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lorg/threeten/bp/zone/ZoneRulesBuilder;->deduplicate(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lorg/threeten/bp/LocalDate;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->this$0:Lorg/threeten/bp/zone/ZoneRulesBuilder;

    .line 14
    .line 15
    iget v2, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->adjustDays:I

    .line 16
    .line 17
    int-to-long v2, v2

    .line 18
    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/LocalDate;->plusDays(J)Lorg/threeten/bp/LocalDate;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v2, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->time:Lorg/threeten/bp/LocalTime;

    .line 23
    .line 24
    invoke-static {v0, v2}, Lorg/threeten/bp/LocalDateTime;->of(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/LocalDateTime;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v1, v0}, Lorg/threeten/bp/zone/ZoneRulesBuilder;->deduplicate(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lorg/threeten/bp/LocalDateTime;

    .line 33
    .line 34
    iget-object v1, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->this$0:Lorg/threeten/bp/zone/ZoneRulesBuilder;

    .line 35
    .line 36
    invoke-virtual {p1}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    add-int/2addr v2, p2

    .line 41
    invoke-static {v2}, Lorg/threeten/bp/ZoneOffset;->ofTotalSeconds(I)Lorg/threeten/bp/ZoneOffset;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {v1, p2}, Lorg/threeten/bp/zone/ZoneRulesBuilder;->deduplicate(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    check-cast p2, Lorg/threeten/bp/ZoneOffset;

    .line 50
    .line 51
    iget-object v1, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->this$0:Lorg/threeten/bp/zone/ZoneRulesBuilder;

    .line 52
    .line 53
    iget-object v2, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->timeDefinition:Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    .line 54
    .line 55
    invoke-virtual {v2, v0, p1, p2}, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;->createDateTime(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/LocalDateTime;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v1, v0}, Lorg/threeten/bp/zone/ZoneRulesBuilder;->deduplicate(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Lorg/threeten/bp/LocalDateTime;

    .line 64
    .line 65
    iget-object v1, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->this$0:Lorg/threeten/bp/zone/ZoneRulesBuilder;

    .line 66
    .line 67
    invoke-virtual {p1}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    iget v2, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->savingAmountSecs:I

    .line 72
    .line 73
    add-int/2addr p1, v2

    .line 74
    invoke-static {p1}, Lorg/threeten/bp/ZoneOffset;->ofTotalSeconds(I)Lorg/threeten/bp/ZoneOffset;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {v1, p1}, Lorg/threeten/bp/zone/ZoneRulesBuilder;->deduplicate(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Lorg/threeten/bp/ZoneOffset;

    .line 83
    .line 84
    new-instance v1, Lorg/threeten/bp/zone/ZoneOffsetTransition;

    .line 85
    .line 86
    invoke-direct {v1, v0, p2, p1}, Lorg/threeten/bp/zone/ZoneOffsetTransition;-><init>(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneOffset;)V

    .line 87
    .line 88
    .line 89
    return-object v1
.end method

.method public toTransitionRule(Lorg/threeten/bp/ZoneOffset;I)Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;
    .locals 10

    .line 1
    iget v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->dayOfMonthIndicator:I

    .line 2
    .line 3
    if-gez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->month:Lorg/threeten/bp/Month;

    .line 6
    .line 7
    sget-object v1, Lorg/threeten/bp/Month;->FEBRUARY:Lorg/threeten/bp/Month;

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lorg/threeten/bp/Month;->maxLength()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    add-int/lit8 v0, v0, -0x6

    .line 16
    .line 17
    iput v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->dayOfMonthIndicator:I

    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->toTransition(Lorg/threeten/bp/ZoneOffset;I)Lorg/threeten/bp/zone/ZoneOffsetTransition;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    new-instance v0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;

    .line 24
    .line 25
    iget-object v1, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->month:Lorg/threeten/bp/Month;

    .line 26
    .line 27
    iget v2, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->dayOfMonthIndicator:I

    .line 28
    .line 29
    iget-object v3, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->dayOfWeek:Lorg/threeten/bp/DayOfWeek;

    .line 30
    .line 31
    iget-object v4, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->time:Lorg/threeten/bp/LocalTime;

    .line 32
    .line 33
    iget v5, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->adjustDays:I

    .line 34
    .line 35
    iget-object v6, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->timeDefinition:Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    .line 36
    .line 37
    invoke-virtual {p2}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getOffsetBefore()Lorg/threeten/bp/ZoneOffset;

    .line 38
    .line 39
    .line 40
    move-result-object v8

    .line 41
    invoke-virtual {p2}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getOffsetAfter()Lorg/threeten/bp/ZoneOffset;

    .line 42
    .line 43
    .line 44
    move-result-object v9

    .line 45
    move-object v7, p1

    .line 46
    invoke-direct/range {v0 .. v9}, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;-><init>(Lorg/threeten/bp/Month;ILorg/threeten/bp/DayOfWeek;Lorg/threeten/bp/LocalTime;ILorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneOffset;)V

    .line 47
    .line 48
    .line 49
    return-object v0
.end method
