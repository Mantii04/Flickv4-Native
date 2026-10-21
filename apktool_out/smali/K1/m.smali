.class public final LK1/m;
.super Ln1/g;
.source "SourceFile"


# virtual methods
.method public bind(Lr1/p;LK1/j;)V
    .locals 3

    .line 2
    iget-object v0, p2, LK1/j;->a:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1, v1}, Lr1/n;->bindNull(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1, v1, v0}, Lr1/n;->bindString(ILjava/lang/String;)V

    .line 5
    :goto_0
    invoke-virtual {p2}, LK1/j;->getGeneration()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Lr1/n;->bindLong(IJ)V

    .line 6
    iget p2, p2, LK1/j;->c:I

    int-to-long v0, p2

    const/4 p2, 0x3

    invoke-interface {p1, p2, v0, v1}, Lr1/n;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Lr1/p;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, LK1/j;

    invoke-virtual {p0, p1, p2}, LK1/m;->bind(Lr1/p;LK1/j;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`generation`,`system_id`) VALUES (?,?,?)"

    .line 2
    .line 3
    return-object v0
.end method
