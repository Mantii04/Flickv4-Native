.class final Lcom/google/android/gms/cast/framework/media/internal/zzo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final w:Lcom/google/android/gms/cast/internal/Logger;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/app/NotificationManager;

.field public final c:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

.field public final d:Lcom/google/android/gms/cast/framework/media/ImagePicker;

.field public final e:Landroid/content/ComponentName;

.field public final f:Landroid/content/ComponentName;

.field public g:Ljava/util/ArrayList;

.field public h:[I

.field public final i:J

.field public final j:Lcom/google/android/gms/cast/framework/media/internal/zzb;

.field public final k:Lcom/google/android/gms/cast/framework/media/ImageHints;

.field public final l:Landroid/content/res/Resources;

.field public m:Lcom/google/android/gms/cast/framework/media/internal/zzm;

.field public n:Lcom/google/android/gms/cast/framework/media/internal/zzn;

.field public o:Lz/y;

.field public p:Lz/y;

.field public q:Lz/y;

.field public r:Lz/y;

.field public s:Lz/y;

.field public t:Lz/y;

.field public u:Lz/y;

.field public v:Lz/y;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    const-string v1, "MediaNotificationProxy"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->w:Lcom/google/android/gms/cast/internal/Logger;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->g:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->a:Landroid/content/Context;

    .line 12
    .line 13
    const-string v0, "notification"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/app/NotificationManager;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->b:Landroid/app/NotificationManager;

    .line 22
    .line 23
    invoke-static {}, Lcom/google/android/gms/cast/framework/CastContext;->getSharedInstance()Lcom/google/android/gms/cast/framework/CastContext;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/google/android/gms/cast/framework/CastContext;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/CastContext;->getCastOptions()Lcom/google/android/gms/cast/framework/CastOptions;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lcom/google/android/gms/cast/framework/CastOptions;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getNotificationOptions()Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 62
    .line 63
    iput-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->c:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getImagePicker()Lcom/google/android/gms/cast/framework/media/ImagePicker;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    iput-object v3, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->d:Lcom/google/android/gms/cast/framework/media/ImagePicker;

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    iput-object v3, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->l:Landroid/content/res/Resources;

    .line 76
    .line 77
    new-instance v4, Landroid/content/ComponentName;

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getMediaIntentReceiverClassName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-direct {v4, v5, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iput-object v4, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->e:Landroid/content/ComponentName;

    .line 91
    .line 92
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getTargetActivityClassName()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-nez v1, :cond_0

    .line 101
    .line 102
    new-instance v1, Landroid/content/ComponentName;

    .line 103
    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getTargetActivityClassName()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->f:Landroid/content/ComponentName;

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_0
    const/4 v1, 0x0

    .line 119
    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->f:Landroid/content/ComponentName;

    .line 120
    .line 121
    :goto_0
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getSkipStepMs()J

    .line 122
    .line 123
    .line 124
    move-result-wide v4

    .line 125
    iput-wide v4, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->i:J

    .line 126
    .line 127
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zze()I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    new-instance v2, Lcom/google/android/gms/cast/framework/media/ImageHints;

    .line 136
    .line 137
    const/4 v3, 0x1

    .line 138
    invoke-direct {v2, v3, v1, v1}, Lcom/google/android/gms/cast/framework/media/ImageHints;-><init>(III)V

    .line 139
    .line 140
    .line 141
    iput-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->k:Lcom/google/android/gms/cast/framework/media/ImageHints;

    .line 142
    .line 143
    new-instance v1, Lcom/google/android/gms/cast/framework/media/internal/zzb;

    .line 144
    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/cast/framework/media/internal/zzb;-><init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/media/ImageHints;)V

    .line 150
    .line 151
    .line 152
    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->j:Lcom/google/android/gms/cast/framework/media/internal/zzb;

    .line 153
    .line 154
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastO()Z

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    if-eqz v1, :cond_1

    .line 159
    .line 160
    if-eqz v0, :cond_1

    .line 161
    .line 162
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    check-cast p1, Landroid/content/Context;

    .line 167
    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    sget v1, Lcom/google/android/gms/cast/framework/R$string;->media_notification_channel_name:I

    .line 173
    .line 174
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-static {p1}, Lb4/h;->C(Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-static {p1}, Lb4/h;->u(Landroid/app/NotificationChannel;)V

    .line 183
    .line 184
    .line 185
    invoke-static {v0, p1}, LB4/o;->r(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 186
    .line 187
    .line 188
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/cast/zzml;->zzad:Lcom/google/android/gms/internal/cast/zzml;

    .line 189
    .line 190
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzo;->zzd(Lcom/google/android/gms/internal/cast/zzml;)V

    .line 191
    .line 192
    .line 193
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lz/y;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    const-string v4, "com.google.android.gms.cast.framework.action.REWIND"

    .line 10
    .line 11
    const-string v5, "com.google.android.gms.cast.framework.action.SKIP_NEXT"

    .line 12
    .line 13
    const-string v7, "com.google.android.gms.cast.framework.action.SKIP_PREV"

    .line 14
    .line 15
    const-string v8, "com.google.android.gms.cast.framework.action.STOP_CASTING"

    .line 16
    .line 17
    const-string v9, "com.google.android.gms.cast.framework.action.DISCONNECT"

    .line 18
    .line 19
    const-string v10, "com.google.android.gms.cast.framework.action.FORWARD"

    .line 20
    .line 21
    const-string v11, "com.google.android.gms.cast.framework.action.TOGGLE_PLAYBACK"

    .line 22
    .line 23
    sparse-switch v3, :sswitch_data_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :sswitch_0
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    const/4 v3, 0x3

    .line 34
    goto :goto_1

    .line 35
    :sswitch_1
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    goto :goto_1

    .line 43
    :sswitch_2
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_0

    .line 48
    .line 49
    const/4 v3, 0x6

    .line 50
    goto :goto_1

    .line 51
    :sswitch_3
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_0

    .line 56
    .line 57
    const/4 v3, 0x5

    .line 58
    goto :goto_1

    .line 59
    :sswitch_4
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_0

    .line 64
    .line 65
    const/4 v3, 0x2

    .line 66
    goto :goto_1

    .line 67
    :sswitch_5
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_0

    .line 72
    .line 73
    const/4 v3, 0x1

    .line 74
    goto :goto_1

    .line 75
    :sswitch_6
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-eqz v3, :cond_0

    .line 80
    .line 81
    const/4 v3, 0x4

    .line 82
    goto :goto_1

    .line 83
    :cond_0
    :goto_0
    const/4 v3, -0x1

    .line 84
    :goto_1
    const-string v14, "googlecast-extra_skip_step_ms"

    .line 85
    .line 86
    move-object/from16 v16, v7

    .line 87
    .line 88
    iget-wide v6, v0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->i:J

    .line 89
    .line 90
    const/16 v17, 0x0

    .line 91
    .line 92
    const/high16 v18, 0x8000000

    .line 93
    .line 94
    iget-object v13, v0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->l:Landroid/content/res/Resources;

    .line 95
    .line 96
    iget-object v15, v0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->a:Landroid/content/Context;

    .line 97
    .line 98
    const/16 v19, 0x0

    .line 99
    .line 100
    iget-object v12, v0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->e:Landroid/content/ComponentName;

    .line 101
    .line 102
    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->c:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 103
    .line 104
    packed-switch v3, :pswitch_data_0

    .line 105
    .line 106
    .line 107
    sget-object v2, Lcom/google/android/gms/cast/framework/media/internal/zzo;->w:Lcom/google/android/gms/cast/internal/Logger;

    .line 108
    .line 109
    const/4 v3, 0x1

    .line 110
    new-array v3, v3, [Ljava/lang/Object;

    .line 111
    .line 112
    aput-object v1, v3, v19

    .line 113
    .line 114
    const-string v1, "Action: %s is not a pre-defined action."

    .line 115
    .line 116
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    return-object v17

    .line 120
    :pswitch_0
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->u:Lz/y;

    .line 121
    .line 122
    if-nez v1, :cond_1

    .line 123
    .line 124
    new-instance v1, Landroid/content/Intent;

    .line 125
    .line 126
    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 130
    .line 131
    .line 132
    sget v3, Lcom/google/android/gms/internal/cast/zzdy;->zza:I

    .line 133
    .line 134
    move/from16 v4, v19

    .line 135
    .line 136
    invoke-static {v15, v4, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    new-instance v3, Lz/x;

    .line 141
    .line 142
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getDisconnectDrawableResId()I

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zza()I

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    const/4 v6, 0x1

    .line 151
    new-array v6, v6, [Ljava/lang/Object;

    .line 152
    .line 153
    const-string v7, ""

    .line 154
    .line 155
    aput-object v7, v6, v4

    .line 156
    .line 157
    invoke-virtual {v13, v2, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-direct {v3, v5, v2, v1}, Lz/x;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v3}, Lz/x;->build()Lz/y;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    iput-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->u:Lz/y;

    .line 169
    .line 170
    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->u:Lz/y;

    .line 171
    .line 172
    return-object v1

    .line 173
    :pswitch_1
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->v:Lz/y;

    .line 174
    .line 175
    if-nez v1, :cond_2

    .line 176
    .line 177
    new-instance v1, Landroid/content/Intent;

    .line 178
    .line 179
    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 183
    .line 184
    .line 185
    sget v3, Lcom/google/android/gms/internal/cast/zzdy;->zza:I

    .line 186
    .line 187
    const/4 v4, 0x0

    .line 188
    invoke-static {v15, v4, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    new-instance v3, Lz/x;

    .line 193
    .line 194
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getDisconnectDrawableResId()I

    .line 195
    .line 196
    .line 197
    move-result v4

    .line 198
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zza()I

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    invoke-direct {v3, v4, v2, v1}, Lz/x;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v3}, Lz/x;->build()Lz/y;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    iput-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->v:Lz/y;

    .line 214
    .line 215
    :cond_2
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->v:Lz/y;

    .line 216
    .line 217
    return-object v1

    .line 218
    :pswitch_2
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->t:Lz/y;

    .line 219
    .line 220
    if-nez v1, :cond_3

    .line 221
    .line 222
    new-instance v1, Landroid/content/Intent;

    .line 223
    .line 224
    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1, v14, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 231
    .line 232
    .line 233
    sget v3, Lcom/google/android/gms/internal/cast/zzdy;->zza:I

    .line 234
    .line 235
    or-int v3, v3, v18

    .line 236
    .line 237
    const/4 v4, 0x0

    .line 238
    invoke-static {v15, v4, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    invoke-static {v2, v6, v7}, Lcom/google/android/gms/cast/framework/media/internal/zzw;->zzc(Lcom/google/android/gms/cast/framework/media/NotificationOptions;J)I

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    invoke-static {v2, v6, v7}, Lcom/google/android/gms/cast/framework/media/internal/zzw;->zzd(Lcom/google/android/gms/cast/framework/media/NotificationOptions;J)I

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    new-instance v4, Lz/x;

    .line 251
    .line 252
    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    invoke-direct {v4, v3, v2, v1}, Lz/x;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v4}, Lz/x;->build()Lz/y;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    iput-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->t:Lz/y;

    .line 264
    .line 265
    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->t:Lz/y;

    .line 266
    .line 267
    return-object v1

    .line 268
    :pswitch_3
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->s:Lz/y;

    .line 269
    .line 270
    if-nez v1, :cond_4

    .line 271
    .line 272
    new-instance v1, Landroid/content/Intent;

    .line 273
    .line 274
    invoke-direct {v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v1, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1, v14, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 281
    .line 282
    .line 283
    sget v3, Lcom/google/android/gms/internal/cast/zzdy;->zza:I

    .line 284
    .line 285
    or-int v3, v3, v18

    .line 286
    .line 287
    const/4 v4, 0x0

    .line 288
    invoke-static {v15, v4, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    invoke-static {v2, v6, v7}, Lcom/google/android/gms/cast/framework/media/internal/zzw;->zza(Lcom/google/android/gms/cast/framework/media/NotificationOptions;J)I

    .line 293
    .line 294
    .line 295
    move-result v3

    .line 296
    invoke-static {v2, v6, v7}, Lcom/google/android/gms/cast/framework/media/internal/zzw;->zzb(Lcom/google/android/gms/cast/framework/media/NotificationOptions;J)I

    .line 297
    .line 298
    .line 299
    move-result v2

    .line 300
    new-instance v4, Lz/x;

    .line 301
    .line 302
    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    invoke-direct {v4, v3, v2, v1}, Lz/x;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v4}, Lz/x;->build()Lz/y;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    iput-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->s:Lz/y;

    .line 314
    .line 315
    :cond_4
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->s:Lz/y;

    .line 316
    .line 317
    return-object v1

    .line 318
    :pswitch_4
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->m:Lcom/google/android/gms/cast/framework/media/internal/zzm;

    .line 319
    .line 320
    iget-boolean v1, v1, Lcom/google/android/gms/cast/framework/media/internal/zzm;->g:Z

    .line 321
    .line 322
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->r:Lz/y;

    .line 323
    .line 324
    if-nez v3, :cond_6

    .line 325
    .line 326
    if-eqz v1, :cond_5

    .line 327
    .line 328
    new-instance v1, Landroid/content/Intent;

    .line 329
    .line 330
    move-object/from16 v3, v16

    .line 331
    .line 332
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v1, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 336
    .line 337
    .line 338
    sget v3, Lcom/google/android/gms/internal/cast/zzdy;->zza:I

    .line 339
    .line 340
    const/4 v4, 0x0

    .line 341
    invoke-static {v15, v4, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 342
    .line 343
    .line 344
    move-result-object v17

    .line 345
    :cond_5
    move-object/from16 v1, v17

    .line 346
    .line 347
    new-instance v3, Lz/x;

    .line 348
    .line 349
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getSkipPrevDrawableResId()I

    .line 350
    .line 351
    .line 352
    move-result v4

    .line 353
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzl()I

    .line 354
    .line 355
    .line 356
    move-result v2

    .line 357
    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v2

    .line 361
    invoke-direct {v3, v4, v2, v1}, Lz/x;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v3}, Lz/x;->build()Lz/y;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    iput-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->r:Lz/y;

    .line 369
    .line 370
    :cond_6
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->r:Lz/y;

    .line 371
    .line 372
    return-object v1

    .line 373
    :pswitch_5
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->m:Lcom/google/android/gms/cast/framework/media/internal/zzm;

    .line 374
    .line 375
    iget-boolean v1, v1, Lcom/google/android/gms/cast/framework/media/internal/zzm;->f:Z

    .line 376
    .line 377
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->q:Lz/y;

    .line 378
    .line 379
    if-nez v3, :cond_8

    .line 380
    .line 381
    if-eqz v1, :cond_7

    .line 382
    .line 383
    new-instance v1, Landroid/content/Intent;

    .line 384
    .line 385
    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v1, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 389
    .line 390
    .line 391
    sget v3, Lcom/google/android/gms/internal/cast/zzdy;->zza:I

    .line 392
    .line 393
    const/4 v4, 0x0

    .line 394
    invoke-static {v15, v4, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 395
    .line 396
    .line 397
    move-result-object v17

    .line 398
    :cond_7
    move-object/from16 v1, v17

    .line 399
    .line 400
    new-instance v3, Lz/x;

    .line 401
    .line 402
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getSkipNextDrawableResId()I

    .line 403
    .line 404
    .line 405
    move-result v4

    .line 406
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzk()I

    .line 407
    .line 408
    .line 409
    move-result v2

    .line 410
    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v2

    .line 414
    invoke-direct {v3, v4, v2, v1}, Lz/x;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v3}, Lz/x;->build()Lz/y;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    iput-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->q:Lz/y;

    .line 422
    .line 423
    :cond_8
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->q:Lz/y;

    .line 424
    .line 425
    return-object v1

    .line 426
    :pswitch_6
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->m:Lcom/google/android/gms/cast/framework/media/internal/zzm;

    .line 427
    .line 428
    iget v3, v1, Lcom/google/android/gms/cast/framework/media/internal/zzm;->c:I

    .line 429
    .line 430
    iget-boolean v1, v1, Lcom/google/android/gms/cast/framework/media/internal/zzm;->b:Z

    .line 431
    .line 432
    if-eqz v1, :cond_b

    .line 433
    .line 434
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->p:Lz/y;

    .line 435
    .line 436
    if-nez v1, :cond_a

    .line 437
    .line 438
    const/4 v1, 0x2

    .line 439
    if-ne v3, v1, :cond_9

    .line 440
    .line 441
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getStopLiveStreamDrawableResId()I

    .line 442
    .line 443
    .line 444
    move-result v1

    .line 445
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getStopLiveStreamTitleResId()I

    .line 446
    .line 447
    .line 448
    move-result v2

    .line 449
    goto :goto_2

    .line 450
    :cond_9
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getPauseDrawableResId()I

    .line 451
    .line 452
    .line 453
    move-result v1

    .line 454
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzf()I

    .line 455
    .line 456
    .line 457
    move-result v2

    .line 458
    :goto_2
    new-instance v3, Landroid/content/Intent;

    .line 459
    .line 460
    invoke-direct {v3, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v3, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 464
    .line 465
    .line 466
    sget v4, Lcom/google/android/gms/internal/cast/zzdy;->zza:I

    .line 467
    .line 468
    const/4 v5, 0x0

    .line 469
    invoke-static {v15, v5, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 470
    .line 471
    .line 472
    move-result-object v3

    .line 473
    new-instance v4, Lz/x;

    .line 474
    .line 475
    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v2

    .line 479
    invoke-direct {v4, v1, v2, v3}, Lz/x;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 480
    .line 481
    .line 482
    invoke-virtual {v4}, Lz/x;->build()Lz/y;

    .line 483
    .line 484
    .line 485
    move-result-object v1

    .line 486
    iput-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->p:Lz/y;

    .line 487
    .line 488
    :cond_a
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->p:Lz/y;

    .line 489
    .line 490
    return-object v1

    .line 491
    :cond_b
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->o:Lz/y;

    .line 492
    .line 493
    if-nez v1, :cond_c

    .line 494
    .line 495
    new-instance v1, Landroid/content/Intent;

    .line 496
    .line 497
    invoke-direct {v1, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v1, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 501
    .line 502
    .line 503
    sget v3, Lcom/google/android/gms/internal/cast/zzdy;->zza:I

    .line 504
    .line 505
    const/4 v4, 0x0

    .line 506
    invoke-static {v15, v4, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 507
    .line 508
    .line 509
    move-result-object v1

    .line 510
    new-instance v3, Lz/x;

    .line 511
    .line 512
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getPlayDrawableResId()I

    .line 513
    .line 514
    .line 515
    move-result v4

    .line 516
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzg()I

    .line 517
    .line 518
    .line 519
    move-result v2

    .line 520
    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v2

    .line 524
    invoke-direct {v3, v4, v2, v1}, Lz/x;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 525
    .line 526
    .line 527
    invoke-virtual {v3}, Lz/x;->build()Lz/y;

    .line 528
    .line 529
    .line 530
    move-result-object v1

    .line 531
    iput-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->o:Lz/y;

    .line 532
    .line 533
    :cond_c
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->o:Lz/y;

    .line 534
    .line 535
    return-object v1

    .line 536
    nop

    .line 537
    :sswitch_data_0
    .sparse-switch
        -0x655132e4 -> :sswitch_6
        -0x3855de4e -> :sswitch_5
        -0x3854c70e -> :sswitch_4
        -0x27d32f79 -> :sswitch_3
        -0x76b6783 -> :sswitch_2
        0xe0a3765 -> :sswitch_1
        0x51303e64 -> :sswitch_0
    .end sparse-switch

    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->b:Landroid/app/NotificationManager;

    .line 4
    .line 5
    if-eqz v2, :cond_10

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->m:Lcom/google/android/gms/cast/framework/media/internal/zzm;

    .line 8
    .line 9
    if-nez v3, :cond_0

    .line 10
    .line 11
    goto/16 :goto_9

    .line 12
    .line 13
    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->n:Lcom/google/android/gms/cast/framework/media/internal/zzn;

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    if-nez v3, :cond_1

    .line 17
    .line 18
    move-object v3, v4

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-object v3, v3, Lcom/google/android/gms/cast/framework/media/internal/zzn;->b:Landroid/graphics/Bitmap;

    .line 21
    .line 22
    :goto_0
    new-instance v5, Lz/B;

    .line 23
    .line 24
    const-string v6, "cast_media_notification"

    .line 25
    .line 26
    iget-object v7, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->a:Landroid/content/Context;

    .line 27
    .line 28
    invoke-direct {v5, v7, v6}, Lz/B;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v5, v3}, Lz/B;->setLargeIcon(Landroid/graphics/Bitmap;)Lz/B;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget-object v5, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->c:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 36
    .line 37
    invoke-virtual {v5}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getSmallIconDrawableResId()I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    invoke-virtual {v3, v6}, Lz/B;->setSmallIcon(I)Lz/B;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    iget-object v6, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->m:Lcom/google/android/gms/cast/framework/media/internal/zzm;

    .line 46
    .line 47
    iget-object v6, v6, Lcom/google/android/gms/cast/framework/media/internal/zzm;->d:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v3, v6}, Lz/B;->setContentTitle(Ljava/lang/CharSequence;)Lz/B;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v5}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getCastingToDeviceStringResId()I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    iget-object v8, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->m:Lcom/google/android/gms/cast/framework/media/internal/zzm;

    .line 58
    .line 59
    iget-object v8, v8, Lcom/google/android/gms/cast/framework/media/internal/zzm;->e:Ljava/lang/String;

    .line 60
    .line 61
    new-array v9, v1, [Ljava/lang/Object;

    .line 62
    .line 63
    aput-object v8, v9, v0

    .line 64
    .line 65
    iget-object v8, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->l:Landroid/content/res/Resources;

    .line 66
    .line 67
    invoke-virtual {v8, v6, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    invoke-virtual {v3, v6}, Lz/B;->setContentText(Ljava/lang/CharSequence;)Lz/B;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v3, v1}, Lz/B;->setOngoing(Z)Lz/B;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v3, v0}, Lz/B;->setShowWhen(Z)Lz/B;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v3, v1}, Lz/B;->setVisibility(I)Lz/B;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    iget-object v6, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->f:Landroid/content/ComponentName;

    .line 88
    .line 89
    if-nez v6, :cond_2

    .line 90
    .line 91
    move-object v6, v4

    .line 92
    goto :goto_1

    .line 93
    :cond_2
    new-instance v8, Landroid/content/Intent;

    .line 94
    .line 95
    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v9, "targetActivity"

    .line 99
    .line 100
    invoke-virtual {v8, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v9

    .line 107
    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v8, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 111
    .line 112
    .line 113
    invoke-static {v7}, Lz/X;->create(Landroid/content/Context;)Lz/X;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    invoke-virtual {v6, v8}, Lz/X;->addNextIntentWithParentStack(Landroid/content/Intent;)Lz/X;

    .line 118
    .line 119
    .line 120
    sget v8, Lcom/google/android/gms/internal/cast/zzdy;->zza:I

    .line 121
    .line 122
    const/high16 v9, 0x8000000

    .line 123
    .line 124
    or-int/2addr v8, v9

    .line 125
    invoke-virtual {v6, v1, v8}, Lz/X;->getPendingIntent(II)Landroid/app/PendingIntent;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    :goto_1
    if-eqz v6, :cond_3

    .line 130
    .line 131
    invoke-virtual {v3, v6}, Lz/B;->setContentIntent(Landroid/app/PendingIntent;)Lz/B;

    .line 132
    .line 133
    .line 134
    :cond_3
    invoke-virtual {v5}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzm()Lcom/google/android/gms/cast/framework/media/zzg;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    sget-object v8, Lcom/google/android/gms/cast/framework/media/internal/zzo;->w:Lcom/google/android/gms/cast/internal/Logger;

    .line 139
    .line 140
    if-eqz v6, :cond_9

    .line 141
    .line 142
    new-array v5, v0, [Ljava/lang/Object;

    .line 143
    .line 144
    const-string v9, "actionsProvider != null"

    .line 145
    .line 146
    invoke-virtual {v8, v9, v5}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    invoke-static {v6}, Lcom/google/android/gms/cast/framework/media/internal/zzw;->zzg(Lcom/google/android/gms/cast/framework/media/zzg;)[I

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    if-nez v5, :cond_4

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_4
    invoke-virtual {v5}, [I->clone()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    check-cast v4, [I

    .line 161
    .line 162
    :goto_2
    iput-object v4, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->h:[I

    .line 163
    .line 164
    invoke-static {v6}, Lcom/google/android/gms/cast/framework/media/internal/zzw;->zzf(Lcom/google/android/gms/cast/framework/media/zzg;)Ljava/util/List;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    new-instance v5, Ljava/util/ArrayList;

    .line 169
    .line 170
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .line 172
    .line 173
    iput-object v5, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->g:Ljava/util/ArrayList;

    .line 174
    .line 175
    if-nez v4, :cond_5

    .line 176
    .line 177
    goto/16 :goto_7

    .line 178
    .line 179
    :cond_5
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    :cond_6
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 184
    .line 185
    .line 186
    move-result v5

    .line 187
    if-eqz v5, :cond_c

    .line 188
    .line 189
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    check-cast v5, Lcom/google/android/gms/cast/framework/media/NotificationAction;

    .line 194
    .line 195
    invoke-virtual {v5}, Lcom/google/android/gms/cast/framework/media/NotificationAction;->getAction()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v6

    .line 199
    const-string v8, "com.google.android.gms.cast.framework.action.TOGGLE_PLAYBACK"

    .line 200
    .line 201
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v8

    .line 205
    if-nez v8, :cond_8

    .line 206
    .line 207
    const-string v8, "com.google.android.gms.cast.framework.action.SKIP_NEXT"

    .line 208
    .line 209
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v8

    .line 213
    if-nez v8, :cond_8

    .line 214
    .line 215
    const-string v8, "com.google.android.gms.cast.framework.action.SKIP_PREV"

    .line 216
    .line 217
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v8

    .line 221
    if-nez v8, :cond_8

    .line 222
    .line 223
    const-string v8, "com.google.android.gms.cast.framework.action.FORWARD"

    .line 224
    .line 225
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v8

    .line 229
    if-nez v8, :cond_8

    .line 230
    .line 231
    const-string v8, "com.google.android.gms.cast.framework.action.REWIND"

    .line 232
    .line 233
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v8

    .line 237
    if-nez v8, :cond_8

    .line 238
    .line 239
    const-string v8, "com.google.android.gms.cast.framework.action.STOP_CASTING"

    .line 240
    .line 241
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v8

    .line 245
    if-nez v8, :cond_8

    .line 246
    .line 247
    const-string v8, "com.google.android.gms.cast.framework.action.DISCONNECT"

    .line 248
    .line 249
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v6

    .line 253
    if-eqz v6, :cond_7

    .line 254
    .line 255
    goto :goto_4

    .line 256
    :cond_7
    new-instance v6, Landroid/content/Intent;

    .line 257
    .line 258
    invoke-virtual {v5}, Lcom/google/android/gms/cast/framework/media/NotificationAction;->getAction()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v8

    .line 262
    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    iget-object v8, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->e:Landroid/content/ComponentName;

    .line 266
    .line 267
    invoke-virtual {v6, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 268
    .line 269
    .line 270
    sget v8, Lcom/google/android/gms/internal/cast/zzdy;->zza:I

    .line 271
    .line 272
    invoke-static {v7, v0, v6, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 273
    .line 274
    .line 275
    move-result-object v6

    .line 276
    new-instance v8, Lz/x;

    .line 277
    .line 278
    invoke-virtual {v5}, Lcom/google/android/gms/cast/framework/media/NotificationAction;->getIconResId()I

    .line 279
    .line 280
    .line 281
    move-result v9

    .line 282
    invoke-virtual {v5}, Lcom/google/android/gms/cast/framework/media/NotificationAction;->getContentDescription()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v5

    .line 286
    invoke-direct {v8, v9, v5, v6}, Lz/x;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v8}, Lz/x;->build()Lz/y;

    .line 290
    .line 291
    .line 292
    move-result-object v5

    .line 293
    goto :goto_5

    .line 294
    :cond_8
    :goto_4
    invoke-virtual {v5}, Lcom/google/android/gms/cast/framework/media/NotificationAction;->getAction()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v5

    .line 298
    invoke-virtual {p0, v5}, Lcom/google/android/gms/cast/framework/media/internal/zzo;->a(Ljava/lang/String;)Lz/y;

    .line 299
    .line 300
    .line 301
    move-result-object v5

    .line 302
    :goto_5
    if-eqz v5, :cond_6

    .line 303
    .line 304
    iget-object v6, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->g:Ljava/util/ArrayList;

    .line 305
    .line 306
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    goto :goto_3

    .line 310
    :cond_9
    new-array v0, v0, [Ljava/lang/Object;

    .line 311
    .line 312
    const-string v4, "actionsProvider == null"

    .line 313
    .line 314
    invoke-virtual {v8, v4, v0}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 315
    .line 316
    .line 317
    new-instance v0, Ljava/util/ArrayList;

    .line 318
    .line 319
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 320
    .line 321
    .line 322
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->g:Ljava/util/ArrayList;

    .line 323
    .line 324
    invoke-virtual {v5}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getActions()Ljava/util/List;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    :cond_a
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 333
    .line 334
    .line 335
    move-result v4

    .line 336
    if-eqz v4, :cond_b

    .line 337
    .line 338
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v4

    .line 342
    check-cast v4, Ljava/lang/String;

    .line 343
    .line 344
    invoke-virtual {p0, v4}, Lcom/google/android/gms/cast/framework/media/internal/zzo;->a(Ljava/lang/String;)Lz/y;

    .line 345
    .line 346
    .line 347
    move-result-object v4

    .line 348
    if-eqz v4, :cond_a

    .line 349
    .line 350
    iget-object v6, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->g:Ljava/util/ArrayList;

    .line 351
    .line 352
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    goto :goto_6

    .line 356
    :cond_b
    invoke-virtual {v5}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getCompatActionIndices()[I

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    check-cast v0, [I

    .line 365
    .line 366
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->h:[I

    .line 367
    .line 368
    :cond_c
    :goto_7
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->g:Ljava/util/ArrayList;

    .line 369
    .line 370
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 375
    .line 376
    .line 377
    move-result v4

    .line 378
    if-eqz v4, :cond_d

    .line 379
    .line 380
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v4

    .line 384
    check-cast v4, Lz/y;

    .line 385
    .line 386
    invoke-virtual {v3, v4}, Lz/B;->addAction(Lz/y;)Lz/B;

    .line 387
    .line 388
    .line 389
    goto :goto_8

    .line 390
    :cond_d
    new-instance v0, Lq0/c;

    .line 391
    .line 392
    invoke-direct {v0}, Lq0/c;-><init>()V

    .line 393
    .line 394
    .line 395
    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->h:[I

    .line 396
    .line 397
    if-eqz v4, :cond_e

    .line 398
    .line 399
    invoke-virtual {v0, v4}, Lq0/c;->setShowActionsInCompactView([I)Lq0/c;

    .line 400
    .line 401
    .line 402
    :cond_e
    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->m:Lcom/google/android/gms/cast/framework/media/internal/zzm;

    .line 403
    .line 404
    iget-object v4, v4, Lcom/google/android/gms/cast/framework/media/internal/zzm;->a:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 405
    .line 406
    if-eqz v4, :cond_f

    .line 407
    .line 408
    invoke-virtual {v0, v4}, Lq0/c;->setMediaSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)Lq0/c;

    .line 409
    .line 410
    .line 411
    :cond_f
    invoke-virtual {v3, v0}, Lz/B;->setStyle(Lz/C;)Lz/B;

    .line 412
    .line 413
    .line 414
    invoke-virtual {v3}, Lz/B;->build()Landroid/app/Notification;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    const-string v3, "castMediaNotification"

    .line 419
    .line 420
    invoke-virtual {v2, v3, v1, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 421
    .line 422
    .line 423
    :cond_10
    :goto_9
    return-void
.end method
