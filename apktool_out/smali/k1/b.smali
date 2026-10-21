.class public final Lk1/b;
.super Lk1/d;
.source "SourceFile"


# instance fields
.field public final b:Landroid/adservices/measurement/MeasurementManager;


# direct methods
.method public constructor <init>(Landroid/adservices/measurement/MeasurementManager;)V
    .locals 1

    const-string v0, "mMeasurementManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lk1/d;-><init>()V

    .line 2
    iput-object p1, p0, Lk1/b;->b:Landroid/adservices/measurement/MeasurementManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Landroidx/media3/exoplayer/audio/s;->d()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "context.getSystemService\u2026:class.java\n            )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/media3/exoplayer/audio/s;->b(Ljava/lang/Object;)Landroid/adservices/measurement/MeasurementManager;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1}, Lk1/b;-><init>(Landroid/adservices/measurement/MeasurementManager;)V

    return-void
.end method

.method public static final access$convertDeletionRequest(Lk1/b;Lk1/a;)Landroid/adservices/measurement/DeletionRequest;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroidx/media3/exoplayer/audio/s;->m()V

    .line 5
    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    throw p0
.end method

.method public static final access$convertWebSourceRequest(Lk1/b;Lk1/e;)Landroid/adservices/measurement/WebSourceRegistrationRequest;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroidx/media3/exoplayer/audio/s;->n()V

    .line 5
    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    throw p0
.end method

.method public static final access$convertWebTriggerRequest(Lk1/b;Lk1/f;)Landroid/adservices/measurement/WebTriggerRegistrationRequest;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroidx/media3/exoplayer/audio/s;->e()V

    .line 5
    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    throw p0
.end method

.method public static final synthetic access$getMMeasurementManager$p(Lk1/b;)Landroid/adservices/measurement/MeasurementManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lk1/b;->b:Landroid/adservices/measurement/MeasurementManager;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public deleteRegistrations(Lk1/a;Ly5/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk1/a;",
            "Ly5/c;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, LR5/n;

    .line 2
    .line 3
    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Ly5/c;)Ly5/c;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v0, v1, v2}, LR5/n;-><init>(Ly5/c;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, LR5/n;->initCancellability()V

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Lk1/b;->access$getMMeasurementManager$p(Lk1/b;)Landroid/adservices/measurement/MeasurementManager;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {p0, p1}, Lk1/b;->access$convertDeletionRequest(Lk1/b;Lk1/a;)Landroid/adservices/measurement/DeletionRequest;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance v2, Landroidx/media3/exoplayer/dash/offline/a;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-direct {v2, v3}, Landroidx/media3/exoplayer/dash/offline/a;-><init>(I)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Landroidx/core/os/a;->asOutcomeReceiver(Ly5/c;)Landroid/os/OutcomeReceiver;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-static {v1, p1, v2, v3}, Landroidx/media3/exoplayer/audio/s;->f(Landroid/adservices/measurement/MeasurementManager;Landroid/adservices/measurement/DeletionRequest;Landroidx/media3/exoplayer/dash/offline/a;Landroid/os/OutcomeReceiver;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, LR5/n;->getResult()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {}, Lz5/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-ne p1, v0, :cond_0

    .line 44
    .line 45
    invoke-static {p2}, LA5/f;->probeCoroutineSuspended(Ly5/c;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-static {}, Lz5/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    if-ne p1, p2, :cond_1

    .line 53
    .line 54
    return-object p1

    .line 55
    :cond_1
    sget-object p1, Lu5/j;->a:Lu5/j;

    .line 56
    .line 57
    return-object p1
.end method

.method public getMeasurementApiStatus(Ly5/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly5/c;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, LR5/n;

    .line 2
    .line 3
    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Ly5/c;)Ly5/c;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v0, v1, v2}, LR5/n;-><init>(Ly5/c;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, LR5/n;->initCancellability()V

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Lk1/b;->access$getMMeasurementManager$p(Lk1/b;)Landroid/adservices/measurement/MeasurementManager;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Landroidx/media3/exoplayer/dash/offline/a;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-direct {v2, v3}, Landroidx/media3/exoplayer/dash/offline/a;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Landroidx/core/os/a;->asOutcomeReceiver(Ly5/c;)Landroid/os/OutcomeReceiver;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-static {v1, v2, v3}, Landroidx/media3/exoplayer/audio/s;->k(Landroid/adservices/measurement/MeasurementManager;Landroidx/media3/exoplayer/dash/offline/a;Landroid/os/OutcomeReceiver;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, LR5/n;->getResult()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {}, Lz5/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-ne v0, v1, :cond_0

    .line 40
    .line 41
    invoke-static {p1}, LA5/f;->probeCoroutineSuspended(Ly5/c;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-object v0
.end method

.method public registerSource(Landroid/net/Uri;Landroid/view/InputEvent;Ly5/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/view/InputEvent;",
            "Ly5/c;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, LR5/n;

    .line 2
    .line 3
    invoke-static {p3}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Ly5/c;)Ly5/c;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v0, v1, v2}, LR5/n;-><init>(Ly5/c;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, LR5/n;->initCancellability()V

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Lk1/b;->access$getMMeasurementManager$p(Lk1/b;)Landroid/adservices/measurement/MeasurementManager;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Landroidx/media3/exoplayer/dash/offline/a;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-direct {v2, v3}, Landroidx/media3/exoplayer/dash/offline/a;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Landroidx/core/os/a;->asOutcomeReceiver(Ly5/c;)Landroid/os/OutcomeReceiver;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-static {v1, p1, p2, v2, v3}, Landroidx/media3/exoplayer/audio/s;->i(Landroid/adservices/measurement/MeasurementManager;Landroid/net/Uri;Landroid/view/InputEvent;Landroidx/media3/exoplayer/dash/offline/a;Landroid/os/OutcomeReceiver;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, LR5/n;->getResult()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {}, Lz5/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    if-ne p1, p2, :cond_0

    .line 40
    .line 41
    invoke-static {p3}, LA5/f;->probeCoroutineSuspended(Ly5/c;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-static {}, Lz5/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    if-ne p1, p2, :cond_1

    .line 49
    .line 50
    return-object p1

    .line 51
    :cond_1
    sget-object p1, Lu5/j;->a:Lu5/j;

    .line 52
    .line 53
    return-object p1
.end method

.method public registerTrigger(Landroid/net/Uri;Ly5/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ly5/c;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, LR5/n;

    .line 2
    .line 3
    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Ly5/c;)Ly5/c;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v0, v1, v2}, LR5/n;-><init>(Ly5/c;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, LR5/n;->initCancellability()V

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Lk1/b;->access$getMMeasurementManager$p(Lk1/b;)Landroid/adservices/measurement/MeasurementManager;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Landroidx/media3/exoplayer/dash/offline/a;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-direct {v2, v3}, Landroidx/media3/exoplayer/dash/offline/a;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Landroidx/core/os/a;->asOutcomeReceiver(Ly5/c;)Landroid/os/OutcomeReceiver;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-static {v1, p1, v2, v3}, Landroidx/media3/exoplayer/audio/s;->j(Landroid/adservices/measurement/MeasurementManager;Landroid/net/Uri;Landroidx/media3/exoplayer/dash/offline/a;Landroid/os/OutcomeReceiver;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, LR5/n;->getResult()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {}, Lz5/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-ne p1, v0, :cond_0

    .line 40
    .line 41
    invoke-static {p2}, LA5/f;->probeCoroutineSuspended(Ly5/c;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-static {}, Lz5/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    if-ne p1, p2, :cond_1

    .line 49
    .line 50
    return-object p1

    .line 51
    :cond_1
    sget-object p1, Lu5/j;->a:Lu5/j;

    .line 52
    .line 53
    return-object p1
.end method

.method public registerWebSource(Lk1/e;Ly5/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk1/e;",
            "Ly5/c;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, LR5/n;

    .line 2
    .line 3
    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Ly5/c;)Ly5/c;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v0, v1, v2}, LR5/n;-><init>(Ly5/c;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, LR5/n;->initCancellability()V

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Lk1/b;->access$getMMeasurementManager$p(Lk1/b;)Landroid/adservices/measurement/MeasurementManager;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {p0, p1}, Lk1/b;->access$convertWebSourceRequest(Lk1/b;Lk1/e;)Landroid/adservices/measurement/WebSourceRegistrationRequest;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance v2, Landroidx/media3/exoplayer/dash/offline/a;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-direct {v2, v3}, Landroidx/media3/exoplayer/dash/offline/a;-><init>(I)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Landroidx/core/os/a;->asOutcomeReceiver(Ly5/c;)Landroid/os/OutcomeReceiver;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-static {v1, p1, v2, v3}, Landroidx/media3/exoplayer/audio/s;->g(Landroid/adservices/measurement/MeasurementManager;Landroid/adservices/measurement/WebSourceRegistrationRequest;Landroidx/media3/exoplayer/dash/offline/a;Landroid/os/OutcomeReceiver;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, LR5/n;->getResult()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {}, Lz5/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-ne p1, v0, :cond_0

    .line 44
    .line 45
    invoke-static {p2}, LA5/f;->probeCoroutineSuspended(Ly5/c;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-static {}, Lz5/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    if-ne p1, p2, :cond_1

    .line 53
    .line 54
    return-object p1

    .line 55
    :cond_1
    sget-object p1, Lu5/j;->a:Lu5/j;

    .line 56
    .line 57
    return-object p1
.end method

.method public registerWebTrigger(Lk1/f;Ly5/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk1/f;",
            "Ly5/c;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, LR5/n;

    .line 2
    .line 3
    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Ly5/c;)Ly5/c;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v0, v1, v2}, LR5/n;-><init>(Ly5/c;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, LR5/n;->initCancellability()V

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Lk1/b;->access$getMMeasurementManager$p(Lk1/b;)Landroid/adservices/measurement/MeasurementManager;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {p0, p1}, Lk1/b;->access$convertWebTriggerRequest(Lk1/b;Lk1/f;)Landroid/adservices/measurement/WebTriggerRegistrationRequest;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance v2, Landroidx/media3/exoplayer/dash/offline/a;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-direct {v2, v3}, Landroidx/media3/exoplayer/dash/offline/a;-><init>(I)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Landroidx/core/os/a;->asOutcomeReceiver(Ly5/c;)Landroid/os/OutcomeReceiver;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-static {v1, p1, v2, v3}, Landroidx/media3/exoplayer/audio/s;->h(Landroid/adservices/measurement/MeasurementManager;Landroid/adservices/measurement/WebTriggerRegistrationRequest;Landroidx/media3/exoplayer/dash/offline/a;Landroid/os/OutcomeReceiver;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, LR5/n;->getResult()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {}, Lz5/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-ne p1, v0, :cond_0

    .line 44
    .line 45
    invoke-static {p2}, LA5/f;->probeCoroutineSuspended(Ly5/c;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-static {}, Lz5/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    if-ne p1, p2, :cond_1

    .line 53
    .line 54
    return-object p1

    .line 55
    :cond_1
    sget-object p1, Lu5/j;->a:Lu5/j;

    .line 56
    .line 57
    return-object p1
.end method
