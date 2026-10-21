.class public abstract LS2/C;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static builder()LS2/B;
    .locals 1

    .line 1
    new-instance v0, LS2/k;

    .line 2
    .line 3
    invoke-direct {v0}, LS2/B;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public abstract getEncoding()LP2/b;
.end method

.method public getPayload()[B
    .locals 2

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, LS2/l;

    .line 3
    .line 4
    iget-object v1, v0, LS2/l;->c:LP2/c;

    .line 5
    .line 6
    invoke-virtual {v1}, LP2/c;->getPayload()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object v0, v0, LS2/l;->d:LP2/d;

    .line 11
    .line 12
    invoke-interface {v0, v1}, LP2/d;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, [B

    .line 17
    .line 18
    return-object v0
.end method

.method public abstract getTransportContext()LS2/E;
.end method

.method public abstract getTransportName()Ljava/lang/String;
.end method
