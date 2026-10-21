.class public abstract LB1/I;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)LB1/I;
    .locals 0

    .line 1
    invoke-static {p0}, LC1/G;->getInstance(Landroid/content/Context;)LC1/G;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static initialize(Landroid/content/Context;LB1/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, LC1/G;->initialize(Landroid/content/Context;LB1/c;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract cancelUniqueWork(Ljava/lang/String;)LB1/B;
.end method

.method public final enqueue(LB1/L;)LB1/B;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, LB1/I;->enqueue(Ljava/util/List;)LB1/B;

    move-result-object p1

    return-object p1
.end method

.method public abstract enqueue(Ljava/util/List;)LB1/B;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "LB1/L;",
            ">;)",
            "LB1/B;"
        }
    .end annotation
.end method

.method public abstract enqueueUniquePeriodicWork(Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;LB1/E;)LB1/B;
.end method

.method public enqueueUniqueWork(Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;LB1/w;)LB1/B;
    .locals 0

    .line 1
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    .line 2
    invoke-virtual {p0, p1, p2, p3}, LB1/I;->enqueueUniqueWork(Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Ljava/util/List;)LB1/B;

    move-result-object p1

    return-object p1
.end method

.method public abstract enqueueUniqueWork(Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Ljava/util/List;)LB1/B;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/work/ExistingWorkPolicy;",
            "Ljava/util/List<",
            "LB1/w;",
            ">;)",
            "LB1/B;"
        }
    .end annotation
.end method
