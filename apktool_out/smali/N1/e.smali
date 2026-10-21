.class public final LN1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LN1/c;


# instance fields
.field public final a:LL1/t;

.field public final b:Landroid/os/Handler;

.field public final c:LN1/d;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, LN1/e;->b:Landroid/os/Handler;

    .line 14
    .line 15
    new-instance v0, LN1/d;

    .line 16
    .line 17
    invoke-direct {v0, p0}, LN1/d;-><init>(LN1/e;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, LN1/e;->c:LN1/d;

    .line 21
    .line 22
    new-instance v0, LL1/t;

    .line 23
    .line 24
    invoke-direct {v0, p1}, LL1/t;-><init>(Ljava/util/concurrent/Executor;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, LN1/e;->a:LL1/t;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public getMainThreadExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    iget-object v0, p0, LN1/e;->c:LN1/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSerialTaskExecutor()LL1/t;
    .locals 1

    .line 2
    iget-object v0, p0, LN1/e;->a:LL1/t;

    return-object v0
.end method

.method public bridge synthetic getSerialTaskExecutor()LN1/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, LN1/e;->getSerialTaskExecutor()LL1/t;

    move-result-object v0

    return-object v0
.end method
