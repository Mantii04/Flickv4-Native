.class public abstract LT2/i;
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

.method public static fatalError()LT2/i;
    .locals 4

    .line 1
    new-instance v0, LT2/c;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;->f:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    .line 4
    .line 5
    const-wide/16 v2, -0x1

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, v3}, LT2/c;-><init>(Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;J)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static invalidPayload()LT2/i;
    .locals 4

    .line 1
    new-instance v0, LT2/c;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;->j:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    .line 4
    .line 5
    const-wide/16 v2, -0x1

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, v3}, LT2/c;-><init>(Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;J)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static ok(J)LT2/i;
    .locals 2

    .line 1
    new-instance v0, LT2/c;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;->b:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    .line 4
    .line 5
    invoke-direct {v0, v1, p0, p1}, LT2/c;-><init>(Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;J)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static transientError()LT2/i;
    .locals 4

    .line 1
    new-instance v0, LT2/c;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;->e:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    .line 4
    .line 5
    const-wide/16 v2, -0x1

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, v3}, LT2/c;-><init>(Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;J)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method


# virtual methods
.method public abstract getNextRequestWaitMillis()J
.end method

.method public abstract getStatus()Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;
.end method
