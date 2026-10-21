.class public final Ln1/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ln1/u;

.field public final c:Ljava/util/concurrent/Executor;

.field public d:I

.field public e:Ln1/r;

.field public f:Ln1/m;

.field public final g:Ln1/x;

.field public final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final i:Ln1/v;

.field public final j:Ln1/v;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Ln1/u;Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "name"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "serviceIntent"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "invalidationTracker"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "executor"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p2, p0, Ln1/z;->a:Ljava/lang/String;

    .line 30
    .line 31
    iput-object p4, p0, Ln1/z;->b:Ln1/u;

    .line 32
    .line 33
    iput-object p5, p0, Ln1/z;->c:Ljava/util/concurrent/Executor;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    new-instance p2, Ln1/x;

    .line 40
    .line 41
    invoke-direct {p2, p0}, Ln1/x;-><init>(Ln1/z;)V

    .line 42
    .line 43
    .line 44
    iput-object p2, p0, Ln1/z;->g:Ln1/x;

    .line 45
    .line 46
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    .line 48
    const/4 p5, 0x0

    .line 49
    invoke-direct {p2, p5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 50
    .line 51
    .line 52
    iput-object p2, p0, Ln1/z;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    .line 54
    new-instance p2, Ln1/y;

    .line 55
    .line 56
    invoke-direct {p2, p0}, Ln1/y;-><init>(Ln1/z;)V

    .line 57
    .line 58
    .line 59
    new-instance v0, Ln1/v;

    .line 60
    .line 61
    const/4 v1, 0x0

    .line 62
    invoke-direct {v0, p0, v1}, Ln1/v;-><init>(Ln1/z;I)V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Ln1/z;->i:Ln1/v;

    .line 66
    .line 67
    new-instance v0, Ln1/v;

    .line 68
    .line 69
    const/4 v1, 0x1

    .line 70
    invoke-direct {v0, p0, v1}, Ln1/v;-><init>(Ln1/z;I)V

    .line 71
    .line 72
    .line 73
    iput-object v0, p0, Ln1/z;->j:Ln1/v;

    .line 74
    .line 75
    invoke-virtual {p4}, Ln1/u;->getTableIdLookup$room_runtime_release()Ljava/util/Map;

    .line 76
    .line 77
    .line 78
    move-result-object p4

    .line 79
    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 80
    .line 81
    .line 82
    move-result-object p4

    .line 83
    new-array p5, p5, [Ljava/lang/String;

    .line 84
    .line 85
    invoke-interface {p4, p5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p4

    .line 89
    const-string p5, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    .line 90
    .line 91
    invoke-static {p4, p5}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    check-cast p4, [Ljava/lang/String;

    .line 95
    .line 96
    new-instance p5, Ln1/w;

    .line 97
    .line 98
    invoke-direct {p5, p0, p4}, Ln1/w;-><init>(Ln1/z;[Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, p5}, Ln1/z;->setObserver(Ln1/r;)V

    .line 102
    .line 103
    .line 104
    const/4 p4, 0x1

    .line 105
    invoke-virtual {p1, p3, p2, p4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 106
    .line 107
    .line 108
    return-void
.end method


# virtual methods
.method public final getClientId()I
    .locals 1

    .line 1
    iget v0, p0, Ln1/z;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public final getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    iget-object v0, p0, Ln1/z;->c:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getInvalidationTracker()Ln1/u;
    .locals 1

    .line 1
    iget-object v0, p0, Ln1/z;->b:Ln1/u;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getObserver()Ln1/r;
    .locals 1

    .line 1
    iget-object v0, p0, Ln1/z;->e:Ln1/r;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "observer"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/j;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getRemoveObserverRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 1
    iget-object v0, p0, Ln1/z;->j:Ln1/v;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getService()Ln1/m;
    .locals 1

    .line 1
    iget-object v0, p0, Ln1/z;->f:Ln1/m;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSetUpRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 1
    iget-object v0, p0, Ln1/z;->i:Ln1/v;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStopped()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 1
    iget-object v0, p0, Ln1/z;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setObserver(Ln1/r;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Ln1/z;->e:Ln1/r;

    .line 7
    .line 8
    return-void
.end method

.method public final setService(Ln1/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln1/z;->f:Ln1/m;

    .line 2
    .line 3
    return-void
.end method
