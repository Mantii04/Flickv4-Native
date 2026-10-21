.class Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/zone/ZoneRulesBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TZWindow"
.end annotation


# instance fields
.field private fixedSavingAmountSecs:Ljava/lang/Integer;

.field private lastRuleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;",
            ">;"
        }
    .end annotation
.end field

.field private maxLastRuleStartYear:I

.field private ruleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;",
            ">;"
        }
    .end annotation
.end field

.field private final standardOffset:Lorg/threeten/bp/ZoneOffset;

.field final synthetic this$0:Lorg/threeten/bp/zone/ZoneRulesBuilder;

.field private final timeDefinition:Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

.field private final windowEnd:Lorg/threeten/bp/LocalDateTime;


# direct methods
.method public constructor <init>(Lorg/threeten/bp/zone/ZoneRulesBuilder;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->this$0:Lorg/threeten/bp/zone/ZoneRulesBuilder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->ruleList:Ljava/util/List;

    .line 12
    .line 13
    const p1, -0x3b9ac9ff

    .line 14
    .line 15
    .line 16
    iput p1, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->maxLastRuleStartYear:I

    .line 17
    .line 18
    new-instance p1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->lastRuleList:Ljava/util/List;

    .line 24
    .line 25
    iput-object p3, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->windowEnd:Lorg/threeten/bp/LocalDateTime;

    .line 26
    .line 27
    iput-object p4, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->timeDefinition:Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    .line 28
    .line 29
    iput-object p2, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->standardOffset:Lorg/threeten/bp/ZoneOffset;

    .line 30
    .line 31
    return-void
.end method

.method public static synthetic access$000(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;)Lorg/threeten/bp/ZoneOffset;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->standardOffset:Lorg/threeten/bp/ZoneOffset;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->fixedSavingAmountSecs:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->ruleList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->lastRuleList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public addRule(IILorg/threeten/bp/Month;ILorg/threeten/bp/DayOfWeek;Lorg/threeten/bp/LocalTime;ILorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;I)V
    .locals 11

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->fixedSavingAmountSecs:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->ruleList:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/16 v1, 0x7d0

    .line 12
    .line 13
    if-ge v0, v1, :cond_3

    .line 14
    .line 15
    const v0, 0x3b9ac9ff

    .line 16
    .line 17
    .line 18
    if-ne p2, v0, :cond_0

    .line 19
    .line 20
    const/4 p2, 0x1

    .line 21
    move v0, p2

    .line 22
    move p2, p1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    move v3, p1

    .line 26
    :goto_1
    if-gt v3, p2, :cond_2

    .line 27
    .line 28
    new-instance v1, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;

    .line 29
    .line 30
    iget-object v2, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->this$0:Lorg/threeten/bp/zone/ZoneRulesBuilder;

    .line 31
    .line 32
    move-object v4, p3

    .line 33
    move v5, p4

    .line 34
    move-object/from16 v6, p5

    .line 35
    .line 36
    move-object/from16 v7, p6

    .line 37
    .line 38
    move/from16 v8, p7

    .line 39
    .line 40
    move-object/from16 v9, p8

    .line 41
    .line 42
    move/from16 v10, p9

    .line 43
    .line 44
    invoke-direct/range {v1 .. v10}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;-><init>(Lorg/threeten/bp/zone/ZoneRulesBuilder;ILorg/threeten/bp/Month;ILorg/threeten/bp/DayOfWeek;Lorg/threeten/bp/LocalTime;ILorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;I)V

    .line 45
    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    iget-object v2, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->lastRuleList:Ljava/util/List;

    .line 50
    .line 51
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    iget v1, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->maxLastRuleStartYear:I

    .line 55
    .line 56
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    iput v1, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->maxLastRuleStartYear:I

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_1
    iget-object v2, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->ruleList:Ljava/util/List;

    .line 64
    .line 65
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    return-void

    .line 72
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 73
    .line 74
    const-string p2, "Window has reached the maximum number of allowed rules"

    .line 75
    .line 76
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p1

    .line 80
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 81
    .line 82
    const-string p2, "Window has a fixed DST saving, so cannot have DST rules"

    .line 83
    .line 84
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p1
.end method

.method public createDateTimeEpochSecond(I)J
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->createWallOffset(I)Lorg/threeten/bp/ZoneOffset;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->timeDefinition:Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    .line 6
    .line 7
    iget-object v1, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->windowEnd:Lorg/threeten/bp/LocalDateTime;

    .line 8
    .line 9
    iget-object v2, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->standardOffset:Lorg/threeten/bp/ZoneOffset;

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2, p1}, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;->createDateTime(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/LocalDateTime;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toEpochSecond(Lorg/threeten/bp/ZoneOffset;)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    return-wide v0
.end method

.method public createWallOffset(I)Lorg/threeten/bp/ZoneOffset;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->standardOffset:Lorg/threeten/bp/ZoneOffset;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/2addr v0, p1

    .line 8
    invoke-static {v0}, Lorg/threeten/bp/ZoneOffset;->ofTotalSeconds(I)Lorg/threeten/bp/ZoneOffset;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public isSingleWindowStandardOffset()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->windowEnd:Lorg/threeten/bp/LocalDateTime;

    .line 2
    .line 3
    sget-object v1, Lorg/threeten/bp/LocalDateTime;->MAX:Lorg/threeten/bp/LocalDateTime;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lorg/threeten/bp/LocalDateTime;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->timeDefinition:Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    .line 12
    .line 13
    sget-object v1, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;->WALL:Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->fixedSavingAmountSecs:Ljava/lang/Integer;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->lastRuleList:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->ruleList:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    return v0

    .line 39
    :cond_0
    const/4 v0, 0x0

    .line 40
    return v0
.end method

.method public setFixedSavings(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->ruleList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->lastRuleList:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-gtz v0, :cond_0

    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->fixedSavingAmountSecs:Ljava/lang/Integer;

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v0, "Window has DST rules, so cannot have fixed savings"

    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1
.end method

.method public tidy(I)V
    .locals 14

    .line 1
    iget-object v1, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->lastRuleList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v10, 0x1

    .line 8
    if-eq v1, v10, :cond_5

    .line 9
    .line 10
    iget-object v1, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->windowEnd:Lorg/threeten/bp/LocalDateTime;

    .line 11
    .line 12
    sget-object v2, Lorg/threeten/bp/LocalDateTime;->MAX:Lorg/threeten/bp/LocalDateTime;

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Lorg/threeten/bp/LocalDateTime;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const v11, 0x3b9ac9ff

    .line 19
    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget v1, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->maxLastRuleStartYear:I

    .line 24
    .line 25
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    add-int/2addr v1, v10

    .line 30
    iput v1, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->maxLastRuleStartYear:I

    .line 31
    .line 32
    iget-object v1, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->lastRuleList:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v12

    .line 38
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    move-object v13, v1

    .line 49
    check-cast v13, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;

    .line 50
    .line 51
    invoke-static {v13}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->access$500(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;)I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    iget v2, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->maxLastRuleStartYear:I

    .line 56
    .line 57
    invoke-static {v13}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->access$600(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;)Lorg/threeten/bp/Month;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-static {v13}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->access$700(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;)I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    invoke-static {v13}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->access$800(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;)Lorg/threeten/bp/DayOfWeek;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-static {v13}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->access$900(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;)Lorg/threeten/bp/LocalTime;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    invoke-static {v13}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->access$1000(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;)I

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    invoke-static {v13}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->access$1100(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;)Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    invoke-static {v13}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->access$300(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;)I

    .line 82
    .line 83
    .line 84
    move-result v9

    .line 85
    move-object v0, p0

    .line 86
    invoke-virtual/range {v0 .. v9}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->addRule(IILorg/threeten/bp/Month;ILorg/threeten/bp/DayOfWeek;Lorg/threeten/bp/LocalTime;ILorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;I)V

    .line 87
    .line 88
    .line 89
    iget v1, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->maxLastRuleStartYear:I

    .line 90
    .line 91
    add-int/2addr v1, v10

    .line 92
    invoke-static {v13, v1}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->access$502(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;I)I

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_0
    iget v1, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->maxLastRuleStartYear:I

    .line 97
    .line 98
    if-ne v1, v11, :cond_1

    .line 99
    .line 100
    iget-object v1, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->lastRuleList:Ljava/util/List;

    .line 101
    .line 102
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_1
    add-int/2addr v1, v10

    .line 107
    iput v1, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->maxLastRuleStartYear:I

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_2
    iget-object v1, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->windowEnd:Lorg/threeten/bp/LocalDateTime;

    .line 111
    .line 112
    invoke-virtual {v1}, Lorg/threeten/bp/LocalDateTime;->getYear()I

    .line 113
    .line 114
    .line 115
    move-result v12

    .line 116
    iget-object v1, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->lastRuleList:Ljava/util/List;

    .line 117
    .line 118
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 119
    .line 120
    .line 121
    move-result-object v13

    .line 122
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-eqz v1, :cond_3

    .line 127
    .line 128
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    check-cast v1, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;

    .line 133
    .line 134
    move-object v2, v1

    .line 135
    invoke-static {v2}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->access$500(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;)I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    move-object v3, v2

    .line 140
    add-int/lit8 v2, v12, 0x1

    .line 141
    .line 142
    move-object v4, v3

    .line 143
    invoke-static {v4}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->access$600(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;)Lorg/threeten/bp/Month;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    move-object v5, v4

    .line 148
    invoke-static {v5}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->access$700(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;)I

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    move-object v6, v5

    .line 153
    invoke-static {v6}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->access$800(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;)Lorg/threeten/bp/DayOfWeek;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    move-object v7, v6

    .line 158
    invoke-static {v7}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->access$900(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;)Lorg/threeten/bp/LocalTime;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    move-object v8, v7

    .line 163
    invoke-static {v8}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->access$1000(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;)I

    .line 164
    .line 165
    .line 166
    move-result v7

    .line 167
    move-object v9, v8

    .line 168
    invoke-static {v9}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->access$1100(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;)Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    invoke-static {v9}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->access$300(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;)I

    .line 173
    .line 174
    .line 175
    move-result v9

    .line 176
    move-object v0, p0

    .line 177
    invoke-virtual/range {v0 .. v9}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->addRule(IILorg/threeten/bp/Month;ILorg/threeten/bp/DayOfWeek;Lorg/threeten/bp/LocalTime;ILorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;I)V

    .line 178
    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_3
    iget-object v1, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->lastRuleList:Ljava/util/List;

    .line 182
    .line 183
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 184
    .line 185
    .line 186
    iput v11, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->maxLastRuleStartYear:I

    .line 187
    .line 188
    :goto_2
    iget-object v1, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->ruleList:Ljava/util/List;

    .line 189
    .line 190
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 191
    .line 192
    .line 193
    iget-object v1, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->lastRuleList:Ljava/util/List;

    .line 194
    .line 195
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 196
    .line 197
    .line 198
    iget-object v1, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->ruleList:Ljava/util/List;

    .line 199
    .line 200
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    if-nez v1, :cond_4

    .line 205
    .line 206
    iget-object v1, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->fixedSavingAmountSecs:Ljava/lang/Integer;

    .line 207
    .line 208
    if-nez v1, :cond_4

    .line 209
    .line 210
    const/4 v1, 0x0

    .line 211
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    iput-object v1, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->fixedSavingAmountSecs:Ljava/lang/Integer;

    .line 216
    .line 217
    :cond_4
    return-void

    .line 218
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 219
    .line 220
    const-string v2, "Cannot have only one rule defined as being forever"

    .line 221
    .line 222
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    throw v1
.end method

.method public validateWindowOrder(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->windowEnd:Lorg/threeten/bp/LocalDateTime;

    .line 2
    .line 3
    iget-object v1, p1, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->windowEnd:Lorg/threeten/bp/LocalDateTime;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lorg/threeten/bp/LocalDateTime;->isBefore(Lorg/threeten/bp/chrono/ChronoLocalDateTime;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v2, "Windows must be added in date-time order: "

    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->windowEnd:Lorg/threeten/bp/LocalDateTime;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, " < "

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object p1, p1, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->windowEnd:Lorg/threeten/bp/LocalDateTime;

    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v0
.end method
