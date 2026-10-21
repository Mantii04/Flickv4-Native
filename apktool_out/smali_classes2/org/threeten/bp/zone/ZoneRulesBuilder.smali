.class Lorg/threeten/bp/zone/ZoneRulesBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;,
        Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;
    }
.end annotation


# instance fields
.field private deduplicateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private windowList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder;->windowList:Ljava/util/List;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public addRuleToWindow(IILorg/threeten/bp/Month;ILorg/threeten/bp/DayOfWeek;Lorg/threeten/bp/LocalTime;ILorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;I)Lorg/threeten/bp/zone/ZoneRulesBuilder;
    .locals 10

    .line 23
    const-string v0, "month"

    invoke-static {p3, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    const-string v0, "timeDefinition"

    move-object/from16 v8, p8

    invoke-static {v8, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v5, p1

    invoke-virtual {v0, v5, v6}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    int-to-long v5, p2

    .line 26
    invoke-virtual {v0, v5, v6}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    const/16 v0, -0x1c

    if-lt p4, v0, :cond_1

    const/16 v0, 0x1f

    if-gt p4, v0, :cond_1

    if-eqz p4, :cond_1

    .line 27
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder;->windowList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder;->windowList:Ljava/util/List;

    const/4 v5, 0x1

    .line 29
    invoke-static {v5, v0}, LA/i;->c(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    .line 30
    check-cast v0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p9

    .line 31
    invoke-virtual/range {v0 .. v9}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->addRule(IILorg/threeten/bp/Month;ILorg/threeten/bp/DayOfWeek;Lorg/threeten/bp/LocalTime;ILorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;I)V

    return-object p0

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must add a window before adding a rule"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Day of month indicator must be between -28 and 31 inclusive excluding zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addRuleToWindow(IILorg/threeten/bp/Month;ILorg/threeten/bp/DayOfWeek;Lorg/threeten/bp/LocalTime;ZLorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;I)Lorg/threeten/bp/zone/ZoneRulesBuilder;
    .locals 10

    move-object/from16 v6, p6

    .line 7
    const-string v0, "month"

    invoke-static {p3, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    const-string v0, "time"

    invoke-static {v6, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    const-string v0, "timeDefinition"

    move-object/from16 v8, p8

    invoke-static {v8, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    int-to-long v1, p2

    .line 11
    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    const/16 v0, -0x1c

    if-lt p4, v0, :cond_3

    const/16 v0, 0x1f

    if-gt p4, v0, :cond_3

    if-eqz p4, :cond_3

    if-eqz p7, :cond_1

    .line 12
    sget-object v0, Lorg/threeten/bp/LocalTime;->MIDNIGHT:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v6, v0}, Lorg/threeten/bp/LocalTime;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Time must be midnight when end of day flag is true"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder;->windowList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 15
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder;->windowList:Ljava/util/List;

    const/4 v1, 0x1

    .line 16
    invoke-static {v1, v0}, LA/i;->c(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    .line 17
    check-cast v0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v7, p7

    move/from16 v9, p9

    .line 18
    invoke-virtual/range {v0 .. v9}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->addRule(IILorg/threeten/bp/Month;ILorg/threeten/bp/DayOfWeek;Lorg/threeten/bp/LocalTime;ILorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;I)V

    return-object p0

    .line 19
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Must add a window before adding a rule"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Day of month indicator must be between -28 and 31 inclusive excluding zero"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addRuleToWindow(ILorg/threeten/bp/Month;ILorg/threeten/bp/LocalTime;ZLorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;I)Lorg/threeten/bp/zone/ZoneRulesBuilder;
    .locals 10

    const/4 v5, 0x0

    move v2, p1

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move v4, p3

    move-object v6, p4

    move v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    .line 6
    invoke-virtual/range {v0 .. v9}, Lorg/threeten/bp/zone/ZoneRulesBuilder;->addRuleToWindow(IILorg/threeten/bp/Month;ILorg/threeten/bp/DayOfWeek;Lorg/threeten/bp/LocalTime;ZLorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;I)Lorg/threeten/bp/zone/ZoneRulesBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addRuleToWindow(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;I)Lorg/threeten/bp/zone/ZoneRulesBuilder;
    .locals 11

    .line 1
    const-string v0, "transitionDateTime"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lorg/threeten/bp/LocalDateTime;->getYear()I

    move-result v2

    invoke-virtual {p1}, Lorg/threeten/bp/LocalDateTime;->getYear()I

    move-result v3

    .line 3
    invoke-virtual {p1}, Lorg/threeten/bp/LocalDateTime;->getMonth()Lorg/threeten/bp/Month;

    move-result-object v4

    invoke-virtual {p1}, Lorg/threeten/bp/LocalDateTime;->getDayOfMonth()I

    move-result v5

    .line 4
    invoke-virtual {p1}, Lorg/threeten/bp/LocalDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v9, p2

    move v10, p3

    .line 5
    invoke-virtual/range {v1 .. v10}, Lorg/threeten/bp/zone/ZoneRulesBuilder;->addRuleToWindow(IILorg/threeten/bp/Month;ILorg/threeten/bp/DayOfWeek;Lorg/threeten/bp/LocalTime;ZLorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;I)Lorg/threeten/bp/zone/ZoneRulesBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addWindow(Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;)Lorg/threeten/bp/zone/ZoneRulesBuilder;
    .locals 1

    .line 1
    const-string v0, "standardOffset"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const-string v0, "until"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    const-string v0, "untilDefinition"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    new-instance v0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;

    .line 17
    .line 18
    invoke-direct {v0, p0, p1, p2, p3}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;-><init>(Lorg/threeten/bp/zone/ZoneRulesBuilder;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder;->windowList:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-lez p1, :cond_0

    .line 28
    .line 29
    iget-object p1, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder;->windowList:Ljava/util/List;

    .line 30
    .line 31
    const/4 p2, 0x1

    .line 32
    invoke-static {p2, p1}, LA/i;->c(ILjava/util/List;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->validateWindowOrder(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object p1, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder;->windowList:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    return-object p0
.end method

.method public addWindowForever(Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/zone/ZoneRulesBuilder;
    .locals 2

    .line 1
    sget-object v0, Lorg/threeten/bp/LocalDateTime;->MAX:Lorg/threeten/bp/LocalDateTime;

    .line 2
    .line 3
    sget-object v1, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;->WALL:Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    .line 4
    .line 5
    invoke-virtual {p0, p1, v0, v1}, Lorg/threeten/bp/zone/ZoneRulesBuilder;->addWindow(Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;)Lorg/threeten/bp/zone/ZoneRulesBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public deduplicate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder;->deduplicateMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder;->deduplicateMap:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v0, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder;->deduplicateMap:Ljava/util/Map;

    .line 15
    .line 16
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public setFixedSavingsToWindow(I)Lorg/threeten/bp/zone/ZoneRulesBuilder;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder;->windowList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRulesBuilder;->windowList:Ljava/util/List;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {v1, v0}, LA/i;->c(ILjava/util/List;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->setFixedSavings(I)V

    .line 19
    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v0, "Must add a window before setting the fixed savings"

    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1
.end method

.method public toRules(Ljava/lang/String;)Lorg/threeten/bp/zone/ZoneRules;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/threeten/bp/zone/ZoneRulesBuilder;->toRules(Ljava/lang/String;Ljava/util/Map;)Lorg/threeten/bp/zone/ZoneRules;

    move-result-object p1

    return-object p1
.end method

.method public toRules(Ljava/lang/String;Ljava/util/Map;)Lorg/threeten/bp/zone/ZoneRules;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/threeten/bp/zone/ZoneRules;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2
    const-string v1, "zoneId"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v1, p2

    .line 3
    iput-object v1, v0, Lorg/threeten/bp/zone/ZoneRulesBuilder;->deduplicateMap:Ljava/util/Map;

    .line 4
    iget-object v1, v0, Lorg/threeten/bp/zone/ZoneRulesBuilder;->windowList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 5
    new-instance v5, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    new-instance v6, Ljava/util/ArrayList;

    const/16 v1, 0x100

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    new-instance v7, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    iget-object v1, v0, Lorg/threeten/bp/zone/ZoneRulesBuilder;->windowList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;

    .line 9
    invoke-static {v1}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->access$000(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;)Lorg/threeten/bp/ZoneOffset;

    move-result-object v3

    .line 10
    invoke-static {v1}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->access$100(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 11
    invoke-static {v1}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->access$100(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v2

    .line 12
    :goto_0
    invoke-virtual {v3}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v8

    add-int/2addr v8, v4

    invoke-static {v8}, Lorg/threeten/bp/ZoneOffset;->ofTotalSeconds(I)Lorg/threeten/bp/ZoneOffset;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/threeten/bp/zone/ZoneRulesBuilder;->deduplicate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/threeten/bp/ZoneOffset;

    const v9, -0x3b9ac9ff

    const/4 v10, 0x1

    .line 13
    invoke-static {v9, v10, v10, v2, v2}, Lorg/threeten/bp/LocalDateTime;->of(IIIII)Lorg/threeten/bp/LocalDateTime;

    move-result-object v9

    invoke-virtual {v0, v9}, Lorg/threeten/bp/zone/ZoneRulesBuilder;->deduplicate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/threeten/bp/LocalDateTime;

    .line 14
    iget-object v10, v0, Lorg/threeten/bp/zone/ZoneRulesBuilder;->windowList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v11, v8

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;

    .line 15
    invoke-virtual {v9}, Lorg/threeten/bp/LocalDateTime;->getYear()I

    move-result v13

    invoke-virtual {v12, v13}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->tidy(I)V

    .line 16
    invoke-static {v12}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->access$100(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;)Ljava/lang/Integer;

    move-result-object v13

    if-nez v13, :cond_2

    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 18
    invoke-static {v12}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->access$200(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;

    .line 19
    invoke-virtual {v15, v3, v4}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->toTransition(Lorg/threeten/bp/ZoneOffset;I)Lorg/threeten/bp/zone/ZoneOffsetTransition;

    move-result-object v16

    .line 20
    invoke-virtual/range {v16 .. v16}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v16

    invoke-virtual {v9, v11}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toEpochSecond(Lorg/threeten/bp/ZoneOffset;)J

    move-result-wide v18

    cmp-long v16, v16, v18

    if-lez v16, :cond_1

    goto :goto_3

    .line 21
    :cond_1
    invoke-static {v15}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->access$300(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    goto :goto_2

    .line 22
    :cond_2
    :goto_3
    invoke-static {v12}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->access$000(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;)Lorg/threeten/bp/ZoneOffset;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/threeten/bp/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 23
    new-instance v4, Lorg/threeten/bp/zone/ZoneOffsetTransition;

    .line 24
    invoke-virtual {v9, v11}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toEpochSecond(Lorg/threeten/bp/ZoneOffset;)J

    move-result-wide v14

    invoke-static {v14, v15, v2, v3}, Lorg/threeten/bp/LocalDateTime;->ofEpochSecond(JILorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v14

    .line 25
    invoke-static {v12}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->access$000(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;)Lorg/threeten/bp/ZoneOffset;

    move-result-object v15

    invoke-direct {v4, v14, v3, v15}, Lorg/threeten/bp/zone/ZoneOffsetTransition;-><init>(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneOffset;)V

    .line 26
    invoke-virtual {v0, v4}, Lorg/threeten/bp/zone/ZoneRulesBuilder;->deduplicate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-static {v12}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->access$000(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;)Lorg/threeten/bp/ZoneOffset;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/threeten/bp/zone/ZoneRulesBuilder;->deduplicate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/threeten/bp/ZoneOffset;

    .line 28
    :cond_3
    invoke-virtual {v3}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v4

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v14

    add-int/2addr v14, v4

    invoke-static {v14}, Lorg/threeten/bp/ZoneOffset;->ofTotalSeconds(I)Lorg/threeten/bp/ZoneOffset;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/threeten/bp/zone/ZoneRulesBuilder;->deduplicate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/threeten/bp/ZoneOffset;

    .line 29
    invoke-virtual {v11, v4}, Lorg/threeten/bp/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 30
    new-instance v14, Lorg/threeten/bp/zone/ZoneOffsetTransition;

    invoke-direct {v14, v9, v11, v4}, Lorg/threeten/bp/zone/ZoneOffsetTransition;-><init>(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneOffset;)V

    invoke-virtual {v0, v14}, Lorg/threeten/bp/zone/ZoneRulesBuilder;->deduplicate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/threeten/bp/zone/ZoneOffsetTransition;

    .line 31
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    :cond_4
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 33
    invoke-static {v12}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->access$200(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;

    .line 34
    invoke-virtual {v14, v3, v4}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->toTransition(Lorg/threeten/bp/ZoneOffset;I)Lorg/threeten/bp/zone/ZoneOffsetTransition;

    move-result-object v15

    invoke-virtual {v0, v15}, Lorg/threeten/bp/zone/ZoneRulesBuilder;->deduplicate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/threeten/bp/zone/ZoneOffsetTransition;

    .line 35
    invoke-virtual {v15}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v16

    invoke-virtual {v9, v11}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toEpochSecond(Lorg/threeten/bp/ZoneOffset;)J

    move-result-wide v18

    cmp-long v16, v16, v18

    if-gez v16, :cond_6

    :cond_5
    move-object/from16 p2, v1

    goto :goto_5

    .line 36
    :cond_6
    invoke-virtual {v15}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v16

    invoke-virtual {v12, v4}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->createDateTimeEpochSecond(I)J

    move-result-wide v18

    cmp-long v16, v16, v18

    if-gez v16, :cond_5

    .line 37
    invoke-virtual {v15}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getOffsetBefore()Lorg/threeten/bp/ZoneOffset;

    move-result-object v2

    move-object/from16 p2, v1

    invoke-virtual {v15}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getOffsetAfter()Lorg/threeten/bp/ZoneOffset;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/threeten/bp/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 38
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-static {v14}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->access$300(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;)I

    move-result v1

    move v4, v1

    :cond_7
    :goto_5
    move-object/from16 v1, p2

    const/4 v2, 0x0

    goto :goto_4

    :cond_8
    move-object/from16 p2, v1

    .line 40
    invoke-static {v12}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->access$400(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;

    .line 41
    invoke-virtual {v2, v3, v4}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->toTransitionRule(Lorg/threeten/bp/ZoneOffset;I)Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/threeten/bp/zone/ZoneRulesBuilder;->deduplicate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;

    .line 42
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-static {v2}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;->access$300(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZRule;)I

    move-result v4

    goto :goto_6

    .line 44
    :cond_9
    invoke-virtual {v12, v4}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->createWallOffset(I)Lorg/threeten/bp/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/zone/ZoneRulesBuilder;->deduplicate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lorg/threeten/bp/ZoneOffset;

    .line 45
    invoke-virtual {v12, v4}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->createDateTimeEpochSecond(I)J

    move-result-wide v1

    const/4 v9, 0x0

    .line 46
    invoke-static {v1, v2, v9, v11}, Lorg/threeten/bp/LocalDateTime;->ofEpochSecond(JILorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/zone/ZoneRulesBuilder;->deduplicate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/threeten/bp/LocalDateTime;

    move v2, v9

    move-object v9, v1

    move-object/from16 v1, p2

    goto/16 :goto_1

    :cond_a
    move-object/from16 p2, v1

    .line 47
    new-instance v2, Lorg/threeten/bp/zone/StandardZoneRules;

    .line 48
    invoke-static/range {p2 .. p2}, Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;->access$000(Lorg/threeten/bp/zone/ZoneRulesBuilder$TZWindow;)Lorg/threeten/bp/ZoneOffset;

    move-result-object v3

    move-object v4, v8

    invoke-direct/range {v2 .. v7}, Lorg/threeten/bp/zone/StandardZoneRules;-><init>(Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneOffset;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v2

    .line 49
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No windows have been added to the builder"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
