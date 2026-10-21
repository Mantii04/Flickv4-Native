.class public final LR2/t;
.super LR2/D;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

.field public b:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;


# virtual methods
.method public build()LR2/E;
    .locals 3

    .line 1
    new-instance v0, LR2/u;

    .line 2
    .line 3
    iget-object v1, p0, LR2/t;->a:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    .line 4
    .line 5
    iget-object v2, p0, LR2/t;->b:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, LR2/u;-><init>(Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public setMobileSubtype(Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;)LR2/D;
    .locals 0

    .line 1
    iput-object p1, p0, LR2/t;->b:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    .line 2
    .line 3
    return-object p0
.end method

.method public setNetworkType(Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;)LR2/D;
    .locals 0

    .line 1
    iput-object p1, p0, LR2/t;->a:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    .line 2
    .line 3
    return-object p0
.end method
