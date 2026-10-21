.class public final LR2/q;
.super LR2/A;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Ljava/lang/Long;

.field public c:LR2/x;

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/String;

.field public f:Ljava/util/List;

.field public g:Lcom/google/android/datatransport/cct/internal/QosTier;


# virtual methods
.method public build()LR2/B;
    .locals 12

    .line 1
    iget-object v0, p0, LR2/q;->a:Ljava/lang/Long;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, " requestTimeMs"

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, ""

    .line 9
    .line 10
    :goto_0
    iget-object v1, p0, LR2/q;->b:Ljava/lang/Long;

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    const-string v1, " requestUptimeMs"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    new-instance v2, LR2/r;

    .line 27
    .line 28
    iget-object v0, p0, LR2/q;->a:Ljava/lang/Long;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 31
    .line 32
    .line 33
    move-result-wide v3

    .line 34
    iget-object v0, p0, LR2/q;->b:Ljava/lang/Long;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 37
    .line 38
    .line 39
    move-result-wide v5

    .line 40
    iget-object v7, p0, LR2/q;->c:LR2/x;

    .line 41
    .line 42
    iget-object v8, p0, LR2/q;->d:Ljava/lang/Integer;

    .line 43
    .line 44
    iget-object v9, p0, LR2/q;->e:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v10, p0, LR2/q;->f:Ljava/util/List;

    .line 47
    .line 48
    iget-object v11, p0, LR2/q;->g:Lcom/google/android/datatransport/cct/internal/QosTier;

    .line 49
    .line 50
    invoke-direct/range {v2 .. v11}, LR2/r;-><init>(JJLR2/x;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Lcom/google/android/datatransport/cct/internal/QosTier;)V

    .line 51
    .line 52
    .line 53
    return-object v2

    .line 54
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string v2, "Missing required properties:"

    .line 57
    .line 58
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v1
.end method

.method public setClientInfo(LR2/x;)LR2/A;
    .locals 0

    .line 1
    iput-object p1, p0, LR2/q;->c:LR2/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public setLogEvents(Ljava/util/List;)LR2/A;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LR2/z;",
            ">;)",
            "LR2/A;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, LR2/q;->f:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public setQosTier(Lcom/google/android/datatransport/cct/internal/QosTier;)LR2/A;
    .locals 0

    .line 1
    iput-object p1, p0, LR2/q;->g:Lcom/google/android/datatransport/cct/internal/QosTier;

    .line 2
    .line 3
    return-object p0
.end method

.method public setRequestTimeMs(J)LR2/A;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, LR2/q;->a:Ljava/lang/Long;

    .line 6
    .line 7
    return-object p0
.end method

.method public setRequestUptimeMs(J)LR2/A;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, LR2/q;->b:Ljava/lang/Long;

    .line 6
    .line 7
    return-object p0
.end method
