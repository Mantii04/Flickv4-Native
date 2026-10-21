.class public final synthetic Ly4/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/CastMoviesActivity;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/CastMoviesActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly4/t;->b:I

    iput-object p1, p0, Ly4/t;->e:Lflix/com/vision/activities/CastMoviesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Ly4/t;->e:Lflix/com/vision/activities/CastMoviesActivity;

    .line 3
    .line 4
    iget v2, p0, Ly4/t;->b:I

    .line 5
    .line 6
    check-cast p1, Lcom/google/gson/JsonElement;

    .line 7
    .line 8
    packed-switch v2, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    sget v2, Lflix/com/vision/activities/CastMoviesActivity;->G:I

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {p1, v0}, Lflix/com/vision/utils/JsonUtils;->parseCastMovies(Lcom/google/gson/JsonElement;I)Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v0, v1, Lflix/com/vision/activities/CastMoviesActivity;->m:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2, p1}, Lflix/com/vision/App;->filterList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 31
    .line 32
    .line 33
    iget-object p1, v1, Lflix/com/vision/activities/CastMoviesActivity;->q:Landroid/widget/TextView;

    .line 34
    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v3, "Series \u00b7 "

    .line 38
    .line 39
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, v1, Lflix/com/vision/activities/CastMoviesActivity;->f:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-nez p1, :cond_0

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-lez p1, :cond_0

    .line 69
    .line 70
    iget-object p1, v1, Lflix/com/vision/activities/CastMoviesActivity;->A:LC4/P;

    .line 71
    .line 72
    invoke-virtual {p1}, Lm1/V;->notifyDataSetChanged()V

    .line 73
    .line 74
    .line 75
    iget-object p1, v1, Lflix/com/vision/activities/CastMoviesActivity;->j:Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 81
    .line 82
    .line 83
    :cond_0
    return-void

    .line 84
    :pswitch_0
    sget v2, Lflix/com/vision/activities/CastMoviesActivity;->G:I

    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    const/4 v2, 0x0

    .line 90
    invoke-static {p1, v2}, Lflix/com/vision/utils/JsonUtils;->parseCastMovies(Lcom/google/gson/JsonElement;I)Ljava/util/ArrayList;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iget-object v3, v1, Lflix/com/vision/activities/CastMoviesActivity;->f:Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-virtual {v4, p1}, Lflix/com/vision/App;->filterList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 105
    .line 106
    .line 107
    iget-object p1, v1, Lflix/com/vision/activities/CastMoviesActivity;->p:Landroid/widget/TextView;

    .line 108
    .line 109
    new-instance v4, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string v5, "Movies \u00b7 "

    .line 112
    .line 113
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-lez p1, :cond_1

    .line 135
    .line 136
    iget-object p1, v1, Lflix/com/vision/activities/CastMoviesActivity;->A:LC4/P;

    .line 137
    .line 138
    invoke-virtual {p1}, Lm1/V;->notifyDataSetChanged()V

    .line 139
    .line 140
    .line 141
    iget-object p1, v1, Lflix/com/vision/activities/CastMoviesActivity;->j:Ljava/util/ArrayList;

    .line 142
    .line 143
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 147
    .line 148
    .line 149
    :cond_1
    const-string p1, "tv_credits"

    .line 150
    .line 151
    iget-wide v3, v1, Lflix/com/vision/activities/CastMoviesActivity;->r:J

    .line 152
    .line 153
    invoke-static {v1, p1, v3, v4, v2}, LD4/a;->getDetailCast(Landroid/content/Context;Ljava/lang/String;JZ)Lio/reactivex/Observable;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-virtual {p1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-virtual {p1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    new-instance v2, Ly4/t;

    .line 174
    .line 175
    invoke-direct {v2, v1, v0}, Ly4/t;-><init>(Lflix/com/vision/activities/CastMoviesActivity;I)V

    .line 176
    .line 177
    .line 178
    new-instance v0, Lx4/d;

    .line 179
    .line 180
    const/4 v1, 0x4

    .line 181
    invoke-direct {v0, v1}, Lx4/d;-><init>(I)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1, v2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 185
    .line 186
    .line 187
    return-void

    .line 188
    nop

    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
