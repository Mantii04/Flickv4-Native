.class public final LT1/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LT1/O;


# direct methods
.method public constructor <init>(LT1/O;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LT1/M;->b:LT1/O;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, LT1/M;->b:LT1/O;

    .line 2
    .line 3
    iget-object v0, v0, LT1/O;->d:LT1/L;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, LT1/M;->b:LT1/O;

    .line 9
    .line 10
    iget-object v0, v0, LT1/O;->d:LT1/L;

    .line 11
    .line 12
    invoke-virtual {v0}, LT1/L;->getValue()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    iget-object v1, p0, LT1/M;->b:LT1/O;

    .line 19
    .line 20
    invoke-virtual {v0}, LT1/L;->getValue()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    monitor-enter v1

    .line 25
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    .line 26
    .line 27
    iget-object v3, v1, LT1/O;->a:Ljava/util/LinkedHashSet;

    .line 28
    .line 29
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, LT1/I;

    .line 47
    .line 48
    invoke-interface {v3, v0}, LT1/I;->onResult(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    monitor-exit v1

    .line 55
    return-void

    .line 56
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    throw v0

    .line 58
    :cond_2
    iget-object v1, p0, LT1/M;->b:LT1/O;

    .line 59
    .line 60
    invoke-virtual {v0}, LT1/L;->getException()Ljava/lang/Throwable;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {v1, v0}, LT1/O;->a(LT1/O;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method
