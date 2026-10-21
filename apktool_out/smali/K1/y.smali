.class public final LK1/y;
.super Ln1/g;
.source "SourceFile"


# virtual methods
.method public bind(Lr1/p;LK1/w;)V
    .locals 0

    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public synthetic bind(Lr1/p;Ljava/lang/Object;)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p0, p1, p2}, LK1/y;->bind(Lr1/p;LK1/w;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "INSERT OR REPLACE INTO `WorkProgress` (`work_spec_id`,`progress`) VALUES (?,?)"

    .line 2
    .line 3
    return-object v0
.end method
