.class public abstract LR2/B;
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

.method public static builder()LR2/A;
    .locals 1

    .line 1
    new-instance v0, LR2/q;

    .line 2
    .line 3
    invoke-direct {v0}, LR2/A;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public abstract getClientInfo()LR2/x;
.end method

.method public abstract getLogEvents()Ljava/util/List;
    .annotation runtime Lcom/google/firebase/encoders/annotations/Encodable$Field;
        name = "logEvent"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LR2/z;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLogSource()Ljava/lang/Integer;
.end method

.method public abstract getLogSourceName()Ljava/lang/String;
.end method

.method public abstract getQosTier()Lcom/google/android/datatransport/cct/internal/QosTier;
.end method

.method public abstract getRequestTimeMs()J
.end method

.method public abstract getRequestUptimeMs()J
.end method
