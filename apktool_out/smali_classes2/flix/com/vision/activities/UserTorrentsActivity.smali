.class public Lflix/com/vision/activities/UserTorrentsActivity;
.super Lflix/com/vision/activities/base/a;
.source "SourceFile"

# interfaces
.implements LU4/j;


# static fields
.field public static final synthetic y:I


# instance fields
.field public final b:Ljava/util/ArrayList;

.field public e:Landroidx/recyclerview/widget/RecyclerView;

.field public f:Landroid/widget/RelativeLayout;

.field public j:Landroid/widget/RelativeLayout;

.field public m:Landroid/widget/RelativeLayout;

.field public n:Landroid/widget/RelativeLayout;

.field public p:Landroid/widget/RelativeLayout;

.field public q:Lio/reactivex/disposables/Disposable;

.field public r:LC4/h0;

.field public s:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

.field public t:Ljava/lang/String;

.field public u:Ljava/util/HashMap;

.field public v:Lflix/com/vision/models/torrent/UserTorrent;

.field public w:LQ4/d;

.field public final x:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lflix/com/vision/activities/base/a;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lflix/com/vision/activities/UserTorrentsActivity;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lflix/com/vision/activities/UserTorrentsActivity;->t:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lflix/com/vision/activities/UserTorrentsActivity;->w:LQ4/d;

    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lflix/com/vision/activities/UserTorrentsActivity;->x:Ljava/util/ArrayList;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final e(Ljava/util/ArrayList;)V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lflix/com/vision/models/VideoSource;

    .line 18
    .line 19
    iget-object v2, v2, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 20
    .line 21
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, [Ljava/lang/CharSequence;

    .line 44
    .line 45
    new-instance v1, Le/r;

    .line 46
    .line 47
    new-instance v2, Landroid/view/ContextThemeWrapper;

    .line 48
    .line 49
    sget v3, Lflix/com/vision/R$style;->AlertDialogNoHeader:I

    .line 50
    .line 51
    invoke-direct {v2, p0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 52
    .line 53
    .line 54
    invoke-direct {v1, v2}, Le/r;-><init>(Landroid/content/Context;)V

    .line 55
    .line 56
    .line 57
    new-instance v2, Ly4/w1;

    .line 58
    .line 59
    const/4 v3, 0x1

    .line 60
    invoke-direct {v2, p0, p1, v3}, Ly4/w1;-><init>(Lflix/com/vision/activities/UserTorrentsActivity;Ljava/util/ArrayList;I)V

    .line 61
    .line 62
    .line 63
    const/4 p1, -0x1

    .line 64
    invoke-virtual {v1, v0, p1, v2}, Le/r;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Le/r;

    .line 65
    .line 66
    .line 67
    new-instance p1, LB4/c;

    .line 68
    .line 69
    const/4 v0, 0x5

    .line 70
    invoke-direct {p1, v0}, LB4/c;-><init>(I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, p1}, Le/r;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Le/r;

    .line 74
    .line 75
    .line 76
    const/4 p1, 0x1

    .line 77
    invoke-virtual {v1, p1}, Le/r;->setCancelable(Z)Le/r;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Le/r;->show()Le/s;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    .line 83
    :catch_0
    return-void
.end method

.method public final f(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-ge v2, v3, :cond_0

    .line 13
    .line 14
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lflix/com/vision/models/VideoSource;

    .line 19
    .line 20
    iget-object v3, v3, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, [Ljava/lang/CharSequence;

    .line 35
    .line 36
    new-instance v1, Le/r;

    .line 37
    .line 38
    new-instance v2, Landroid/view/ContextThemeWrapper;

    .line 39
    .line 40
    sget v3, Lflix/com/vision/R$style;->AlertDialogNoHeader:I

    .line 41
    .line 42
    invoke-direct {v2, p0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 43
    .line 44
    .line 45
    invoke-direct {v1, v2}, Le/r;-><init>(Landroid/content/Context;)V

    .line 46
    .line 47
    .line 48
    new-instance v2, Ly4/x1;

    .line 49
    .line 50
    invoke-direct {v2, p0, p1, p2}, Ly4/x1;-><init>(Lflix/com/vision/activities/UserTorrentsActivity;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 51
    .line 52
    .line 53
    const/4 p1, -0x1

    .line 54
    invoke-virtual {v1, v0, p1, v2}, Le/r;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Le/r;

    .line 55
    .line 56
    .line 57
    const/4 p1, 0x1

    .line 58
    invoke-virtual {v1, p1}, Le/r;->setCancelable(Z)Le/r;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Le/r;->show()Le/s;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    :catch_0
    return-void
.end method

.method public favoriteDeleted(I)V
    .locals 0

    return-void
.end method

.method public final g()V
    .locals 4

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/UserTorrentsActivity;->u:Ljava/util/HashMap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lflix/com/vision/activities/UserTorrentsActivity;->q:Lio/reactivex/disposables/Disposable;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 13
    .line 14
    .line 15
    :cond_1
    invoke-virtual {p0}, Lflix/com/vision/activities/UserTorrentsActivity;->k()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lflix/com/vision/activities/UserTorrentsActivity;->s:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 19
    .line 20
    sget-object v1, Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;->b:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 21
    .line 22
    if-ne v0, v1, :cond_2

    .line 23
    .line 24
    sget-object v0, Lflix/com/vision/api/realdebrid/RealDebridCommon;->f:Ljava/lang/String;

    .line 25
    .line 26
    sget-object v1, Lflix/com/vision/api/realdebrid/RealDebridCommon;->b:Ljava/lang/String;

    .line 27
    .line 28
    const/16 v2, 0x64

    .line 29
    .line 30
    invoke-static {v0, v1, v2}, LD4/a;->getMagnetsRealDebridLatest(Ljava/lang/String;Ljava/lang/String;I)Lio/reactivex/Observable;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    new-instance v1, Ly4/u1;

    .line 51
    .line 52
    const/16 v2, 0xb

    .line 53
    .line 54
    invoke-direct {v1, p0, v2}, Ly4/u1;-><init>(Lflix/com/vision/activities/UserTorrentsActivity;I)V

    .line 55
    .line 56
    .line 57
    new-instance v2, Ly4/u1;

    .line 58
    .line 59
    const/16 v3, 0xc

    .line 60
    .line 61
    invoke-direct {v2, p0, v3}, Ly4/u1;-><init>(Lflix/com/vision/activities/UserTorrentsActivity;I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Lflix/com/vision/activities/UserTorrentsActivity;->q:Lio/reactivex/disposables/Disposable;

    .line 69
    .line 70
    :cond_2
    iget-object v0, p0, Lflix/com/vision/activities/UserTorrentsActivity;->s:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 71
    .line 72
    sget-object v1, Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;->e:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 73
    .line 74
    if-ne v0, v1, :cond_3

    .line 75
    .line 76
    iget-object v0, p0, Lflix/com/vision/activities/UserTorrentsActivity;->t:Ljava/lang/String;

    .line 77
    .line 78
    invoke-static {v0}, LD4/a;->getUserTorrentPrem(Ljava/lang/String;)Lio/reactivex/Observable;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    new-instance v1, Ly4/u1;

    .line 99
    .line 100
    const/16 v2, 0xd

    .line 101
    .line 102
    invoke-direct {v1, p0, v2}, Ly4/u1;-><init>(Lflix/com/vision/activities/UserTorrentsActivity;I)V

    .line 103
    .line 104
    .line 105
    new-instance v2, Ly4/u1;

    .line 106
    .line 107
    const/16 v3, 0xe

    .line 108
    .line 109
    invoke-direct {v2, p0, v3}, Ly4/u1;-><init>(Lflix/com/vision/activities/UserTorrentsActivity;I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    iput-object v0, p0, Lflix/com/vision/activities/UserTorrentsActivity;->q:Lio/reactivex/disposables/Disposable;

    .line 117
    .line 118
    :cond_3
    iget-object v0, p0, Lflix/com/vision/activities/UserTorrentsActivity;->s:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 119
    .line 120
    sget-object v1, Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;->f:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 121
    .line 122
    if-ne v0, v1, :cond_4

    .line 123
    .line 124
    invoke-static {}, LD4/a;->getAllMagnetAllDebrid()Lio/reactivex/Observable;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    new-instance v1, Ly4/u1;

    .line 145
    .line 146
    const/16 v2, 0xf

    .line 147
    .line 148
    invoke-direct {v1, p0, v2}, Ly4/u1;-><init>(Lflix/com/vision/activities/UserTorrentsActivity;I)V

    .line 149
    .line 150
    .line 151
    new-instance v2, Ly4/u1;

    .line 152
    .line 153
    const/4 v3, 0x0

    .line 154
    invoke-direct {v2, p0, v3}, Ly4/u1;-><init>(Lflix/com/vision/activities/UserTorrentsActivity;I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 158
    .line 159
    .line 160
    :cond_4
    iget-object v0, p0, Lflix/com/vision/activities/UserTorrentsActivity;->s:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 161
    .line 162
    sget-object v1, Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;->j:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 163
    .line 164
    if-ne v0, v1, :cond_5

    .line 165
    .line 166
    sget-object v0, LJ4/b;->b:Ljava/lang/String;

    .line 167
    .line 168
    invoke-static {v0}, LD4/a;->getTorboxUserTorrents(Ljava/lang/String;)Lio/reactivex/Observable;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    new-instance v1, Ly4/u1;

    .line 189
    .line 190
    const/4 v2, 0x1

    .line 191
    invoke-direct {v1, p0, v2}, Ly4/u1;-><init>(Lflix/com/vision/activities/UserTorrentsActivity;I)V

    .line 192
    .line 193
    .line 194
    new-instance v2, Ly4/u1;

    .line 195
    .line 196
    const/4 v3, 0x2

    .line 197
    invoke-direct {v2, p0, v3}, Ly4/u1;-><init>(Lflix/com/vision/activities/UserTorrentsActivity;I)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    iput-object v0, p0, Lflix/com/vision/activities/UserTorrentsActivity;->q:Lio/reactivex/disposables/Disposable;

    .line 205
    .line 206
    :cond_5
    iget-object v0, p0, Lflix/com/vision/activities/UserTorrentsActivity;->s:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 207
    .line 208
    sget-object v1, Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;->m:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 209
    .line 210
    if-ne v0, v1, :cond_6

    .line 211
    .line 212
    invoke-static {}, LD4/a;->getOffcloudUserTorrents()Lio/reactivex/Observable;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    new-instance v1, Ly4/u1;

    .line 233
    .line 234
    const/4 v2, 0x3

    .line 235
    invoke-direct {v1, p0, v2}, Ly4/u1;-><init>(Lflix/com/vision/activities/UserTorrentsActivity;I)V

    .line 236
    .line 237
    .line 238
    new-instance v2, Ly4/u1;

    .line 239
    .line 240
    const/4 v3, 0x4

    .line 241
    invoke-direct {v2, p0, v3}, Ly4/u1;-><init>(Lflix/com/vision/activities/UserTorrentsActivity;I)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    iput-object v0, p0, Lflix/com/vision/activities/UserTorrentsActivity;->q:Lio/reactivex/disposables/Disposable;

    .line 249
    .line 250
    :cond_6
    return-void
.end method

.method public getMagnetPrem(Ljava/lang/String;)V
    .locals 5

    .line 1
    sget-object v0, Lflix/com/vision/api/premiumize/PremiumizeCommon;->e:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "https://www.premiumize.me/api/transfer/directdl?apikey="

    .line 4
    .line 5
    invoke-static {v1, v0}, LA/i;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ly4/y1;

    .line 10
    .line 11
    new-instance v2, Ly4/v1;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-direct {v2, p0, p1, v3}, Ly4/v1;-><init>(Lflix/com/vision/activities/UserTorrentsActivity;Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    new-instance v3, Landroidx/media3/exoplayer/source/chunk/a;

    .line 18
    .line 19
    const/16 v4, 0x1c

    .line 20
    .line 21
    invoke-direct {v3, v4}, Landroidx/media3/exoplayer/source/chunk/a;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, v0, v2, v3, p1}, Ly4/y1;-><init>(Ljava/lang/String;Ly4/v1;Landroidx/media3/exoplayer/source/chunk/a;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lflix/com/vision/App;->getRequestQueue()Lcom/android/volley/RequestQueue;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/UserTorrentsActivity;->w:LQ4/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    :cond_0
    return-void
.end method

.method public final i(Lflix/com/vision/models/VideoSource;)V
    .locals 9

    .line 1
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 6
    .line 7
    const-string v1, "player_index"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-lez v3, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x4

    .line 17
    if-ge v3, v0, :cond_0

    .line 18
    .line 19
    :try_start_0
    iget-object v5, p1, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v8, -0x1

    .line 23
    move-object v7, p0

    .line 24
    move-object v4, p1

    .line 25
    :try_start_1
    invoke-static/range {v3 .. v8}, Lflix/com/vision/activities/LinksActivity;->PlayExternal(ILflix/com/vision/models/VideoSource;Ljava/lang/String;Lflix/com/vision/models/Movie;Landroid/app/Activity;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :catch_0
    move-object v4, p1

    .line 30
    :catch_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string v0, "Failed to load external Player, Make sure it is installed"

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v4}, Lflix/com/vision/activities/UserTorrentsActivity;->j(Lflix/com/vision/models/VideoSource;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    move-object v4, p1

    .line 49
    invoke-virtual {p0, v4}, Lflix/com/vision/activities/UserTorrentsActivity;->j(Lflix/com/vision/models/VideoSource;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final j(Lflix/com/vision/models/VideoSource;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lflix/com/vision/activities/UserTorrentsActivity;->v:Lflix/com/vision/models/torrent/UserTorrent;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v0, v1, Lflix/com/vision/models/torrent/UserTorrent;->filename:Ljava/lang/String;

    .line 8
    .line 9
    :cond_0
    new-instance v1, Landroid/content/Intent;

    .line 10
    .line 11
    const-class v2, Lflix/com/vision/activities/player/SimpleVideoPlayer;

    .line 12
    .line 13
    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 14
    .line 15
    .line 16
    const-string v2, "movie_id"

    .line 17
    .line 18
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    const-string v2, "title"

    .line 22
    .line 23
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    const-string v0, "language"

    .line 27
    .line 28
    iget-object v2, p1, Lflix/com/vision/models/VideoSource;->language:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    const-string v0, "streamUrl"

    .line 34
    .line 35
    iget-object p1, p1, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    const-string p1, "is_torrent"

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final k()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lflix/com/vision/activities/UserTorrentsActivity;->h()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {p0, v1}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, p0, Lflix/com/vision/activities/UserTorrentsActivity;->w:LQ4/d;

    .line 14
    .line 15
    invoke-virtual {v1}, LQ4/d;->setloading()V

    .line 16
    .line 17
    .line 18
    :try_start_0
    iget-object v1, p0, Lflix/com/vision/activities/UserTorrentsActivity;->w:LQ4/d;

    .line 19
    .line 20
    const-string v2, ""

    .line 21
    .line 22
    invoke-virtual {v1, v0, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catch_0
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lflix/com/vision/activities/base/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lflix/com/vision/R$layout;->activity_user_torrents:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Le/v;->setContentView(I)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lflix/com/vision/activities/UserTorrentsActivity;->u:Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 21
    .line 22
    sget-object v0, LT4/f;->a:Ljava/lang/String;

    .line 23
    .line 24
    const-string v0, "prem_apikey"

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lflix/com/vision/activities/UserTorrentsActivity;->t:Ljava/lang/String;

    .line 32
    .line 33
    sget-object p1, Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;->b:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 34
    .line 35
    iput-object p1, p0, Lflix/com/vision/activities/UserTorrentsActivity;->s:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 36
    .line 37
    sget v0, Lflix/com/vision/R$id;->alldebrid_button:I

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Le/v;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 44
    .line 45
    iput-object v0, p0, Lflix/com/vision/activities/UserTorrentsActivity;->m:Landroid/widget/RelativeLayout;

    .line 46
    .line 47
    sget v0, Lflix/com/vision/R$id;->prem_button:I

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Le/v;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 54
    .line 55
    iput-object v0, p0, Lflix/com/vision/activities/UserTorrentsActivity;->j:Landroid/widget/RelativeLayout;

    .line 56
    .line 57
    sget v0, Lflix/com/vision/R$id;->rd_button:I

    .line 58
    .line 59
    invoke-virtual {p0, v0}, Le/v;->findViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 64
    .line 65
    iput-object v0, p0, Lflix/com/vision/activities/UserTorrentsActivity;->f:Landroid/widget/RelativeLayout;

    .line 66
    .line 67
    sget v0, Lflix/com/vision/R$id;->torbox_button:I

    .line 68
    .line 69
    invoke-virtual {p0, v0}, Le/v;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 74
    .line 75
    iput-object v0, p0, Lflix/com/vision/activities/UserTorrentsActivity;->n:Landroid/widget/RelativeLayout;

    .line 76
    .line 77
    sget v0, Lflix/com/vision/R$id;->offcloud_button:I

    .line 78
    .line 79
    invoke-virtual {p0, v0}, Le/v;->findViewById(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 84
    .line 85
    iput-object v0, p0, Lflix/com/vision/activities/UserTorrentsActivity;->p:Landroid/widget/RelativeLayout;

    .line 86
    .line 87
    sget-boolean v1, LG4/b;->a:Z

    .line 88
    .line 89
    const/16 v2, 0x8

    .line 90
    .line 91
    if-nez v1, :cond_0

    .line 92
    .line 93
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_0
    sget-object v0, Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;->m:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 98
    .line 99
    iput-object v0, p0, Lflix/com/vision/activities/UserTorrentsActivity;->s:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 100
    .line 101
    :goto_0
    sget-boolean v0, Lflix/com/vision/api/alldebrid/AllDebridCommon;->f:Z

    .line 102
    .line 103
    if-nez v0, :cond_1

    .line 104
    .line 105
    iget-object v0, p0, Lflix/com/vision/activities/UserTorrentsActivity;->m:Landroid/widget/RelativeLayout;

    .line 106
    .line 107
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_1
    sget-object v0, Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;->f:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 112
    .line 113
    iput-object v0, p0, Lflix/com/vision/activities/UserTorrentsActivity;->s:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 114
    .line 115
    :goto_1
    sget-boolean v0, Lflix/com/vision/api/realdebrid/RealDebridCommon;->m:Z

    .line 116
    .line 117
    if-nez v0, :cond_2

    .line 118
    .line 119
    iget-object p1, p0, Lflix/com/vision/activities/UserTorrentsActivity;->f:Landroid/widget/RelativeLayout;

    .line 120
    .line 121
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_2
    iput-object p1, p0, Lflix/com/vision/activities/UserTorrentsActivity;->s:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 126
    .line 127
    :goto_2
    sget-boolean p1, Lflix/com/vision/api/premiumize/PremiumizeCommon;->b:Z

    .line 128
    .line 129
    if-nez p1, :cond_3

    .line 130
    .line 131
    iget-object p1, p0, Lflix/com/vision/activities/UserTorrentsActivity;->j:Landroid/widget/RelativeLayout;

    .line 132
    .line 133
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 134
    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_3
    sget-object p1, Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;->e:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 138
    .line 139
    iput-object p1, p0, Lflix/com/vision/activities/UserTorrentsActivity;->s:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 140
    .line 141
    :goto_3
    iget-object p1, p0, Lflix/com/vision/activities/UserTorrentsActivity;->n:Landroid/widget/RelativeLayout;

    .line 142
    .line 143
    if-eqz p1, :cond_5

    .line 144
    .line 145
    sget-boolean v0, LJ4/b;->a:Z

    .line 146
    .line 147
    if-nez v0, :cond_4

    .line 148
    .line 149
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 150
    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_4
    sget-object p1, Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;->j:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 154
    .line 155
    iput-object p1, p0, Lflix/com/vision/activities/UserTorrentsActivity;->s:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 156
    .line 157
    :cond_5
    :goto_4
    sget p1, Lflix/com/vision/R$id;->label_series_button:I

    .line 158
    .line 159
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    check-cast p1, Landroid/widget/TextView;

    .line 164
    .line 165
    sget p1, Lflix/com/vision/R$id;->label_movies_button:I

    .line 166
    .line 167
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    check-cast p1, Landroid/widget/TextView;

    .line 172
    .line 173
    iget-object p1, p0, Lflix/com/vision/activities/UserTorrentsActivity;->f:Landroid/widget/RelativeLayout;

    .line 174
    .line 175
    new-instance v0, Ly4/t1;

    .line 176
    .line 177
    const/4 v1, 0x0

    .line 178
    invoke-direct {v0, p0, v1}, Ly4/t1;-><init>(Lflix/com/vision/activities/UserTorrentsActivity;I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    .line 183
    .line 184
    iget-object p1, p0, Lflix/com/vision/activities/UserTorrentsActivity;->j:Landroid/widget/RelativeLayout;

    .line 185
    .line 186
    new-instance v0, Ly4/t1;

    .line 187
    .line 188
    const/4 v1, 0x1

    .line 189
    invoke-direct {v0, p0, v1}, Ly4/t1;-><init>(Lflix/com/vision/activities/UserTorrentsActivity;I)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    .line 194
    .line 195
    iget-object p1, p0, Lflix/com/vision/activities/UserTorrentsActivity;->m:Landroid/widget/RelativeLayout;

    .line 196
    .line 197
    new-instance v0, Ly4/t1;

    .line 198
    .line 199
    const/4 v1, 0x2

    .line 200
    invoke-direct {v0, p0, v1}, Ly4/t1;-><init>(Lflix/com/vision/activities/UserTorrentsActivity;I)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    .line 205
    .line 206
    iget-object p1, p0, Lflix/com/vision/activities/UserTorrentsActivity;->n:Landroid/widget/RelativeLayout;

    .line 207
    .line 208
    if-eqz p1, :cond_6

    .line 209
    .line 210
    new-instance v0, Ly4/t1;

    .line 211
    .line 212
    const/4 v1, 0x3

    .line 213
    invoke-direct {v0, p0, v1}, Ly4/t1;-><init>(Lflix/com/vision/activities/UserTorrentsActivity;I)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    .line 218
    .line 219
    :cond_6
    iget-object p1, p0, Lflix/com/vision/activities/UserTorrentsActivity;->p:Landroid/widget/RelativeLayout;

    .line 220
    .line 221
    new-instance v0, Ly4/t1;

    .line 222
    .line 223
    const/4 v1, 0x4

    .line 224
    invoke-direct {v0, p0, v1}, Ly4/t1;-><init>(Lflix/com/vision/activities/UserTorrentsActivity;I)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    .line 229
    .line 230
    sget p1, Lflix/com/vision/R$id;->recyclerview_cast:I

    .line 231
    .line 232
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 237
    .line 238
    iput-object p1, p0, Lflix/com/vision/activities/UserTorrentsActivity;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 239
    .line 240
    sget-boolean v0, Lflix/com/vision/App;->I:Z

    .line 241
    .line 242
    if-eqz v0, :cond_7

    .line 243
    .line 244
    const/16 v2, 0xc

    .line 245
    .line 246
    :cond_7
    new-instance v0, LT4/k;

    .line 247
    .line 248
    invoke-direct {v0, v2}, LT4/k;-><init>(I)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Lm1/d0;)V

    .line 252
    .line 253
    .line 254
    new-instance p1, LC4/h0;

    .line 255
    .line 256
    iget-object v0, p0, Lflix/com/vision/activities/UserTorrentsActivity;->b:Ljava/util/ArrayList;

    .line 257
    .line 258
    invoke-direct {p1, p0, v0}, LC4/h0;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 259
    .line 260
    .line 261
    iput-object p1, p0, Lflix/com/vision/activities/UserTorrentsActivity;->r:LC4/h0;

    .line 262
    .line 263
    iget-object p1, p0, Lflix/com/vision/activities/UserTorrentsActivity;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 264
    .line 265
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 266
    .line 267
    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 271
    .line 272
    .line 273
    iget-object p1, p0, Lflix/com/vision/activities/UserTorrentsActivity;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 274
    .line 275
    iget-object v0, p0, Lflix/com/vision/activities/UserTorrentsActivity;->r:LC4/h0;

    .line 276
    .line 277
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lm1/V;)V

    .line 278
    .line 279
    .line 280
    iget-object p1, p0, Lflix/com/vision/activities/UserTorrentsActivity;->f:Landroid/widget/RelativeLayout;

    .line 281
    .line 282
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 283
    .line 284
    .line 285
    invoke-virtual {p0}, Lflix/com/vision/activities/UserTorrentsActivity;->g()V

    .line 286
    .line 287
    .line 288
    return-void
.end method

.method public onMediaSelected(Lflix/com/vision/models/Movie;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lflix/com/vision/activities/MovieDetailActivity;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "movie"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const/high16 p1, 0x10000000

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const v0, 0x102002c

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return v1
.end method

.method public torrentClicked(Lflix/com/vision/models/torrent/UserTorrent;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lflix/com/vision/activities/UserTorrentsActivity;->v:Lflix/com/vision/models/torrent/UserTorrent;

    .line 2
    .line 3
    iget-object v0, p1, Lflix/com/vision/models/torrent/UserTorrent;->source_type:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 4
    .line 5
    sget-object v1, Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;->b:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p1, Lflix/com/vision/models/torrent/UserTorrent;->status:Ljava/lang/String;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string v3, "error"

    .line 15
    .line 16
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const-string p1, "Cannot be played!"

    .line 23
    .line 24
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    iget-object v0, p1, Lflix/com/vision/models/torrent/UserTorrent;->source_type:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 33
    .line 34
    sget-object v3, Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;->f:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 35
    .line 36
    if-ne v0, v3, :cond_1

    .line 37
    .line 38
    iget-object v0, p1, Lflix/com/vision/models/torrent/UserTorrent;->status:Ljava/lang/String;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    const-string v4, "Ready"

    .line 43
    .line 44
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_1

    .line 49
    .line 50
    iget-object v0, p1, Lflix/com/vision/models/torrent/UserTorrent;->status:Ljava/lang/String;

    .line 51
    .line 52
    const-string v4, "Downloading"

    .line 53
    .line 54
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_1

    .line 59
    .line 60
    const-string p1, "Cannot be played now!"

    .line 61
    .line 62
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_1
    iget-object v0, p1, Lflix/com/vision/models/torrent/UserTorrent;->source_type:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 71
    .line 72
    sget-object v4, Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;->j:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 73
    .line 74
    iget-object v5, p0, Lflix/com/vision/activities/UserTorrentsActivity;->x:Ljava/util/ArrayList;

    .line 75
    .line 76
    if-ne v0, v4, :cond_3

    .line 77
    .line 78
    iget-object v0, p1, Lflix/com/vision/models/torrent/UserTorrent;->status:Ljava/lang/String;

    .line 79
    .line 80
    if-eqz v0, :cond_2

    .line 81
    .line 82
    const-string v1, "completed"

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-nez v0, :cond_2

    .line 89
    .line 90
    iget-object v0, p1, Lflix/com/vision/models/torrent/UserTorrent;->status:Ljava/lang/String;

    .line 91
    .line 92
    const-string v1, "cached"

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-nez v0, :cond_2

    .line 99
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v1, "Torrent is not ready yet. Status: "

    .line 103
    .line 104
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-object p1, p1, Lflix/com/vision/models/torrent/UserTorrent;->status:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :cond_2
    iget-object p1, p1, Lflix/com/vision/models/torrent/UserTorrent;->file_id:Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Lflix/com/vision/activities/UserTorrentsActivity;->k()V

    .line 130
    .line 131
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    const-string v1, "https://api.torbox.app/v1/api/torrents/mylist?id="

    .line 135
    .line 136
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    new-instance v1, Ly4/z1;

    .line 147
    .line 148
    new-instance v3, Ly4/v1;

    .line 149
    .line 150
    const/4 v4, 0x1

    .line 151
    invoke-direct {v3, p0, p1, v4}, Ly4/v1;-><init>(Lflix/com/vision/activities/UserTorrentsActivity;Ljava/lang/String;I)V

    .line 152
    .line 153
    .line 154
    new-instance p1, Ld6/a;

    .line 155
    .line 156
    invoke-direct {p1, p0}, Ld6/a;-><init>(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    invoke-direct {v1, v2, v0, v3, p1}, Lh2/t;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 160
    .line 161
    .line 162
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-virtual {p1}, Lflix/com/vision/App;->getRequestQueue()Lcom/android/volley/RequestQueue;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-virtual {p1, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    :cond_3
    sget-object v4, Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;->m:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 175
    .line 176
    if-ne v0, v4, :cond_5

    .line 177
    .line 178
    iget-object v0, p1, Lflix/com/vision/models/torrent/UserTorrent;->status:Ljava/lang/String;

    .line 179
    .line 180
    if-eqz v0, :cond_4

    .line 181
    .line 182
    const-string v1, "downloaded"

    .line 183
    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-nez v0, :cond_4

    .line 189
    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    const-string v1, "Torrent is still processing. Status: "

    .line 193
    .line 194
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    iget-object p1, p1, Lflix/com/vision/models/torrent/UserTorrent;->status:Ljava/lang/String;

    .line 198
    .line 199
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 211
    .line 212
    .line 213
    return-void

    .line 214
    :cond_4
    iget-object p1, p1, Lflix/com/vision/models/torrent/UserTorrent;->file_id:Ljava/lang/String;

    .line 215
    .line 216
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0}, Lflix/com/vision/activities/UserTorrentsActivity;->k()V

    .line 220
    .line 221
    .line 222
    invoke-static {p1}, LD4/a;->exploreOffcloudTorrent(Ljava/lang/String;)Lio/reactivex/Observable;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    new-instance v0, Ly4/u1;

    .line 243
    .line 244
    const/4 v1, 0x6

    .line 245
    invoke-direct {v0, p0, v1}, Ly4/u1;-><init>(Lflix/com/vision/activities/UserTorrentsActivity;I)V

    .line 246
    .line 247
    .line 248
    new-instance v1, Ly4/u1;

    .line 249
    .line 250
    const/4 v2, 0x7

    .line 251
    invoke-direct {v1, p0, v2}, Ly4/u1;-><init>(Lflix/com/vision/activities/UserTorrentsActivity;I)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 255
    .line 256
    .line 257
    return-void

    .line 258
    :cond_5
    iget-boolean v2, p1, Lflix/com/vision/models/torrent/UserTorrent;->streamable:Z

    .line 259
    .line 260
    if-eqz v2, :cond_7

    .line 261
    .line 262
    invoke-virtual {p1}, Lflix/com/vision/models/torrent/UserTorrent;->toVideoSource()Lflix/com/vision/models/VideoSource;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    if-nez p1, :cond_6

    .line 267
    .line 268
    goto/16 :goto_2

    .line 269
    .line 270
    :cond_6
    invoke-virtual {p0, p1}, Lflix/com/vision/activities/UserTorrentsActivity;->i(Lflix/com/vision/models/VideoSource;)V

    .line 271
    .line 272
    .line 273
    return-void

    .line 274
    :cond_7
    sget-object v2, Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;->e:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 275
    .line 276
    if-ne v0, v2, :cond_a

    .line 277
    .line 278
    iget-object v0, p0, Lflix/com/vision/activities/UserTorrentsActivity;->u:Ljava/util/HashMap;

    .line 279
    .line 280
    iget-object v1, p1, Lflix/com/vision/models/torrent/UserTorrent;->file_id:Ljava/lang/String;

    .line 281
    .line 282
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    check-cast v0, Ljava/util/ArrayList;

    .line 287
    .line 288
    if-eqz v0, :cond_9

    .line 289
    .line 290
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 291
    .line 292
    .line 293
    move-result v1

    .line 294
    if-nez v1, :cond_8

    .line 295
    .line 296
    goto :goto_0

    .line 297
    :cond_8
    invoke-virtual {p0, v0}, Lflix/com/vision/activities/UserTorrentsActivity;->e(Ljava/util/ArrayList;)V

    .line 298
    .line 299
    .line 300
    return-void

    .line 301
    :cond_9
    :goto_0
    iget-object p1, p1, Lflix/com/vision/models/torrent/UserTorrent;->file_id:Ljava/lang/String;

    .line 302
    .line 303
    invoke-virtual {p0, p1}, Lflix/com/vision/activities/UserTorrentsActivity;->getMagnetPrem(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    return-void

    .line 307
    :cond_a
    if-ne v0, v3, :cond_d

    .line 308
    .line 309
    iget-object v0, p0, Lflix/com/vision/activities/UserTorrentsActivity;->u:Ljava/util/HashMap;

    .line 310
    .line 311
    iget-object v1, p1, Lflix/com/vision/models/torrent/UserTorrent;->file_id:Ljava/lang/String;

    .line 312
    .line 313
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    check-cast v0, Ljava/util/ArrayList;

    .line 318
    .line 319
    if-eqz v0, :cond_c

    .line 320
    .line 321
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 322
    .line 323
    .line 324
    move-result v1

    .line 325
    if-nez v1, :cond_b

    .line 326
    .line 327
    goto :goto_1

    .line 328
    :cond_b
    invoke-virtual {p0, v0}, Lflix/com/vision/activities/UserTorrentsActivity;->e(Ljava/util/ArrayList;)V

    .line 329
    .line 330
    .line 331
    return-void

    .line 332
    :cond_c
    :goto_1
    iget-object p1, p1, Lflix/com/vision/models/torrent/UserTorrent;->file_id:Ljava/lang/String;

    .line 333
    .line 334
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 335
    .line 336
    .line 337
    invoke-virtual {p0}, Lflix/com/vision/activities/UserTorrentsActivity;->k()V

    .line 338
    .line 339
    .line 340
    new-instance v0, Landroid/os/Handler;

    .line 341
    .line 342
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 343
    .line 344
    .line 345
    new-instance v1, Lf1/a;

    .line 346
    .line 347
    const/16 v2, 0xc

    .line 348
    .line 349
    invoke-direct {v1, p0, v2}, Lf1/a;-><init>(Ljava/lang/Object;I)V

    .line 350
    .line 351
    .line 352
    const-wide/16 v2, 0x1388

    .line 353
    .line 354
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 355
    .line 356
    .line 357
    invoke-static {p1}, LD4/a;->getMagnetStatusAllDebrid(Ljava/lang/String;)Lio/reactivex/Observable;

    .line 358
    .line 359
    .line 360
    move-result-object p1

    .line 361
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 366
    .line 367
    .line 368
    move-result-object p1

    .line 369
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 374
    .line 375
    .line 376
    move-result-object p1

    .line 377
    new-instance v0, Ly4/u1;

    .line 378
    .line 379
    const/4 v1, 0x5

    .line 380
    invoke-direct {v0, p0, v1}, Ly4/u1;-><init>(Lflix/com/vision/activities/UserTorrentsActivity;I)V

    .line 381
    .line 382
    .line 383
    new-instance v1, Ly4/H0;

    .line 384
    .line 385
    const/4 v2, 0x5

    .line 386
    invoke-direct {v1, v2}, Ly4/H0;-><init>(I)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 390
    .line 391
    .line 392
    return-void

    .line 393
    :cond_d
    if-ne v0, v1, :cond_f

    .line 394
    .line 395
    iget-object v0, p1, Lflix/com/vision/models/torrent/UserTorrent;->src:Ljava/util/ArrayList;

    .line 396
    .line 397
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 398
    .line 399
    .line 400
    move-result v0

    .line 401
    const/4 v1, 0x1

    .line 402
    if-lez v0, :cond_e

    .line 403
    .line 404
    iget-object p1, p1, Lflix/com/vision/models/torrent/UserTorrent;->src:Ljava/util/ArrayList;

    .line 405
    .line 406
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 407
    .line 408
    .line 409
    move-result v0

    .line 410
    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 411
    .line 412
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    check-cast v0, [Ljava/lang/CharSequence;

    .line 417
    .line 418
    new-instance v2, Le/r;

    .line 419
    .line 420
    new-instance v3, Landroid/view/ContextThemeWrapper;

    .line 421
    .line 422
    sget v4, Lflix/com/vision/R$style;->AlertDialogNoHeader:I

    .line 423
    .line 424
    invoke-direct {v3, p0, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 425
    .line 426
    .line 427
    invoke-direct {v2, v3}, Le/r;-><init>(Landroid/content/Context;)V

    .line 428
    .line 429
    .line 430
    new-instance v3, Ly4/w1;

    .line 431
    .line 432
    const/4 v4, 0x0

    .line 433
    invoke-direct {v3, p0, p1, v4}, Ly4/w1;-><init>(Lflix/com/vision/activities/UserTorrentsActivity;Ljava/util/ArrayList;I)V

    .line 434
    .line 435
    .line 436
    const/4 p1, -0x1

    .line 437
    invoke-virtual {v2, v0, p1, v3}, Le/r;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Le/r;

    .line 438
    .line 439
    .line 440
    new-instance p1, LB4/c;

    .line 441
    .line 442
    const/4 v0, 0x5

    .line 443
    invoke-direct {p1, v0}, LB4/c;-><init>(I)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {v2, p1}, Le/r;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Le/r;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v2, v1}, Le/r;->setCancelable(Z)Le/r;

    .line 450
    .line 451
    .line 452
    invoke-virtual {v2}, Le/r;->show()Le/s;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    .line 454
    .line 455
    return-void

    .line 456
    :cond_e
    const-string p1, "No download link found for this torrent"

    .line 457
    .line 458
    invoke-static {p0, p1, v1}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 459
    .line 460
    .line 461
    :catch_0
    :cond_f
    :goto_2
    return-void
.end method

.method public unlockLinkAllRebrid(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, LD4/a;->unlockLinkAllDebrid(Ljava/lang/String;)Lio/reactivex/Observable;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    new-instance v0, Ly4/u1;

    .line 22
    .line 23
    const/16 v1, 0x8

    .line 24
    .line 25
    invoke-direct {v0, p0, v1}, Ly4/u1;-><init>(Lflix/com/vision/activities/UserTorrentsActivity;I)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Ly4/H0;

    .line 29
    .line 30
    const/4 v2, 0x5

    .line 31
    invoke-direct {v1, v2}, Ly4/H0;-><init>(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 35
    .line 36
    .line 37
    return-void
.end method
