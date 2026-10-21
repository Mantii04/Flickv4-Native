.class final Lkotlinx/coroutines/flow/AbstractFlow$collect$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation runtime LA5/d;
    c = "kotlinx.coroutines.flow.AbstractFlow"
    f = "Flow.kt"
    l = {
        0xe6
    }
    m = "collect"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/AbstractFlow;->collect(LU5/c;Ly5/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public b:Lkotlinx/coroutines/flow/internal/SafeCollector;

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lkotlinx/coroutines/flow/AbstractFlow;

.field public j:I


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/AbstractFlow;Ly5/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/flow/AbstractFlow$collect$1;->f:Lkotlinx/coroutines/flow/AbstractFlow;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Ly5/c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lkotlinx/coroutines/flow/AbstractFlow$collect$1;->e:Ljava/lang/Object;

    iget p1, p0, Lkotlinx/coroutines/flow/AbstractFlow$collect$1;->j:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lkotlinx/coroutines/flow/AbstractFlow$collect$1;->j:I

    iget-object p1, p0, Lkotlinx/coroutines/flow/AbstractFlow$collect$1;->f:Lkotlinx/coroutines/flow/AbstractFlow;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lkotlinx/coroutines/flow/AbstractFlow;->collect(LU5/c;Ly5/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
