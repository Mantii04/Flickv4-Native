.class public final LR5/J0;
.super LR5/v0;
.source "SourceFile"


# instance fields
.field public final m:LR5/n;


# direct methods
.method public constructor <init>(LR5/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR5/n;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, LR5/v0;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LR5/J0;->m:LR5/n;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, LR5/J0;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lu5/j;->a:Lu5/j;

    return-object p1
.end method

.method public invoke(Ljava/lang/Throwable;)V
    .locals 2

    .line 2
    invoke-virtual {p0}, LR5/v0;->getJob()LR5/A0;

    move-result-object p1

    invoke-virtual {p1}, LR5/A0;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object p1

    .line 3
    instance-of v0, p1, LR5/A;

    iget-object v1, p0, LR5/J0;->m:LR5/n;

    if-eqz v0, :cond_0

    .line 4
    sget v0, Lkotlin/Result;->b:I

    check-cast p1, LR5/A;

    iget-object p1, p1, LR5/A;->a:Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/b;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, p1}, Ly5/c;->resumeWith(Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_0
    sget v0, Lkotlin/Result;->b:I

    invoke-static {p1}, LR5/B0;->unboxState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, p1}, Ly5/c;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
