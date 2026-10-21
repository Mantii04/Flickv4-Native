.class public final synthetic LB4/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/player/SimpleVideoPlayer;

.field public final synthetic f:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;Ljava/util/ArrayList;I)V
    .locals 0

    .line 1
    iput p3, p0, LB4/z;->b:I

    iput-object p1, p0, LB4/z;->e:Lflix/com/vision/activities/player/SimpleVideoPlayer;

    iput-object p2, p0, LB4/z;->f:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .line 1
    iget v0, p0, LB4/z;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string v0, "Audio changed to "

    .line 7
    .line 8
    iget-object v1, p0, LB4/z;->e:Lflix/com/vision/activities/player/SimpleVideoPlayer;

    .line 9
    .line 10
    iget-object v2, v1, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 11
    .line 12
    iget-object v3, p0, LB4/z;->f:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    check-cast v4, LK4/l;

    .line 19
    .line 20
    invoke-virtual {v2, v4}, Lflix/com/vision/bvp/BetterVideoPlayer;->setAudioTrack(LK4/l;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 24
    .line 25
    .line 26
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    check-cast p2, LK4/l;

    .line 36
    .line 37
    iget-object p2, p2, LK4/l;->c:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const/4 p2, 0x0

    .line 47
    const/16 v0, 0x30

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    invoke-static {v1, p1, p2, v0, v2}, LN4/a;->Success(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    :catch_0
    return-void

    .line 54
    :pswitch_0
    const/4 v0, 0x0

    .line 55
    iget-object v1, p0, LB4/z;->e:Lflix/com/vision/activities/player/SimpleVideoPlayer;

    .line 56
    .line 57
    iput-object v0, v1, Lflix/com/vision/activities/player/SimpleVideoPlayer;->e0:Ljava/lang/String;

    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    iput-boolean v0, v1, Lflix/com/vision/activities/player/SimpleVideoPlayer;->e:Z

    .line 61
    .line 62
    iget-object v0, v1, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 63
    .line 64
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->isPlaying()Z

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->w()V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, LB4/z;->f:Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Lflix/com/vision/models/VideoSource;

    .line 77
    .line 78
    const/4 v3, 0x0

    .line 79
    invoke-virtual {v1, v2, v3}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->y(Lflix/com/vision/models/VideoSource;Z)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Lflix/com/vision/models/VideoSource;

    .line 87
    .line 88
    iget-object v0, v0, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 89
    .line 90
    iput-object v0, v1, Lflix/com/vision/activities/player/SimpleVideoPlayer;->o0:Ljava/lang/String;

    .line 91
    .line 92
    iput p2, v1, Lflix/com/vision/activities/player/SimpleVideoPlayer;->n0:I

    .line 93
    .line 94
    iput-boolean v3, v1, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I0:Z

    .line 95
    .line 96
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I()V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
