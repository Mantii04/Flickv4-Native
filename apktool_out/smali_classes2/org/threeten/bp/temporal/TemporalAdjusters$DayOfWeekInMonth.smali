.class final Lorg/threeten/bp/temporal/TemporalAdjusters$DayOfWeekInMonth;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/threeten/bp/temporal/TemporalAdjuster;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/temporal/TemporalAdjusters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DayOfWeekInMonth"
.end annotation


# instance fields
.field private final dowValue:I

.field private final ordinal:I


# direct methods
.method private constructor <init>(ILorg/threeten/bp/DayOfWeek;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lorg/threeten/bp/temporal/TemporalAdjusters$DayOfWeekInMonth;->ordinal:I

    .line 4
    invoke-virtual {p2}, Lorg/threeten/bp/DayOfWeek;->getValue()I

    move-result p1

    iput p1, p0, Lorg/threeten/bp/temporal/TemporalAdjusters$DayOfWeekInMonth;->dowValue:I

    return-void
.end method

.method public synthetic constructor <init>(ILorg/threeten/bp/DayOfWeek;Lorg/threeten/bp/temporal/TemporalAdjusters$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/temporal/TemporalAdjusters$DayOfWeekInMonth;-><init>(ILorg/threeten/bp/DayOfWeek;)V

    return-void
.end method


# virtual methods
.method public adjustInto(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;
    .locals 9

    .line 1
    iget v0, p0, Lorg/threeten/bp/temporal/TemporalAdjusters$DayOfWeekInMonth;->ordinal:I

    .line 2
    .line 3
    const-wide/16 v1, 0x7

    .line 4
    .line 5
    const-wide/16 v3, 0x1

    .line 6
    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    .line 10
    .line 11
    invoke-interface {p1, v0, v3, v4}, Lorg/threeten/bp/temporal/Temporal;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    .line 16
    .line 17
    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/TemporalAccessor;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget v5, p0, Lorg/threeten/bp/temporal/TemporalAdjusters$DayOfWeekInMonth;->dowValue:I

    .line 22
    .line 23
    sub-int/2addr v5, v0

    .line 24
    add-int/lit8 v5, v5, 0x7

    .line 25
    .line 26
    rem-int/lit8 v5, v5, 0x7

    .line 27
    .line 28
    int-to-long v5, v5

    .line 29
    iget v0, p0, Lorg/threeten/bp/temporal/TemporalAdjusters$DayOfWeekInMonth;->ordinal:I

    .line 30
    .line 31
    int-to-long v7, v0

    .line 32
    sub-long/2addr v7, v3

    .line 33
    mul-long/2addr v7, v1

    .line 34
    add-long/2addr v7, v5

    .line 35
    sget-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 36
    .line 37
    invoke-interface {p1, v7, v8, v0}, Lorg/threeten/bp/temporal/Temporal;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    return-object p1

    .line 42
    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    .line 43
    .line 44
    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/TemporalAccessor;->range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-virtual {v5}, Lorg/threeten/bp/temporal/ValueRange;->getMaximum()J

    .line 49
    .line 50
    .line 51
    move-result-wide v5

    .line 52
    invoke-interface {p1, v0, v5, v6}, Lorg/threeten/bp/temporal/Temporal;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/ChronoField;

    .line 57
    .line 58
    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/TemporalAccessor;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    iget v5, p0, Lorg/threeten/bp/temporal/TemporalAdjusters$DayOfWeekInMonth;->dowValue:I

    .line 63
    .line 64
    sub-int/2addr v5, v0

    .line 65
    int-to-long v5, v5

    .line 66
    const-wide/16 v7, 0x0

    .line 67
    .line 68
    cmp-long v0, v5, v7

    .line 69
    .line 70
    if-nez v0, :cond_1

    .line 71
    .line 72
    move-wide v5, v7

    .line 73
    goto :goto_0

    .line 74
    :cond_1
    if-lez v0, :cond_2

    .line 75
    .line 76
    sub-long/2addr v5, v1

    .line 77
    :cond_2
    :goto_0
    iget v0, p0, Lorg/threeten/bp/temporal/TemporalAdjusters$DayOfWeekInMonth;->ordinal:I

    .line 78
    .line 79
    neg-int v0, v0

    .line 80
    int-to-long v7, v0

    .line 81
    sub-long/2addr v7, v3

    .line 82
    mul-long/2addr v7, v1

    .line 83
    sub-long/2addr v5, v7

    .line 84
    sget-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 85
    .line 86
    invoke-interface {p1, v5, v6, v0}, Lorg/threeten/bp/temporal/Temporal;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    return-object p1
.end method
