.class public final LT5/o;
.super LT5/d;
.source "SourceFile"

# interfaces
.implements LT5/p;


# direct methods
.method public constructor <init>(Ly5/k;LT5/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly5/k;",
            "LT5/c;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, p2, v0, v0}, LT5/d;-><init>(Ly5/k;LT5/c;ZZ)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public isActive()Z
    .locals 1

    .line 1
    invoke-super {p0}, LR5/a;->isActive()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public onCancelled(Ljava/lang/Throwable;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, LT5/d;->get_channel()LT5/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, LT5/s;->close(Ljava/lang/Throwable;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, LR5/a;->getContext()Ly5/k;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-static {p2, p1}, LR5/G;->handleCoroutineException(Ly5/k;Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public bridge synthetic onCompleted(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lu5/j;

    invoke-virtual {p0, p1}, LT5/o;->onCompleted(Lu5/j;)V

    return-void
.end method

.method public onCompleted(Lu5/j;)V
    .locals 2

    .line 2
    invoke-virtual {p0}, LT5/d;->get_channel()LT5/c;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, LT5/r;->close$default(LT5/s;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    return-void
.end method
