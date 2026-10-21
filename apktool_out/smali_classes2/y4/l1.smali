.class public final synthetic Ly4/l1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly4/l1;->b:I

    iput-object p1, p0, Ly4/l1;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Ly4/l1;->e:Ljava/lang/Object;

    .line 2
    .line 3
    iget v1, p0, Ly4/l1;->b:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Ljava/lang/String;

    .line 9
    .line 10
    sget v1, Lflix/com/vision/activities/TraktActivity;->u:I

    .line 11
    .line 12
    check-cast v0, Lflix/com/vision/models/Movie;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lflix/com/vision/models/Movie;->setImage_url(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-object v0

    .line 18
    :pswitch_0
    check-cast p1, Lcom/uwetrottmann/trakt5/entities/PlaybackResponse;

    .line 19
    .line 20
    sget v1, Lflix/com/vision/activities/TraktActivity;->u:I

    .line 21
    .line 22
    check-cast v0, Lflix/com/vision/activities/TraktActivity;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    new-instance v0, Lflix/com/vision/models/Movie;

    .line 28
    .line 29
    invoke-direct {v0}, Lflix/com/vision/models/Movie;-><init>()V

    .line 30
    .line 31
    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v1, p1, Lcom/uwetrottmann/trakt5/entities/GenericProgress;->movie:Lcom/uwetrottmann/trakt5/entities/SyncMovie;

    .line 36
    .line 37
    const-wide/16 v2, 0x0

    .line 38
    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setType(I)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p1, Lcom/uwetrottmann/trakt5/entities/GenericProgress;->movie:Lcom/uwetrottmann/trakt5/entities/SyncMovie;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/uwetrottmann/trakt5/entities/SyncMovie;->ids:Lcom/uwetrottmann/trakt5/entities/MovieIds;

    .line 48
    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    iget-object p1, p1, Lcom/uwetrottmann/trakt5/entities/BaseIds;->tmdb:Ljava/lang/Integer;

    .line 52
    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    int-to-long v2, p1

    .line 60
    :cond_1
    invoke-virtual {v0, v2, v3}, Lflix/com/vision/models/Movie;->setMovieId(J)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    iget-object v1, p1, Lcom/uwetrottmann/trakt5/entities/GenericProgress;->show:Lcom/uwetrottmann/trakt5/entities/SyncShow;

    .line 65
    .line 66
    if-eqz v1, :cond_4

    .line 67
    .line 68
    const/4 v1, 0x1

    .line 69
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setType(I)V

    .line 70
    .line 71
    .line 72
    iget-object v1, p1, Lcom/uwetrottmann/trakt5/entities/GenericProgress;->show:Lcom/uwetrottmann/trakt5/entities/SyncShow;

    .line 73
    .line 74
    iget-object v1, v1, Lcom/uwetrottmann/trakt5/entities/SyncShow;->ids:Lcom/uwetrottmann/trakt5/entities/ShowIds;

    .line 75
    .line 76
    if-eqz v1, :cond_3

    .line 77
    .line 78
    iget-object v1, v1, Lcom/uwetrottmann/trakt5/entities/BaseIds;->tmdb:Ljava/lang/Integer;

    .line 79
    .line 80
    if-eqz v1, :cond_3

    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    int-to-long v2, v1

    .line 87
    :cond_3
    invoke-virtual {v0, v2, v3}, Lflix/com/vision/models/Movie;->setMovieId(J)V

    .line 88
    .line 89
    .line 90
    iget-object v1, p1, Lcom/uwetrottmann/trakt5/entities/GenericProgress;->episode:Lcom/uwetrottmann/trakt5/entities/SyncEpisode;

    .line 91
    .line 92
    if-eqz v1, :cond_4

    .line 93
    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v2, "S"

    .line 97
    .line 98
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-object v2, p1, Lcom/uwetrottmann/trakt5/entities/GenericProgress;->episode:Lcom/uwetrottmann/trakt5/entities/SyncEpisode;

    .line 102
    .line 103
    iget-object v2, v2, Lcom/uwetrottmann/trakt5/entities/SyncEpisode;->season:Ljava/lang/Integer;

    .line 104
    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v2, "E"

    .line 109
    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget-object p1, p1, Lcom/uwetrottmann/trakt5/entities/GenericProgress;->episode:Lcom/uwetrottmann/trakt5/entities/SyncEpisode;

    .line 114
    .line 115
    iget-object p1, p1, Lcom/uwetrottmann/trakt5/entities/SyncEpisode;->number:Ljava/lang/Integer;

    .line 116
    .line 117
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {v0, p1}, Lflix/com/vision/models/Movie;->setTitle(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :cond_4
    :goto_0
    return-object v0

    .line 128
    :pswitch_1
    check-cast v0, Lflix/com/vision/activities/TraktActivity;

    .line 129
    .line 130
    check-cast p1, Lflix/com/vision/models/Movie;

    .line 131
    .line 132
    invoke-static {v0, p1}, Lflix/com/vision/activities/TraktActivity;->e(Lflix/com/vision/activities/TraktActivity;Lflix/com/vision/models/Movie;)Lio/reactivex/Observable;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    return-object p1

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
