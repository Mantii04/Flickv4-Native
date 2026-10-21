.class final Landroidx/datastore/core/SingleProcessDataStore$data$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements LH5/p;


# annotations
.annotation runtime LA5/d;
    c = "androidx.datastore.core.SingleProcessDataStore$data$1"
    f = "SingleProcessDataStore.kt"
    l = {
        0x75
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/datastore/core/SingleProcessDataStore;-><init>(LH5/a;LY/i;Ljava/util/List;LY/a;LR5/I;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "LH5/p;"
    }
.end annotation


# instance fields
.field public b:I

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Landroidx/datastore/core/SingleProcessDataStore;


# direct methods
.method public constructor <init>(Landroidx/datastore/core/SingleProcessDataStore;Ly5/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/datastore/core/SingleProcessDataStore$data$1;->f:Landroidx/datastore/core/SingleProcessDataStore;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILy5/c;)V

    .line 5
    .line 6
    .line 7
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
    new-instance v0, Landroidx/datastore/core/SingleProcessDataStore$data$1;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/datastore/core/SingleProcessDataStore$data$1;->f:Landroidx/datastore/core/SingleProcessDataStore;

    .line 4
    .line 5
    invoke-direct {v0, v1, p2}, Landroidx/datastore/core/SingleProcessDataStore$data$1;-><init>(Landroidx/datastore/core/SingleProcessDataStore;Ly5/c;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Landroidx/datastore/core/SingleProcessDataStore$data$1;->e:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public final invoke(LU5/c;Ly5/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LU5/c;",
            "Ly5/c;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/SingleProcessDataStore$data$1;->create(Ljava/lang/Object;Ly5/c;)Ly5/c;

    move-result-object p1

    check-cast p1, Landroidx/datastore/core/SingleProcessDataStore$data$1;

    sget-object p2, Lu5/j;->a:Lu5/j;

    invoke-virtual {p1, p2}, Landroidx/datastore/core/SingleProcessDataStore$data$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, LU5/c;

    check-cast p2, Ly5/c;

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/SingleProcessDataStore$data$1;->invoke(LU5/c;Ly5/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lz5/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Landroidx/datastore/core/SingleProcessDataStore$data$1;->b:I

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
    goto :goto_0

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
    iget-object p1, p0, Landroidx/datastore/core/SingleProcessDataStore$data$1;->e:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p1, LU5/c;

    .line 30
    .line 31
    iget-object v1, p0, Landroidx/datastore/core/SingleProcessDataStore$data$1;->f:Landroidx/datastore/core/SingleProcessDataStore;

    .line 32
    .line 33
    invoke-static {v1}, Landroidx/datastore/core/SingleProcessDataStore;->access$getDownstreamFlow$p(Landroidx/datastore/core/SingleProcessDataStore;)LU5/k;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 38
    .line 39
    invoke-virtual {v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, LY/p;

    .line 44
    .line 45
    instance-of v4, v3, LY/b;

    .line 46
    .line 47
    if-nez v4, :cond_2

    .line 48
    .line 49
    invoke-static {v1}, Landroidx/datastore/core/SingleProcessDataStore;->access$getActor$p(Landroidx/datastore/core/SingleProcessDataStore;)Landroidx/datastore/core/SimpleActor;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    new-instance v5, LY/k;

    .line 54
    .line 55
    invoke-direct {v5, v3}, LY/k;-><init>(LY/p;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v5}, Landroidx/datastore/core/SimpleActor;->offer(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    invoke-static {v1}, Landroidx/datastore/core/SingleProcessDataStore;->access$getDownstreamFlow$p(Landroidx/datastore/core/SingleProcessDataStore;)LU5/k;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    new-instance v4, Landroidx/datastore/core/SingleProcessDataStore$data$1$1;

    .line 66
    .line 67
    const/4 v5, 0x0

    .line 68
    invoke-direct {v4, v3, v5}, Landroidx/datastore/core/SingleProcessDataStore$data$1$1;-><init>(LY/p;Ly5/c;)V

    .line 69
    .line 70
    .line 71
    invoke-static {v1, v4}, LU5/d;->dropWhile(LU5/b;LH5/p;)LU5/b;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    new-instance v3, LY/o;

    .line 76
    .line 77
    invoke-direct {v3, v1}, LY/o;-><init>(LU5/b;)V

    .line 78
    .line 79
    .line 80
    iput v2, p0, Landroidx/datastore/core/SingleProcessDataStore$data$1;->b:I

    .line 81
    .line 82
    invoke-static {p1, v3, p0}, LU5/d;->emitAll(LU5/c;LU5/b;Ly5/c;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    if-ne p1, v0, :cond_3

    .line 87
    .line 88
    return-object v0

    .line 89
    :cond_3
    :goto_0
    sget-object p1, Lu5/j;->a:Lu5/j;

    .line 90
    .line 91
    return-object p1
.end method
