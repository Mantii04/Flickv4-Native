.class public final LK1/g;
.super Ln1/g;
.source "SourceFile"


# virtual methods
.method public bind(Lr1/p;LK1/e;)V
    .locals 4

    .line 2
    invoke-virtual {p2}, LK1/e;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1, v1}, Lr1/n;->bindNull(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, LK1/e;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lr1/n;->bindString(ILjava/lang/String;)V

    .line 5
    :goto_0
    invoke-virtual {p2}, LK1/e;->getValue()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 6
    invoke-interface {p1, v1}, Lr1/n;->bindNull(I)V

    return-void

    .line 7
    :cond_1
    invoke-virtual {p2}, LK1/e;->getValue()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lr1/n;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Lr1/p;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, LK1/e;

    invoke-virtual {p0, p1, p2}, LK1/g;->bind(Lr1/p;LK1/e;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "INSERT OR REPLACE INTO `Preference` (`key`,`long_value`) VALUES (?,?)"

    .line 2
    .line 3
    return-object v0
.end method
