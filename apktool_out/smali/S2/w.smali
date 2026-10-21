.class public final LS2/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU2/b;


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

.method public static create()LS2/w;
    .locals 1

    .line 1
    sget-object v0, LS2/v;->a:LS2/w;

    .line 2
    .line 3
    return-object v0
.end method

.method public static executor()Ljava/util/concurrent/Executor;
    .locals 2

    .line 1
    new-instance v0, LS2/A;

    .line 2
    .line 3
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, LS2/A;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 11
    .line 12
    invoke-static {v0, v1}, LU2/d;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/util/concurrent/Executor;

    .line 17
    .line 18
    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, LS2/w;->get()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/concurrent/Executor;
    .locals 1

    .line 2
    invoke-static {}, LS2/w;->executor()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method
