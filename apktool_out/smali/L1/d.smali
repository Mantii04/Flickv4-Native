.class public abstract LL1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final b:LC1/o;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, LC1/o;

    .line 5
    .line 6
    invoke-direct {v0}, LC1/o;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LL1/d;->b:LC1/o;

    .line 10
    .line 11
    return-void
.end method

.method public static a(LC1/G;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, LC1/G;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->workSpecDao()LK1/F;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->dependencyDao()LK1/b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v2, Ljava/util/LinkedList;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-nez v3, :cond_1

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Ljava/lang/String;

    .line 32
    .line 33
    move-object v4, v1

    .line 34
    check-cast v4, LK1/U;

    .line 35
    .line 36
    invoke-virtual {v4, v3}, LK1/U;->getState(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    sget-object v6, Landroidx/work/WorkInfo$State;->f:Landroidx/work/WorkInfo$State;

    .line 41
    .line 42
    if-eq v5, v6, :cond_0

    .line 43
    .line 44
    sget-object v6, Landroidx/work/WorkInfo$State;->j:Landroidx/work/WorkInfo$State;

    .line 45
    .line 46
    if-eq v5, v6, :cond_0

    .line 47
    .line 48
    sget-object v5, Landroidx/work/WorkInfo$State;->n:Landroidx/work/WorkInfo$State;

    .line 49
    .line 50
    invoke-virtual {v4, v5, v3}, LK1/U;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    :cond_0
    move-object v4, v0

    .line 54
    check-cast v4, LK1/d;

    .line 55
    .line 56
    invoke-virtual {v4, v3}, LK1/d;->getDependentWorkIds(Ljava/lang/String;)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p0}, LC1/G;->getProcessor()LC1/r;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0, p1}, LC1/r;->stopAndCancelWork(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, LC1/G;->getSchedulers()Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_2

    .line 84
    .line 85
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, LC1/t;

    .line 90
    .line 91
    invoke-interface {v0, p1}, LC1/t;->cancel(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_2
    return-void
.end method

.method public static forId(Ljava/util/UUID;LC1/G;)LL1/d;
    .locals 1

    .line 1
    new-instance v0, LL1/b;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, LL1/b;-><init>(Ljava/util/UUID;LC1/G;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static forName(Ljava/lang/String;LC1/G;Z)LL1/d;
    .locals 1

    .line 1
    new-instance v0, LL1/c;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, LL1/c;-><init>(Ljava/lang/String;LC1/G;Z)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public abstract b()V
.end method

.method public getOperation()LB1/B;
    .locals 1

    .line 1
    iget-object v0, p0, LL1/d;->b:LC1/o;

    .line 2
    .line 3
    return-object v0
.end method

.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, LL1/d;->b:LC1/o;

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, LL1/d;->b()V

    .line 4
    .line 5
    .line 6
    sget-object v1, LB1/B;->a:LB1/z;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, LC1/o;->markState(LB1/A;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v1

    .line 13
    new-instance v2, LB1/x;

    .line 14
    .line 15
    invoke-direct {v2, v1}, LB1/x;-><init>(Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v2}, LC1/o;->markState(LB1/A;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
