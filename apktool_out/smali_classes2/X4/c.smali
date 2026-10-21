.class public final LX4/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:LU4/a;

.field public c:Lflix/com/vision/models/adult/AdultLink;


# direct methods
.method public constructor <init>(Landroid/content/Context;LU4/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, LX4/c;->b:LU4/a;

    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, LX4/c;->a:Ljava/util/ArrayList;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public addLink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lflix/com/vision/models/adult/AdultLink;

    .line 2
    .line 3
    invoke-direct {v0}, Lflix/com/vision/models/adult/AdultLink;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, v0, Lflix/com/vision/models/adult/AdultLink;->label:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p1, v0, Lflix/com/vision/models/adult/AdultLink;->stream_url:Ljava/lang/String;

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    const-string p1, "1080"

    .line 13
    .line 14
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iput-object v0, p0, LX4/c;->c:Lflix/com/vision/models/adult/AdultLink;

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object p1, p0, LX4/c;->a:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public process(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, LX4/b;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, LX4/b;-><init>(LX4/c;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    new-array v1, v1, [Ljava/lang/Void;

    .line 10
    .line 11
    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 12
    .line 13
    .line 14
    return-void
.end method
