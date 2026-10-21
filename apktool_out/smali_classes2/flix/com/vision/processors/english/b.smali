.class public final Lflix/com/vision/processors/english/b;
.super Lflix/com/vision/processors/english/m;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;LU4/f;Lflix/com/vision/models/Movie;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lflix/com/vision/processors/english/m;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lflix/com/vision/processors/english/b;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lflix/com/vision/processors/english/m;->callBack:LU4/f;

    .line 7
    .line 8
    new-instance p1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lflix/com/vision/processors/english/b;->b:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 20
    .line 21
    sget-object p2, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 22
    .line 23
    const-string p2, "anime_domain"

    .line 24
    .line 25
    const-string p3, "gogoanime.pe"

    .line 26
    .line 27
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lflix/com/vision/processors/english/m;->domain:Ljava/lang/String;

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public Process(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "www9.gogoanime.io"

    .line 2
    .line 3
    iget-object v1, p0, Lflix/com/vision/processors/english/m;->domain:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v0, "gogoanime.io"

    .line 10
    .line 11
    iget-object v1, p0, Lflix/com/vision/processors/english/m;->domain:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance v0, Lflix/com/vision/processors/english/a;

    .line 18
    .line 19
    invoke-direct {v0, p0, p1}, Lflix/com/vision/processors/english/a;-><init>(Lflix/com/vision/processors/english/b;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    new-array v1, v1, [Ljava/lang/Void;

    .line 26
    .line 27
    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 28
    .line 29
    .line 30
    return-void
.end method
