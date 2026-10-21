.class public final Lflix/com/vision/processors/english/v;
.super Lflix/com/vision/processors/english/m;
.source "SourceFile"


# instance fields
.field public a:Landroid/webkit/WebView;

.field public final b:Landroid/content/Context;

.field public final c:Lflix/com/vision/models/Movie;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lflix/com/vision/models/Movie;LU4/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lflix/com/vision/processors/english/m;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lflix/com/vision/processors/english/v;->b:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lflix/com/vision/processors/english/v;->c:Lflix/com/vision/models/Movie;

    .line 7
    .line 8
    iput-object p3, p0, Lflix/com/vision/processors/english/m;->callBack:LU4/f;

    .line 9
    .line 10
    const-string p1, "https://ridomovies.tv/"

    .line 11
    .line 12
    iput-object p1, p0, Lflix/com/vision/processors/english/m;->domain:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public process(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lflix/com/vision/processors/english/m;->domain:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lflix/com/vision/processors/english/v;->c:Lflix/com/vision/models/Movie;

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
    new-instance v1, Lflix/com/vision/processors/english/t;

    .line 22
    .line 23
    invoke-direct {v1, p0, p1, p2}, Lflix/com/vision/processors/english/t;-><init>(Lflix/com/vision/processors/english/v;II)V

    .line 24
    .line 25
    .line 26
    new-instance p1, LA4/c;

    .line 27
    .line 28
    const/16 p2, 0x16

    .line 29
    .line 30
    invoke-direct {p1, p2}, LA4/c;-><init>(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 34
    .line 35
    .line 36
    return-void
.end method
