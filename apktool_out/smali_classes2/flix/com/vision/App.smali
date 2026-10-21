.class public Lflix/com/vision/App;
.super Landroid/app/Application;
.source "SourceFile"


# static fields
.field public static A:Ljava/util/ArrayList;

.field public static B:Ljava/util/ArrayList;

.field public static final C:I

.field public static D:Ljava/lang/String;

.field public static final E:Ljava/util/HashMap;

.field public static F:Lflix/com/vision/App;

.field public static G:Z

.field public static H:Ljava/util/ArrayList;

.field public static I:Z

.field public static final J:Ljava/util/ArrayList;

.field public static K:Ljava/util/ArrayList;

.field public static L:Ljava/util/ArrayList;

.field public static M:Ljava/util/ArrayList;

.field public static N:Z

.field public static final z:Ljava/util/ArrayList;


# instance fields
.field public b:Z

.field public e:Z

.field public f:Ljava/lang/String;

.field public j:Ljava/util/ArrayList;

.field public m:Ljava/util/ArrayList;

.field public n:Ljava/util/ArrayList;

.field public p:Ljava/util/ArrayList;

.field public q:LD4/h;

.field public r:LP4/e;

.field public s:Landroid/content/SharedPreferences;

.field public t:Lcom/android/volley/RequestQueue;

.field public u:Z

.field public final v:Ljava/util/ArrayDeque;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lflix/com/vision/App;->z:Ljava/util/ArrayList;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lflix/com/vision/App;->A:Ljava/util/ArrayList;

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lflix/com/vision/App;->B:Ljava/util/ArrayList;

    .line 21
    .line 22
    const/16 v0, 0x7530

    .line 23
    .line 24
    sput v0, Lflix/com/vision/App;->C:I

    .line 25
    .line 26
    const-string v0, ""

    .line 27
    .line 28
    sput-object v0, Lflix/com/vision/App;->D:Ljava/lang/String;

    .line 29
    .line 30
    new-instance v0, Ljava/util/HashSet;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 33
    .line 34
    .line 35
    new-instance v0, Ljava/util/HashMap;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lflix/com/vision/App;->E:Ljava/util/HashMap;

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    sput-boolean v0, Lflix/com/vision/App;->G:Z

    .line 44
    .line 45
    new-instance v1, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    .line 50
    sput-object v1, Lflix/com/vision/App;->H:Ljava/util/ArrayList;

    .line 51
    .line 52
    sput-boolean v0, Lflix/com/vision/App;->I:Z

    .line 53
    .line 54
    new-instance v1, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .line 58
    .line 59
    sput-object v1, Lflix/com/vision/App;->J:Ljava/util/ArrayList;

    .line 60
    .line 61
    new-instance v1, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .line 65
    .line 66
    sput-boolean v0, Lflix/com/vision/App;->N:Z

    .line 67
    .line 68
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lflix/com/vision/App;->b:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lflix/com/vision/App;->e:Z

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lflix/com/vision/App;->u:Z

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayDeque;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lflix/com/vision/App;->v:Ljava/util/ArrayDeque;

    .line 18
    .line 19
    const-string v0, "http://185.112.144.240"

    .line 20
    .line 21
    iput-object v0, p0, Lflix/com/vision/App;->w:Ljava/lang/String;

    .line 22
    .line 23
    const-string v0, "https://github.com/fvision8/fv1/releases/download/11/adult.json"

    .line 24
    .line 25
    iput-object v0, p0, Lflix/com/vision/App;->x:Ljava/lang/String;

    .line 26
    .line 27
    new-instance v0, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lflix/com/vision/App;->y:Ljava/util/ArrayList;

    .line 33
    .line 34
    return-void
.end method

.method public static RefreshAllDebridHosts()V
    .locals 5

    .line 1
    sget-object v0, Lflix/com/vision/App;->M:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lflix/com/vision/App;->M:Ljava/util/ArrayList;

    .line 11
    .line 12
    :cond_0
    new-instance v0, Lh2/t;

    .line 13
    .line 14
    sget-object v1, Lflix/com/vision/api/alldebrid/AllDebridCommon;->e:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v2, Landroidx/media3/exoplayer/source/chunk/a;

    .line 17
    .line 18
    const/16 v3, 0x14

    .line 19
    .line 20
    invoke-direct {v2, v3}, Landroidx/media3/exoplayer/source/chunk/a;-><init>(I)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Landroidx/media3/exoplayer/source/chunk/a;

    .line 24
    .line 25
    const/16 v4, 0x15

    .line 26
    .line 27
    invoke-direct {v3, v4}, Landroidx/media3/exoplayer/source/chunk/a;-><init>(I)V

    .line 28
    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    invoke-direct {v0, v4, v1, v2, v3}, Lh2/t;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lflix/com/vision/App;->getRequestQueue()Lcom/android/volley/RequestQueue;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public static RefreshPremHosts(Ljava/lang/String;I)V
    .locals 4

    .line 1
    sget-object v0, Lflix/com/vision/App;->L:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lflix/com/vision/App;->L:Ljava/util/ArrayList;

    .line 11
    .line 12
    :cond_0
    const-string v0, "https://www.premiumize.me/api/services/list?apikey="

    .line 13
    .line 14
    invoke-static {v0, p0}, LA/i;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    new-instance v0, Lh2/t;

    .line 19
    .line 20
    new-instance v1, Landroidx/media3/exoplayer/source/chunk/a;

    .line 21
    .line 22
    const/16 v2, 0x12

    .line 23
    .line 24
    invoke-direct {v1, v2}, Landroidx/media3/exoplayer/source/chunk/a;-><init>(I)V

    .line 25
    .line 26
    .line 27
    new-instance v2, Landroidx/media3/exoplayer/source/chunk/a;

    .line 28
    .line 29
    const/16 v3, 0x13

    .line 30
    .line 31
    invoke-direct {v2, v3}, Landroidx/media3/exoplayer/source/chunk/a;-><init>(I)V

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, p1, p0, v1, v2}, Lh2/t;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Lflix/com/vision/App;->getRequestQueue()Lcom/android/volley/RequestQueue;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public static RefreshRDHosts(Ljava/lang/String;I)V
    .locals 4

    .line 1
    sget-object v0, Lflix/com/vision/App;->K:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lflix/com/vision/App;->K:Ljava/util/ArrayList;

    .line 11
    .line 12
    :cond_0
    new-instance v0, Lh2/t;

    .line 13
    .line 14
    new-instance v1, Landroidx/media3/exoplayer/source/chunk/a;

    .line 15
    .line 16
    const/16 v2, 0x16

    .line 17
    .line 18
    invoke-direct {v1, v2}, Landroidx/media3/exoplayer/source/chunk/a;-><init>(I)V

    .line 19
    .line 20
    .line 21
    new-instance v2, Landroidx/media3/exoplayer/source/chunk/a;

    .line 22
    .line 23
    const/16 v3, 0x17

    .line 24
    .line 25
    invoke-direct {v2, v3}, Landroidx/media3/exoplayer/source/chunk/a;-><init>(I)V

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, p1, p0, v1, v2}, Lh2/t;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0}, Lflix/com/vision/App;->getRequestQueue()Lcom/android/volley/RequestQueue;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lflix/com/vision/App;->J:Ljava/util/ArrayList;

    .line 2
    .line 3
    new-instance v1, Lflix/com/vision/models/ReleaseInfo;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lflix/com/vision/models/ReleaseInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static deleteAllMagnetsAllDebrid()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    invoke-static {}, LD4/a;->getAllMagnetAllDebrid()Lio/reactivex/Observable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Lx4/d;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-direct {v1, v2}, Lx4/d;-><init>(I)V

    .line 25
    .line 26
    .line 27
    new-instance v2, Lx4/d;

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    invoke-direct {v2, v3}, Lx4/d;-><init>(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public static declared-synchronized deleteMagnetsAllDebrid(Ljava/lang/String;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    const-class v0, Lflix/com/vision/App;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p0}, LD4/a;->deleteMagnetAllDebrid(Ljava/lang/String;)Lio/reactivex/Observable;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    new-instance v1, Lx4/d;

    .line 25
    .line 26
    const/4 v2, 0x2

    .line 27
    invoke-direct {v1, v2}, Lx4/d;-><init>(I)V

    .line 28
    .line 29
    .line 30
    new-instance v2, Lx4/d;

    .line 31
    .line 32
    const/4 v3, 0x1

    .line 33
    invoke-direct {v2, v3}, Lx4/d;-><init>(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    throw p0
.end method

.method public static e()V
    .locals 2

    .line 1
    sget-object v0, Lflix/com/vision/App;->K:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lflix/com/vision/App;->K:Ljava/util/ArrayList;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lflix/com/vision/App;->K:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-lez v0, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sget v1, Lflix/com/vision/R$array;->hosts:I

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sget-object v1, Lflix/com/vision/App;->K:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public static extractDominantColor(Landroid/view/View;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Landroid/animation/ArgbEvaluator;

    .line 3
    .line 4
    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const v3, 0x263984

    .line 12
    .line 13
    .line 14
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const/4 v4, 0x2

    .line 19
    new-array v4, v4, [Ljava/lang/Object;

    .line 20
    .line 21
    aput-object v2, v4, v0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    aput-object v3, v4, v0

    .line 25
    .line 26
    invoke-static {v1, v4}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-wide/16 v1, 0x7d0

    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 33
    .line 34
    .line 35
    new-instance v1, LA3/a;

    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    invoke-direct {v1, p0, v2}, LA3/a;-><init>(Ljava/lang/Object;I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 42
    .line 43
    .line 44
    new-instance p0, Lx4/f;

    .line 45
    .line 46
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    :catch_0
    return-void
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response;
    .locals 3

    .line 1
    new-instance v0, Lokhttp3/OkHttpClient;

    .line 2
    .line 3
    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lokhttp3/Request$Builder;

    .line 7
    .line 8
    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "Referer"

    .line 12
    .line 13
    invoke-virtual {v1, v2, p1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1, p0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    :try_start_0
    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-interface {p0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    .line 30
    .line 31
    .line 32
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    return-object p0

    .line 34
    :catch_0
    const/4 p0, 0x0

    .line 35
    return-object p0
.end method

.method public static getAjax(Ljava/lang/String;)Lokhttp3/Response;
    .locals 4

    .line 1
    new-instance v0, Lokhttp3/OkHttpClient;

    .line 2
    .line 3
    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lokhttp3/Request$Builder;

    .line 7
    .line 8
    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "X-Requested-With"

    .line 12
    .line 13
    const-string v3, "XMLHttpRequest"

    .line 14
    .line 15
    invoke-virtual {v1, v2, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1, p0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    :try_start_0
    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-interface {p0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    .line 32
    .line 33
    .line 34
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    return-object p0

    .line 36
    :catch_0
    const/4 p0, 0x0

    .line 37
    return-object p0
.end method

.method public static declared-synchronized getInstance()Lflix/com/vision/App;
    .locals 2

    .line 1
    const-class v0, Lflix/com/vision/App;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lflix/com/vision/App;->F:Lflix/com/vision/App;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    throw v1
.end method

.method public static isADSupported(Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-object v0, Lflix/com/vision/App;->M:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/16 v2, 0xa

    .line 11
    .line 12
    if-ge v0, v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget-object v0, Lflix/com/vision/App;->M:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    return v1

    .line 40
    :cond_2
    const/4 p0, 0x0

    .line 41
    return p0

    .line 42
    :cond_3
    :goto_0
    return v1
.end method

.method public static isRdSupported(Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-object v0, Lflix/com/vision/App;->K:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/16 v2, 0xa

    .line 11
    .line 12
    if-ge v0, v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget-object v0, Lflix/com/vision/App;->K:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    return v1

    .line 40
    :cond_2
    const/4 p0, 0x0

    .line 41
    return p0

    .line 42
    :cond_3
    :goto_0
    return v1
.end method


# virtual methods
.method public addHash(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Lh5/n;->getHashFromMagnet(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget-object v1, Lflix/com/vision/App;->H:Ljava/util/ArrayList;

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    new-instance v1, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    sput-object v1, Lflix/com/vision/App;->H:Ljava/util/ArrayList;

    .line 23
    .line 24
    :cond_1
    sget-object v1, Lflix/com/vision/App;->H:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    return p1

    .line 34
    :cond_2
    sget-object v1, Lflix/com/vision/App;->H:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    return v0
.end method

.method public addToRequestQueue(Lcom/android/volley/Request;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/Request<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object p2, Lcom/android/volley/VolleyLog;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/volley/Request;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 10
    .line 11
    .line 12
    new-instance p2, Lcom/android/volley/DefaultRetryPolicy;

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    const/high16 v1, 0x3f800000    # 1.0f

    .line 16
    .line 17
    sget v2, Lflix/com/vision/App;->C:I

    .line 18
    .line 19
    invoke-direct {p2, v2, v0, v1}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Lcom/android/volley/Request;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lflix/com/vision/App;->getRequestQueue()Lcom/android/volley/RequestQueue;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p2, p1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    const-string v1, "IS_RD_LOGGED_IN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lflix/com/vision/App;->refreshTokenRD()V

    .line 18
    .line 19
    .line 20
    sput-boolean v1, Lflix/com/vision/api/realdebrid/RealDebridCommon;->m:Z

    .line 21
    .line 22
    const-string v0, "https://api.real-debrid.com/rest/1.0/hosts"

    .line 23
    .line 24
    invoke-static {v0, v2}, Lflix/com/vision/App;->RefreshRDHosts(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 28
    .line 29
    const-string v3, "PREM_LOGGED_IN"

    .line 30
    .line 31
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v3, 0x0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    sput-boolean v1, Lflix/com/vision/api/premiumize/PremiumizeCommon;->b:Z

    .line 39
    .line 40
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 45
    .line 46
    sget-object v4, LT4/f;->a:Ljava/lang/String;

    .line 47
    .line 48
    const-string v4, "prem_apikey"

    .line 49
    .line 50
    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sput-object v0, Lflix/com/vision/api/premiumize/PremiumizeCommon;->e:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {v0, v2}, Lflix/com/vision/App;->RefreshPremHosts(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    :cond_1
    iget-object v0, p0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 60
    .line 61
    const-string v4, "ALL_DEBRID_LOGGED_IN"

    .line 62
    .line 63
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    sput-boolean v1, Lflix/com/vision/api/alldebrid/AllDebridCommon;->f:Z

    .line 70
    .line 71
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 76
    .line 77
    sget-object v1, LT4/f;->a:Ljava/lang/String;

    .line 78
    .line 79
    const-string v1, "all_debrid_apikey"

    .line 80
    .line 81
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sput-object v0, Lflix/com/vision/api/alldebrid/AllDebridCommon;->j:Ljava/lang/String;

    .line 86
    .line 87
    invoke-static {}, Lflix/com/vision/App;->RefreshAllDebridHosts()V

    .line 88
    .line 89
    .line 90
    :cond_2
    sget-boolean v0, Lflix/com/vision/api/realdebrid/RealDebridCommon;->m:Z

    .line 91
    .line 92
    if-eqz v0, :cond_3

    .line 93
    .line 94
    iget-object v0, p0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 95
    .line 96
    const-string v1, "RD_CLEANED"

    .line 97
    .line 98
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-nez v0, :cond_3

    .line 103
    .line 104
    new-instance v0, Landroid/os/Handler;

    .line 105
    .line 106
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 111
    .line 112
    .line 113
    new-instance v1, Lx4/c;

    .line 114
    .line 115
    const/4 v2, 0x2

    .line 116
    invoke-direct {v1, p0, v2}, Lx4/c;-><init>(Lflix/com/vision/App;I)V

    .line 117
    .line 118
    .line 119
    const-wide/16 v2, 0x1388

    .line 120
    .line 121
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 122
    .line 123
    .line 124
    :cond_3
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    new-instance v0, Ljava/io/File;

    .line 17
    .line 18
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    :try_start_1
    new-instance v1, Ljava/io/FileReader;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 30
    .line 31
    .line 32
    move-object v1, p1

    .line 33
    :goto_0
    new-instance v0, Ljava/io/BufferedReader;

    .line 34
    .line 35
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 36
    .line 37
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 41
    .line 42
    .line 43
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 47
    goto :goto_1

    .line 48
    :catch_1
    move-exception v2

    .line 49
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    .line 51
    .line 52
    :goto_1
    if-eqz p1, :cond_0

    .line 53
    .line 54
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v2, "\n"

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 60
    .line 61
    .line 62
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 66
    goto :goto_1

    .line 67
    :catch_2
    move-exception v2

    .line 68
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_0
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :catch_3
    move-exception p1

    .line 77
    :try_start_8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    .line 79
    .line 80
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-eqz p1, :cond_1

    .line 85
    .line 86
    invoke-virtual {p0, p1, p2, p3}, Lflix/com/vision/App;->f(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 87
    .line 88
    .line 89
    :catch_4
    :cond_1
    return-void
.end method

.method public cleanTorrentsRealDebrid()V
    .locals 4

    .line 1
    sget-object v0, Lflix/com/vision/api/realdebrid/RealDebridCommon;->f:Ljava/lang/String;

    .line 2
    .line 3
    sget-object v1, Lflix/com/vision/api/realdebrid/RealDebridCommon;->b:Ljava/lang/String;

    .line 4
    .line 5
    const/16 v2, 0x9c4

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, LD4/a;->getMagnetsRealDebridAll(Ljava/lang/String;Ljava/lang/String;I)Lio/reactivex/Observable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v1, Lx4/a;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-direct {v1, p0, v2}, Lx4/a;-><init>(Lflix/com/vision/App;I)V

    .line 31
    .line 32
    .line 33
    new-instance v2, Lx4/d;

    .line 34
    .line 35
    const/4 v3, 0x1

    .line 36
    invoke-direct {v2, v3}, Lx4/d;-><init>(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final d()V
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "picasso-cache"

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 19
    .line 20
    .line 21
    :cond_0
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    .line 22
    .line 23
    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v2, Lokhttp3/Cache;

    .line 27
    .line 28
    const-wide/32 v3, 0x6400000

    .line 29
    .line 30
    .line 31
    invoke-direct {v2, v0, v3, v4}, Lokhttp3/Cache;-><init>(Ljava/io/File;J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const/4 v1, 0x1

    .line 39
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-instance v1, Lm4/z;

    .line 48
    .line 49
    invoke-direct {v1, p0}, Lm4/z;-><init>(Landroid/content/Context;)V

    .line 50
    .line 51
    .line 52
    new-instance v2, Lm4/x;

    .line 53
    .line 54
    invoke-direct {v2, v0}, Lm4/x;-><init>(Lokhttp3/OkHttpClient;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2}, Lm4/z;->downloader(Lm4/q;)Lm4/z;

    .line 58
    .line 59
    .line 60
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 61
    .line 62
    invoke-virtual {v1, v0}, Lm4/z;->defaultBitmapConfig(Landroid/graphics/Bitmap$Config;)Lm4/z;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Lm4/z;->build()Lm4/D;

    .line 66
    .line 67
    .line 68
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :try_start_1
    invoke-static {v0}, Lm4/D;->setSingletonInstance(Lm4/D;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 70
    .line 71
    .line 72
    :catch_0
    return-void
.end method

.method public deleteTorrentsRealDebrid(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lflix/com/vision/api/realdebrid/RealDebridCommon;->f:Ljava/lang/String;

    .line 2
    .line 3
    sget-object v1, Lflix/com/vision/api/realdebrid/RealDebridCommon;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, LD4/a;->deleteMagnetRealDebrid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    new-instance v0, Lx4/a;

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-direct {v0, p0, v1}, Lx4/a;-><init>(Lflix/com/vision/App;I)V

    .line 29
    .line 30
    .line 31
    new-instance v1, Lx4/a;

    .line 32
    .line 33
    const/4 v2, 0x2

    .line 34
    invoke-direct {v1, p0, v2}, Lx4/a;-><init>(Lflix/com/vision/App;I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public deleteTorrentsRealDebridNew()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lflix/com/vision/api/realdebrid/RealDebridCommon;->f:Ljava/lang/String;

    .line 7
    .line 8
    sget-object v2, Lflix/com/vision/api/realdebrid/RealDebridCommon;->b:Ljava/lang/String;

    .line 9
    .line 10
    const/16 v3, 0x1e

    .line 11
    .line 12
    invoke-static {v1, v2, v3}, LD4/a;->getMagnetsRealDebridAll(Ljava/lang/String;Ljava/lang/String;I)Lio/reactivex/Observable;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    new-instance v2, Lx4/b;

    .line 33
    .line 34
    const/4 v3, 0x1

    .line 35
    invoke-direct {v2, p0, v0, v3}, Lx4/b;-><init>(Lflix/com/vision/App;Ljava/util/ArrayDeque;I)V

    .line 36
    .line 37
    .line 38
    new-instance v0, Lx4/d;

    .line 39
    .line 40
    const/4 v3, 0x1

    .line 41
    invoke-direct {v0, v3}, Lx4/d;-><init>(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public declared-synchronized deleteTorrentsRealDebridNewNew(Ljava/util/ArrayDeque;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    check-cast v0, Ljava/lang/String;

    .line 7
    .line 8
    sget-object v1, Lflix/com/vision/api/realdebrid/RealDebridCommon;->f:Ljava/lang/String;

    .line 9
    .line 10
    sget-object v2, Lflix/com/vision/api/realdebrid/RealDebridCommon;->b:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, LD4/a;->deleteMagnetRealDebrid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v1, LA4/c;

    .line 33
    .line 34
    const/16 v2, 0x1d

    .line 35
    .line 36
    invoke-direct {v1, v2}, LA4/c;-><init>(I)V

    .line 37
    .line 38
    .line 39
    new-instance v2, Lx4/b;

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-direct {v2, p0, p1, v3}, Lx4/b;-><init>(Lflix/com/vision/App;Ljava/util/ArrayDeque;I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    .line 48
    monitor-exit p0

    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    throw p1
.end method

.method public downloadFileAndUnzipNew(Ljava/lang/String;Z)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v2, "/files/"

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Ljava/io/File;

    .line 32
    .line 33
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-nez v2, :cond_0

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception v1

    .line 47
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 48
    .line 49
    .line 50
    :cond_0
    :goto_0
    new-instance v1, Ljava/net/URL;

    .line 51
    .line 52
    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const/4 v2, 0x0

    .line 56
    :try_start_1
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 63
    .line 64
    .line 65
    move-result v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 66
    const/16 v4, 0xc8

    .line 67
    .line 68
    if-ne v3, v4, :cond_b

    .line 69
    .line 70
    const-string v3, "Content-Disposition"

    .line 71
    .line 72
    invoke-virtual {v1, v3}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentLength()I

    .line 80
    .line 81
    .line 82
    const/4 v4, 0x1

    .line 83
    if-eqz v3, :cond_2

    .line 84
    .line 85
    const-string p1, "filename="

    .line 86
    .line 87
    invoke-virtual {v3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-lez p1, :cond_1

    .line 92
    .line 93
    add-int/lit8 p1, p1, 0xa

    .line 94
    .line 95
    invoke-static {v4, p1, v3}, LA/i;->d(IILjava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    goto :goto_1

    .line 100
    :cond_1
    const-string p1, ""

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_2
    const-string v3, "/"

    .line 104
    .line 105
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    add-int/2addr v3, v4

    .line 110
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    :goto_1
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    const-string v5, ".zi"

    .line 119
    .line 120
    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    if-eqz v5, :cond_3

    .line 125
    .line 126
    const-string v5, "p"

    .line 127
    .line 128
    invoke-virtual {p1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    :cond_3
    invoke-static {v0, p1}, LA/i;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    :try_start_2
    new-instance v6, Ljava/io/File;

    .line 137
    .line 138
    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 142
    .line 143
    .line 144
    move-result v7

    .line 145
    if-eqz v7, :cond_4

    .line 146
    .line 147
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 148
    .line 149
    .line 150
    :catch_1
    :cond_4
    new-instance v6, Ljava/io/FileOutputStream;

    .line 151
    .line 152
    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    const/16 v5, 0x1000

    .line 156
    .line 157
    new-array v5, v5, [B

    .line 158
    .line 159
    :goto_2
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    .line 160
    .line 161
    .line 162
    move-result v7

    .line 163
    const/4 v8, -0x1

    .line 164
    if-eq v7, v8, :cond_5

    .line 165
    .line 166
    invoke-virtual {v6, v5, v2, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 167
    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 174
    .line 175
    .line 176
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 177
    .line 178
    const-string v5, "File downloaded"

    .line 179
    .line 180
    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 184
    .line 185
    .line 186
    new-instance v1, Ljava/util/ArrayList;

    .line 187
    .line 188
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .line 190
    .line 191
    :try_start_3
    new-instance v3, Ljava/io/FileInputStream;

    .line 192
    .line 193
    new-instance v5, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    new-instance p1, Ljava/util/zip/ZipInputStream;

    .line 212
    .line 213
    new-instance v5, Ljava/io/BufferedInputStream;

    .line 214
    .line 215
    invoke-direct {v5, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 216
    .line 217
    .line 218
    invoke-direct {p1, v5}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 219
    .line 220
    .line 221
    const/16 v3, 0x400

    .line 222
    .line 223
    new-array v3, v3, [B

    .line 224
    .line 225
    :goto_3
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    .line 226
    .line 227
    .line 228
    move-result-object v5

    .line 229
    if-eqz v5, :cond_9

    .line 230
    .line 231
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    const-string v7, "MA"

    .line 236
    .line 237
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 238
    .line 239
    .line 240
    move-result v7

    .line 241
    if-eqz v7, :cond_6

    .line 242
    .line 243
    goto :goto_3

    .line 244
    :cond_6
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    .line 245
    .line 246
    .line 247
    move-result v5

    .line 248
    if-eqz v5, :cond_7

    .line 249
    .line 250
    new-instance v5, Ljava/io/File;

    .line 251
    .line 252
    new-instance v7, Ljava/lang/StringBuilder;

    .line 253
    .line 254
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v6

    .line 267
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 271
    .line 272
    .line 273
    goto :goto_3

    .line 274
    :catch_2
    move-exception p1

    .line 275
    goto :goto_6

    .line 276
    :cond_7
    new-instance v5, Ljava/io/FileOutputStream;

    .line 277
    .line 278
    new-instance v7, Ljava/lang/StringBuilder;

    .line 279
    .line 280
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v7

    .line 293
    invoke-direct {v5, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    :goto_4
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    .line 297
    .line 298
    .line 299
    move-result v7

    .line 300
    if-eq v7, v8, :cond_8

    .line 301
    .line 302
    invoke-virtual {v5, v3, v2, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 303
    .line 304
    .line 305
    goto :goto_4

    .line 306
    :cond_8
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 307
    .line 308
    .line 309
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 310
    .line 311
    .line 312
    new-instance v5, Lx4/g;

    .line 313
    .line 314
    invoke-direct {v5, p0, v0, v6}, Lx4/g;-><init>(Lflix/com/vision/App;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    goto :goto_3

    .line 321
    :cond_9
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->close()V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 325
    .line 326
    .line 327
    move-result-object p1

    .line 328
    :catch_3
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 329
    .line 330
    .line 331
    move-result v0

    .line 332
    if-eqz v0, :cond_a

    .line 333
    .line 334
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    check-cast v0, Lx4/g;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 339
    .line 340
    const-wide/16 v1, 0x3e8

    .line 341
    .line 342
    :try_start_4
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 343
    .line 344
    .line 345
    iget-object v1, v0, Lx4/g;->a:Ljava/lang/String;

    .line 346
    .line 347
    iget-object v2, v0, Lx4/g;->b:Ljava/lang/String;

    .line 348
    .line 349
    invoke-virtual {p0, v1, v2, p2}, Lflix/com/vision/App;->c(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 350
    .line 351
    .line 352
    goto :goto_5

    .line 353
    :catch_4
    move-exception v1

    .line 354
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 355
    .line 356
    .line 357
    iget-object v1, v0, Lx4/g;->a:Ljava/lang/String;

    .line 358
    .line 359
    iget-object v0, v0, Lx4/g;->b:Ljava/lang/String;

    .line 360
    .line 361
    invoke-virtual {p0, v1, v0, p2}, Lflix/com/vision/App;->c(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 362
    .line 363
    .line 364
    goto :goto_5

    .line 365
    :goto_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 366
    .line 367
    .line 368
    :cond_a
    return v4

    .line 369
    :cond_b
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 370
    .line 371
    .line 372
    return v2

    .line 373
    :catch_5
    move-exception p1

    .line 374
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 375
    .line 376
    .line 377
    return v2
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "data_type10"

    .line 3
    .line 4
    const-string v2, "anime"

    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-nez v3, :cond_1

    .line 13
    .line 14
    :cond_0
    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-eqz p2, :cond_3

    .line 19
    .line 20
    iget-object p2, p0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 21
    .line 22
    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-nez p2, :cond_3

    .line 27
    .line 28
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    .line 34
    .line 35
    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-ge v0, p1, :cond_2

    .line 43
    .line 44
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const-string v3, "url"

    .line 49
    .line 50
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    const-string v4, "title_with_year"

    .line 55
    .line 56
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    const-string v5, "genres"

    .line 61
    .line 62
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    const-string v6, "title"

    .line 67
    .line 68
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    const-string v7, "img_url"

    .line 73
    .line 74
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    const-string v8, "plot"

    .line 79
    .line 80
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    new-instance v8, Lflix/com/vision/models/AnimeItem;

    .line 85
    .line 86
    invoke-direct {v8}, Lflix/com/vision/models/AnimeItem;-><init>()V

    .line 87
    .line 88
    .line 89
    iput-object v3, v8, Lflix/com/vision/models/AnimeItem;->url:Ljava/lang/String;

    .line 90
    .line 91
    iput-object v6, v8, Lflix/com/vision/models/AnimeItem;->title:Ljava/lang/String;

    .line 92
    .line 93
    iput-object v4, v8, Lflix/com/vision/models/AnimeItem;->title_with_year:Ljava/lang/String;

    .line 94
    .line 95
    iput-object v5, v8, Lflix/com/vision/models/AnimeItem;->genres:Ljava/lang/String;

    .line 96
    .line 97
    iput-object p1, v8, Lflix/com/vision/models/AnimeItem;->plot:Ljava/lang/String;

    .line 98
    .line 99
    iput-object v7, v8, Lflix/com/vision/models/AnimeItem;->img_url:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .line 103
    .line 104
    add-int/lit8 v0, v0, 0x1

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :catch_0
    move-exception p1

    .line 108
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 109
    .line 110
    .line 111
    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-lez p1, :cond_3

    .line 116
    .line 117
    iget-object p1, p0, Lflix/com/vision/App;->r:LP4/e;

    .line 118
    .line 119
    invoke-virtual {p1, p2}, LP4/e;->AddAnimeItem(Ljava/util/ArrayList;)Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-eqz p1, :cond_3

    .line 124
    .line 125
    if-nez p3, :cond_3

    .line 126
    .line 127
    iget-object p1, p0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 128
    .line 129
    const/4 p2, 0x1

    .line 130
    invoke-static {p1, v1, p2}, LA/i;->x(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 131
    .line 132
    .line 133
    :try_start_1
    new-instance p1, Landroid/os/Handler;

    .line 134
    .line 135
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 140
    .line 141
    .line 142
    new-instance p2, Lx4/c;

    .line 143
    .line 144
    const/4 p3, 0x0

    .line 145
    invoke-direct {p2, p0, p3}, Lx4/c;-><init>(Lflix/com/vision/App;I)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 149
    .line 150
    .line 151
    :catch_1
    :cond_3
    return-void
.end method

.method public fetchReleaseNote()V
    .locals 5

    .line 1
    sget-object v0, Lflix/com/vision/App;->z:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lflix/com/vision/App;->J:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 9
    .line 10
    .line 11
    const-string v1, "\u2022 Added OffCloud debrid service for a faster and smoother steaming experience\n"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    const-string v1, "\u2022 Added PiP (Picture-in-Picture) to the built-in Player. You can now minimize the player and switch to different App while watching\n"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    const-string v1, "\u2022 Added user torrent management to OffCloud.See User Torrent from main screen when account lined\n"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    const-string v1, "\u2022 Added Skip Intro to the built-in Player\n"

    .line 27
    .line 28
    const-string v2, "\u2022 New Trakt integration with scrobbling and more features\n"

    .line 29
    .line 30
    const-string v3, "\u2022 Fixed Auto-Play next Episode\n"

    .line 31
    .line 32
    const-string v4, "\u2022 Added a new Direct Stream Provider\n"

    .line 33
    .line 34
    invoke-static {v0, v1, v2, v3, v4}, Lb/c;->u(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v1, "\u2022 Improved Trailer Playback\n"

    .line 38
    .line 39
    const-string v2, "\u2022 Fixed all in-App update issues\n"

    .line 40
    .line 41
    const-string v3, "\u2022 Added MGM+ to Streaming Service Row\n"

    .line 42
    .line 43
    const-string v4, "\u2022 Improved Live TV Section\n"

    .line 44
    .line 45
    invoke-static {v0, v1, v2, v3, v4}, Lb/c;->u(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v1, "\u2022 Fixed issue with Player playing in background when App in background\n"

    .line 49
    .line 50
    const-string v2, "\u2022 Improved Backup & Restore functionality. You can now make multiple Backup with Timestamp\n"

    .line 51
    .line 52
    const-string v3, "\u2022 Improved UI with better responsiveness\n"

    .line 53
    .line 54
    const-string v4, "\u2022 Fixed all the startup crashes and Improved performance\n"

    .line 55
    .line 56
    invoke-static {v0, v1, v2, v3, v4}, Lb/c;->u(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string v1, "\u2022 Fixed App crash while casting to TV\n"

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    const-string v1, "\u2022 [Misc] Many bug fixed.\n"

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    const-string v0, "v3.9.0r"

    .line 70
    .line 71
    const-string v1, "\u2022  Added OffCloud debrid service for a faster and smoother steaming experience\n\u2022 Added user torrent management to OffCloud.See User Torrent from main screen when account lined\n\u2022 Added Skip Intro to the built-in Player\n\u2022 Fixed Auto-Play next Episode\n\u2022 New Trakt integration with scrobbling and more features.\n\u2022 Added a new Direct Stream Provider.\n\u2022 AImproved Live TV Section.\n\u2022 Added PiP (Picture-in-Picture) to the built-in Player. You can now minimize the player and switch to different App while watching\n\u2022 Fixed issue with Player playing in background when App in background.\n\u2022 Improved Backup & Restore functionality.You can now make multiple Backup with Timestamp\n\u2022 Fixed App crash while casting to TV.\n\u2022 Improved UI with better responsiveness\n"

    .line 72
    .line 73
    invoke-static {v0, v1}, Lflix/com/vision/App;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const-string v0, "v3.8.0r"

    .line 77
    .line 78
    const-string v1, "\u2022 Fixed [FVSTREAM] direct links for Movies and TV Series\n\u2022 Improved TorBox integration\n\u2022 Added MGM+ to Streaming Service Row\n\u2022 Upgraded the built-in Player to ExoPlayer 1.11 with better support fo HDR 4k\n\u2022 [Misc] Minor performance Improvements.\n\u2022 [Misc] Introduced the new consent to support the App development\n\u2022 [Misc] Many bug fixed.\n"

    .line 79
    .line 80
    invoke-static {v0, v1}, Lflix/com/vision/App;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const-string v0, "v3.7.0r"

    .line 84
    .line 85
    const-string v1, "\u2022 [Trailer Player] Fixed double exit popup when closing the Trailer\n\u2022 [Trailer Player] Fixed player state issue, improved navigation and UI.\n\u2022 Added a more detailed movie info  Page in the Movie Detail Screen. \n\u2022 Added TorBox API for faster streaming (Beta).\n\u2022 [Dynamic Home Screen] Your popular services highlighted title will now be updated in real time. We also added caching for better performance\n\u2022 Fixed most embed providers.\n\u2022 Many other minor improvements.\n"

    .line 86
    .line 87
    invoke-static {v0, v1}, Lflix/com/vision/App;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const-string v0, "v3.6.3r"

    .line 91
    .line 92
    const-string v1, "\u2022 [STREAMING SERVICES] Now you will be able to also browse Movies from Popular Services. Not just TV Shows like it was in the past\n\u2022 [STREAM] Fixed the issue with [FVSTREAM1] links not coming up for Movies and Series\n\u2022 [STREAM] Fixed the issue with [FVSTREAM2] links not coming up for Movies and Series\n\u2022 [STREAM] Fixed the issue with [FVSTREAM5] links not coming up for Movies and Series\n\u2022 [AppUpdate] Finally Fixed the issue with permission when trying to Update the App internally\n\n\u2022 [AdultZone] Improved video search\n\u2022 [UI] Improved Movie title logo download and cache\n\u2022 [Misc] Minor performance Improvements.\n"

    .line 93
    .line 94
    invoke-static {v0, v1}, Lflix/com/vision/App;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const-string v0, "v3.6.2r"

    .line 98
    .line 99
    const-string v1, "\u2022 [Subtitles] Fixed Subtitles download via OpenSubtitles API\n\u2022 [Subtitles] You can now change subtitle Encoding directly in the Built-In Player during playback\n\u2022 [AutoPlay Next Episode] fixed issue with Auto-Play next episode still popping when disabled in Settings.\n\u2022 [Trailer] Fixed issue with Trailer not working on some low-end Devices\n\u2022 [Embed Links] Improved mouse Navigation on Embed Links\n\u2022 [Misc] Minor performance Improvements.\n"

    .line 100
    .line 101
    invoke-static {v0, v1}, Lflix/com/vision/App;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    const-string v0, "v3.6.1r"

    .line 105
    .line 106
    const-string v1, "\u2022 [Subtitles] Fixed OpenSubtitles: Moved away from the web-based API integration to the legacy Rest API since OpenSubtitles is now charging to use their new REST API.\n\u2022 [App Crash] Fixed issue with the App crashing after you reorder the Popular Services row by long press. Big Thanks to Sam(sagar9711) for spotting this issue.\n\u2022 [AutoPlay Next Episode] You can now set in Settings, the amount of minutes left before the next episode prompt is shown.\n\u2022 Minor performance Improvements.\n"

    .line 107
    .line 108
    invoke-static {v0, v1}, Lflix/com/vision/App;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const-string v0, "v3.6.0r"

    .line 112
    .line 113
    const-string v1, "\u2022 [Player] Introduced Audio Track Selection: You can now choose your preferred audio language if the video stream provides multiple options.\n\u2022 [Subtitles] Smart Positioning: Subtitles now support \'Gravity\' markers. They will automatically shift to the top of the screen when necessary to stay visible over movie credits or text.\n\u2022 [Subtitles] Improved subtitle import from local storage.\n\u2022 [Navigation] Fixed a critical focus issue on the Filter page where selection would get lost when moving from the filter row to the grid.\n\u2022 [Resilience] Updated the video parser to be more forgiving with malformed stream headers, preventing mid-playback crashes.\n\u2022 [Auto-Play Next Episode] Complete rewrite of the transition logic. The app now monitors real-time playback to prompt for the next episode perfectly, even after seeking.\n\u2022 [UI] Introduced a sleek, semi-transparent \'Next Episode\' card with a circular countdown and episode metadata. Added a \'Close\' button to easily skip the transition.\n\u2022 [Optimization] Balanced the internal video buffer to improve performance on low-memory FireTV and Android TV devices.\n\u2022 [DirectStream] Improved direct stream extraction logic to handle more complex link protection methods.\n\u2022 [DirectStream] Improved direct stream extraction logic to handle more complex link protection methods.\n\u2022 [AdultZone] Removed the Previous-Video navigation feature as requested by the community \n\u2022 [Backup/Restore] Complete engine overhaul: Switched from binary to JSON serialization. This makes backups smaller, faster, and compatible across different app versions.\n\u2022 [File Picker] Context-Aware Filtering: The browser now intelligently filters files based on what you are doing (shows .json for backups, .m3u for IPTV).\n\u2022 [File Picker] Smart Start Path: Now opens the \'Downloads\' folder by default, where 90% of TV users store their files.\n\u2022 [Permissions] Added support for \'All Files Access\' (Android 11+) while maintaining a robust fallback for legacy 3rd party Android boxes.\n\u2022 Many minor bug fixes and performance enhancements."

    .line 114
    .line 115
    invoke-static {v0, v1}, Lflix/com/vision/App;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    const-string v0, "v3.5.1r"

    .line 119
    .line 120
    const-string v1, "\u2022 Migrated FV Player from ExoMedia to Media3 which is more powerful\n\u2022 Fixed Images not loading. Added internal cache handling for Picasso\n\u2022 Fixed issue with 4K Video causing crashes in FV Player on low-memory devices\n\u2022 Improved the rewind & fast forward feature in the FV Player. \n\u2022 Added Change Log of release history to Settings: Bottom of the Page \n\u2022 Fixed issue with TV Channel not opening on Mobile & Tablets \n\u2022 Replaced AdBlockWebview with our own Ad-blocking logic on the Standard Webview \n\u2022 Added new built-in File Picker for importing M3u8 Playlists \n\u2022 Improved in-Player Episode selection and Playback  \n\u2022 Improved App startup speed \n\u2022 Improved Filter & Cast Movies Page navigation \n\u2022 Many minor improvements \n"

    .line 121
    .line 122
    invoke-static {v0, v1}, Lflix/com/vision/App;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    const-string v0, "v3.4.0r"

    .line 126
    .line 127
    const-string v1, "\u2022 Major UI improvements\n\u2022 Added ability to load subtitles automatically. (turn it on in Settings\n\u2022 Fixed issue with RD links not loading sometimes\n\u2022 Fixed [FLIXVISION1]. Will also load faster now\n\u2022 AdultZone categories will now load faster\n\u2022 Links fetched after opening the Player will now be reflected in the Player link list\n\u2022 Improved in-player Episode selection and Playback\n\u2022 Fixed Trailer Playback issue\n\u2022 Improved Trailer Player. Will load faster now\n\u2022 Improved On screen search Keyboard\n\u2022 You can now turn off \'watched history\' in Settings for AdultZone\n\u2022 Improved internal and external cache calculation. Cache size will now match system calculation\n\u2022 Improved stability"

    .line 128
    .line 129
    invoke-static {v0, v1}, Lflix/com/vision/App;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    const-string v0, "v3.3.0r"

    .line 133
    .line 134
    const-string v1, "\u2022 Fixed issue with FVSTREAM Direct links\n\u2022 Added DIRECT STREAM category to Services for Movies/Series available with direct stream links\n\u2022 Now you can reorder Services in the main screen with long press and move (TV ONLY)\n\u2022 Added Netflix-Style Screen Saver. You can use the CENTER button on the remote to access the current Item\n\u2022 Fixed ADULTZONE issue with index navigation in built-in Player \n\u2022 Improved the Movie Trailer Player \n\u2022 Fixed issue with Embed links not loading \n\u2022 Many minor fixes and improvements \n\u2022 Improved stability and performance"

    .line 135
    .line 136
    invoke-static {v0, v1}, Lflix/com/vision/App;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    const-string v0, "v3.2.0r"

    .line 140
    .line 141
    const-string v1, "\u2022 Fixed issue with missing Thumbnails\n\u2022 Fixed mobile data usage issue (removed TraffMoneytizer SDK)\n\u2022 Fixed issues with subtitles download\n\u2022 Added Discovery+ to streaming services\n\u2022 Added more direct link providers for TV Shows \n\u2022 Fixed issue with Embed links not loading \n\u2022 Added new providers for Debrid links \n\u2022 Improved stability and performance"

    .line 142
    .line 143
    invoke-static {v0, v1}, Lflix/com/vision/App;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    const-string v0, "v3.1.2r"

    .line 147
    .line 148
    const-string v1, "\u2022 Fixed FVSTREAM Movie Server\n\u2022 Added More TV Channels\n\u2022 Added new Embed Provider\n\u2022 Many bug fixes"

    .line 149
    .line 150
    invoke-static {v0, v1}, Lflix/com/vision/App;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    const-string v0, "v3.1.1r"

    .line 154
    .line 155
    const-string v1, "\u2022 Fixed FVSTREAM Server\n\u2022 Added more Embed Providers\n\u2022 Improved Built-in Player\n\u2022 Many minor bugs fixed"

    .line 156
    .line 157
    invoke-static {v0, v1}, Lflix/com/vision/App;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    const-string v0, "v3.0.2r"

    .line 161
    .line 162
    const-string v1, "\u2022 Fixed direct links for the Anime section\n\u2022 Added ability to remove a single Item from your Watched list\n\u2022 Added ability to remove an item from \"Continue Watching\" without marking it as Watched \n\u2022 Fixed issue with App crashing on FireTV OS 5.0 at start-up\n\u2022 Improved the Ads Blocker for Embed links\n\u2022 Added Option in Settings to load Posters and Backdrop Images in higher resolution. \n\u2022 Fixed resuming and progress tracking issue when switching between VLC and the Internal Player\n\u2022 Fixed issue with year 2025 missing in the Filter Page \n\u2022 Improved On Screen Keyboard in the search Page\n\u2022 Added more customization to the Youtube Trailer Player (e.g Replay Button) \n\u2022 Added some minor UI Improvements\n\u2022 Improved stability and performance\n\u2022 Many minor Bugs fixed"

    .line 163
    .line 164
    invoke-static {v0, v1}, Lflix/com/vision/App;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    const-string v0, "v3.0.1r"

    .line 168
    .line 169
    const-string v1, "\u2022 Fixed issue with missing Poster and original Title Poster for some Movies/Series \n\u2022 Removed Shimmer effect in Movie Detail Page due to issue on some old devices\n\u2022 Added more resolvers for FVSTREAMS\n\u2022 Fixed AdultZone issue with wrong message about VPN being required\n\u2022 Improved stability and performance\n\u2022 Many minor Bugs fixed"

    .line 170
    .line 171
    invoke-static {v0, v1}, Lflix/com/vision/App;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    const-string v0, "v3.0.0r"

    .line 175
    .line 176
    const-string v1, "\u2022 Added Original Link Source Name to Debrid Direct Links\n\u2022 Fixed issue with direct links for TV Shows not being pulled up \n\u2022 Fixed [OPENSTREAM], [FILEMOON] and [DOOD] direct links \n\u2022 Fixed Moflix Provider \n\u2022 Added Title Logo Animation to Built-In Player \n\u2022 Added \"Netflix Style\" Movie Rating Animation to Built-In Player  \n\u2022 Fixed issue with Channel Logo being wrongly cropped\n\u2022 Added Shimmer Effect to Movie Detail Page Loading\n\u2022 Many UI Improvements\n\u2022 Improved Performance and Stability\n\u2022 Minor bug fixes"

    .line 177
    .line 178
    invoke-static {v0, v1}, Lflix/com/vision/App;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    const-string v0, "v2.9.3r"

    .line 182
    .line 183
    const-string v1, "\u2022 [ADULTZONE] Fixed issue with videos not loading and from categories and search\n\u2022 Minor bug fixes"

    .line 184
    .line 185
    invoke-static {v0, v1}, Lflix/com/vision/App;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    const-string v0, "v2.9.2r"

    .line 189
    .line 190
    const-string v1, "\u2022 Improved subtitles syncing in Internal Player \n\u2022 [ADULTZONE] Added Option in Settings to show bigger thumbnails for AdultZone videos\n\u2022 [ADULTZONE] You can now remove a specific item from your History\n\u2022 [ADULTZONE] You can now remove a specific item from your Favorites\n\u2022 Improved Chromecast playback and meta data support\n\u2022 Fixed issue with App crashing on FireTV when opening the TV Shows Detail Page in v2.9.1r\n\u2022 Many other bug fixes"

    .line 191
    .line 192
    invoke-static {v0, v1}, Lflix/com/vision/App;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    const-string v0, "v2.9.1r"

    .line 196
    .line 197
    const-string v1, "\u2022 Added a new stable multi server Embed Player [FLIXVISION 1]. Give it a try\n\u2022 [LIVE TV] You can now add TV Categories to favorite for easier access\n\u2022 [LIVE TV] Removed duplicates in TV Categories\n\u2022 [LIVE TV] You will now see progress percentage when loading Live TV Channels\n\u2022 Added more providers for Real-Debrid, AllDebrid and Premiumize\n\u2022 Fixed issue with subtitles failing to load due to missing episode title on OpenSubtitles meta data\n\u2022 Added remaining episodes count to TV Show detail page\n\u2022 Added remaining runtime to Continue Watching\n\u2022 Fixed issue with {\\an8} showing in front of Subtitle text in built-in Player\n\u2022 Added K-Drama to main menu on Mobile & Tablets\n\u2022 Added playback resume for user Torrents (internal Player only) (RD, Premiumize and AllDebrid)\n\u2022 Fixed all issues with the movie/series Filter (finally)\n\u2022 Fixed issue with App crashing when trying to Play user torrent item with Internal Player\n\u2022 Fixed issue with whole show getting marked as Watched when an episode is completed (a nasty Bug)\n\u2022 Many other minor improvements and bug fixes"

    .line 198
    .line 199
    invoke-static {v0, v1}, Lflix/com/vision/App;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    const-string v0, "v2.9.0r"

    .line 203
    .line 204
    const-string v1, "\u2022 Added a new section for Asian Drama similar to Anime section but with more content and direct links.\n\u2022 Added more direct links for Anime\n\u2022 Fixed issue with wrong subtitles being loaded from cache when changing episodes\n\u2022 You can now change episode from within the built-in Player without having to go back to the Series details page\n\u2022 Fixed issue with clearing Anime history list\n\u2022 Many bugs fixed\n\u2022 Improved stability"

    .line 205
    .line 206
    invoke-static {v0, v1}, Lflix/com/vision/App;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    const-string v0, "v2.8.3r"

    .line 210
    .line 211
    const-string v1, "\u2022 Now you can remove items from Continue Watching using the long press on the Remote \n\u2022 Now you can select a different subtitle encoding from the settings in case your subtitles are unreadable\n\u2022 Improved Subtitles multi-language support\n\u2022 Improved Subtitles import logic\n\u2022 Added auto-play to Anime. You will not longer to selected link. This feature will be added soon for Movies & TV Shows\n\u2022 Added Marvel Studios to Streaming Services list\n\u2022 You can now sort your Favorites in alphabetical order or by added date \n\u2022 You can now clear your Watched History in one click\n\u2022 Fixed issue with App crashing when reloading links for an Episode"

    .line 212
    .line 213
    invoke-static {v0, v1}, Lflix/com/vision/App;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    const-string v0, "v2.8.2r"

    .line 217
    .line 218
    const-string v1, "\u2022 Added Auto Subtitles Download [FINALLY!] \n\u2022 Added Multi-Language Selection for Subtitles Download \n\u2022 Fixed issues related to Server Move. Movies titles logos, Some Embed providers etc... \n\u2022 Improved personal m3u Playlist Import. Bigger Size Playlists import will now be supported\n\u2022 Improved external players integration for tracking completion and progress. Completion or 95% will mark the item Movie as watched\n\u2022 Improved Performance and many Bugs Fixed"

    .line 219
    .line 220
    invoke-static {v0, v1}, Lflix/com/vision/App;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    const-string v0, "v2.8.1"

    .line 224
    .line 225
    const-string v1, "\u2022 Fixed issue with Hindi direct links manual resolution selection\n\u2022 Fixed issue with Anime direct stream showing resume popup for every episodes in internal Player\n\u2022 Fixed issue with App crashing when opening subtitle on some devices\n\u2022 Many Bug Fixes and minor Improvements"

    .line 226
    .line 227
    invoke-static {v0, v1}, Lflix/com/vision/App;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    const-string v0, "v2.8.0"

    .line 231
    .line 232
    const-string v1, "\u2022 Added More Direct Streams Providers and more to be added [FINALLY!]\n\u2022 Added direct streams support for Anime\n\u2022 Fixed \"Data still loading...\" issue when accessing the Anime section\n\u2022 You can now hide the Continue Watching Bar from the settings\n\u2022 You can now filter your Favorites by Movies and TV Shows\n\u2022 Fixed issue with hindi direct links showing for tv shows when turned off in settings\n\u2022 Movies will now be automatically marked as watched when the playback progress reaches 95%\n\u2022 Added Aspect Ratio change to Internal Player\n\u2022 Fixed issue with Trakt crashing when clicking on an Item from your collection\n\u2022 Watched Episodes will now be sent to Trakt\n\u2022 MOBILE ONLY: Added Continue Watching Bar on Home Screen\n\u2022 MOBILE ONLY: Added Streaming Services Bar on Home Screen \n\u2022 Temporary disabled Auto Play next episode feature. Will be rebuilt from scratch in v2.8.1r\n\u2022 Many Bug Fixes and minor Improvements"

    .line 233
    .line 234
    invoke-static {v0, v1}, Lflix/com/vision/App;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    const-string v0, "v2.7.3"

    .line 238
    .line 239
    const-string v1, "\u2022 Fixed Anime not loading Episode list\n\u2022 Favorites and Watched lists will now be shown in a GridView for easy navigation with TV Remote.\n\u2022 Fixed issue with \"Restart\" button not showing in TV \"More\" menu\n\u2022 Fixed issue with \"Sort by Year\" button not working when loading movies from Actor or Cast\n\u2022 Improved subtitles Offset adjustment tool in Built-in Player"

    .line 240
    .line 241
    invoke-static {v0, v1}, Lflix/com/vision/App;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    const-string v0, "v2.7.2"

    .line 245
    .line 246
    const-string v1, "\u2022 Fixed issue with TV Show only showing Season 1\n\u2022 Added new fast embed provider (FPS). Check it out\n\u2022 Now you will see RealDebrid account username, status and Premium subscription expiration date. (re-login needed)\n\u2022 Improved Leanback(TV) UI\n\u2022 Removed dead providers\n\u2022 Deleting favorites will now be automatically reflected on the TV UI\n\u2022 Other minor improvements"

    .line 247
    .line 248
    invoke-static {v0, v1}, Lflix/com/vision/App;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    const-string v0, "v2.7.1"

    .line 252
    .line 253
    const-string v1, "\u2022 Fixed issue with the continue watching and watched list\n\u2022 Fixed issue history not loading in AdultZone\n\u2022 Fixed many embed providers\n\u2022 Other minor improvements"

    .line 254
    .line 255
    invoke-static {v0, v1}, Lflix/com/vision/App;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    const-string v0, "v2.7.0"

    .line 259
    .line 260
    const-string v1, "\u2022 Improved VLC and MX Player integration. Now you will be able to resume playback just like you would with the internal player\n\u2022 Movie Title and Episode info will now be passed to VLC and MX Player\n\u2022 Added Subtitle Offset adjustment in built-in Player.\n\u2022 Fixed issue with FLIXVISION links showing blank page\n\u2022 Fixed Hindi Embed links playback\n\u2022 Added History to AdultZone to keep track of all your watched videos\n\u2022 Improved Trakt integration\n\u2022 Added IMDB rating to Movie Detail Page\n\u2022 Now you will be able to manage watching and watched in separate lists\n\u2022 Now you will be able to expand the movie plot text to see the full text\n\u2022 Now you can donate to support the project which will always be Ad-Free\n\u2022 Many other improvements and bug fixes"

    .line 261
    .line 262
    invoke-static {v0, v1}, Lflix/com/vision/App;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    const-string v0, "v2.6.3"

    .line 266
    .line 267
    const-string v1, "\u2022 +++ Fixed reported crashes on v2.6.1r  when importing Anime catalog.+++\n\u2022 Added new Anime content with including the latest Shows and Movies\n\u2022 Fixed issue with some Anime not loading episodes\n\u2022 Fixed issue with Duplicate Debrid links. We\'ll now identify files using hashes\n\u2022 Fix AllDebrid issue reported on small screens devices\n\u2022 Fixed App crashing when opening some Embed links\n\u2022 Fixed bug with back button not working when using classic search on Fire TV and Android TV\n\u2022 Improved UI\n\u2022 Many bugs fixed"

    .line 268
    .line 269
    invoke-static {v0, v1}, Lflix/com/vision/App;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    const-string v0, "v2.6.0"

    .line 273
    .line 274
    const-string v1, "\u2022 Added AllDebrid Integration for fast and 4K links\n\u2022 Added Users torrent section for Real-Debrid and Premiumize users. You can view and play your transfers files there\n\u2022 \"Show Debrid Links Only\" option added to settings\n\u2022 Improved RealDebrid and Premiumize Integration with more new resolvers including magnets\n\u2022 Added more local TV Channels for many countries and regions\n\u2022 Improved FLIXVISION Player. Added support for more container formats\n\u2022 Improved stability\n\u2022 Improved Animes"

    .line 275
    .line 276
    invoke-static {v0, v1}, Lflix/com/vision/App;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    const-string v0, "v2.5.0"

    .line 280
    .line 281
    const-string v1, "\u2022 Removed Ads completely and indefinitely. You will soon be able to make donations to support the project\n\u2022 Added Premiumize.me API. You can now link your Premiumize account with FlixVision and enjoy premium and fast streaming\n\u2022 Improved Real-Debrid integration. You will now see more links\n\u2022 Added magnet links support for Real-Debrid and Premiumize\n\u2022 Added Data and Settings Backup & Restore. You can also transfer Backups from on Device to another \n\u2022 You can now disable On-Screen keyboard for Search and use the system default keyboard including voice input [Classic Search]\n\u2022 Fixed [FLIXVISION3] links\n\u2022 You can now Rewind and Fast Forward using the dedicated remote buttons for both actions\n\u2022 Many bug fixes and minor improvements"

    .line 282
    .line 283
    invoke-static {v0, v1}, Lflix/com/vision/App;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    const-string v0, "v2.4.0r"

    .line 287
    .line 288
    const-string v1, "\u2022 Added more RealDebrid resolvers for old or rare Movies and TV shows\n\u2022 Direct Links will now be sorted by Quality\n\u2022 Fixed issue with casting real-debrid links to TV\n\u2022 Improved UI\n\u2022 Added more 4K RD Content resolvers\n\u2022 Fixed all reported crashes"

    .line 289
    .line 290
    invoke-static {v0, v1}, Lflix/com/vision/App;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    const-string v0, "v2.3.0r"

    .line 294
    .line 295
    const-string v1, "\u2022 Added RealDebrid support (Beta!) We will be improving in the next version.\n\u2022 improved fullscreen handling in WebPlayer. You can now use cursor on full stream.\n\u2022 Added subtitle download from OpenSubtitle in one click.\n\u2022 You can now change Subtitle size in Settings.\n\u2022 You can now select multiple language for Subtitles download. Opensubtitles.com(beta).\n\u2022 Fixed issue on Series which was causing only first season to be shown in the season list\n\u2022 Fixed all the bugs&crashes reported on v2.2.0r"

    .line 296
    .line 297
    invoke-static {v0, v1}, Lflix/com/vision/App;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    const-string v0, "v2.2.0r"

    .line 301
    .line 302
    const-string v1, "\u2022 Added full Chromecast support for direct links  \n\u2022 Now you can browse Series by Network  \n\u2022 Now you can browse all Bollywood Movies and TV Shows by Genres and Year. Simply use the Filter on Mobile on select Bollywood on home screen on TV\n\u2022 Fixed issue with clearing search history  \n\u2022 AdultZone search improvements\n\u2022 Fixed some reported issues with Trakt integration"

    .line 303
    .line 304
    invoke-static {v0, v1}, Lflix/com/vision/App;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    const-string v0, "v2.1.0r"

    .line 308
    .line 309
    const-string v1, "\u2022 Fixed direct links fetching issue for Movies.\n\u2022 Added AutoPlay Next Episode feature \n\u2022 You can configure in the settings when the Next Episode Button shows up  \n\u2022 Added Discover section where you can browse by genres and release year\n\u2022 Improved the filter feature \n\u2022 You can now disable start-up sound from the Settings  \n\u2022 Improved stability and added many minor improvements"

    .line 310
    .line 311
    invoke-static {v0, v1}, Lflix/com/vision/App;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    const-string v0, "v2.0.0"

    .line 315
    .line 316
    const-string v1, "\u2022 Added a completely new Design on TV  \n\u2022 Redesigned the built-in Player and added more features  \n\u2022 Added title logos in movie/series Details page.  \n\u2022 Added sections in the Settings.  \n\u2022 Added Subtitles import support to the Player. VTT and SRT are supported  \n\u2022 Fixed the movie/series filter.  \n\u2022 Improved swipe gesture handling in built-in Player.  \n\u2022 Added on-screen Keyboards support for Anime Search.  \n\u2022 Improved M3U channel Import to support bigger files.  \n\u2022 Improved Trakt integration and fixed all reported bugs.  \n\u2022 Improved the adultZone."

    .line 317
    .line 318
    invoke-static {v0, v1}, Lflix/com/vision/App;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    const-string v0, "v1.1.2r"

    .line 322
    .line 323
    const-string v1, "\u2022 Added a new search feature for TV with onscreen keyboard and voice search \n\u2022 You can now use your Play/Pause buttons on remote for Direct Playback \n\u2022 You can now select any player for direct video playback \n\u2022 Fixed issue with DB getting locked by other internal processes \n\u2022 Fixed issue with My Playlists not opening \n\u2022 Improved m3u import for big files \n\u2022 Fixed focus issue when scrolling on the Links list \n\u2022 Many bug fixes \n******** \n\u2022 Fixed onscreen keyboard issue with selecting blank-space and delete buttons on some old Amazon/Android TV devices"

    .line 324
    .line 325
    invoke-static {v0, v1}, Lflix/com/vision/App;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    const-string v0, "v1.1.1r"

    .line 329
    .line 330
    const-string v1, "\u2022 Fixed issue with App crashing when navigating with the remote \n\u2022 Now you can access your TV Favorites from the channel list \n\u2022 Fixed issue with adding tv channels to your favorites \n\u2022 Added new resolvers \n\u2022 Improved stability"

    .line 331
    .line 332
    invoke-static {v0, v1}, Lflix/com/vision/App;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    const-string v0, "v1.1.0"

    .line 336
    .line 337
    const-string v1, "\u2022 Finally fixed scrolling issue with loosing focus when using the remote\n\u2022 Fixed issue with Anime not loading Episodes\n\u2022 Added English, Hindi, Tamil and Bengali direct stream support \n\u2022 Added external player support for direct links \n\u2022 Added Live TV Extra Genre accessible from the menu \n\u2022 Live TV: Now you can search tv categories\n\u2022 Live TV: Now you can search in all channels and just selected category\n\u2022 Fixed issue with Trailer playback in full screen in Youtube \n\u2022 Fixed issue with playing movies in Fullscreen \n\u2022 Added option to disable related videos in AdultZone Player \n\u2022 Optimized the M3U Playlist import feature \n\u2022 Improved the M3U Playlist import caching logic \n\u2022 Fixed issue with black screen on 1.0.9.1 when using the internal player \n\u2022 Improved stability and performance"

    .line 338
    .line 339
    invoke-static {v0, v1}, Lflix/com/vision/App;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    const-string v0, "v1.0.9.1"

    .line 343
    .line 344
    const-string v1, "\u2022 Added external player support in AdultZone\n\u2022 Add related videos in AdultZone Player\n\u2022 Added Live TV Player selection in Settings\n\u2022 Added option to automatically play highest resolution in AdultZone\n\u2022 Reduced poster sizes in AdultZone \n\u2022 Fixed issue with 1080p and 720p tags not displaying on HD Videos\n\u2022 Added option to enable/disable animations in AdultZone \n\u2022 Fixed all the reported issues in v1.0.9r"

    .line 345
    .line 346
    invoke-static {v0, v1}, Lflix/com/vision/App;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    const-string v0, "v1.0.9"

    .line 350
    .line 351
    const-string v1, "\u2022 Added AdultZone with full adult video search functionality\n\u2022 Added PIN protection to AdultZone \n\u2022 Added option to completely disable AdultZone from the settings\n\u2022 Added Hindi dubbed movies links support \n\u2022 Fixed all App crashing issues reported by users on v1.0.8r \n\u2022 UI/UX design improvement \n\u2022 Added new resolvers"

    .line 352
    .line 353
    invoke-static {v0, v1}, Lflix/com/vision/App;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    const-string v0, "v1.0.8"

    .line 357
    .line 358
    const-string v1, "\u2022 Now you can import and manage your own M3U Playlists in FLIX VISION\n\u2022 Now you can search for people. Actor, Director etc...\n\u2022 Added \'Watch on TV\' icon in main page to explain TV Compatibility. (Smartphones and Tablets only) \n\u2022 Added overview to Season page\n\u2022 Added poster to tv show page when changing seasons\n\u2022 Many bugs fixes\n\u2022 Fixed bug preventing user from saving PLayer preference\n\u2022 Added many improvements in Live TV"

    .line 359
    .line 360
    invoke-static {v0, v1}, Lflix/com/vision/App;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    const-string v0, "v1.0.7"

    .line 364
    .line 365
    const-string v1, "\u2022 Fixed streaming links issue\n\u2022 Fixed streaming issue on FLIXVISION links\n\u2022 Added multiple sources\n\u2022 Fixed issue with App crashing while fetching links due to deadlocks\n\u2022 Fixed Anime\n\u2022 Improved stability"

    .line 366
    .line 367
    invoke-static {v0, v1}, Lflix/com/vision/App;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    const-string v0, "v1.0.6"

    .line 371
    .line 372
    const-string v1, "\u2022 Fixed issue with focus jumping from episode list when scrolling with remote\n\u2022 Now you can sort movies & shows from cast by release date\n\u2022 Improved UI and rendering\n\u2022 Improved Live TV filter\n\u2022 Improved navigation by inverting highlight color from black to white\n\u2022 Added Collection in movie details page when available\n\u2022 Added HD cover to details page"

    .line 373
    .line 374
    invoke-static {v0, v1}, Lflix/com/vision/App;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    const-string v0, "v1.0.5"

    .line 378
    .line 379
    const-string v1, "\u2022 Added Trakt support. Link your Trakt account to discover the features\n\u2022 Episode runtime (in min) will now show the correct value in the episode list\n\u2022 You can now hide unreleased movies and unaired episodes from the settings. such episodes will be hidden by default\n\u2022 Added Trending, In Theater and Popular tabs\n\u2022 You can now see the cache size in the Setting\n\u2022 Fixed issue with Movies from Cast only showing Movies or only showing TV Sows\n\u2022 You can now hide the movie title text watermark in Player(Experimental) \n\u2022 You can now hide/show current time in the Player from the Settings\n\u2022 Removing favourite item from the list will now be reflected dynamically\n\u2022 Fixed issue with remote loosing focus when scrolling down trough movies\n\u2022 Removed legacy mouse toggle\n\u2022 Selecting an Episode that has not yet been aired will now show the release date"

    .line 380
    .line 381
    invoke-static {v0, v1}, Lflix/com/vision/App;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    const-string v0, "v1.0.4"

    .line 385
    .line 386
    const-string v1, "\u2022 Added a new built-in mouse toggle for better navigation\n\u2022 Added ability to change mouse toggle color from the Settings\n\u2022 Fixed tv remote issue when selecting show seasons and episodes on some old FireTV Devices \n\u2022 Fixed App crashing sometimes when opening movies from Cast \n\u2022 Improved season navigation by highlighting selected season\n\u2022 Added new provider for Movie and TV Show\n\u2022 Fixed issue with empty movie list when filtering by genres\n\u2022 [LiveTV] HD Link will now show at the top of the list for channels with multiple resolutions\n\u2022 Many other bug fixes\n\u2022 You can now see the change log in the settings by clicking on the version number\n\u2022 You can now check for App updates from the main screen"

    .line 387
    .line 388
    invoke-static {v0, v1}, Lflix/com/vision/App;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    return-void
.end method

.method public fetch_anime()V
    .locals 3

    .line 1
    new-instance v0, Lx4/e;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lx4/e;-><init>(Lflix/com/vision/App;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    new-array v2, v2, [Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public filterList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lflix/com/vision/models/Movie;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lflix/com/vision/models/Movie;",
            ">;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lflix/com/vision/App;->u:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, LT4/f;->filterFlaggedContent(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :cond_0
    iget-object v0, p0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 10
    .line 11
    const-string v1, "pref_hide_unreleased"

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lflix/com/vision/models/Movie;

    .line 40
    .line 41
    invoke-virtual {v1}, Lflix/com/vision/models/Movie;->released()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    return-object v0

    .line 52
    :cond_3
    return-object p1
.end method

.method public getRequestQueue()Lcom/android/volley/RequestQueue;
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/App;->t:Lcom/android/volley/RequestQueue;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lh2/v;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lflix/com/vision/App;->t:Lcom/android/volley/RequestQueue;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lflix/com/vision/App;->t:Lcom/android/volley/RequestQueue;

    .line 16
    .line 17
    return-object v0
.end method

.method public initTech(Landroid/app/Activity;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lio/hopmonsdk/Hopmn$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/hopmonsdk/Hopmn$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "flixview3"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lio/hopmonsdk/Hopmn$Builder;->withPublisher(Ljava/lang/String;)Lio/hopmonsdk/Hopmn$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lio/hopmonsdk/Hopmn$Builder;->withMobileForeground(Ljava/lang/Boolean;)Lio/hopmonsdk/Hopmn$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "seed1-943u092.ddns.net,seed2-943u092.ddns.net"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lio/hopmonsdk/Hopmn$Builder;->withSeedServersCsv(Ljava/lang/String;)Lio/hopmonsdk/Hopmn$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "https://www.freeprivacypolicy.com/live/748c3b49-db34-4cfc-a76e-70b76f78006d"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lio/hopmonsdk/Hopmn$Builder;->withPrivacyPolicyUrl(Ljava/lang/String;)Lio/hopmonsdk/Hopmn$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const/4 v1, 0x1

    .line 31
    invoke-virtual {v0, v1}, Lio/hopmonsdk/Hopmn$Builder;->withImsdkActivation(Z)Lio/hopmonsdk/Hopmn$Builder;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lio/hopmonsdk/Hopmn$Builder;->withBandwidthOptReporting()Lio/hopmonsdk/Hopmn$Builder;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lio/hopmonsdk/Hopmn$Builder;->loggable()Lio/hopmonsdk/Hopmn$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0, p0}, Lio/hopmonsdk/Hopmn$Builder;->build(Landroid/content/Context;)Lio/hopmonsdk/Hopmn;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0, p1}, Lio/hopmonsdk/Hopmn;->startWithConsent(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    :catch_0
    return-void
.end method

.method public isTVDevice()Z
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "uimode"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/UiModeManager;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x4

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    sput-boolean v0, Lflix/com/vision/App;->I:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    :cond_0
    :goto_0
    sget-boolean v0, Lflix/com/vision/App;->I:Z

    .line 25
    .line 26
    return v0
.end method

.method public loadRemoteConfig()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation

    .line 1
    new-instance v0, Lflix/com/vision/a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lflix/com/vision/a;-><init>(Lflix/com/vision/App;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    new-array v2, v2, [Ljava/lang/Void;

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onCreate()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 2
    .line 3
    .line 4
    sput-object p0, Lflix/com/vision/App;->F:Lflix/com/vision/App;

    .line 5
    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v1, 0x1c

    .line 9
    .line 10
    if-lt v0, v1, :cond_2

    .line 11
    .line 12
    const-string v0, "activity"

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/app/ActivityManager;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 41
    .line 42
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 43
    .line 44
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-ne v2, v3, :cond_0

    .line 49
    .line 50
    iget-object v0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/4 v0, 0x0

    .line 54
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-nez v1, :cond_2

    .line 63
    .line 64
    :try_start_0
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/a;->v(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :catch_0
    move-exception v0

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v2, "WebView suffix error: "

    .line 72
    .line 73
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const-string v2, "App"

    .line 77
    .line 78
    invoke-static {v0, v1, v2}, Lb/c;->t(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :cond_2
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object v0, p0, Lflix/com/vision/App;->y:Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    const/4 v1, 0x1

    .line 93
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 94
    .line 95
    .line 96
    new-instance v0, Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .line 100
    .line 101
    iput-object v0, p0, Lflix/com/vision/App;->j:Ljava/util/ArrayList;

    .line 102
    .line 103
    new-instance v0, Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .line 107
    .line 108
    iput-object v0, p0, Lflix/com/vision/App;->n:Ljava/util/ArrayList;

    .line 109
    .line 110
    new-instance v0, Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .line 114
    .line 115
    iput-object v0, p0, Lflix/com/vision/App;->m:Ljava/util/ArrayList;

    .line 116
    .line 117
    new-instance v0, Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .line 121
    .line 122
    iput-object v0, p0, Lflix/com/vision/App;->p:Ljava/util/ArrayList;

    .line 123
    .line 124
    new-instance v0, Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .line 128
    .line 129
    sput-object v0, Lflix/com/vision/App;->A:Ljava/util/ArrayList;

    .line 130
    .line 131
    new-instance v0, Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .line 135
    .line 136
    sput-object v0, Lflix/com/vision/App;->B:Ljava/util/ArrayList;

    .line 137
    .line 138
    const-string v0, "flix.com.vision"

    .line 139
    .line 140
    const/4 v1, 0x0

    .line 141
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    iput-object v0, p0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 146
    .line 147
    new-instance v0, LP4/e;

    .line 148
    .line 149
    invoke-direct {v0, p0}, LP4/e;-><init>(Landroid/content/Context;)V

    .line 150
    .line 151
    .line 152
    iput-object v0, p0, Lflix/com/vision/App;->r:LP4/e;

    .line 153
    .line 154
    new-instance v0, LD4/h;

    .line 155
    .line 156
    invoke-direct {v0, p0}, LD4/h;-><init>(Landroid/content/Context;)V

    .line 157
    .line 158
    .line 159
    iput-object v0, p0, Lflix/com/vision/App;->q:LD4/h;

    .line 160
    .line 161
    invoke-virtual {p0}, Lflix/com/vision/App;->isTVDevice()Z

    .line 162
    .line 163
    .line 164
    iget-object v0, p0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 165
    .line 166
    const-string v2, "pref_hd_posters"

    .line 167
    .line 168
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    sput-boolean v0, Lflix/com/vision/App;->G:Z

    .line 173
    .line 174
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    new-instance v1, Lx4/c;

    .line 179
    .line 180
    const/4 v2, 0x1

    .line 181
    invoke-direct {v1, p0, v2}, Lx4/c;-><init>(Lflix/com/vision/App;I)V

    .line 182
    .line 183
    .line 184
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 185
    .line 186
    .line 187
    return-void
.end method

.method public parseRemoteConfig(Lcom/google/gson/JsonObject;)V
    .locals 27

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v4, "live_tv_main_active"

    .line 6
    .line 7
    const-string v0, "allmvland_hst"

    .line 8
    .line 9
    const-string v5, "anime_domain"

    .line 10
    .line 11
    const-string v6, "iptv_url"

    .line 12
    .line 13
    const-string v7, "update_available"

    .line 14
    .line 15
    :try_start_0
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 16
    .line 17
    .line 18
    move-result-object v8

    .line 19
    iget-object v8, v8, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 20
    .line 21
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 22
    .line 23
    .line 24
    move-result-object v8

    .line 25
    sget-object v9, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 26
    .line 27
    const/4 v9, 0x0

    .line 28
    invoke-interface {v8, v7, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 29
    .line 30
    .line 31
    move-result-object v8

    .line 32
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 33
    .line 34
    .line 35
    const-string v8, "domain"

    .line 36
    .line 37
    invoke-virtual {v2, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 38
    .line 39
    .line 40
    move-result-object v8

    .line 41
    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    if-eqz v8, :cond_0

    .line 46
    .line 47
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v10

    .line 51
    if-nez v10, :cond_0

    .line 52
    .line 53
    iput-object v8, v1, Lflix/com/vision/App;->w:Ljava/lang/String;

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    goto/16 :goto_b

    .line 58
    .line 59
    :cond_0
    :goto_0
    const-string v8, "apk_url"

    .line 60
    .line 61
    invoke-virtual {v2, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    const-string v10, "version_code"

    .line 70
    .line 71
    invoke-virtual {v2, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 72
    .line 73
    .line 74
    move-result-object v10

    .line 75
    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v10

    .line 79
    const-string v11, "update_enforcement"

    .line 80
    .line 81
    invoke-virtual {v2, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 82
    .line 83
    .line 84
    move-result-object v11

    .line 85
    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v11

    .line 89
    const-string v12, "janint"

    .line 90
    .line 91
    invoke-virtual {v2, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 92
    .line 93
    .line 94
    move-result-object v12

    .line 95
    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    .line 96
    .line 97
    .line 98
    move-result v12

    .line 99
    const-string v13, "janint3"

    .line 100
    .line 101
    invoke-virtual {v2, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 102
    .line 103
    .line 104
    move-result-object v13

    .line 105
    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    .line 106
    .line 107
    .line 108
    move-result v13

    .line 109
    const-string v14, "message"

    .line 110
    .line 111
    invoke-virtual {v2, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 112
    .line 113
    .line 114
    move-result-object v14

    .line 115
    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v14

    .line 119
    const-string v15, "version_name"

    .line 120
    .line 121
    invoke-virtual {v2, v15}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 122
    .line 123
    .line 124
    move-result-object v15

    .line 125
    invoke-virtual {v15}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v15

    .line 129
    invoke-virtual {v2, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 130
    .line 131
    .line 132
    move-result-object v16

    .line 133
    const/16 v17, 0x1

    .line 134
    .line 135
    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 140
    .line 141
    .line 142
    move-result-object v16

    .line 143
    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v9

    .line 147
    move-object/from16 v16, v10

    .line 148
    .line 149
    const-string v10, "MovieRulzHindi"

    .line 150
    .line 151
    invoke-virtual {v2, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 152
    .line 153
    .line 154
    move-result-object v10

    .line 155
    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v10

    .line 159
    move-object/from16 v18, v4

    .line 160
    .line 161
    const-string v4, "ml_host2"

    .line 162
    .line 163
    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    invoke-virtual {v2, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 172
    .line 173
    .line 174
    move-result v19

    .line 175
    if-eqz v19, :cond_1

    .line 176
    .line 177
    invoke-virtual {v2, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    :goto_1
    move-object/from16 v19, v11

    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_1
    const/4 v0, 0x0

    .line 189
    goto :goto_1

    .line 190
    :goto_2
    const-string v11, "adult"

    .line 191
    .line 192
    invoke-virtual {v2, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 193
    .line 194
    .line 195
    move-result-object v11

    .line 196
    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v11

    .line 200
    move-object/from16 v20, v11

    .line 201
    .line 202
    const-string v11, "autoembed"

    .line 203
    .line 204
    invoke-virtual {v2, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 205
    .line 206
    .line 207
    move-result-object v11

    .line 208
    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v11

    .line 212
    move-object/from16 v21, v15

    .line 213
    .line 214
    const-string v15, "anime_ajax_host"

    .line 215
    .line 216
    invoke-virtual {v2, v15}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 217
    .line 218
    .line 219
    move-result-object v15

    .line 220
    invoke-virtual {v15}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v15

    .line 224
    move-object/from16 v22, v14

    .line 225
    .line 226
    const-string v14, "futumov_pattern"

    .line 227
    .line 228
    invoke-virtual {v2, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 229
    .line 230
    .line 231
    move-result-object v14

    .line 232
    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    .line 233
    .line 234
    .line 235
    move-result v14

    .line 236
    move-object/from16 v23, v8

    .line 237
    .line 238
    const-string v8, "secure_gomov"

    .line 239
    .line 240
    invoke-virtual {v2, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 241
    .line 242
    .line 243
    move-result-object v8

    .line 244
    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    .line 245
    .line 246
    .line 247
    move-result v8

    .line 248
    move-object/from16 v24, v7

    .line 249
    .line 250
    const-string v7, "load_logos"

    .line 251
    .line 252
    invoke-virtual {v2, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 253
    .line 254
    .line 255
    move-result-object v7

    .line 256
    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    .line 257
    .line 258
    .line 259
    move-result v7

    .line 260
    move/from16 v25, v7

    .line 261
    .line 262
    const-string v7, "ads_delay"

    .line 263
    .line 264
    invoke-virtual {v2, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 265
    .line 266
    .line 267
    move-result-object v7

    .line 268
    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 269
    .line 270
    .line 271
    move-result v7

    .line 272
    if-eqz v9, :cond_2

    .line 273
    .line 274
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 275
    .line 276
    .line 277
    move-result v26

    .line 278
    if-lez v26, :cond_2

    .line 279
    .line 280
    move/from16 v26, v7

    .line 281
    .line 282
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 283
    .line 284
    .line 285
    move-result-object v7

    .line 286
    iget-object v7, v7, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 287
    .line 288
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 289
    .line 290
    .line 291
    move-result-object v7

    .line 292
    invoke-interface {v7, v5, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 293
    .line 294
    .line 295
    move-result-object v5

    .line 296
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 297
    .line 298
    .line 299
    goto :goto_3

    .line 300
    :cond_2
    move/from16 v26, v7

    .line 301
    .line 302
    :goto_3
    if-eqz v4, :cond_3

    .line 303
    .line 304
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 305
    .line 306
    .line 307
    move-result v5

    .line 308
    if-lez v5, :cond_3

    .line 309
    .line 310
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 311
    .line 312
    .line 313
    move-result-object v5

    .line 314
    iget-object v5, v5, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 315
    .line 316
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 317
    .line 318
    .line 319
    move-result-object v5

    .line 320
    const-string v7, "pref_ml_host"

    .line 321
    .line 322
    invoke-interface {v5, v7, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 323
    .line 324
    .line 325
    move-result-object v4

    .line 326
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 327
    .line 328
    .line 329
    :cond_3
    if-eqz v0, :cond_4

    .line 330
    .line 331
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 332
    .line 333
    .line 334
    move-result v4

    .line 335
    if-lez v4, :cond_4

    .line 336
    .line 337
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 338
    .line 339
    .line 340
    move-result-object v4

    .line 341
    iget-object v4, v4, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 342
    .line 343
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 344
    .line 345
    .line 346
    move-result-object v4

    .line 347
    const-string v5, "pref_allmvland_hst"

    .line 348
    .line 349
    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 354
    .line 355
    .line 356
    :cond_4
    const-string v0, "playlists"

    .line 357
    .line 358
    invoke-virtual {v2, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    if-eqz v0, :cond_5

    .line 367
    .line 368
    const/4 v4, 0x0

    .line 369
    :goto_4
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    .line 370
    .line 371
    .line 372
    move-result v5

    .line 373
    if-ge v4, v5, :cond_5

    .line 374
    .line 375
    invoke-virtual {v0, v4}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 376
    .line 377
    .line 378
    move-result-object v5

    .line 379
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 380
    .line 381
    .line 382
    move-result-object v5

    .line 383
    new-instance v7, Lflix/com/vision/models/HistoryTVLink;

    .line 384
    .line 385
    invoke-direct {v7}, Lflix/com/vision/models/HistoryTVLink;-><init>()V

    .line 386
    .line 387
    .line 388
    const-string v9, "name"

    .line 389
    .line 390
    invoke-virtual {v5, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 391
    .line 392
    .line 393
    move-result-object v9

    .line 394
    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v9

    .line 398
    iput-object v9, v7, Lflix/com/vision/models/HistoryTVLink;->name:Ljava/lang/String;

    .line 399
    .line 400
    const-string v9, "url"

    .line 401
    .line 402
    invoke-virtual {v5, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 403
    .line 404
    .line 405
    move-result-object v5

    .line 406
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v5

    .line 410
    iput-object v5, v7, Lflix/com/vision/models/HistoryTVLink;->url:Ljava/lang/String;

    .line 411
    .line 412
    const-string v5, "1"

    .line 413
    .line 414
    iput-object v5, v7, Lflix/com/vision/models/HistoryTVLink;->type:Ljava/lang/String;

    .line 415
    .line 416
    iget-object v5, v1, Lflix/com/vision/App;->r:LP4/e;

    .line 417
    .line 418
    invoke-virtual {v5, v7}, LP4/e;->addHistoryIPTV(Lflix/com/vision/models/HistoryTVLink;)Z

    .line 419
    .line 420
    .line 421
    add-int/lit8 v4, v4, 0x1

    .line 422
    .line 423
    goto :goto_4

    .line 424
    :cond_5
    if-eqz v20, :cond_7

    .line 425
    .line 426
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    .line 427
    .line 428
    .line 429
    move-result v0

    .line 430
    if-eqz v0, :cond_6

    .line 431
    .line 432
    goto :goto_5

    .line 433
    :cond_6
    move-object/from16 v0, v20

    .line 434
    .line 435
    goto :goto_6

    .line 436
    :cond_7
    :goto_5
    const-string v0, "https://github.com/fvision8/fv1/releases/download/11/adult.json"

    .line 437
    .line 438
    :goto_6
    iput-object v0, v1, Lflix/com/vision/App;->x:Ljava/lang/String;

    .line 439
    .line 440
    if-eqz v15, :cond_8

    .line 441
    .line 442
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 443
    .line 444
    .line 445
    move-result v4

    .line 446
    const/4 v5, 0x5

    .line 447
    if-le v4, v5, :cond_8

    .line 448
    .line 449
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 450
    .line 451
    .line 452
    move-result-object v4

    .line 453
    iget-object v4, v4, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 454
    .line 455
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 456
    .line 457
    .line 458
    move-result-object v4

    .line 459
    sget-object v5, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 460
    .line 461
    const-string v5, "anime_host_ajax_pref"

    .line 462
    .line 463
    invoke-interface {v4, v5, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 464
    .line 465
    .line 466
    move-result-object v4

    .line 467
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 468
    .line 469
    .line 470
    :cond_8
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 471
    .line 472
    .line 473
    move-result-object v4

    .line 474
    iget-object v4, v4, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 475
    .line 476
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 477
    .line 478
    .line 479
    move-result-object v4

    .line 480
    sget-object v5, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 481
    .line 482
    const-string v5, "MovieRulzHindi_url"

    .line 483
    .line 484
    invoke-interface {v4, v5, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 485
    .line 486
    .line 487
    move-result-object v4

    .line 488
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 489
    .line 490
    .line 491
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 492
    .line 493
    .line 494
    move-result-object v4

    .line 495
    iget-object v4, v4, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 496
    .line 497
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 498
    .line 499
    .line 500
    move-result-object v4

    .line 501
    const-string v5, "autoembed_url"

    .line 502
    .line 503
    invoke-interface {v4, v5, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 504
    .line 505
    .line 506
    move-result-object v4

    .line 507
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 508
    .line 509
    .line 510
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 511
    .line 512
    .line 513
    move-result-object v4

    .line 514
    iget-object v4, v4, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 515
    .line 516
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 517
    .line 518
    .line 519
    move-result-object v4

    .line 520
    const-string v5, "adult_z_url"

    .line 521
    .line 522
    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 527
    .line 528
    .line 529
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 530
    .line 531
    .line 532
    move-result-object v0

    .line 533
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 534
    .line 535
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 536
    .line 537
    .line 538
    move-result-object v0

    .line 539
    invoke-interface {v0, v6, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 540
    .line 541
    .line 542
    move-result-object v0

    .line 543
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 544
    .line 545
    .line 546
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 547
    .line 548
    .line 549
    move-result-object v0

    .line 550
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 551
    .line 552
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 553
    .line 554
    .line 555
    move-result-object v0

    .line 556
    const-string v3, "pref_t_ninja_1"

    .line 557
    .line 558
    invoke-interface {v0, v3, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 559
    .line 560
    .line 561
    move-result-object v0

    .line 562
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 563
    .line 564
    .line 565
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 566
    .line 567
    .line 568
    move-result-object v0

    .line 569
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 570
    .line 571
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 572
    .line 573
    .line 574
    move-result-object v0

    .line 575
    const-string v3, "pref_t_ninja_3"

    .line 576
    .line 577
    invoke-interface {v0, v3, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 578
    .line 579
    .line 580
    move-result-object v0

    .line 581
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 582
    .line 583
    .line 584
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 585
    .line 586
    .line 587
    move-result-object v0

    .line 588
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 589
    .line 590
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 591
    .line 592
    .line 593
    move-result-object v0

    .line 594
    const-string v3, "pref_secure_gomov"

    .line 595
    .line 596
    invoke-interface {v0, v3, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 597
    .line 598
    .line 599
    move-result-object v0

    .line 600
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 601
    .line 602
    .line 603
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 604
    .line 605
    .line 606
    move-result-object v0

    .line 607
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 608
    .line 609
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 610
    .line 611
    .line 612
    move-result-object v0

    .line 613
    const-string v3, "pref_show_ads"

    .line 614
    .line 615
    const/4 v4, 0x0

    .line 616
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 617
    .line 618
    .line 619
    move-result-object v0

    .line 620
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 621
    .line 622
    .line 623
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 624
    .line 625
    .line 626
    move-result-object v0

    .line 627
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 628
    .line 629
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 630
    .line 631
    .line 632
    move-result-object v0

    .line 633
    const-string v3, "show_unity_ads"

    .line 634
    .line 635
    const/4 v4, 0x0

    .line 636
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 637
    .line 638
    .line 639
    move-result-object v0

    .line 640
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 641
    .line 642
    .line 643
    iput-boolean v14, v1, Lflix/com/vision/App;->u:Z

    .line 644
    .line 645
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 646
    .line 647
    .line 648
    move-result-object v0

    .line 649
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 650
    .line 651
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 652
    .line 653
    .line 654
    move-result-object v0

    .line 655
    const-string v3, "pref_show_ads_delay"

    .line 656
    .line 657
    move/from16 v4, v26

    .line 658
    .line 659
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 660
    .line 661
    .line 662
    move-result-object v0

    .line 663
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 664
    .line 665
    .line 666
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 667
    .line 668
    .line 669
    move-result-object v0

    .line 670
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 671
    .line 672
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 673
    .line 674
    .line 675
    move-result-object v0

    .line 676
    const-string v3, "pref_load_logos"

    .line 677
    .line 678
    move/from16 v4, v25

    .line 679
    .line 680
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 681
    .line 682
    .line 683
    move-result-object v0

    .line 684
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    .line 686
    .line 687
    :try_start_1
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 688
    .line 689
    .line 690
    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 691
    move v4, v0

    .line 692
    goto :goto_7

    .line 693
    :catch_1
    move-exception v0

    .line 694
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 695
    .line 696
    .line 697
    const/4 v4, 0x0

    .line 698
    :goto_7
    :try_start_3
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 699
    .line 700
    .line 701
    move-result-object v0

    .line 702
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 703
    .line 704
    .line 705
    move-result-object v3

    .line 706
    const/4 v5, 0x0

    .line 707
    invoke-virtual {v0, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 708
    .line 709
    .line 710
    move-result-object v0

    .line 711
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 712
    .line 713
    if-le v4, v0, :cond_9

    .line 714
    .line 715
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 716
    .line 717
    .line 718
    move-result-object v0

    .line 719
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 720
    .line 721
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 722
    .line 723
    .line 724
    move-result-object v0

    .line 725
    sget-object v3, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 726
    .line 727
    move/from16 v4, v17

    .line 728
    .line 729
    move-object/from16 v3, v24

    .line 730
    .line 731
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 732
    .line 733
    .line 734
    move-result-object v0

    .line 735
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 736
    .line 737
    .line 738
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 739
    .line 740
    .line 741
    move-result-object v0

    .line 742
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 743
    .line 744
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 745
    .line 746
    .line 747
    move-result-object v0

    .line 748
    const-string v3, "update_url"

    .line 749
    .line 750
    move-object/from16 v4, v23

    .line 751
    .line 752
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 753
    .line 754
    .line 755
    move-result-object v0

    .line 756
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 757
    .line 758
    .line 759
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 760
    .line 761
    .line 762
    move-result-object v0

    .line 763
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 764
    .line 765
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 766
    .line 767
    .line 768
    move-result-object v0

    .line 769
    const-string v3, "update_message"

    .line 770
    .line 771
    move-object/from16 v4, v22

    .line 772
    .line 773
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 774
    .line 775
    .line 776
    move-result-object v0

    .line 777
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 778
    .line 779
    .line 780
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 781
    .line 782
    .line 783
    move-result-object v0

    .line 784
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 785
    .line 786
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 787
    .line 788
    .line 789
    move-result-object v0

    .line 790
    const-string v3, "update_version_name"

    .line 791
    .line 792
    move-object/from16 v4, v21

    .line 793
    .line 794
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 795
    .line 796
    .line 797
    move-result-object v0

    .line 798
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 799
    .line 800
    .line 801
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 802
    .line 803
    .line 804
    move-result-object v0

    .line 805
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 806
    .line 807
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 808
    .line 809
    .line 810
    move-result-object v0

    .line 811
    const-string v3, "mandatory_update"

    .line 812
    .line 813
    const-string v4, "mandatory"

    .line 814
    .line 815
    move-object/from16 v5, v19

    .line 816
    .line 817
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 818
    .line 819
    .line 820
    move-result v4

    .line 821
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 822
    .line 823
    .line 824
    move-result-object v0

    .line 825
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 826
    .line 827
    .line 828
    goto :goto_8

    .line 829
    :catch_2
    move-exception v0

    .line 830
    goto :goto_9

    .line 831
    :cond_9
    move-object/from16 v3, v24

    .line 832
    .line 833
    if-ne v4, v0, :cond_a

    .line 834
    .line 835
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 836
    .line 837
    .line 838
    move-result-object v0

    .line 839
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 840
    .line 841
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 842
    .line 843
    .line 844
    move-result-object v0

    .line 845
    sget-object v4, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 846
    .line 847
    const/4 v4, 0x0

    .line 848
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 849
    .line 850
    .line 851
    move-result-object v0

    .line 852
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 853
    .line 854
    .line 855
    :cond_a
    :goto_8
    move-object/from16 v3, v18

    .line 856
    .line 857
    goto :goto_a

    .line 858
    :goto_9
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 859
    .line 860
    .line 861
    goto :goto_8

    .line 862
    :goto_a
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 863
    .line 864
    .line 865
    move-result-object v0

    .line 866
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    .line 867
    .line 868
    .line 869
    move-result v0

    .line 870
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 871
    .line 872
    .line 873
    move-result-object v4

    .line 874
    iget-object v4, v4, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 875
    .line 876
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 877
    .line 878
    .line 879
    move-result-object v4

    .line 880
    sget-object v5, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 881
    .line 882
    invoke-interface {v4, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 883
    .line 884
    .line 885
    move-result-object v0

    .line 886
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 887
    .line 888
    .line 889
    const-string v0, "drama_host"

    .line 890
    .line 891
    invoke-virtual {v2, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 892
    .line 893
    .line 894
    move-result-object v0

    .line 895
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 896
    .line 897
    .line 898
    move-result-object v0

    .line 899
    if-eqz v0, :cond_b

    .line 900
    .line 901
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 902
    .line 903
    .line 904
    move-result v2

    .line 905
    if-nez v2, :cond_b

    .line 906
    .line 907
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 908
    .line 909
    .line 910
    move-result-object v2

    .line 911
    iget-object v2, v2, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 912
    .line 913
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 914
    .line 915
    .line 916
    move-result-object v2

    .line 917
    const-string v3, "pref_drama_host"

    .line 918
    .line 919
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 920
    .line 921
    .line 922
    move-result-object v0

    .line 923
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 924
    .line 925
    .line 926
    goto :goto_c

    .line 927
    :goto_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 928
    .line 929
    .line 930
    :cond_b
    :goto_c
    return-void
.end method

.method public refreshTokenRD()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lflix/com/vision/api/realdebrid/RealDebridCommon;->m:Z

    .line 3
    .line 4
    new-instance v0, LI4/g;

    .line 5
    .line 6
    invoke-direct {v0, p0}, LI4/g;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, LI4/g;->Do_Async()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public restartApp()V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const v1, 0x14008000

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-static {v0}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method
