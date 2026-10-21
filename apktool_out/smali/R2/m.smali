.class public final LR2/m;
.super LR2/w;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;

.field public b:LR2/b;


# virtual methods
.method public build()LR2/x;
    .locals 3

    .line 1
    new-instance v0, LR2/n;

    .line 2
    .line 3
    iget-object v1, p0, LR2/m;->a:Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;

    .line 4
    .line 5
    iget-object v2, p0, LR2/m;->b:LR2/b;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, LR2/n;-><init>(Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;LR2/b;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public setAndroidClientInfo(LR2/b;)LR2/w;
    .locals 0

    .line 1
    iput-object p1, p0, LR2/m;->b:LR2/b;

    .line 2
    .line 3
    return-object p0
.end method

.method public setClientType(Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;)LR2/w;
    .locals 0

    .line 1
    iput-object p1, p0, LR2/m;->a:Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;

    .line 2
    .line 3
    return-object p0
.end method
