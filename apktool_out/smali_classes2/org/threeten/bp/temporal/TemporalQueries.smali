.class public final Lorg/threeten/bp/temporal/TemporalQueries;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final CHRONO:Lorg/threeten/bp/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/TemporalQuery<",
            "Lorg/threeten/bp/chrono/Chronology;",
            ">;"
        }
    .end annotation
.end field

.field static final LOCAL_DATE:Lorg/threeten/bp/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/TemporalQuery<",
            "Lorg/threeten/bp/LocalDate;",
            ">;"
        }
    .end annotation
.end field

.field static final LOCAL_TIME:Lorg/threeten/bp/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/TemporalQuery<",
            "Lorg/threeten/bp/LocalTime;",
            ">;"
        }
    .end annotation
.end field

.field static final OFFSET:Lorg/threeten/bp/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/TemporalQuery<",
            "Lorg/threeten/bp/ZoneOffset;",
            ">;"
        }
    .end annotation
.end field

.field static final PRECISION:Lorg/threeten/bp/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/TemporalQuery<",
            "Lorg/threeten/bp/temporal/TemporalUnit;",
            ">;"
        }
    .end annotation
.end field

.field static final ZONE:Lorg/threeten/bp/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/TemporalQuery<",
            "Lorg/threeten/bp/ZoneId;",
            ">;"
        }
    .end annotation
.end field

.field static final ZONE_ID:Lorg/threeten/bp/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/TemporalQuery<",
            "Lorg/threeten/bp/ZoneId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/threeten/bp/temporal/TemporalQueries$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/threeten/bp/temporal/TemporalQueries$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/threeten/bp/temporal/TemporalQueries;->ZONE_ID:Lorg/threeten/bp/temporal/TemporalQuery;

    .line 7
    .line 8
    new-instance v0, Lorg/threeten/bp/temporal/TemporalQueries$2;

    .line 9
    .line 10
    invoke-direct {v0}, Lorg/threeten/bp/temporal/TemporalQueries$2;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lorg/threeten/bp/temporal/TemporalQueries;->CHRONO:Lorg/threeten/bp/temporal/TemporalQuery;

    .line 14
    .line 15
    new-instance v0, Lorg/threeten/bp/temporal/TemporalQueries$3;

    .line 16
    .line 17
    invoke-direct {v0}, Lorg/threeten/bp/temporal/TemporalQueries$3;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lorg/threeten/bp/temporal/TemporalQueries;->PRECISION:Lorg/threeten/bp/temporal/TemporalQuery;

    .line 21
    .line 22
    new-instance v0, Lorg/threeten/bp/temporal/TemporalQueries$4;

    .line 23
    .line 24
    invoke-direct {v0}, Lorg/threeten/bp/temporal/TemporalQueries$4;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lorg/threeten/bp/temporal/TemporalQueries;->ZONE:Lorg/threeten/bp/temporal/TemporalQuery;

    .line 28
    .line 29
    new-instance v0, Lorg/threeten/bp/temporal/TemporalQueries$5;

    .line 30
    .line 31
    invoke-direct {v0}, Lorg/threeten/bp/temporal/TemporalQueries$5;-><init>()V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lorg/threeten/bp/temporal/TemporalQueries;->OFFSET:Lorg/threeten/bp/temporal/TemporalQuery;

    .line 35
    .line 36
    new-instance v0, Lorg/threeten/bp/temporal/TemporalQueries$6;

    .line 37
    .line 38
    invoke-direct {v0}, Lorg/threeten/bp/temporal/TemporalQueries$6;-><init>()V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lorg/threeten/bp/temporal/TemporalQueries;->LOCAL_DATE:Lorg/threeten/bp/temporal/TemporalQuery;

    .line 42
    .line 43
    new-instance v0, Lorg/threeten/bp/temporal/TemporalQueries$7;

    .line 44
    .line 45
    invoke-direct {v0}, Lorg/threeten/bp/temporal/TemporalQueries$7;-><init>()V

    .line 46
    .line 47
    .line 48
    sput-object v0, Lorg/threeten/bp/temporal/TemporalQueries;->LOCAL_TIME:Lorg/threeten/bp/temporal/TemporalQuery;

    .line 49
    .line 50
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final chronology()Lorg/threeten/bp/temporal/TemporalQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/threeten/bp/temporal/TemporalQuery<",
            "Lorg/threeten/bp/chrono/Chronology;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/threeten/bp/temporal/TemporalQueries;->CHRONO:Lorg/threeten/bp/temporal/TemporalQuery;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final localDate()Lorg/threeten/bp/temporal/TemporalQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/threeten/bp/temporal/TemporalQuery<",
            "Lorg/threeten/bp/LocalDate;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/threeten/bp/temporal/TemporalQueries;->LOCAL_DATE:Lorg/threeten/bp/temporal/TemporalQuery;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final localTime()Lorg/threeten/bp/temporal/TemporalQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/threeten/bp/temporal/TemporalQuery<",
            "Lorg/threeten/bp/LocalTime;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/threeten/bp/temporal/TemporalQueries;->LOCAL_TIME:Lorg/threeten/bp/temporal/TemporalQuery;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final offset()Lorg/threeten/bp/temporal/TemporalQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/threeten/bp/temporal/TemporalQuery<",
            "Lorg/threeten/bp/ZoneOffset;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/threeten/bp/temporal/TemporalQueries;->OFFSET:Lorg/threeten/bp/temporal/TemporalQuery;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final precision()Lorg/threeten/bp/temporal/TemporalQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/threeten/bp/temporal/TemporalQuery<",
            "Lorg/threeten/bp/temporal/TemporalUnit;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/threeten/bp/temporal/TemporalQueries;->PRECISION:Lorg/threeten/bp/temporal/TemporalQuery;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final zone()Lorg/threeten/bp/temporal/TemporalQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/threeten/bp/temporal/TemporalQuery<",
            "Lorg/threeten/bp/ZoneId;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/threeten/bp/temporal/TemporalQueries;->ZONE:Lorg/threeten/bp/temporal/TemporalQuery;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final zoneId()Lorg/threeten/bp/temporal/TemporalQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/threeten/bp/temporal/TemporalQuery<",
            "Lorg/threeten/bp/ZoneId;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/threeten/bp/temporal/TemporalQueries;->ZONE_ID:Lorg/threeten/bp/temporal/TemporalQuery;

    .line 2
    .line 3
    return-object v0
.end method
