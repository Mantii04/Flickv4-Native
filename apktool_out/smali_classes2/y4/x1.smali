.class public final synthetic Ly4/x1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Lflix/com/vision/activities/UserTorrentsActivity;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/UserTorrentsActivity;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly4/x1;->b:Lflix/com/vision/activities/UserTorrentsActivity;

    iput-object p2, p0, Ly4/x1;->e:Ljava/lang/String;

    iput-object p3, p0, Ly4/x1;->f:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    sget v0, Lflix/com/vision/activities/UserTorrentsActivity;->y:I

    .line 2
    .line 3
    iget-object v0, p0, Ly4/x1;->b:Lflix/com/vision/activities/UserTorrentsActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Ly4/x1;->f:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lflix/com/vision/models/VideoSource;

    .line 18
    .line 19
    invoke-virtual {v0}, Lflix/com/vision/activities/UserTorrentsActivity;->k()V

    .line 20
    .line 21
    .line 22
    iget-object p2, p1, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v1, p0, Ly4/x1;->e:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v1, p2}, LD4/a;->getTorboxDownloadLink(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {p2, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {p2, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    new-instance v1, LA4/u;

    .line 47
    .line 48
    const/16 v2, 0x8

    .line 49
    .line 50
    invoke-direct {v1, v2, v0, p1}, LA4/u;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    new-instance p1, Ly4/u1;

    .line 54
    .line 55
    const/16 v2, 0xa

    .line 56
    .line 57
    invoke-direct {p1, v0, v2}, Ly4/u1;-><init>(Lflix/com/vision/activities/UserTorrentsActivity;I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, v1, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 61
    .line 62
    .line 63
    return-void
.end method
