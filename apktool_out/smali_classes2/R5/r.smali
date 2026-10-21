.class public final LR5/r;
.super LR5/r0;
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
    invoke-direct {p0}, LR5/r0;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LR5/r;->m:LR5/n;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, LR5/r;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lu5/j;->a:Lu5/j;

    return-object p1
.end method

.method public invoke(Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, LR5/v0;->getJob()LR5/A0;

    move-result-object p1

    iget-object v0, p0, LR5/r;->m:LR5/n;

    invoke-virtual {v0, p1}, LR5/n;->getContinuationCancellationCause(LR5/q0;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, LR5/n;->parentCancelled$kotlinx_coroutines_core(Ljava/lang/Throwable;)V

    return-void
.end method
