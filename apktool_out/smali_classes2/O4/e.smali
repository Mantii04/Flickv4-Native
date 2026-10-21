.class public final LO4/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static c:LO4/e;


# instance fields
.field public final a:Lflix/com/vision/api/FlixVisionApiService;

.field public final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, LO4/e;->b:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {p1}, LD4/c;->getApiService(Landroid/content/Context;)Lflix/com/vision/api/FlixVisionApiService;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, LO4/e;->a:Lflix/com/vision/api/FlixVisionApiService;

    .line 15
    .line 16
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)LO4/e;
    .locals 2

    .line 1
    const-class v0, LO4/e;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, LO4/e;->c:LO4/e;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, LO4/e;

    .line 9
    .line 10
    invoke-direct {v1, p0}, LO4/e;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, LO4/e;->c:LO4/e;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object p0, LO4/e;->c:LO4/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object p0

    .line 22
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw p0
.end method


# virtual methods
.method public login(Ljava/lang/String;Ljava/lang/String;LO4/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "LO4/d;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LO4/e;->a:Lflix/com/vision/api/FlixVisionApiService;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lflix/com/vision/api/FlixVisionApiService;->login(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance p2, LO4/b;

    .line 8
    .line 9
    invoke-direct {p2, p0, p3}, LO4/b;-><init>(LO4/e;LO4/d;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public logout(LO4/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LO4/d;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LO4/e;->a:Lflix/com/vision/api/FlixVisionApiService;

    .line 2
    .line 3
    invoke-interface {v0}, Lflix/com/vision/api/FlixVisionApiService;->logout()Lretrofit2/Call;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, LO4/c;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, LO4/c;-><init>(LO4/e;LO4/d;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LO4/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "LO4/d;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LO4/e;->a:Lflix/com/vision/api/FlixVisionApiService;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lflix/com/vision/api/FlixVisionApiService;->register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance p2, LO4/a;

    .line 8
    .line 9
    invoke-direct {p2, p0, p4}, LO4/a;-><init>(LO4/e;LO4/d;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
