.class public final synthetic Ly4/w1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/UserTorrentsActivity;

.field public final synthetic f:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/UserTorrentsActivity;Ljava/util/ArrayList;I)V
    .locals 0

    .line 1
    iput p3, p0, Ly4/w1;->b:I

    iput-object p1, p0, Ly4/w1;->e:Lflix/com/vision/activities/UserTorrentsActivity;

    iput-object p2, p0, Ly4/w1;->f:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Ly4/w1;->f:Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Ly4/w1;->e:Lflix/com/vision/activities/UserTorrentsActivity;

    .line 4
    .line 5
    iget v2, p0, Ly4/w1;->b:I

    .line 6
    .line 7
    packed-switch v2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget v2, Lflix/com/vision/activities/UserTorrentsActivity;->y:I

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lflix/com/vision/models/VideoSource;

    .line 23
    .line 24
    invoke-static {p1}, Lflix/com/vision/activities/LinksActivity;->setRDQtyLabel(Lflix/com/vision/models/VideoSource;)V

    .line 25
    .line 26
    .line 27
    iget p2, p1, Lflix/com/vision/models/VideoSource;->quality:I

    .line 28
    .line 29
    if-nez p2, :cond_0

    .line 30
    .line 31
    const/16 p2, 0x12c

    .line 32
    .line 33
    iput p2, p1, Lflix/com/vision/models/VideoSource;->quality:I

    .line 34
    .line 35
    :cond_0
    invoke-virtual {v1, p1}, Lflix/com/vision/activities/UserTorrentsActivity;->i(Lflix/com/vision/models/VideoSource;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_0
    sget v2, Lflix/com/vision/activities/UserTorrentsActivity;->y:I

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    check-cast p2, Lflix/com/vision/models/VideoSource;

    .line 49
    .line 50
    invoke-virtual {v1, p2}, Lflix/com/vision/activities/UserTorrentsActivity;->i(Lflix/com/vision/models/VideoSource;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :pswitch_1
    sget v2, Lflix/com/vision/activities/UserTorrentsActivity;->y:I

    .line 58
    .line 59
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    check-cast p2, Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v1}, Lflix/com/vision/activities/UserTorrentsActivity;->k()V

    .line 66
    .line 67
    .line 68
    iget-object v0, v1, Lflix/com/vision/activities/UserTorrentsActivity;->x:Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 71
    .line 72
    .line 73
    sget-object v0, Lflix/com/vision/api/realdebrid/RealDebridCommon;->f:Ljava/lang/String;

    .line 74
    .line 75
    sget-object v2, Lflix/com/vision/api/realdebrid/RealDebridCommon;->b:Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {p2, v0, v2}, LD4/a;->getLinkRealDebrid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    new-instance v2, Ly4/u1;

    .line 98
    .line 99
    const/16 v3, 0x9

    .line 100
    .line 101
    invoke-direct {v2, v1, v3}, Ly4/u1;-><init>(Lflix/com/vision/activities/UserTorrentsActivity;I)V

    .line 102
    .line 103
    .line 104
    new-instance v3, LA4/u;

    .line 105
    .line 106
    const/4 v4, 0x7

    .line 107
    invoke-direct {v3, v4, v1, p2}, LA4/u;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 111
    .line 112
    .line 113
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
