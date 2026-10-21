.class public final LL1/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final p:Ljava/lang/String;


# instance fields
.field public final b:LM1/g;

.field public final e:Landroid/content/Context;

.field public final f:LK1/E;

.field public final j:LB1/r;

.field public final m:LB1/j;

.field public final n:LN1/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "WorkForegroundRunnable"

    .line 2
    .line 3
    invoke-static {v0}, LB1/t;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, LL1/A;->p:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LK1/E;LB1/r;LB1/j;LN1/c;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LambdaLast"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, LM1/g;->create()LM1/g;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, LL1/A;->b:LM1/g;

    .line 9
    .line 10
    iput-object p1, p0, LL1/A;->e:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p2, p0, LL1/A;->f:LK1/E;

    .line 13
    .line 14
    iput-object p3, p0, LL1/A;->j:LB1/r;

    .line 15
    .line 16
    iput-object p4, p0, LL1/A;->m:LB1/j;

    .line 17
    .line 18
    iput-object p5, p0, LL1/A;->n:LN1/c;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public getFuture()LV3/F;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LV3/F;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LL1/A;->b:LM1/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public run()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnsafeExperimentalUsageError"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LL1/A;->f:LK1/E;

    .line 2
    .line 3
    iget-boolean v0, v0, LK1/E;->q:Z

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v1, 0x1f

    .line 10
    .line 11
    if-lt v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, LM1/g;->create()LM1/g;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, LL1/A;->n:LN1/c;

    .line 19
    .line 20
    check-cast v1, LN1/e;

    .line 21
    .line 22
    invoke-virtual {v1}, LN1/e;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    new-instance v3, LA4/n;

    .line 27
    .line 28
    const/16 v4, 0xa

    .line 29
    .line 30
    invoke-direct {v3, v4, p0, v0}, LA4/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 34
    .line 35
    .line 36
    new-instance v2, LL1/z;

    .line 37
    .line 38
    invoke-direct {v2, p0, v0}, LL1/z;-><init>(LL1/A;LM1/g;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, LN1/e;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v2, v1}, Landroidx/work/impl/utils/futures/b;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    :goto_0
    iget-object v0, p0, LL1/A;->b:LM1/g;

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    invoke-virtual {v0, v1}, LM1/g;->set(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    return-void
.end method
