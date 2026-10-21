.class public final Lcom/google/android/gms/cast/framework/media/internal/zzv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final v:Lcom/google/android/gms/cast/internal/Logger;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/gms/cast/framework/CastOptions;

.field public final c:Lcom/google/android/gms/internal/cast/zzbf;

.field public final d:Lcom/google/android/gms/cast/framework/SessionManager;

.field public final e:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

.field public final f:Landroid/content/ComponentName;

.field public final g:Landroid/content/ComponentName;

.field public final h:Lcom/google/android/gms/cast/framework/media/internal/zzb;

.field public final i:Lcom/google/android/gms/cast/framework/media/internal/zzb;

.field public final j:Lcom/google/android/gms/cast/framework/media/internal/zzo;

.field public final k:Lcom/google/android/gms/internal/cast/zzed;

.field public final l:Lcom/google/android/gms/cast/framework/media/internal/zzp;

.field public final m:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;

.field public n:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

.field public o:Lcom/google/android/gms/cast/CastDevice;

.field public p:Landroid/support/v4/media/session/MediaSessionCompat;

.field public q:Z

.field public r:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

.field public s:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

.field public t:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

.field public u:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    const-string v1, "MediaSessionManager"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->v:Lcom/google/android/gms/cast/internal/Logger;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/internal/cast/zzbf;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->b:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->c:Lcom/google/android/gms/internal/cast/zzbf;

    .line 9
    .line 10
    invoke-static {}, Lcom/google/android/gms/cast/framework/CastContext;->getSharedInstance()Lcom/google/android/gms/cast/framework/CastContext;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    const/4 v0, 0x0

    .line 15
    if-eqz p3, :cond_0

    .line 16
    .line 17
    invoke-virtual {p3}, Lcom/google/android/gms/cast/framework/CastContext;->getSessionManager()Lcom/google/android/gms/cast/framework/SessionManager;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object p3, v0

    .line 23
    :goto_0
    iput-object p3, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->d:Lcom/google/android/gms/cast/framework/SessionManager;

    .line 24
    .line 25
    invoke-virtual {p2}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    if-nez p3, :cond_1

    .line 30
    .line 31
    move-object v1, v0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-virtual {p3}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getNotificationOptions()Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    :goto_1
    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->e:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 38
    .line 39
    new-instance v1, Lcom/google/android/gms/cast/framework/media/internal/zzu;

    .line 40
    .line 41
    invoke-direct {v1, p0}, Lcom/google/android/gms/cast/framework/media/internal/zzu;-><init>(Lcom/google/android/gms/cast/framework/media/internal/zzv;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->m:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;

    .line 45
    .line 46
    if-nez p3, :cond_2

    .line 47
    .line 48
    move-object v1, v0

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    invoke-virtual {p3}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getExpandedControllerActivityClassName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-nez v2, :cond_3

    .line 59
    .line 60
    new-instance v2, Landroid/content/ComponentName;

    .line 61
    .line 62
    invoke-direct {v2, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_3
    move-object v2, v0

    .line 67
    :goto_3
    iput-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->f:Landroid/content/ComponentName;

    .line 68
    .line 69
    if-nez p3, :cond_4

    .line 70
    .line 71
    move-object p3, v0

    .line 72
    goto :goto_4

    .line 73
    :cond_4
    invoke-virtual {p3}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getMediaIntentReceiverClassName()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    :goto_4
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-nez v1, :cond_5

    .line 82
    .line 83
    new-instance v1, Landroid/content/ComponentName;

    .line 84
    .line 85
    invoke-direct {v1, p1, p3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    goto :goto_5

    .line 89
    :cond_5
    move-object v1, v0

    .line 90
    :goto_5
    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->g:Landroid/content/ComponentName;

    .line 91
    .line 92
    new-instance p3, Lcom/google/android/gms/cast/framework/media/internal/zzb;

    .line 93
    .line 94
    invoke-direct {p3, p1}, Lcom/google/android/gms/cast/framework/media/internal/zzb;-><init>(Landroid/content/Context;)V

    .line 95
    .line 96
    .line 97
    iput-object p3, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->h:Lcom/google/android/gms/cast/framework/media/internal/zzb;

    .line 98
    .line 99
    new-instance v1, Lcom/google/android/gms/cast/framework/media/internal/zzq;

    .line 100
    .line 101
    invoke-direct {v1, p0}, Lcom/google/android/gms/cast/framework/media/internal/zzq;-><init>(Lcom/google/android/gms/cast/framework/media/internal/zzv;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p3, v1}, Lcom/google/android/gms/cast/framework/media/internal/zzb;->zzc(Lcom/google/android/gms/cast/framework/media/internal/zza;)V

    .line 105
    .line 106
    .line 107
    new-instance p3, Lcom/google/android/gms/cast/framework/media/internal/zzb;

    .line 108
    .line 109
    invoke-direct {p3, p1}, Lcom/google/android/gms/cast/framework/media/internal/zzb;-><init>(Landroid/content/Context;)V

    .line 110
    .line 111
    .line 112
    iput-object p3, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->i:Lcom/google/android/gms/cast/framework/media/internal/zzb;

    .line 113
    .line 114
    new-instance v1, Lcom/google/android/gms/cast/framework/media/internal/zzr;

    .line 115
    .line 116
    invoke-direct {v1, p0}, Lcom/google/android/gms/cast/framework/media/internal/zzr;-><init>(Lcom/google/android/gms/cast/framework/media/internal/zzv;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p3, v1}, Lcom/google/android/gms/cast/framework/media/internal/zzb;->zzc(Lcom/google/android/gms/cast/framework/media/internal/zza;)V

    .line 120
    .line 121
    .line 122
    new-instance p3, Lcom/google/android/gms/internal/cast/zzed;

    .line 123
    .line 124
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-direct {p3, v1}, Lcom/google/android/gms/internal/cast/zzed;-><init>(Landroid/os/Looper;)V

    .line 129
    .line 130
    .line 131
    iput-object p3, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->k:Lcom/google/android/gms/internal/cast/zzed;

    .line 132
    .line 133
    sget-object p3, Lcom/google/android/gms/cast/framework/media/internal/zzo;->w:Lcom/google/android/gms/cast/internal/Logger;

    .line 134
    .line 135
    invoke-virtual {p2}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    if-nez p2, :cond_6

    .line 140
    .line 141
    goto/16 :goto_c

    .line 142
    .line 143
    :cond_6
    invoke-virtual {p2}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getNotificationOptions()Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    if-nez p2, :cond_7

    .line 148
    .line 149
    goto/16 :goto_c

    .line 150
    .line 151
    :cond_7
    invoke-virtual {p2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzm()Lcom/google/android/gms/cast/framework/media/zzg;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    if-nez p2, :cond_8

    .line 156
    .line 157
    goto :goto_9

    .line 158
    :cond_8
    invoke-static {p2}, Lcom/google/android/gms/cast/framework/media/internal/zzw;->zzf(Lcom/google/android/gms/cast/framework/media/zzg;)Ljava/util/List;

    .line 159
    .line 160
    .line 161
    move-result-object p3

    .line 162
    invoke-static {p2}, Lcom/google/android/gms/cast/framework/media/internal/zzw;->zzg(Lcom/google/android/gms/cast/framework/media/zzg;)[I

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    const/4 v1, 0x0

    .line 167
    if-nez p3, :cond_9

    .line 168
    .line 169
    move v2, v1

    .line 170
    goto :goto_6

    .line 171
    :cond_9
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    :goto_6
    sget-object v3, Lcom/google/android/gms/cast/framework/media/internal/zzo;->w:Lcom/google/android/gms/cast/internal/Logger;

    .line 176
    .line 177
    const-string v4, "NotificationActionsProvider"

    .line 178
    .line 179
    if-eqz p3, :cond_11

    .line 180
    .line 181
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 182
    .line 183
    .line 184
    move-result v5

    .line 185
    if-eqz v5, :cond_a

    .line 186
    .line 187
    goto :goto_b

    .line 188
    :cond_a
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 189
    .line 190
    .line 191
    move-result p3

    .line 192
    const/4 v5, 0x5

    .line 193
    if-le p3, v5, :cond_b

    .line 194
    .line 195
    new-array p1, v1, [Ljava/lang/Object;

    .line 196
    .line 197
    const-string p2, " provides more than 5 actions."

    .line 198
    .line 199
    invoke-virtual {v4, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p2

    .line 203
    invoke-virtual {v3, p2, p1}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    goto :goto_c

    .line 207
    :cond_b
    if-eqz p2, :cond_10

    .line 208
    .line 209
    array-length p3, p2

    .line 210
    if-nez p3, :cond_c

    .line 211
    .line 212
    goto :goto_a

    .line 213
    :cond_c
    move v5, v1

    .line 214
    :goto_7
    if-ge v5, p3, :cond_f

    .line 215
    .line 216
    aget v6, p2, v5

    .line 217
    .line 218
    if-ltz v6, :cond_e

    .line 219
    .line 220
    if-lt v6, v2, :cond_d

    .line 221
    .line 222
    goto :goto_8

    .line 223
    :cond_d
    add-int/lit8 v5, v5, 0x1

    .line 224
    .line 225
    goto :goto_7

    .line 226
    :cond_e
    :goto_8
    new-array p1, v1, [Ljava/lang/Object;

    .line 227
    .line 228
    const-string p2, "provides a compact view action whose index is out of bounds."

    .line 229
    .line 230
    invoke-virtual {v4, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p2

    .line 234
    invoke-virtual {v3, p2, p1}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    goto :goto_c

    .line 238
    :cond_f
    :goto_9
    new-instance v0, Lcom/google/android/gms/cast/framework/media/internal/zzo;

    .line 239
    .line 240
    invoke-direct {v0, p1}, Lcom/google/android/gms/cast/framework/media/internal/zzo;-><init>(Landroid/content/Context;)V

    .line 241
    .line 242
    .line 243
    goto :goto_c

    .line 244
    :cond_10
    :goto_a
    new-array p1, v1, [Ljava/lang/Object;

    .line 245
    .line 246
    const-string p2, " doesn\'t provide any actions for compact view."

    .line 247
    .line 248
    invoke-virtual {v4, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p2

    .line 252
    invoke-virtual {v3, p2, p1}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    goto :goto_c

    .line 256
    :cond_11
    :goto_b
    new-array p1, v1, [Ljava/lang/Object;

    .line 257
    .line 258
    const-string p2, " doesn\'t provide any action."

    .line 259
    .line 260
    invoke-virtual {v4, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object p2

    .line 264
    invoke-virtual {v3, p2, p1}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    :goto_c
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->j:Lcom/google/android/gms/cast/framework/media/internal/zzo;

    .line 268
    .line 269
    new-instance p1, Lcom/google/android/gms/cast/framework/media/internal/zzp;

    .line 270
    .line 271
    invoke-direct {p1, p0}, Lcom/google/android/gms/cast/framework/media/internal/zzp;-><init>(Lcom/google/android/gms/cast/framework/media/internal/zzv;)V

    .line 272
    .line 273
    .line 274
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->l:Lcom/google/android/gms/cast/framework/media/internal/zzp;

    .line 275
    .line 276
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Landroid/os/Bundle;)J
    .locals 4

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, -0x3855de4e

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    const/4 v3, 0x1

    .line 10
    if-eq v0, v1, :cond_2

    .line 11
    .line 12
    const v1, -0x3854c70e

    .line 13
    .line 14
    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    const v1, 0xe0a3765

    .line 18
    .line 19
    .line 20
    if-eq v0, v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string v0, "com.google.android.gms.cast.framework.action.TOGGLE_PLAYBACK"

    .line 24
    .line 25
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-eqz p2, :cond_3

    .line 30
    .line 31
    const/4 p2, 0x0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const-string v0, "com.google.android.gms.cast.framework.action.SKIP_PREV"

    .line 34
    .line 35
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-eqz p2, :cond_3

    .line 40
    .line 41
    move p2, v3

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    const-string v0, "com.google.android.gms.cast.framework.action.SKIP_NEXT"

    .line 44
    .line 45
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    if-eqz p2, :cond_3

    .line 50
    .line 51
    move p2, v2

    .line 52
    goto :goto_1

    .line 53
    :cond_3
    :goto_0
    const/4 p2, -0x1

    .line 54
    :goto_1
    if-eqz p2, :cond_8

    .line 55
    .line 56
    const-wide/16 v0, 0x0

    .line 57
    .line 58
    if-eq p2, v3, :cond_6

    .line 59
    .line 60
    if-eq p2, v2, :cond_4

    .line 61
    .line 62
    return-wide v0

    .line 63
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->n:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 64
    .line 65
    if-eqz p1, :cond_5

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzt()Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_5

    .line 72
    .line 73
    const-wide/16 p1, 0x20

    .line 74
    .line 75
    return-wide p1

    .line 76
    :cond_5
    const-string p1, "android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT"

    .line 77
    .line 78
    invoke-virtual {p3, p1, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 79
    .line 80
    .line 81
    return-wide v0

    .line 82
    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->n:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 83
    .line 84
    if-eqz p1, :cond_7

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzu()Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-eqz p1, :cond_7

    .line 91
    .line 92
    const-wide/16 p1, 0x10

    .line 93
    .line 94
    return-wide p1

    .line 95
    :cond_7
    const-string p1, "android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS"

    .line 96
    .line 97
    invoke-virtual {p3, p1, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 98
    .line 99
    .line 100
    return-wide v0

    .line 101
    :cond_8
    const/4 p2, 0x3

    .line 102
    if-ne p1, p2, :cond_9

    .line 103
    .line 104
    const-wide/16 v0, 0x202

    .line 105
    .line 106
    move p1, p2

    .line 107
    goto :goto_2

    .line 108
    :cond_9
    const-wide/16 v0, 0x200

    .line 109
    .line 110
    :goto_2
    if-eq p1, v2, :cond_a

    .line 111
    .line 112
    return-wide v0

    .line 113
    :cond_a
    const-wide/16 p1, 0x204

    .line 114
    .line 115
    return-wide p1
.end method

.method public final b(Lcom/google/android/gms/cast/MediaMetadata;I)Landroid/net/Uri;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->b:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    move-object v0, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getImagePicker()Lcom/google/android/gms/cast/framework/media/ImagePicker;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/cast/framework/media/ImagePicker;->onPickImage(Lcom/google/android/gms/cast/MediaMetadata;I)Lcom/google/android/gms/common/images/WebImage;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaMetadata;->hasImages()Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-eqz p2, :cond_2

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaMetadata;->getImages()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/4 p2, 0x0

    .line 34
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Lcom/google/android/gms/common/images/WebImage;

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    move-object p1, v1

    .line 42
    :goto_1
    if-nez p1, :cond_3

    .line 43
    .line 44
    return-object v1

    .line 45
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/common/images/WebImage;->getUrl()Landroid/net/Uri;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    return-object p1
.end method

.method public final c(ILandroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->p:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-nez p2, :cond_1

    .line 7
    .line 8
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-static {v1, v1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p2, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->p:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 20
    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    goto :goto_0

    .line 25
    :cond_2
    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->getController()Landroid/support/v4/media/session/MediaControllerCompat;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    :goto_0
    if-nez v1, :cond_3

    .line 34
    .line 35
    new-instance v1, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 36
    .line 37
    invoke-direct {v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_3
    new-instance v2, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 42
    .line 43
    invoke-direct {v2, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 44
    .line 45
    .line 46
    move-object v1, v2

    .line 47
    :goto_1
    if-nez p1, :cond_4

    .line 48
    .line 49
    const-string p1, "android.media.metadata.DISPLAY_ICON"

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_4
    const-string p1, "android.media.metadata.ALBUM_ART"

    .line 53
    .line 54
    :goto_2
    invoke-virtual {v1, p1, p2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final d(Landroid/support/v4/media/session/PlaybackStateCompat$Builder;Ljava/lang/String;Lcom/google/android/gms/cast/framework/media/NotificationAction;)V
    .locals 10

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const-string v2, "com.google.android.gms.cast.framework.action.REWIND"

    .line 7
    .line 8
    const/4 v3, 0x2

    .line 9
    const-string v4, "com.google.android.gms.cast.framework.action.STOP_CASTING"

    .line 10
    .line 11
    const/4 v5, 0x3

    .line 12
    const-string v6, "com.google.android.gms.cast.framework.action.DISCONNECT"

    .line 13
    .line 14
    const-string v7, "com.google.android.gms.cast.framework.action.FORWARD"

    .line 15
    .line 16
    sparse-switch v0, :sswitch_data_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :sswitch_0
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    goto :goto_1

    .line 28
    :sswitch_1
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    move v0, v5

    .line 35
    goto :goto_1

    .line 36
    :sswitch_2
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    move v0, v3

    .line 43
    goto :goto_1

    .line 44
    :sswitch_3
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    move v0, v1

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    :goto_0
    const/4 v0, -0x1

    .line 53
    :goto_1
    iget-object v8, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->a:Landroid/content/Context;

    .line 54
    .line 55
    iget-object v9, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->e:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 56
    .line 57
    if-eqz v0, :cond_8

    .line 58
    .line 59
    if-eq v0, v1, :cond_6

    .line 60
    .line 61
    if-eq v0, v3, :cond_4

    .line 62
    .line 63
    if-eq v0, v5, :cond_2

    .line 64
    .line 65
    if-eqz p3, :cond_1

    .line 66
    .line 67
    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;

    .line 68
    .line 69
    invoke-virtual {p3}, Lcom/google/android/gms/cast/framework/media/NotificationAction;->getContentDescription()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {p3}, Lcom/google/android/gms/cast/framework/media/NotificationAction;->getIconResId()I

    .line 74
    .line 75
    .line 76
    move-result p3

    .line 77
    invoke-direct {v0, p2, v1, p3}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    goto/16 :goto_2

    .line 85
    .line 86
    :cond_1
    const/4 p2, 0x0

    .line 87
    goto/16 :goto_2

    .line 88
    .line 89
    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->u:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 90
    .line 91
    if-nez p2, :cond_3

    .line 92
    .line 93
    if-eqz v9, :cond_3

    .line 94
    .line 95
    new-instance p2, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;

    .line 96
    .line 97
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 98
    .line 99
    .line 100
    move-result-object p3

    .line 101
    invoke-virtual {v9}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zza()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p3

    .line 109
    invoke-virtual {v9}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getDisconnectDrawableResId()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    invoke-direct {p2, v6, p3, v0}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->u:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 121
    .line 122
    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->u:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 123
    .line 124
    goto/16 :goto_2

    .line 125
    .line 126
    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->t:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 127
    .line 128
    if-nez p2, :cond_5

    .line 129
    .line 130
    if-eqz v9, :cond_5

    .line 131
    .line 132
    new-instance p2, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;

    .line 133
    .line 134
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 135
    .line 136
    .line 137
    move-result-object p3

    .line 138
    invoke-virtual {v9}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zza()I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p3

    .line 146
    invoke-virtual {v9}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getDisconnectDrawableResId()I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    invoke-direct {p2, v4, p3, v0}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p2}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->t:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 158
    .line 159
    :cond_5
    iget-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->t:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_6
    iget-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->s:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 163
    .line 164
    if-nez p2, :cond_7

    .line 165
    .line 166
    if-eqz v9, :cond_7

    .line 167
    .line 168
    invoke-virtual {v9}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getSkipStepMs()J

    .line 169
    .line 170
    .line 171
    move-result-wide p2

    .line 172
    invoke-static {v9, p2, p3}, Lcom/google/android/gms/cast/framework/media/internal/zzw;->zzd(Lcom/google/android/gms/cast/framework/media/NotificationOptions;J)I

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    invoke-static {v9, p2, p3}, Lcom/google/android/gms/cast/framework/media/internal/zzw;->zzc(Lcom/google/android/gms/cast/framework/media/NotificationOptions;J)I

    .line 177
    .line 178
    .line 179
    move-result p2

    .line 180
    new-instance p3, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;

    .line 181
    .line 182
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-direct {p3, v2, v0, p2}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p3}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 194
    .line 195
    .line 196
    move-result-object p2

    .line 197
    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->s:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 198
    .line 199
    :cond_7
    iget-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->s:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 200
    .line 201
    goto :goto_2

    .line 202
    :cond_8
    iget-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->r:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 203
    .line 204
    if-nez p2, :cond_9

    .line 205
    .line 206
    if-eqz v9, :cond_9

    .line 207
    .line 208
    invoke-virtual {v9}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getSkipStepMs()J

    .line 209
    .line 210
    .line 211
    move-result-wide p2

    .line 212
    invoke-static {v9, p2, p3}, Lcom/google/android/gms/cast/framework/media/internal/zzw;->zzb(Lcom/google/android/gms/cast/framework/media/NotificationOptions;J)I

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    invoke-static {v9, p2, p3}, Lcom/google/android/gms/cast/framework/media/internal/zzw;->zza(Lcom/google/android/gms/cast/framework/media/NotificationOptions;J)I

    .line 217
    .line 218
    .line 219
    move-result p2

    .line 220
    new-instance p3, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;

    .line 221
    .line 222
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-direct {p3, v7, v0, p2}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p3}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 234
    .line 235
    .line 236
    move-result-object p2

    .line 237
    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->r:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 238
    .line 239
    :cond_9
    iget-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->r:Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 240
    .line 241
    :goto_2
    if-eqz p2, :cond_a

    .line 242
    .line 243
    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->addCustomAction(Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    .line 244
    .line 245
    .line 246
    :cond_a
    return-void

    .line 247
    :sswitch_data_0
    .sparse-switch
        -0x655132e4 -> :sswitch_3
        -0x27d32f79 -> :sswitch_2
        -0x76b6783 -> :sswitch_1
        0x51303e64 -> :sswitch_0
    .end sparse-switch
.end method

.method public final e(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->b:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastOptions;->getEnableReconnectionService()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->l:Lcom/google/android/gms/cast/framework/media/internal/zzp;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->k:Lcom/google/android/gms/internal/cast/zzed;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    new-instance v2, Landroid/content/Intent;

    .line 20
    .line 21
    const-class v3, Lcom/google/android/gms/cast/framework/ReconnectionService;

    .line 22
    .line 23
    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->a:Landroid/content/Context;

    .line 24
    .line 25
    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    :try_start_0
    invoke-virtual {v4, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :catch_0
    if-eqz p1, :cond_2

    .line 40
    .line 41
    const-wide/16 v2, 0x3e8

    .line 42
    .line 43
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 44
    .line 45
    .line 46
    :cond_2
    :goto_0
    return-void
.end method

.method public final f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->j:Lcom/google/android/gms/cast/framework/media/internal/zzo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lcom/google/android/gms/cast/framework/media/internal/zzv;->v:Lcom/google/android/gms/cast/internal/Logger;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    new-array v2, v2, [Ljava/lang/Object;

    .line 9
    .line 10
    const-string v3, "Stopping media notification."

    .line 11
    .line 12
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->j:Lcom/google/android/gms/cast/framework/media/internal/zzb;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/internal/zzb;->zza()V

    .line 18
    .line 19
    .line 20
    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->b:Landroid/app/NotificationManager;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const-string v1, "castMediaNotification"

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->b:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastOptions;->getEnableReconnectionService()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->k:Lcom/google/android/gms/internal/cast/zzed;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->l:Lcom/google/android/gms/cast/framework/media/internal/zzp;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Landroid/content/Intent;

    .line 18
    .line 19
    const-class v1, Lcom/google/android/gms/cast/framework/ReconnectionService;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->a:Landroid/content/Context;

    .line 22
    .line 23
    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final h(Lcom/google/android/gms/cast/MediaInfo;I)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->p:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_e

    .line 10
    .line 11
    :cond_0
    new-instance v3, Landroid/os/Bundle;

    .line 12
    .line 13
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v4, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    .line 17
    .line 18
    invoke-direct {v4}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object v5, v0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->n:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 22
    .line 23
    const/4 v6, 0x0

    .line 24
    iget-object v7, v0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->e:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 25
    .line 26
    if-eqz v5, :cond_e

    .line 27
    .line 28
    iget-object v10, v0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->j:Lcom/google/android/gms/cast/framework/media/internal/zzo;

    .line 29
    .line 30
    if-nez v10, :cond_1

    .line 31
    .line 32
    goto/16 :goto_7

    .line 33
    .line 34
    :cond_1
    invoke-virtual {v5}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zza()I

    .line 35
    .line 36
    .line 37
    move-result v10

    .line 38
    if-eqz v10, :cond_2

    .line 39
    .line 40
    invoke-virtual {v5}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isLiveStream()Z

    .line 41
    .line 42
    .line 43
    move-result v10

    .line 44
    if-eqz v10, :cond_3

    .line 45
    .line 46
    :cond_2
    const-wide/16 v10, 0x0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    invoke-virtual {v5}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getApproximateStreamPosition()J

    .line 50
    .line 51
    .line 52
    move-result-wide v10

    .line 53
    :goto_0
    const/high16 v5, 0x3f800000    # 1.0f

    .line 54
    .line 55
    invoke-virtual {v4, v1, v10, v11, v5}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    .line 56
    .line 57
    .line 58
    if-nez v1, :cond_4

    .line 59
    .line 60
    invoke-virtual {v4}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    goto/16 :goto_8

    .line 65
    .line 66
    :cond_4
    if-eqz v7, :cond_5

    .line 67
    .line 68
    invoke-virtual {v7}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzm()Lcom/google/android/gms/cast/framework/media/zzg;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    goto :goto_1

    .line 73
    :cond_5
    move-object v5, v6

    .line 74
    :goto_1
    iget-object v10, v0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->n:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 75
    .line 76
    if-eqz v10, :cond_6

    .line 77
    .line 78
    invoke-virtual {v10}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isLiveStream()Z

    .line 79
    .line 80
    .line 81
    move-result v10

    .line 82
    if-nez v10, :cond_6

    .line 83
    .line 84
    iget-object v10, v0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->n:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 85
    .line 86
    invoke-virtual {v10}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isPlayingAd()Z

    .line 87
    .line 88
    .line 89
    move-result v10

    .line 90
    if-eqz v10, :cond_7

    .line 91
    .line 92
    :cond_6
    const-wide/16 v10, 0x0

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_7
    const-wide/16 v10, 0x100

    .line 96
    .line 97
    :goto_2
    const-string v12, "com.google.android.gms.cast.framework.action.SKIP_NEXT"

    .line 98
    .line 99
    const-string v13, "com.google.android.gms.cast.framework.action.SKIP_PREV"

    .line 100
    .line 101
    const-string v14, "com.google.android.gms.cast.framework.action.TOGGLE_PLAYBACK"

    .line 102
    .line 103
    if-eqz v5, :cond_a

    .line 104
    .line 105
    invoke-static {v5}, Lcom/google/android/gms/cast/framework/media/internal/zzw;->zzf(Lcom/google/android/gms/cast/framework/media/zzg;)Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    if-eqz v5, :cond_d

    .line 110
    .line 111
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result v15

    .line 119
    if-eqz v15, :cond_d

    .line 120
    .line 121
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v15

    .line 125
    check-cast v15, Lcom/google/android/gms/cast/framework/media/NotificationAction;

    .line 126
    .line 127
    invoke-virtual {v15}, Lcom/google/android/gms/cast/framework/media/NotificationAction;->getAction()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v8

    .line 131
    invoke-static {v8, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 132
    .line 133
    .line 134
    move-result v9

    .line 135
    if-nez v9, :cond_9

    .line 136
    .line 137
    invoke-static {v8, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 138
    .line 139
    .line 140
    move-result v9

    .line 141
    if-nez v9, :cond_9

    .line 142
    .line 143
    invoke-static {v8, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 144
    .line 145
    .line 146
    move-result v9

    .line 147
    if-eqz v9, :cond_8

    .line 148
    .line 149
    goto :goto_4

    .line 150
    :cond_8
    invoke-virtual {v0, v4, v8, v15}, Lcom/google/android/gms/cast/framework/media/internal/zzv;->d(Landroid/support/v4/media/session/PlaybackStateCompat$Builder;Ljava/lang/String;Lcom/google/android/gms/cast/framework/media/NotificationAction;)V

    .line 151
    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_9
    :goto_4
    invoke-virtual {v0, v1, v8, v3}, Lcom/google/android/gms/cast/framework/media/internal/zzv;->a(ILjava/lang/String;Landroid/os/Bundle;)J

    .line 155
    .line 156
    .line 157
    move-result-wide v8

    .line 158
    or-long/2addr v8, v10

    .line 159
    move-wide v10, v8

    .line 160
    goto :goto_3

    .line 161
    :cond_a
    if-eqz v7, :cond_d

    .line 162
    .line 163
    invoke-virtual {v7}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getActions()Ljava/util/List;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 172
    .line 173
    .line 174
    move-result v8

    .line 175
    if-eqz v8, :cond_d

    .line 176
    .line 177
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v8

    .line 181
    check-cast v8, Ljava/lang/String;

    .line 182
    .line 183
    invoke-static {v8, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 184
    .line 185
    .line 186
    move-result v9

    .line 187
    if-nez v9, :cond_c

    .line 188
    .line 189
    invoke-static {v8, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 190
    .line 191
    .line 192
    move-result v9

    .line 193
    if-nez v9, :cond_c

    .line 194
    .line 195
    invoke-static {v8, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 196
    .line 197
    .line 198
    move-result v9

    .line 199
    if-eqz v9, :cond_b

    .line 200
    .line 201
    goto :goto_6

    .line 202
    :cond_b
    invoke-virtual {v0, v4, v8, v6}, Lcom/google/android/gms/cast/framework/media/internal/zzv;->d(Landroid/support/v4/media/session/PlaybackStateCompat$Builder;Ljava/lang/String;Lcom/google/android/gms/cast/framework/media/NotificationAction;)V

    .line 203
    .line 204
    .line 205
    goto :goto_5

    .line 206
    :cond_c
    :goto_6
    invoke-virtual {v0, v1, v8, v3}, Lcom/google/android/gms/cast/framework/media/internal/zzv;->a(ILjava/lang/String;Landroid/os/Bundle;)J

    .line 207
    .line 208
    .line 209
    move-result-wide v8

    .line 210
    or-long/2addr v8, v10

    .line 211
    move-wide v10, v8

    .line 212
    goto :goto_5

    .line 213
    :cond_d
    invoke-virtual {v4, v10, v11}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setActions(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    invoke-virtual {v4}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    goto :goto_8

    .line 222
    :cond_e
    :goto_7
    invoke-virtual {v4}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 223
    .line 224
    .line 225
    move-result-object v4

    .line 226
    :goto_8
    invoke-virtual {v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 227
    .line 228
    .line 229
    const/4 v4, 0x1

    .line 230
    const-string v5, "android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS"

    .line 231
    .line 232
    if-eqz v7, :cond_f

    .line 233
    .line 234
    invoke-virtual {v7}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzp()Z

    .line 235
    .line 236
    .line 237
    move-result v8

    .line 238
    if-eqz v8, :cond_f

    .line 239
    .line 240
    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 241
    .line 242
    .line 243
    :cond_f
    const-string v8, "android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT"

    .line 244
    .line 245
    if-eqz v7, :cond_10

    .line 246
    .line 247
    invoke-virtual {v7}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzo()Z

    .line 248
    .line 249
    .line 250
    move-result v7

    .line 251
    if-eqz v7, :cond_10

    .line 252
    .line 253
    invoke-virtual {v3, v8, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 254
    .line 255
    .line 256
    :cond_10
    invoke-virtual {v3, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 257
    .line 258
    .line 259
    move-result v4

    .line 260
    if-nez v4, :cond_11

    .line 261
    .line 262
    invoke-virtual {v3, v8}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 263
    .line 264
    .line 265
    move-result v4

    .line 266
    if-eqz v4, :cond_12

    .line 267
    .line 268
    :cond_11
    invoke-virtual {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->setExtras(Landroid/os/Bundle;)V

    .line 269
    .line 270
    .line 271
    :cond_12
    if-eqz v1, :cond_1d

    .line 272
    .line 273
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->n:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 274
    .line 275
    const/4 v3, 0x0

    .line 276
    if-eqz v1, :cond_14

    .line 277
    .line 278
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->f:Landroid/content/ComponentName;

    .line 279
    .line 280
    if-nez v1, :cond_13

    .line 281
    .line 282
    move-object v1, v6

    .line 283
    goto :goto_9

    .line 284
    :cond_13
    new-instance v4, Landroid/content/Intent;

    .line 285
    .line 286
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 290
    .line 291
    .line 292
    sget v1, Lcom/google/android/gms/internal/cast/zzdy;->zza:I

    .line 293
    .line 294
    const/high16 v5, 0x8000000

    .line 295
    .line 296
    or-int/2addr v1, v5

    .line 297
    iget-object v5, v0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->a:Landroid/content/Context;

    .line 298
    .line 299
    invoke-static {v5, v3, v4, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    :goto_9
    if-eqz v1, :cond_14

    .line 304
    .line 305
    invoke-virtual {v2, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setSessionActivity(Landroid/app/PendingIntent;)V

    .line 306
    .line 307
    .line 308
    :cond_14
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->n:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 309
    .line 310
    if-eqz v1, :cond_1c

    .line 311
    .line 312
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->p:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 313
    .line 314
    if-eqz v1, :cond_1c

    .line 315
    .line 316
    if-eqz p1, :cond_1c

    .line 317
    .line 318
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/cast/MediaInfo;->getMetadata()Lcom/google/android/gms/cast/MediaMetadata;

    .line 319
    .line 320
    .line 321
    move-result-object v2

    .line 322
    if-eqz v2, :cond_1c

    .line 323
    .line 324
    iget-object v4, v0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->n:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 325
    .line 326
    if-eqz v4, :cond_15

    .line 327
    .line 328
    invoke-virtual {v4}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isLiveStream()Z

    .line 329
    .line 330
    .line 331
    move-result v4

    .line 332
    if-eqz v4, :cond_15

    .line 333
    .line 334
    const-wide/16 v8, 0x0

    .line 335
    .line 336
    goto :goto_a

    .line 337
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/cast/MediaInfo;->getStreamDuration()J

    .line 338
    .line 339
    .line 340
    move-result-wide v8

    .line 341
    :goto_a
    const-string v4, "com.google.android.gms.cast.metadata.TITLE"

    .line 342
    .line 343
    invoke-virtual {v2, v4}, Lcom/google/android/gms/cast/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v4

    .line 347
    const-string v5, "com.google.android.gms.cast.metadata.SUBTITLE"

    .line 348
    .line 349
    invoke-virtual {v2, v5}, Lcom/google/android/gms/cast/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v5

    .line 353
    iget-object v7, v0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->p:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 354
    .line 355
    if-nez v7, :cond_16

    .line 356
    .line 357
    move-object v7, v6

    .line 358
    goto :goto_b

    .line 359
    :cond_16
    invoke-virtual {v7}, Landroid/support/v4/media/session/MediaSessionCompat;->getController()Landroid/support/v4/media/session/MediaControllerCompat;

    .line 360
    .line 361
    .line 362
    move-result-object v7

    .line 363
    invoke-virtual {v7}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    .line 364
    .line 365
    .line 366
    move-result-object v7

    .line 367
    :goto_b
    if-nez v7, :cond_17

    .line 368
    .line 369
    new-instance v7, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 370
    .line 371
    invoke-direct {v7}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    .line 372
    .line 373
    .line 374
    goto :goto_c

    .line 375
    :cond_17
    new-instance v10, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 376
    .line 377
    invoke-direct {v10, v7}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 378
    .line 379
    .line 380
    move-object v7, v10

    .line 381
    :goto_c
    const-string v10, "android.media.metadata.DURATION"

    .line 382
    .line 383
    invoke-virtual {v7, v10, v8, v9}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putLong(Ljava/lang/String;J)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 384
    .line 385
    .line 386
    move-result-object v7

    .line 387
    if-eqz v4, :cond_18

    .line 388
    .line 389
    const-string v8, "android.media.metadata.TITLE"

    .line 390
    .line 391
    invoke-virtual {v7, v8, v4}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 392
    .line 393
    .line 394
    const-string v8, "android.media.metadata.DISPLAY_TITLE"

    .line 395
    .line 396
    invoke-virtual {v7, v8, v4}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 397
    .line 398
    .line 399
    :cond_18
    if-eqz v5, :cond_19

    .line 400
    .line 401
    const-string v4, "android.media.metadata.DISPLAY_SUBTITLE"

    .line 402
    .line 403
    invoke-virtual {v7, v4, v5}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 404
    .line 405
    .line 406
    :cond_19
    invoke-virtual {v7}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    .line 407
    .line 408
    .line 409
    move-result-object v4

    .line 410
    invoke-virtual {v1, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/cast/framework/media/internal/zzv;->b(Lcom/google/android/gms/cast/MediaMetadata;I)Landroid/net/Uri;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    if-eqz v1, :cond_1a

    .line 418
    .line 419
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->h:Lcom/google/android/gms/cast/framework/media/internal/zzb;

    .line 420
    .line 421
    invoke-virtual {v3, v1}, Lcom/google/android/gms/cast/framework/media/internal/zzb;->zzd(Landroid/net/Uri;)Z

    .line 422
    .line 423
    .line 424
    goto :goto_d

    .line 425
    :cond_1a
    invoke-virtual {v0, v3, v6}, Lcom/google/android/gms/cast/framework/media/internal/zzv;->c(ILandroid/graphics/Bitmap;)V

    .line 426
    .line 427
    .line 428
    :goto_d
    const/4 v1, 0x3

    .line 429
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/cast/framework/media/internal/zzv;->b(Lcom/google/android/gms/cast/MediaMetadata;I)Landroid/net/Uri;

    .line 430
    .line 431
    .line 432
    move-result-object v2

    .line 433
    if-eqz v2, :cond_1b

    .line 434
    .line 435
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->i:Lcom/google/android/gms/cast/framework/media/internal/zzb;

    .line 436
    .line 437
    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/framework/media/internal/zzb;->zzd(Landroid/net/Uri;)Z

    .line 438
    .line 439
    .line 440
    return-void

    .line 441
    :cond_1b
    invoke-virtual {v0, v1, v6}, Lcom/google/android/gms/cast/framework/media/internal/zzv;->c(ILandroid/graphics/Bitmap;)V

    .line 442
    .line 443
    .line 444
    :cond_1c
    :goto_e
    return-void

    .line 445
    :cond_1d
    new-instance v1, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 446
    .line 447
    invoke-direct {v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    .line 451
    .line 452
    .line 453
    move-result-object v1

    .line 454
    invoke-virtual {v2, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 455
    .line 456
    .line 457
    return-void
.end method

.method public final zzh(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lcom/google/android/gms/cast/CastDevice;)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->b:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 5
    .line 6
    if-nez v3, :cond_0

    .line 7
    .line 8
    move-object v4, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    :goto_0
    iget-boolean v5, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->q:Z

    .line 15
    .line 16
    if-nez v5, :cond_5

    .line 17
    .line 18
    if-eqz v3, :cond_5

    .line 19
    .line 20
    if-eqz v4, :cond_5

    .line 21
    .line 22
    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->e:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 23
    .line 24
    if-eqz v3, :cond_5

    .line 25
    .line 26
    if-eqz p1, :cond_5

    .line 27
    .line 28
    if-eqz p2, :cond_5

    .line 29
    .line 30
    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->g:Landroid/content/ComponentName;

    .line 31
    .line 32
    if-nez v3, :cond_1

    .line 33
    .line 34
    goto/16 :goto_1

    .line 35
    .line 36
    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->n:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 37
    .line 38
    iget-object v5, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->m:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;

    .line 39
    .line 40
    invoke-virtual {p1, v5}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->registerCallback(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;)V

    .line 41
    .line 42
    .line 43
    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->o:Lcom/google/android/gms/cast/CastDevice;

    .line 44
    .line 45
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastLollipop()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    iget-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->a:Landroid/content/Context;

    .line 50
    .line 51
    if-nez p1, :cond_2

    .line 52
    .line 53
    const-string p1, "audio"

    .line 54
    .line 55
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Landroid/media/AudioManager;

    .line 60
    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    const/4 v5, 0x3

    .line 64
    invoke-virtual {p1, v2, v5, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 65
    .line 66
    .line 67
    :cond_2
    new-instance p1, Landroid/content/Intent;

    .line 68
    .line 69
    const-string v5, "android.intent.action.MEDIA_BUTTON"

    .line 70
    .line 71
    invoke-direct {p1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 75
    .line 76
    .line 77
    sget v5, Lcom/google/android/gms/internal/cast/zzdy;->zza:I

    .line 78
    .line 79
    invoke-static {p2, v1, p1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {v4}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getMediaSessionEnabled()Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-eqz v4, :cond_4

    .line 88
    .line 89
    new-instance v4, Landroid/support/v4/media/session/MediaSessionCompat;

    .line 90
    .line 91
    const-string v5, "CastMediaSession"

    .line 92
    .line 93
    invoke-direct {v4, p2, v5, v3, p1}, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V

    .line 94
    .line 95
    .line 96
    iput-object v4, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->p:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 97
    .line 98
    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/cast/framework/media/internal/zzv;->h(Lcom/google/android/gms/cast/MediaInfo;I)V

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->o:Lcom/google/android/gms/cast/CastDevice;

    .line 102
    .line 103
    if-eqz p1, :cond_3

    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/google/android/gms/cast/CastDevice;->getFriendlyName()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-nez p1, :cond_3

    .line 114
    .line 115
    new-instance p1, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 116
    .line 117
    invoke-direct {p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    sget v2, Lcom/google/android/gms/cast/framework/R$string;->cast_casting_to_device:I

    .line 125
    .line 126
    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->o:Lcom/google/android/gms/cast/CastDevice;

    .line 127
    .line 128
    invoke-virtual {v3}, Lcom/google/android/gms/cast/CastDevice;->getFriendlyName()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    new-array v5, v0, [Ljava/lang/Object;

    .line 133
    .line 134
    aput-object v3, v5, v1

    .line 135
    .line 136
    invoke-virtual {p2, v2, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    const-string v2, "android.media.metadata.ALBUM_ARTIST"

    .line 141
    .line 142
    invoke-virtual {p1, v2, p2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {v4, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 151
    .line 152
    .line 153
    :cond_3
    new-instance p1, Lcom/google/android/gms/cast/framework/media/internal/zzs;

    .line 154
    .line 155
    invoke-direct {p1, p0}, Lcom/google/android/gms/cast/framework/media/internal/zzs;-><init>(Lcom/google/android/gms/cast/framework/media/internal/zzv;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v4, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v4, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    .line 162
    .line 163
    .line 164
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->c:Lcom/google/android/gms/internal/cast/zzbf;

    .line 165
    .line 166
    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/cast/zzbf;->zzr(Landroid/support/v4/media/session/MediaSessionCompat;)V

    .line 167
    .line 168
    .line 169
    :cond_4
    iput-boolean v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->q:Z

    .line 170
    .line 171
    invoke-virtual {p0, v1}, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzl(Z)V

    .line 172
    .line 173
    .line 174
    return-void

    .line 175
    :cond_5
    :goto_1
    sget-object p1, Lcom/google/android/gms/cast/framework/media/internal/zzv;->v:Lcom/google/android/gms/cast/internal/Logger;

    .line 176
    .line 177
    new-array p2, v1, [Ljava/lang/Object;

    .line 178
    .line 179
    const-string v0, "skip attaching media session"

    .line 180
    .line 181
    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    return-void
.end method

.method public final zzi(I)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->q:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->q:Z

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->n:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->m:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->unregisterCallback(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastLollipop()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x0

    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->a:Landroid/content/Context;

    .line 26
    .line 27
    const-string v3, "audio"

    .line 28
    .line 29
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Landroid/media/AudioManager;

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 38
    .line 39
    .line 40
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->c:Lcom/google/android/gms/internal/cast/zzbf;

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/cast/zzbf;->zzr(Landroid/support/v4/media/session/MediaSessionCompat;)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->h:Lcom/google/android/gms/cast/framework/media/internal/zzb;

    .line 46
    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/internal/zzb;->zza()V

    .line 50
    .line 51
    .line 52
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->i:Lcom/google/android/gms/cast/framework/media/internal/zzb;

    .line 53
    .line 54
    if-eqz v1, :cond_4

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/internal/zzb;->zza()V

    .line 57
    .line 58
    .line 59
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->p:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 60
    .line 61
    if-eqz v1, :cond_5

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->p:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 67
    .line 68
    new-instance v3, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 69
    .line 70
    invoke-direct {v3}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v1, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/cast/framework/media/internal/zzv;->h(Lcom/google/android/gms/cast/MediaInfo;I)V

    .line 81
    .line 82
    .line 83
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->p:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 84
    .line 85
    if-eqz v1, :cond_6

    .line 86
    .line 87
    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->p:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 91
    .line 92
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->release()V

    .line 93
    .line 94
    .line 95
    iput-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->p:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 96
    .line 97
    :cond_6
    iput-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->n:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 98
    .line 99
    iput-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->o:Lcom/google/android/gms/cast/CastDevice;

    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/internal/zzv;->f()V

    .line 102
    .line 103
    .line 104
    if-nez p1, :cond_7

    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/internal/zzv;->g()V

    .line 107
    .line 108
    .line 109
    :cond_7
    :goto_0
    return-void
.end method

.method public final zzk(Lcom/google/android/gms/cast/CastDevice;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->v:Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object p1, v1, v2

    .line 8
    .line 9
    const-string v3, "update Cast device to %s"

    .line 10
    .line 11
    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/cast/internal/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->o:Lcom/google/android/gms/cast/CastDevice;

    .line 15
    .line 16
    invoke-virtual {p0, v2}, Lcom/google/android/gms/cast/framework/media/internal/zzv;->zzl(Z)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final zzl(Z)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->n:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_7

    .line 8
    .line 9
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zza()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isLoadingNextItem()Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-eqz v4, :cond_1

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getLoadingItem()Lcom/google/android/gms/cast/MediaQueueItem;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    if-eqz v4, :cond_1

    .line 28
    .line 29
    invoke-virtual {v4}, Lcom/google/android/gms/cast/MediaQueueItem;->getMedia()Lcom/google/android/gms/cast/MediaInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    if-eqz v5, :cond_1

    .line 34
    .line 35
    invoke-virtual {v4}, Lcom/google/android/gms/cast/MediaQueueItem;->getMedia()Lcom/google/android/gms/cast/MediaInfo;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    :cond_1
    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/cast/framework/media/internal/zzv;->h(Lcom/google/android/gms/cast/MediaInfo;I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-nez v3, :cond_2

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/internal/zzv;->f()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/internal/zzv;->g()V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_2
    if-eqz v2, :cond_f

    .line 56
    .line 57
    const/4 v2, 0x1

    .line 58
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->j:Lcom/google/android/gms/cast/framework/media/internal/zzo;

    .line 59
    .line 60
    if-eqz v3, :cond_e

    .line 61
    .line 62
    sget-object v4, Lcom/google/android/gms/cast/framework/media/internal/zzv;->v:Lcom/google/android/gms/cast/internal/Logger;

    .line 63
    .line 64
    const/4 v5, 0x0

    .line 65
    new-array v6, v5, [Ljava/lang/Object;

    .line 66
    .line 67
    const-string v7, "Update media notification."

    .line 68
    .line 69
    invoke-virtual {v4, v7, v6}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    iget-object v4, v0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->o:Lcom/google/android/gms/cast/CastDevice;

    .line 73
    .line 74
    iget-object v6, v0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->n:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 75
    .line 76
    iget-object v7, v0, Lcom/google/android/gms/cast/framework/media/internal/zzv;->p:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 77
    .line 78
    if-eqz v4, :cond_e

    .line 79
    .line 80
    if-eqz v6, :cond_e

    .line 81
    .line 82
    if-nez v7, :cond_3

    .line 83
    .line 84
    goto/16 :goto_6

    .line 85
    .line 86
    :cond_3
    invoke-virtual {v6}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    .line 87
    .line 88
    .line 89
    move-result-object v8

    .line 90
    if-eqz v8, :cond_e

    .line 91
    .line 92
    invoke-virtual {v8}, Lcom/google/android/gms/cast/MediaInfo;->getMetadata()Lcom/google/android/gms/cast/MediaMetadata;

    .line 93
    .line 94
    .line 95
    move-result-object v9

    .line 96
    if-eqz v9, :cond_e

    .line 97
    .line 98
    invoke-virtual {v6}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    .line 99
    .line 100
    .line 101
    move-result-object v10

    .line 102
    const/4 v11, 0x2

    .line 103
    if-eqz v10, :cond_6

    .line 104
    .line 105
    invoke-virtual {v10}, Lcom/google/android/gms/cast/MediaStatus;->getQueueRepeatMode()I

    .line 106
    .line 107
    .line 108
    move-result v12

    .line 109
    if-eq v12, v2, :cond_7

    .line 110
    .line 111
    if-eq v12, v11, :cond_7

    .line 112
    .line 113
    const/4 v13, 0x3

    .line 114
    if-eq v12, v13, :cond_7

    .line 115
    .line 116
    invoke-virtual {v10}, Lcom/google/android/gms/cast/MediaStatus;->getCurrentItemId()I

    .line 117
    .line 118
    .line 119
    move-result v12

    .line 120
    invoke-virtual {v10, v12}, Lcom/google/android/gms/cast/MediaStatus;->getIndexById(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v12

    .line 124
    if-eqz v12, :cond_6

    .line 125
    .line 126
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 127
    .line 128
    .line 129
    move-result v13

    .line 130
    if-lez v13, :cond_4

    .line 131
    .line 132
    move v13, v2

    .line 133
    goto :goto_0

    .line 134
    :cond_4
    move v13, v5

    .line 135
    :goto_0
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 136
    .line 137
    .line 138
    move-result v12

    .line 139
    invoke-virtual {v10}, Lcom/google/android/gms/cast/MediaStatus;->getQueueItemCount()I

    .line 140
    .line 141
    .line 142
    move-result v10

    .line 143
    add-int/lit8 v10, v10, -0x1

    .line 144
    .line 145
    if-ge v12, v10, :cond_5

    .line 146
    .line 147
    move/from16 v20, v2

    .line 148
    .line 149
    :goto_1
    move/from16 v21, v13

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_5
    move/from16 v20, v5

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_6
    move/from16 v20, v5

    .line 156
    .line 157
    :goto_2
    move/from16 v21, v20

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_7
    move/from16 v20, v2

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :goto_3
    invoke-virtual {v6}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getPlayerState()I

    .line 164
    .line 165
    .line 166
    move-result v6

    .line 167
    if-ne v6, v11, :cond_8

    .line 168
    .line 169
    move v15, v2

    .line 170
    goto :goto_4

    .line 171
    :cond_8
    move v15, v5

    .line 172
    :goto_4
    new-instance v14, Lcom/google/android/gms/cast/framework/media/internal/zzm;

    .line 173
    .line 174
    invoke-virtual {v8}, Lcom/google/android/gms/cast/MediaInfo;->getStreamType()I

    .line 175
    .line 176
    .line 177
    move-result v16

    .line 178
    const-string v6, "com.google.android.gms.cast.metadata.TITLE"

    .line 179
    .line 180
    invoke-virtual {v9, v6}, Lcom/google/android/gms/cast/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v17

    .line 184
    invoke-virtual {v4}, Lcom/google/android/gms/cast/CastDevice;->getFriendlyName()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v18

    .line 188
    invoke-virtual {v7}, Landroid/support/v4/media/session/MediaSessionCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 189
    .line 190
    .line 191
    move-result-object v19

    .line 192
    invoke-direct/range {v14 .. v21}, Lcom/google/android/gms/cast/framework/media/internal/zzm;-><init>(ZILjava/lang/String;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;ZZ)V

    .line 193
    .line 194
    .line 195
    if-nez p1, :cond_9

    .line 196
    .line 197
    iget-object v4, v3, Lcom/google/android/gms/cast/framework/media/internal/zzo;->m:Lcom/google/android/gms/cast/framework/media/internal/zzm;

    .line 198
    .line 199
    if-eqz v4, :cond_9

    .line 200
    .line 201
    iget-boolean v6, v14, Lcom/google/android/gms/cast/framework/media/internal/zzm;->b:Z

    .line 202
    .line 203
    iget-boolean v7, v4, Lcom/google/android/gms/cast/framework/media/internal/zzm;->b:Z

    .line 204
    .line 205
    if-ne v6, v7, :cond_9

    .line 206
    .line 207
    iget v6, v14, Lcom/google/android/gms/cast/framework/media/internal/zzm;->c:I

    .line 208
    .line 209
    iget v7, v4, Lcom/google/android/gms/cast/framework/media/internal/zzm;->c:I

    .line 210
    .line 211
    if-ne v6, v7, :cond_9

    .line 212
    .line 213
    iget-object v6, v14, Lcom/google/android/gms/cast/framework/media/internal/zzm;->d:Ljava/lang/String;

    .line 214
    .line 215
    iget-object v7, v4, Lcom/google/android/gms/cast/framework/media/internal/zzm;->d:Ljava/lang/String;

    .line 216
    .line 217
    invoke-static {v6, v7}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v6

    .line 221
    if-eqz v6, :cond_9

    .line 222
    .line 223
    iget-object v6, v14, Lcom/google/android/gms/cast/framework/media/internal/zzm;->e:Ljava/lang/String;

    .line 224
    .line 225
    iget-object v7, v4, Lcom/google/android/gms/cast/framework/media/internal/zzm;->e:Ljava/lang/String;

    .line 226
    .line 227
    invoke-static {v6, v7}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v6

    .line 231
    if-eqz v6, :cond_9

    .line 232
    .line 233
    iget-boolean v6, v14, Lcom/google/android/gms/cast/framework/media/internal/zzm;->f:Z

    .line 234
    .line 235
    iget-boolean v7, v4, Lcom/google/android/gms/cast/framework/media/internal/zzm;->f:Z

    .line 236
    .line 237
    if-ne v6, v7, :cond_9

    .line 238
    .line 239
    iget-boolean v6, v14, Lcom/google/android/gms/cast/framework/media/internal/zzm;->g:Z

    .line 240
    .line 241
    iget-boolean v4, v4, Lcom/google/android/gms/cast/framework/media/internal/zzm;->g:Z

    .line 242
    .line 243
    if-eq v6, v4, :cond_a

    .line 244
    .line 245
    :cond_9
    iput-object v14, v3, Lcom/google/android/gms/cast/framework/media/internal/zzo;->m:Lcom/google/android/gms/cast/framework/media/internal/zzm;

    .line 246
    .line 247
    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/internal/zzo;->b()V

    .line 248
    .line 249
    .line 250
    :cond_a
    new-instance v4, Lcom/google/android/gms/cast/framework/media/internal/zzn;

    .line 251
    .line 252
    iget-object v6, v3, Lcom/google/android/gms/cast/framework/media/internal/zzo;->d:Lcom/google/android/gms/cast/framework/media/ImagePicker;

    .line 253
    .line 254
    if-eqz v6, :cond_b

    .line 255
    .line 256
    iget-object v5, v3, Lcom/google/android/gms/cast/framework/media/internal/zzo;->k:Lcom/google/android/gms/cast/framework/media/ImageHints;

    .line 257
    .line 258
    invoke-virtual {v6, v9, v5}, Lcom/google/android/gms/cast/framework/media/ImagePicker;->onPickImage(Lcom/google/android/gms/cast/MediaMetadata;Lcom/google/android/gms/cast/framework/media/ImageHints;)Lcom/google/android/gms/common/images/WebImage;

    .line 259
    .line 260
    .line 261
    move-result-object v5

    .line 262
    goto :goto_5

    .line 263
    :cond_b
    invoke-virtual {v9}, Lcom/google/android/gms/cast/MediaMetadata;->hasImages()Z

    .line 264
    .line 265
    .line 266
    move-result v6

    .line 267
    if-eqz v6, :cond_c

    .line 268
    .line 269
    invoke-virtual {v9}, Lcom/google/android/gms/cast/MediaMetadata;->getImages()Ljava/util/List;

    .line 270
    .line 271
    .line 272
    move-result-object v6

    .line 273
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v5

    .line 277
    check-cast v5, Lcom/google/android/gms/common/images/WebImage;

    .line 278
    .line 279
    goto :goto_5

    .line 280
    :cond_c
    const/4 v5, 0x0

    .line 281
    :goto_5
    invoke-direct {v4, v5}, Lcom/google/android/gms/cast/framework/media/internal/zzn;-><init>(Lcom/google/android/gms/common/images/WebImage;)V

    .line 282
    .line 283
    .line 284
    iget-object v5, v3, Lcom/google/android/gms/cast/framework/media/internal/zzo;->n:Lcom/google/android/gms/cast/framework/media/internal/zzn;

    .line 285
    .line 286
    iget-object v6, v4, Lcom/google/android/gms/cast/framework/media/internal/zzn;->a:Landroid/net/Uri;

    .line 287
    .line 288
    if-eqz v5, :cond_d

    .line 289
    .line 290
    iget-object v5, v5, Lcom/google/android/gms/cast/framework/media/internal/zzn;->a:Landroid/net/Uri;

    .line 291
    .line 292
    invoke-static {v6, v5}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result v5

    .line 296
    if-nez v5, :cond_e

    .line 297
    .line 298
    :cond_d
    new-instance v5, Lcom/google/android/gms/cast/framework/media/internal/zzl;

    .line 299
    .line 300
    invoke-direct {v5, v3, v4}, Lcom/google/android/gms/cast/framework/media/internal/zzl;-><init>(Lcom/google/android/gms/cast/framework/media/internal/zzo;Lcom/google/android/gms/cast/framework/media/internal/zzn;)V

    .line 301
    .line 302
    .line 303
    iget-object v3, v3, Lcom/google/android/gms/cast/framework/media/internal/zzo;->j:Lcom/google/android/gms/cast/framework/media/internal/zzb;

    .line 304
    .line 305
    invoke-virtual {v3, v5}, Lcom/google/android/gms/cast/framework/media/internal/zzb;->zzc(Lcom/google/android/gms/cast/framework/media/internal/zza;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v3, v6}, Lcom/google/android/gms/cast/framework/media/internal/zzb;->zzd(Landroid/net/Uri;)Z

    .line 309
    .line 310
    .line 311
    :cond_e
    :goto_6
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isLoadingNextItem()Z

    .line 312
    .line 313
    .line 314
    move-result v1

    .line 315
    if-nez v1, :cond_f

    .line 316
    .line 317
    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/framework/media/internal/zzv;->e(Z)V

    .line 318
    .line 319
    .line 320
    :cond_f
    :goto_7
    return-void
.end method
