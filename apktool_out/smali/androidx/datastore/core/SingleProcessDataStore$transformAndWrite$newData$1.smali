.class final Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$newData$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements LH5/p;


# annotations
.annotation runtime LA5/d;
    c = "androidx.datastore.core.SingleProcessDataStore$transformAndWrite$newData$1"
    f = "SingleProcessDataStore.kt"
    l = {
        0x192
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "LH5/p;"
    }
.end annotation


# instance fields
.field public b:I

.field public final synthetic e:LH5/p;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LH5/p;Ljava/lang/Object;Ly5/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$newData$1;->e:LH5/p;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$newData$1;->f:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILy5/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly5/c;)Ly5/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ly5/c;",
            ")",
            "Ly5/c;"
        }
    .end annotation

    .line 1
    new-instance p1, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$newData$1;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$newData$1;->e:LH5/p;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$newData$1;->f:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$newData$1;-><init>(LH5/p;Ljava/lang/Object;Ly5/c;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public final invoke(LR5/I;Ly5/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR5/I;",
            "Ly5/c;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$newData$1;->create(Ljava/lang/Object;Ly5/c;)Ly5/c;

    move-result-object p1

    check-cast p1, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$newData$1;

    sget-object p2, Lu5/j;->a:Lu5/j;

    invoke-virtual {p1, p2}, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$newData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, LR5/I;

    check-cast p2, Ly5/c;

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$newData$1;->invoke(LR5/I;Ly5/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lz5/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$newData$1;->b:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/b;->throwOnFailure(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/b;->throwOnFailure(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iput v2, p0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$newData$1;->b:I

    .line 28
    .line 29
    iget-object p1, p0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$newData$1;->e:LH5/p;

    .line 30
    .line 31
    iget-object v1, p0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$newData$1;->f:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-interface {p1, v1, p0}, LH5/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-ne p1, v0, :cond_2

    .line 38
    .line 39
    return-object v0

    .line 40
    :cond_2
    return-object p1
.end method
