.class public abstract LZ2/f;
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
.method public abstract build()LZ2/g;
.end method

.method public abstract setDelta(J)LZ2/f;
.end method

.method public abstract setFlags(Ljava/util/Set;)LZ2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$Flag;",
            ">;)",
            "LZ2/f;"
        }
    .end annotation
.end method

.method public abstract setMaxAllowedDelay(J)LZ2/f;
.end method
