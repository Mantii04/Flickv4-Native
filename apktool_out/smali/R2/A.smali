.class public abstract LR2/A;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract build()LR2/B;
.end method

.method public abstract setClientInfo(LR2/x;)LR2/A;
.end method

.method public abstract setLogEvents(Ljava/util/List;)LR2/A;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LR2/z;",
            ">;)",
            "LR2/A;"
        }
    .end annotation
.end method

.method public abstract setQosTier(Lcom/google/android/datatransport/cct/internal/QosTier;)LR2/A;
.end method

.method public abstract setRequestTimeMs(J)LR2/A;
.end method

.method public abstract setRequestUptimeMs(J)LR2/A;
.end method

.method public setSource(I)LR2/A;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    move-object v0, p0

    check-cast v0, LR2/q;

    .line 2
    iput-object p1, v0, LR2/q;->d:Ljava/lang/Integer;

    return-object v0
.end method

.method public setSource(Ljava/lang/String;)LR2/A;
    .locals 1

    .line 3
    move-object v0, p0

    check-cast v0, LR2/q;

    .line 4
    iput-object p1, v0, LR2/q;->e:Ljava/lang/String;

    return-object v0
.end method
