.class public abstract Landroidx/concurrent/futures/n;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getFuture(Landroidx/concurrent/futures/k;)LV3/F;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/concurrent/futures/k;",
            ")",
            "LV3/F;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/concurrent/futures/j;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroidx/concurrent/futures/o;->create()Landroidx/concurrent/futures/o;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iput-object v1, v0, Landroidx/concurrent/futures/j;->c:Landroidx/concurrent/futures/o;

    .line 11
    .line 12
    new-instance v1, Landroidx/concurrent/futures/m;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Landroidx/concurrent/futures/m;-><init>(Landroidx/concurrent/futures/j;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, v0, Landroidx/concurrent/futures/j;->b:Landroidx/concurrent/futures/m;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iput-object v2, v0, Landroidx/concurrent/futures/j;->a:Ljava/lang/Object;

    .line 24
    .line 25
    :try_start_0
    invoke-interface {p0, v0}, Landroidx/concurrent/futures/k;->attachCompleter(Landroidx/concurrent/futures/j;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    if-eqz p0, :cond_0

    .line 30
    .line 31
    iput-object p0, v0, Landroidx/concurrent/futures/j;->a:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    return-object v1

    .line 34
    :catch_0
    move-exception p0

    .line 35
    iget-object v0, v1, Landroidx/concurrent/futures/m;->e:Landroidx/concurrent/futures/l;

    .line 36
    .line 37
    invoke-virtual {v0, p0}, Landroidx/concurrent/futures/i;->setException(Ljava/lang/Throwable;)Z

    .line 38
    .line 39
    .line 40
    :cond_0
    return-object v1
.end method
