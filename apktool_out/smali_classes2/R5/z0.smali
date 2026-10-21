.class public final LR5/z0;
.super LW5/q;
.source "SourceFile"


# instance fields
.field public final synthetic d:LR5/A0;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;LR5/A0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p2, p0, LR5/z0;->d:LR5/A0;

    .line 2
    .line 3
    iput-object p3, p0, LR5/z0;->e:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0, p1}, LW5/q;-><init>(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public bridge synthetic prepare(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    invoke-virtual {p0, p1}, LR5/z0;->prepare(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public prepare(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Ljava/lang/Object;
    .locals 1

    .line 2
    iget-object p1, p0, LR5/z0;->d:LR5/A0;

    invoke-virtual {p1}, LR5/A0;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, LR5/z0;->e:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-static {}, LW5/p;->getCONDITION_FALSE()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
