.class public final LK1/c;
.super Ln1/g;
.source "SourceFile"


# virtual methods
.method public bind(Lr1/p;LK1/a;)V
    .locals 2

    .line 2
    invoke-virtual {p2}, LK1/a;->getWorkSpecId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1, v1}, Lr1/n;->bindNull(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, LK1/a;->getWorkSpecId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lr1/n;->bindString(ILjava/lang/String;)V

    .line 5
    :goto_0
    invoke-virtual {p2}, LK1/a;->getPrerequisiteId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 6
    invoke-interface {p1, v1}, Lr1/n;->bindNull(I)V

    return-void

    .line 7
    :cond_1
    invoke-virtual {p2}, LK1/a;->getPrerequisiteId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Lr1/n;->bindString(ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic bind(Lr1/p;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, LK1/a;

    invoke-virtual {p0, p1, p2}, LK1/c;->bind(Lr1/p;LK1/a;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "INSERT OR IGNORE INTO `Dependency` (`work_spec_id`,`prerequisite_id`) VALUES (?,?)"

    .line 2
    .line 3
    return-object v0
.end method
