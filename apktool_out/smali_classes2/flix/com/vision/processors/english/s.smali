.class public final Lflix/com/vision/processors/english/s;
.super Lflix/com/vision/processors/english/m;
.source "SourceFile"


# instance fields
.field public a:Landroid/webkit/WebView;

.field public final b:Lflix/com/vision/models/Movie;

.field public final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lflix/com/vision/models/Movie;LU4/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lflix/com/vision/processors/english/m;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lflix/com/vision/processors/english/s;->b:Lflix/com/vision/models/Movie;

    .line 5
    .line 6
    iput-object p1, p0, Lflix/com/vision/processors/english/s;->c:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Lflix/com/vision/processors/english/m;->callBack:LU4/f;

    .line 9
    .line 10
    new-instance p1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string p1, "https://ridomovie.to/"

    .line 16
    .line 17
    iput-object p1, p0, Lflix/com/vision/processors/english/m;->domain:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public process()V
    .locals 4

    .line 1
    iget-object v0, p0, Lflix/com/vision/processors/english/m;->domain:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lflix/com/vision/processors/english/s;->b:Lflix/com/vision/models/Movie;

    .line 4
    .line 5
    invoke-virtual {v1}, Lflix/com/vision/models/Movie;->getTitle()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, LD4/a;->ridoSearch(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

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
    new-instance v1, Lflix/com/vision/processors/english/j;

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    invoke-direct {v1, p0, v2}, Lflix/com/vision/processors/english/j;-><init>(Lflix/com/vision/processors/english/m;I)V

    .line 25
    .line 26
    .line 27
    new-instance v2, LA4/c;

    .line 28
    .line 29
    const/16 v3, 0x16

    .line 30
    .line 31
    invoke-direct {v2, v3}, LA4/c;-><init>(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 35
    .line 36
    .line 37
    return-void
.end method
