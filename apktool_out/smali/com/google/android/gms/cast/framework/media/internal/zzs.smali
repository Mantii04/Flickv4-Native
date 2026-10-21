.class final Lcom/google/android/gms/cast/framework/media/internal/zzs;
.super Landroid/support/v4/media/session/MediaSessionCompat$Callback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/gms/cast/framework/media/internal/zzv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/media/internal/zzv;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->a:Lcom/google/android/gms/cast/framework/media/internal/zzv;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8

    .line 1
    const/4 p2, 0x0

    .line 2
    const/4 v0, 0x1

    .line 3
    sget-object v1, Lcom/google/android/gms/cast/framework/media/internal/zzv;->v:Lcom/google/android/gms/cast/internal/Logger;

    .line 4
    .line 5
    new-array v2, v0, [Ljava/lang/Object;

    .line 6
    .line 7
    aput-object p1, v2, p2

    .line 8
    .line 9
    const-string v3, "onCustomAction with action = %s"

    .line 10
    .line 11
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x2

    .line 19
    const/4 v3, 0x3

    .line 20
    sparse-switch v1, :sswitch_data_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :sswitch_0
    const-string v1, "com.google.android.gms.cast.framework.action.FORWARD"

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    move v1, p2

    .line 33
    goto :goto_1

    .line 34
    :sswitch_1
    const-string v1, "com.google.android.gms.cast.framework.action.DISCONNECT"

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    move v1, v3

    .line 43
    goto :goto_1

    .line 44
    :sswitch_2
    const-string v1, "com.google.android.gms.cast.framework.action.STOP_CASTING"

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_0

    .line 51
    .line 52
    move v1, v2

    .line 53
    goto :goto_1

    .line 54
    :sswitch_3
    const-string v1, "com.google.android.gms.cast.framework.action.REWIND"

    .line 55
    .line 56
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_0

    .line 61
    .line 62
    move v1, v0

    .line 63
    goto :goto_1

    .line 64
    :cond_0
    :goto_0
    const/4 v1, -0x1

    .line 65
    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->a:Lcom/google/android/gms/cast/framework/media/internal/zzv;

    .line 66
    .line 67
    const-wide/16 v5, 0x0

    .line 68
    .line 69
    iget-object v7, v4, Lcom/google/android/gms/cast/framework/media/internal/zzv;->e:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 70
    .line 71
    if-eqz v1, :cond_6

    .line 72
    .line 73
    if-eq v1, v0, :cond_3

    .line 74
    .line 75
    iget-object v5, v4, Lcom/google/android/gms/cast/framework/media/internal/zzv;->d:Lcom/google/android/gms/cast/framework/SessionManager;

    .line 76
    .line 77
    if-eq v1, v2, :cond_2

    .line 78
    .line 79
    if-eq v1, v3, :cond_1

    .line 80
    .line 81
    new-instance p2, Landroid/content/Intent;

    .line 82
    .line 83
    invoke-direct {p2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object p1, v4, Lcom/google/android/gms/cast/framework/media/internal/zzv;->g:Landroid/content/ComponentName;

    .line 87
    .line 88
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 89
    .line 90
    .line 91
    iget-object p1, v4, Lcom/google/android/gms/cast/framework/media/internal/zzv;->a:Landroid/content/Context;

    .line 92
    .line 93
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_1
    if-eqz v5, :cond_8

    .line 98
    .line 99
    invoke-virtual {v5, p2}, Lcom/google/android/gms/cast/framework/SessionManager;->endCurrentSession(Z)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_2
    if-eqz v5, :cond_8

    .line 104
    .line 105
    invoke-virtual {v5, v0}, Lcom/google/android/gms/cast/framework/SessionManager;->endCurrentSession(Z)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :cond_3
    invoke-virtual {v7}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getSkipStepMs()J

    .line 110
    .line 111
    .line 112
    move-result-wide p1

    .line 113
    neg-long p1, p1

    .line 114
    iget-object v0, v4, Lcom/google/android/gms/cast/framework/media/internal/zzv;->n:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 115
    .line 116
    if-nez v0, :cond_4

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getApproximateStreamPosition()J

    .line 120
    .line 121
    .line 122
    move-result-wide v1

    .line 123
    add-long/2addr v1, p1

    .line 124
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 125
    .line 126
    .line 127
    move-result-wide p1

    .line 128
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getStreamDuration()J

    .line 129
    .line 130
    .line 131
    move-result-wide v0

    .line 132
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 133
    .line 134
    .line 135
    move-result-wide p1

    .line 136
    iget-object v0, v4, Lcom/google/android/gms/cast/framework/media/internal/zzv;->n:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 137
    .line 138
    if-nez v0, :cond_5

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_5
    new-instance v1, Lcom/google/android/gms/cast/MediaSeekOptions$Builder;

    .line 142
    .line 143
    invoke-direct {v1}, Lcom/google/android/gms/cast/MediaSeekOptions$Builder;-><init>()V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/cast/MediaSeekOptions$Builder;->setPosition(J)Lcom/google/android/gms/cast/MediaSeekOptions$Builder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaSeekOptions$Builder;->build()Lcom/google/android/gms/cast/MediaSeekOptions;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->seek(Lcom/google/android/gms/cast/MediaSeekOptions;)Lcom/google/android/gms/common/api/PendingResult;

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :cond_6
    invoke-virtual {v7}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getSkipStepMs()J

    .line 158
    .line 159
    .line 160
    move-result-wide p1

    .line 161
    iget-object v0, v4, Lcom/google/android/gms/cast/framework/media/internal/zzv;->n:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 162
    .line 163
    if-nez v0, :cond_7

    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_7
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getApproximateStreamPosition()J

    .line 167
    .line 168
    .line 169
    move-result-wide v1

    .line 170
    add-long/2addr v1, p1

    .line 171
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 172
    .line 173
    .line 174
    move-result-wide p1

    .line 175
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getStreamDuration()J

    .line 176
    .line 177
    .line 178
    move-result-wide v0

    .line 179
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 180
    .line 181
    .line 182
    move-result-wide p1

    .line 183
    iget-object v0, v4, Lcom/google/android/gms/cast/framework/media/internal/zzv;->n:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 184
    .line 185
    if-nez v0, :cond_9

    .line 186
    .line 187
    :cond_8
    :goto_2
    return-void

    .line 188
    :cond_9
    new-instance v1, Lcom/google/android/gms/cast/MediaSeekOptions$Builder;

    .line 189
    .line 190
    invoke-direct {v1}, Lcom/google/android/gms/cast/MediaSeekOptions$Builder;-><init>()V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/cast/MediaSeekOptions$Builder;->setPosition(J)Lcom/google/android/gms/cast/MediaSeekOptions$Builder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaSeekOptions$Builder;->build()Lcom/google/android/gms/cast/MediaSeekOptions;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->seek(Lcom/google/android/gms/cast/MediaSeekOptions;)Lcom/google/android/gms/common/api/PendingResult;

    .line 201
    .line 202
    .line 203
    return-void

    .line 204
    nop

    .line 205
    :sswitch_data_0
    .sparse-switch
        -0x655132e4 -> :sswitch_3
        -0x27d32f79 -> :sswitch_2
        -0x76b6783 -> :sswitch_1
        0x51303e64 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->v:Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v2, "onMediaButtonEvent"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "android.intent.extra.KEY_EVENT"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroid/view/KeyEvent;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/16 v1, 0x7f

    .line 26
    .line 27
    if-eq v0, v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const/16 v0, 0x7e

    .line 34
    .line 35
    if-ne p1, v0, :cond_1

    .line 36
    .line 37
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->a:Lcom/google/android/gms/cast/framework/media/internal/zzv;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/google/android/gms/cast/framework/media/internal/zzv;->n:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->togglePlayback()V

    .line 44
    .line 45
    .line 46
    :cond_1
    const/4 p1, 0x1

    .line 47
    return p1
.end method

.method public final onPause()V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->v:Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v2, "onPause"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->a:Lcom/google/android/gms/cast/framework/media/internal/zzv;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->n:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->togglePlayback()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final onPlay()V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->v:Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v2, "onPlay"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->a:Lcom/google/android/gms/cast/framework/media/internal/zzv;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->n:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->togglePlayback()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final onSeekTo(J)V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->v:Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    new-array v2, v2, [Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object v1, v2, v3

    .line 12
    .line 13
    const-string v1, "onSeekTo %d"

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->a:Lcom/google/android/gms/cast/framework/media/internal/zzv;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->n:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    new-instance v1, Lcom/google/android/gms/cast/MediaSeekOptions$Builder;

    .line 26
    .line 27
    invoke-direct {v1}, Lcom/google/android/gms/cast/MediaSeekOptions$Builder;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/cast/MediaSeekOptions$Builder;->setPosition(J)Lcom/google/android/gms/cast/MediaSeekOptions$Builder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaSeekOptions$Builder;->build()Lcom/google/android/gms/cast/MediaSeekOptions;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->seek(Lcom/google/android/gms/cast/MediaSeekOptions;)Lcom/google/android/gms/common/api/PendingResult;

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final onSkipToNext()V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->v:Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v2, "onSkipToNext"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->a:Lcom/google/android/gms/cast/framework/media/internal/zzv;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->n:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->queueNext(Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final onSkipToPrevious()V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->v:Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v2, "onSkipToPrevious"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->a:Lcom/google/android/gms/cast/framework/media/internal/zzv;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->n:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->queuePrev(Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
