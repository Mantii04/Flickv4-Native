.class public abstract LW5/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LR5/E0;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "kotlinx.coroutines.fast.service.loader"

    .line 3
    .line 4
    invoke-static {v1, v0}, LW5/H;->systemProp(Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    :try_start_0
    new-instance v1, LS5/a;

    .line 8
    .line 9
    invoke-direct {v1}, LS5/a;-><init>()V

    .line 10
    .line 11
    .line 12
    new-array v0, v0, [LW5/v;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    aput-object v1, v0, v2

    .line 16
    .line 17
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-static {v0}, LO5/j;->asSequence(Ljava/util/Iterator;)LO5/d;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, LO5/l;->toList(LO5/d;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    move-object v1, v0

    .line 34
    check-cast v1, Ljava/lang/Iterable;

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-nez v2, :cond_0

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-nez v3, :cond_1

    .line 57
    .line 58
    :goto_0
    move-object v1, v2

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    move-object v3, v2

    .line 61
    check-cast v3, LW5/v;

    .line 62
    .line 63
    invoke-interface {v3}, LW5/v;->getLoadPriority()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    move-object v5, v4

    .line 72
    check-cast v5, LW5/v;

    .line 73
    .line 74
    invoke-interface {v5}, LW5/v;->getLoadPriority()I

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-ge v3, v5, :cond_3

    .line 79
    .line 80
    move-object v2, v4

    .line 81
    move v3, v5

    .line 82
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    if-nez v4, :cond_2

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :goto_1
    check-cast v1, LW5/v;

    .line 90
    .line 91
    if-eqz v1, :cond_4

    .line 92
    .line 93
    invoke-static {v1, v0}, LW5/x;->tryCreateDispatcher(LW5/v;Ljava/util/List;)LR5/E0;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    if-eqz v0, :cond_4

    .line 98
    .line 99
    sput-object v0, LW5/w;->a:LR5/E0;

    .line 100
    .line 101
    return-void

    .line 102
    :cond_4
    invoke-static {}, LW5/x;->throwMissingMainDispatcherException()Ljava/lang/Void;

    .line 103
    .line 104
    .line 105
    new-instance v0, Lkotlin/KotlinNothingValueException;

    .line 106
    .line 107
    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 108
    .line 109
    .line 110
    throw v0

    .line 111
    :catchall_0
    move-exception v0

    .line 112
    new-instance v1, Ljava/util/ServiceConfigurationError;

    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-direct {v1, v2, v0}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    .line 120
    .line 121
    throw v1
.end method
