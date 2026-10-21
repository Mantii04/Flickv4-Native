.class public final synthetic Ly4/i1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Ly4/i1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Ly4/i1;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget v0, Lflix/com/vision/activities/TraktActivity;->u:I

    .line 7
    .line 8
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v0, v0, Lflix/com/vision/App;->q:LD4/h;

    .line 13
    .line 14
    iget-object v0, v0, LD4/h;->a:Lcom/uwetrottmann/trakt5/TraktV2;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/uwetrottmann/trakt5/TraktV2;->sync()Lcom/uwetrottmann/trakt5/services/Sync;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/16 v1, 0x28

    .line 21
    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-interface {v0, v1}, Lcom/uwetrottmann/trakt5/services/Sync;->getPlayback(Ljava/lang/Integer;)Lretrofit2/Call;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Ljava/util/List;

    .line 39
    .line 40
    return-object v0

    .line 41
    :pswitch_0
    sget v0, Lflix/com/vision/activities/TraktActivity;->u:I

    .line 42
    .line 43
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v0, v0, Lflix/com/vision/App;->q:LD4/h;

    .line 48
    .line 49
    iget-object v0, v0, LD4/h;->a:Lcom/uwetrottmann/trakt5/TraktV2;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/uwetrottmann/trakt5/TraktV2;->users()Lcom/uwetrottmann/trakt5/services/Users;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sget-object v1, Lcom/uwetrottmann/trakt5/entities/UserSlug;->ME:Lcom/uwetrottmann/trakt5/entities/UserSlug;

    .line 56
    .line 57
    sget-object v2, Lcom/uwetrottmann/trakt5/enums/Extended;->FULL:Lcom/uwetrottmann/trakt5/enums/Extended;

    .line 58
    .line 59
    invoke-interface {v0, v1, v2}, Lcom/uwetrottmann/trakt5/services/Users;->watchlistShows(Lcom/uwetrottmann/trakt5/entities/UserSlug;Lcom/uwetrottmann/trakt5/enums/Extended;)Lretrofit2/Call;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Ljava/util/List;

    .line 72
    .line 73
    return-object v0

    .line 74
    :pswitch_1
    sget v0, Lflix/com/vision/activities/TraktActivity;->u:I

    .line 75
    .line 76
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iget-object v0, v0, Lflix/com/vision/App;->q:LD4/h;

    .line 81
    .line 82
    iget-object v0, v0, LD4/h;->a:Lcom/uwetrottmann/trakt5/TraktV2;

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/uwetrottmann/trakt5/TraktV2;->users()Lcom/uwetrottmann/trakt5/services/Users;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    sget-object v2, Lcom/uwetrottmann/trakt5/entities/UserSlug;->ME:Lcom/uwetrottmann/trakt5/entities/UserSlug;

    .line 89
    .line 90
    const/4 v0, 0x1

    .line 91
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    const/16 v0, 0x14

    .line 96
    .line 97
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    sget-object v6, Lcom/uwetrottmann/trakt5/enums/Extended;->FULL:Lcom/uwetrottmann/trakt5/enums/Extended;

    .line 102
    .line 103
    const/4 v3, 0x0

    .line 104
    const/4 v7, 0x0

    .line 105
    const/4 v8, 0x0

    .line 106
    invoke-interface/range {v1 .. v8}, Lcom/uwetrottmann/trakt5/services/Users;->history(Lcom/uwetrottmann/trakt5/entities/UserSlug;Lcom/uwetrottmann/trakt5/enums/HistoryType;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/uwetrottmann/trakt5/enums/Extended;Lorg/threeten/bp/OffsetDateTime;Lorg/threeten/bp/OffsetDateTime;)Lretrofit2/Call;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Ljava/util/List;

    .line 119
    .line 120
    return-object v0

    .line 121
    :pswitch_2
    sget v0, Lflix/com/vision/activities/TraktActivity;->u:I

    .line 122
    .line 123
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    iget-object v0, v0, Lflix/com/vision/App;->q:LD4/h;

    .line 128
    .line 129
    iget-object v0, v0, LD4/h;->a:Lcom/uwetrottmann/trakt5/TraktV2;

    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/uwetrottmann/trakt5/TraktV2;->users()Lcom/uwetrottmann/trakt5/services/Users;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    sget-object v1, Lcom/uwetrottmann/trakt5/entities/UserSlug;->ME:Lcom/uwetrottmann/trakt5/entities/UserSlug;

    .line 136
    .line 137
    sget-object v2, Lcom/uwetrottmann/trakt5/enums/Extended;->FULL:Lcom/uwetrottmann/trakt5/enums/Extended;

    .line 138
    .line 139
    invoke-interface {v0, v1, v2}, Lcom/uwetrottmann/trakt5/services/Users;->watchlistMovies(Lcom/uwetrottmann/trakt5/entities/UserSlug;Lcom/uwetrottmann/trakt5/enums/Extended;)Lretrofit2/Call;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    check-cast v0, Ljava/util/List;

    .line 152
    .line 153
    return-object v0

    .line 154
    nop

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
