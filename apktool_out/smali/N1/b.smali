.class public abstract synthetic LN1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(LN1/c;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    check-cast p0, LN1/e;

    .line 2
    .line 3
    invoke-virtual {p0}, LN1/e;->getSerialTaskExecutor()LN1/a;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, LL1/t;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, LL1/t;->execute(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
