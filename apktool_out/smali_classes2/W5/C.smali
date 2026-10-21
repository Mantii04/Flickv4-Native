.class public LW5/C;
.super LR5/a;
.source "SourceFile"

# interfaces
.implements LA5/c;


# instance fields
.field public final j:Ly5/c;


# direct methods
.method public constructor <init>(Ly5/k;Ly5/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly5/k;",
            "Ly5/c;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0, v0}, LR5/a;-><init>(Ly5/k;ZZ)V

    .line 3
    .line 4
    .line 5
    iput-object p2, p0, LW5/C;->j:Ly5/c;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public afterCompletion(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, LW5/C;->j:Ly5/c;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Ly5/c;)Ly5/c;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {p1, v0}, LR5/D;->recoverResult(Ljava/lang/Object;Ly5/c;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v0, 0x0

    .line 12
    const/4 v2, 0x2

    .line 13
    invoke-static {v1, p1, v0, v2, v0}, LW5/j;->resumeCancellableWith$default(Ly5/c;Ljava/lang/Object;LH5/l;ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public afterResume(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, LW5/C;->j:Ly5/c;

    .line 2
    .line 3
    invoke-static {p1, v0}, LR5/D;->recoverResult(Ljava/lang/Object;Ly5/c;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Ly5/c;->resumeWith(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final getCallerFrame()LA5/c;
    .locals 2

    .line 1
    iget-object v0, p0, LW5/C;->j:Ly5/c;

    .line 2
    .line 3
    instance-of v1, v0, LA5/c;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, LA5/c;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public final isScopedCoroutine()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method
