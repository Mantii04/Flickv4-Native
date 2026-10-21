.class public final synthetic LB4/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Action;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Le/v;


# direct methods
.method public synthetic constructor <init>(Le/v;I)V
    .locals 0

    .line 1
    iput p2, p0, LB4/N;->b:I

    iput-object p1, p0, LB4/N;->e:Le/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    const-string v0, "Trakt"

    .line 2
    .line 3
    const-string v1, "Checked in: "

    .line 4
    .line 5
    iget-object v2, p0, LB4/N;->e:Le/v;

    .line 6
    .line 7
    iget v3, p0, LB4/N;->b:I

    .line 8
    .line 9
    packed-switch v3, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    sget v0, Lflix/com/vision/activities/MainActivity;->T:I

    .line 13
    .line 14
    check-cast v2, Lflix/com/vision/activities/MainActivity;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const-string v0, "Trakt Sync Complete!"

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_0
    sget v3, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->N:I

    .line 31
    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    check-cast v2, Lflix/com/vision/activities/player/WebPlayerActivitySuper;

    .line 38
    .line 39
    iget-object v1, v2, Lflix/com/vision/activities/player/WebPlayerActivitySuper;->r:Lflix/com/vision/models/Movie;

    .line 40
    .line 41
    invoke-virtual {v1}, Lflix/com/vision/models/Movie;->getTitle()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :pswitch_1
    sget v3, Lflix/com/vision/activities/player/WebPlayerActivity;->O:I

    .line 57
    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    check-cast v2, Lflix/com/vision/activities/player/WebPlayerActivity;

    .line 64
    .line 65
    iget-object v1, v2, Lflix/com/vision/activities/player/WebPlayerActivity;->r:Lflix/com/vision/models/Movie;

    .line 66
    .line 67
    invoke-virtual {v1}, Lflix/com/vision/models/Movie;->getTitle()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    nop

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
