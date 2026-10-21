.class public final LB4/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# instance fields
.field public final synthetic b:Lflix/com/vision/activities/player/SimpleVideoPlayer;


# direct methods
.method public constructor <init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LB4/J;->b:Lflix/com/vision/activities/player/SimpleVideoPlayer;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lflix/com/vision/subtitles/OpenSubtitles$Subtitle;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, LB4/J;->b:Lflix/com/vision/activities/player/SimpleVideoPlayer;

    .line 2
    .line 3
    invoke-virtual {p1}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->p()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "Failed to fetch subs: "

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    const-string v0, "Subtitles"

    .line 25
    .line 26
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->B()V

    .line 30
    .line 31
    .line 32
    const/4 p2, 0x0

    .line 33
    iput-boolean p2, p1, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A0:Z

    .line 34
    .line 35
    iput-boolean p2, p1, Lflix/com/vision/activities/player/SimpleVideoPlayer;->E0:Z

    .line 36
    .line 37
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lflix/com/vision/subtitles/OpenSubtitles$Subtitle;",
            ">;>;",
            "Lretrofit2/Response<",
            "Ljava/util/List<",
            "Lflix/com/vision/subtitles/OpenSubtitles$Subtitle;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, LB4/J;->b:Lflix/com/vision/activities/player/SimpleVideoPlayer;

    .line 2
    .line 3
    invoke-virtual {p1}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->p()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p1, Lflix/com/vision/activities/player/SimpleVideoPlayer;->B0:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 34
    .line 35
    .line 36
    iget-object v0, p1, Lflix/com/vision/activities/player/SimpleVideoPlayer;->B0:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    check-cast p2, Ljava/util/Collection;

    .line 43
    .line 44
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 45
    .line 46
    .line 47
    iget-boolean p2, p1, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A0:Z

    .line 48
    .line 49
    if-eqz p2, :cond_0

    .line 50
    .line 51
    invoke-virtual {p1}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->E()V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iget-boolean p2, p1, Lflix/com/vision/activities/player/SimpleVideoPlayer;->E0:Z

    .line 56
    .line 57
    if-eqz p2, :cond_2

    .line 58
    .line 59
    iput v1, p1, Lflix/com/vision/activities/player/SimpleVideoPlayer;->C0:I

    .line 60
    .line 61
    iget-object p2, p1, Lflix/com/vision/activities/player/SimpleVideoPlayer;->B0:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    check-cast p2, Lflix/com/vision/subtitles/OpenSubtitles$Subtitle;

    .line 68
    .line 69
    const/4 v0, 0x1

    .line 70
    invoke-virtual {p1, v0}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->D(Z)V

    .line 71
    .line 72
    .line 73
    new-instance v0, Ljava/lang/Thread;

    .line 74
    .line 75
    new-instance v2, LA4/n;

    .line 76
    .line 77
    const/4 v3, 0x3

    .line 78
    invoke-direct {v2, v3, p1, p2}, LA4/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {p1}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->B()V

    .line 89
    .line 90
    .line 91
    :cond_2
    :goto_0
    iput-boolean v1, p1, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A0:Z

    .line 92
    .line 93
    iput-boolean v1, p1, Lflix/com/vision/activities/player/SimpleVideoPlayer;->E0:Z

    .line 94
    .line 95
    return-void
.end method
