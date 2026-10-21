.class public abstract LS2/x;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static sendBlocking(LP2/e;Lcom/google/android/datatransport/Priority;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DiscouragedApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LP2/e;",
            "Lcom/google/android/datatransport/Priority;",
            ")V"
        }
    .end annotation

    .line 1
    instance-of v0, p0, LS2/G;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, LS2/G;

    .line 6
    .line 7
    iget-object p0, p0, LS2/G;->a:LS2/E;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, LS2/E;->withPriority(Lcom/google/android/datatransport/Priority;)LS2/E;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {}, LS2/H;->getInstance()LS2/H;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, LS2/H;->getUploader()LZ2/m;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/4 v0, 0x1

    .line 22
    invoke-virtual {p1, p0, v0}, LZ2/m;->logAndUpdateState(LS2/E;I)LT2/i;

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    const-string p1, "ForcedSender"

    .line 27
    .line 28
    const-string v0, "Expected instance of `TransportImpl`, got `%s`."

    .line 29
    .line 30
    invoke-static {p1, v0, p0}, LW2/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
