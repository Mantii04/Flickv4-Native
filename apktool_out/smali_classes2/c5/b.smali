.class public final Lc5/b;
.super Lflix/com/vision/processors/english/m;
.source "SourceFile"


# instance fields
.field public final a:Lflix/com/vision/models/Movie;

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lflix/com/vision/models/Movie;LU4/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lflix/com/vision/processors/english/m;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lc5/b;->a:Lflix/com/vision/models/Movie;

    .line 5
    .line 6
    iput-object p3, p0, Lflix/com/vision/processors/english/m;->callBack:LU4/f;

    .line 7
    .line 8
    new-instance p1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string p1, "https://moflix-stream.xyz"

    .line 14
    .line 15
    iput-object p1, p0, Lflix/com/vision/processors/english/m;->domain:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public process(II)V
    .locals 1

    .line 1
    iput p1, p0, Lc5/b;->b:I

    .line 2
    .line 3
    iput p2, p0, Lc5/b;->c:I

    .line 4
    .line 5
    new-instance p1, Lc5/a;

    .line 6
    .line 7
    invoke-direct {p1, p0}, Lc5/a;-><init>(Lc5/b;)V

    .line 8
    .line 9
    .line 10
    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    new-array v0, v0, [Ljava/lang/Void;

    .line 14
    .line 15
    invoke-virtual {p1, p2, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 16
    .line 17
    .line 18
    return-void
.end method
