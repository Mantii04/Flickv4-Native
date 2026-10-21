.class public Lcom/google/android/gms/cast/framework/media/MediaNotificationService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final x:Lcom/google/android/gms/cast/internal/Logger;


# instance fields
.field public b:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

.field public e:Lcom/google/android/gms/cast/framework/media/ImagePicker;

.field public f:Landroid/content/ComponentName;

.field public j:Landroid/content/ComponentName;

.field public m:Ljava/util/ArrayList;

.field public n:[I

.field public p:J

.field public q:Lcom/google/android/gms/cast/framework/media/internal/zzb;

.field public r:Lcom/google/android/gms/cast/framework/media/ImageHints;

.field public s:Landroid/content/res/Resources;

.field public t:Lcom/google/android/gms/cast/framework/media/zzm;

.field public u:Lcom/google/android/gms/cast/framework/media/zzn;

.field public v:Landroid/app/NotificationManager;

.field public w:Landroid/app/Notification;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    const-string v1, "MediaNotificationService"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->x:Lcom/google/android/gms/cast/internal/Logger;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

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
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->m:Ljava/util/ArrayList;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lz/y;
    .locals 14

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const-string v2, "com.google.android.gms.cast.framework.action.REWIND"

    .line 7
    .line 8
    const-string v3, "com.google.android.gms.cast.framework.action.SKIP_NEXT"

    .line 9
    .line 10
    const/4 v4, 0x2

    .line 11
    const-string v5, "com.google.android.gms.cast.framework.action.SKIP_PREV"

    .line 12
    .line 13
    const-string v6, "com.google.android.gms.cast.framework.action.STOP_CASTING"

    .line 14
    .line 15
    const-string v7, "com.google.android.gms.cast.framework.action.DISCONNECT"

    .line 16
    .line 17
    const-string v8, "com.google.android.gms.cast.framework.action.TOGGLE_PLAYBACK"

    .line 18
    .line 19
    const-string v9, "com.google.android.gms.cast.framework.action.FORWARD"

    .line 20
    .line 21
    const/4 v10, 0x0

    .line 22
    sparse-switch v1, :sswitch_data_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :sswitch_0
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    const/4 v1, 0x3

    .line 33
    goto :goto_1

    .line 34
    :sswitch_1
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    move v1, v10

    .line 41
    goto :goto_1

    .line 42
    :sswitch_2
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    const/4 v1, 0x6

    .line 49
    goto :goto_1

    .line 50
    :sswitch_3
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_0

    .line 55
    .line 56
    const/4 v1, 0x5

    .line 57
    goto :goto_1

    .line 58
    :sswitch_4
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_0

    .line 63
    .line 64
    move v1, v4

    .line 65
    goto :goto_1

    .line 66
    :sswitch_5
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_0

    .line 71
    .line 72
    move v1, v0

    .line 73
    goto :goto_1

    .line 74
    :sswitch_6
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_0

    .line 79
    .line 80
    const/4 v1, 0x4

    .line 81
    goto :goto_1

    .line 82
    :cond_0
    :goto_0
    const/4 v1, -0x1

    .line 83
    :goto_1
    const/high16 v11, 0x8000000

    .line 84
    .line 85
    const-string v12, "googlecast-extra_skip_step_ms"

    .line 86
    .line 87
    const/4 v13, 0x0

    .line 88
    packed-switch v1, :pswitch_data_0

    .line 89
    .line 90
    .line 91
    sget-object v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->x:Lcom/google/android/gms/cast/internal/Logger;

    .line 92
    .line 93
    new-array v0, v0, [Ljava/lang/Object;

    .line 94
    .line 95
    aput-object p1, v0, v10

    .line 96
    .line 97
    const-string p1, "Action: %s is not a pre-defined action."

    .line 98
    .line 99
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    return-object v13

    .line 103
    :pswitch_0
    new-instance p1, Landroid/content/Intent;

    .line 104
    .line 105
    invoke-direct {p1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->f:Landroid/content/ComponentName;

    .line 109
    .line 110
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 111
    .line 112
    .line 113
    sget v1, Lcom/google/android/gms/internal/cast/zzdy;->zza:I

    .line 114
    .line 115
    invoke-static {p0, v10, p1, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    new-instance v1, Lz/x;

    .line 120
    .line 121
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->b:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 122
    .line 123
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getDisconnectDrawableResId()I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->s:Landroid/content/res/Resources;

    .line 128
    .line 129
    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->b:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 130
    .line 131
    invoke-virtual {v4}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zza()I

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    new-array v0, v0, [Ljava/lang/Object;

    .line 136
    .line 137
    const-string v5, ""

    .line 138
    .line 139
    aput-object v5, v0, v10

    .line 140
    .line 141
    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-direct {v1, v2, v0, p1}, Lz/x;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Lz/x;->build()Lz/y;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    return-object p1

    .line 153
    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    .line 154
    .line 155
    invoke-direct {p1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->f:Landroid/content/ComponentName;

    .line 159
    .line 160
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 161
    .line 162
    .line 163
    sget v0, Lcom/google/android/gms/internal/cast/zzdy;->zza:I

    .line 164
    .line 165
    invoke-static {p0, v10, p1, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    new-instance v0, Lz/x;

    .line 170
    .line 171
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->b:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 172
    .line 173
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getDisconnectDrawableResId()I

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->s:Landroid/content/res/Resources;

    .line 178
    .line 179
    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->b:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 180
    .line 181
    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zza()I

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    invoke-direct {v0, v1, v2, p1}, Lz/x;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0}, Lz/x;->build()Lz/y;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    return-object p1

    .line 197
    :pswitch_2
    iget-wide v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->p:J

    .line 198
    .line 199
    new-instance p1, Landroid/content/Intent;

    .line 200
    .line 201
    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->f:Landroid/content/ComponentName;

    .line 205
    .line 206
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1, v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 210
    .line 211
    .line 212
    sget v2, Lcom/google/android/gms/internal/cast/zzdy;->zza:I

    .line 213
    .line 214
    or-int/2addr v2, v11

    .line 215
    invoke-static {p0, v10, p1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->b:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 220
    .line 221
    invoke-static {v2, v0, v1}, Lcom/google/android/gms/cast/framework/media/internal/zzw;->zzc(Lcom/google/android/gms/cast/framework/media/NotificationOptions;J)I

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->b:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 226
    .line 227
    invoke-static {v3, v0, v1}, Lcom/google/android/gms/cast/framework/media/internal/zzw;->zzd(Lcom/google/android/gms/cast/framework/media/NotificationOptions;J)I

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    new-instance v1, Lz/x;

    .line 232
    .line 233
    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->s:Landroid/content/res/Resources;

    .line 234
    .line 235
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-direct {v1, v2, v0, p1}, Lz/x;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1}, Lz/x;->build()Lz/y;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    return-object p1

    .line 247
    :pswitch_3
    iget-wide v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->p:J

    .line 248
    .line 249
    new-instance p1, Landroid/content/Intent;

    .line 250
    .line 251
    invoke-direct {p1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->f:Landroid/content/ComponentName;

    .line 255
    .line 256
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 257
    .line 258
    .line 259
    invoke-virtual {p1, v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 260
    .line 261
    .line 262
    sget v2, Lcom/google/android/gms/internal/cast/zzdy;->zza:I

    .line 263
    .line 264
    or-int/2addr v2, v11

    .line 265
    invoke-static {p0, v10, p1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->b:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 270
    .line 271
    invoke-static {v2, v0, v1}, Lcom/google/android/gms/cast/framework/media/internal/zzw;->zza(Lcom/google/android/gms/cast/framework/media/NotificationOptions;J)I

    .line 272
    .line 273
    .line 274
    move-result v2

    .line 275
    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->b:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 276
    .line 277
    invoke-static {v3, v0, v1}, Lcom/google/android/gms/cast/framework/media/internal/zzw;->zzb(Lcom/google/android/gms/cast/framework/media/NotificationOptions;J)I

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    new-instance v1, Lz/x;

    .line 282
    .line 283
    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->s:Landroid/content/res/Resources;

    .line 284
    .line 285
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-direct {v1, v2, v0, p1}, Lz/x;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v1}, Lz/x;->build()Lz/y;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    return-object p1

    .line 297
    :pswitch_4
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->t:Lcom/google/android/gms/cast/framework/media/zzm;

    .line 298
    .line 299
    iget-boolean p1, p1, Lcom/google/android/gms/cast/framework/media/zzm;->g:Z

    .line 300
    .line 301
    if-eqz p1, :cond_1

    .line 302
    .line 303
    new-instance p1, Landroid/content/Intent;

    .line 304
    .line 305
    invoke-direct {p1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->f:Landroid/content/ComponentName;

    .line 309
    .line 310
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 311
    .line 312
    .line 313
    sget v0, Lcom/google/android/gms/internal/cast/zzdy;->zza:I

    .line 314
    .line 315
    invoke-static {p0, v10, p1, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 316
    .line 317
    .line 318
    move-result-object v13

    .line 319
    :cond_1
    new-instance p1, Lz/x;

    .line 320
    .line 321
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->b:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 322
    .line 323
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getSkipPrevDrawableResId()I

    .line 324
    .line 325
    .line 326
    move-result v0

    .line 327
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->s:Landroid/content/res/Resources;

    .line 328
    .line 329
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->b:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 330
    .line 331
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzl()I

    .line 332
    .line 333
    .line 334
    move-result v2

    .line 335
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    invoke-direct {p1, v0, v1, v13}, Lz/x;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {p1}, Lz/x;->build()Lz/y;

    .line 343
    .line 344
    .line 345
    move-result-object p1

    .line 346
    return-object p1

    .line 347
    :pswitch_5
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->t:Lcom/google/android/gms/cast/framework/media/zzm;

    .line 348
    .line 349
    iget-boolean p1, p1, Lcom/google/android/gms/cast/framework/media/zzm;->f:Z

    .line 350
    .line 351
    if-eqz p1, :cond_2

    .line 352
    .line 353
    new-instance p1, Landroid/content/Intent;

    .line 354
    .line 355
    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->f:Landroid/content/ComponentName;

    .line 359
    .line 360
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 361
    .line 362
    .line 363
    sget v0, Lcom/google/android/gms/internal/cast/zzdy;->zza:I

    .line 364
    .line 365
    invoke-static {p0, v10, p1, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 366
    .line 367
    .line 368
    move-result-object v13

    .line 369
    :cond_2
    new-instance p1, Lz/x;

    .line 370
    .line 371
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->b:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 372
    .line 373
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getSkipNextDrawableResId()I

    .line 374
    .line 375
    .line 376
    move-result v0

    .line 377
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->s:Landroid/content/res/Resources;

    .line 378
    .line 379
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->b:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 380
    .line 381
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzk()I

    .line 382
    .line 383
    .line 384
    move-result v2

    .line 385
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    invoke-direct {p1, v0, v1, v13}, Lz/x;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {p1}, Lz/x;->build()Lz/y;

    .line 393
    .line 394
    .line 395
    move-result-object p1

    .line 396
    return-object p1

    .line 397
    :pswitch_6
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->t:Lcom/google/android/gms/cast/framework/media/zzm;

    .line 398
    .line 399
    iget v0, p1, Lcom/google/android/gms/cast/framework/media/zzm;->c:I

    .line 400
    .line 401
    if-ne v0, v4, :cond_3

    .line 402
    .line 403
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->b:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 404
    .line 405
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getStopLiveStreamDrawableResId()I

    .line 406
    .line 407
    .line 408
    move-result v0

    .line 409
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->b:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 410
    .line 411
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getStopLiveStreamTitleResId()I

    .line 412
    .line 413
    .line 414
    move-result v1

    .line 415
    goto :goto_2

    .line 416
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->b:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 417
    .line 418
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getPauseDrawableResId()I

    .line 419
    .line 420
    .line 421
    move-result v0

    .line 422
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->b:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 423
    .line 424
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzf()I

    .line 425
    .line 426
    .line 427
    move-result v1

    .line 428
    :goto_2
    iget-boolean p1, p1, Lcom/google/android/gms/cast/framework/media/zzm;->b:Z

    .line 429
    .line 430
    if-nez p1, :cond_4

    .line 431
    .line 432
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->b:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 433
    .line 434
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getPlayDrawableResId()I

    .line 435
    .line 436
    .line 437
    move-result v0

    .line 438
    :cond_4
    if-nez p1, :cond_5

    .line 439
    .line 440
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->b:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 441
    .line 442
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzg()I

    .line 443
    .line 444
    .line 445
    move-result v1

    .line 446
    :cond_5
    new-instance p1, Landroid/content/Intent;

    .line 447
    .line 448
    invoke-direct {p1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->f:Landroid/content/ComponentName;

    .line 452
    .line 453
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 454
    .line 455
    .line 456
    sget v2, Lcom/google/android/gms/internal/cast/zzdy;->zza:I

    .line 457
    .line 458
    invoke-static {p0, v10, p1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 459
    .line 460
    .line 461
    move-result-object p1

    .line 462
    new-instance v2, Lz/x;

    .line 463
    .line 464
    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->s:Landroid/content/res/Resources;

    .line 465
    .line 466
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v1

    .line 470
    invoke-direct {v2, v0, v1, p1}, Lz/x;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 471
    .line 472
    .line 473
    invoke-virtual {v2}, Lz/x;->build()Lz/y;

    .line 474
    .line 475
    .line 476
    move-result-object p1

    .line 477
    return-object p1

    .line 478
    nop

    .line 479
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

    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
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
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->t:Lcom/google/android/gms/cast/framework/media/zzm;

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->u:Lcom/google/android/gms/cast/framework/media/zzn;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-nez v2, :cond_1

    .line 12
    .line 13
    move-object v2, v3

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget-object v2, v2, Lcom/google/android/gms/cast/framework/media/zzn;->b:Landroid/graphics/Bitmap;

    .line 16
    .line 17
    :goto_0
    new-instance v4, Lz/B;

    .line 18
    .line 19
    const-string v5, "cast_media_notification"

    .line 20
    .line 21
    invoke-direct {v4, p0, v5}, Lz/B;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v4, v2}, Lz/B;->setLargeIcon(Landroid/graphics/Bitmap;)Lz/B;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->b:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 29
    .line 30
    invoke-virtual {v4}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getSmallIconDrawableResId()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    invoke-virtual {v2, v4}, Lz/B;->setSmallIcon(I)Lz/B;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->t:Lcom/google/android/gms/cast/framework/media/zzm;

    .line 39
    .line 40
    iget-object v4, v4, Lcom/google/android/gms/cast/framework/media/zzm;->d:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v2, v4}, Lz/B;->setContentTitle(Ljava/lang/CharSequence;)Lz/B;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->s:Landroid/content/res/Resources;

    .line 47
    .line 48
    iget-object v5, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->b:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 49
    .line 50
    invoke-virtual {v5}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getCastingToDeviceStringResId()I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    iget-object v6, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->t:Lcom/google/android/gms/cast/framework/media/zzm;

    .line 55
    .line 56
    iget-object v6, v6, Lcom/google/android/gms/cast/framework/media/zzm;->e:Ljava/lang/String;

    .line 57
    .line 58
    new-array v7, v1, [Ljava/lang/Object;

    .line 59
    .line 60
    aput-object v6, v7, v0

    .line 61
    .line 62
    invoke-virtual {v4, v5, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v2, v4}, Lz/B;->setContentText(Ljava/lang/CharSequence;)Lz/B;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v2, v1}, Lz/B;->setOngoing(Z)Lz/B;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v2, v0}, Lz/B;->setShowWhen(Z)Lz/B;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v2, v1}, Lz/B;->setVisibility(I)Lz/B;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->j:Landroid/content/ComponentName;

    .line 83
    .line 84
    if-nez v4, :cond_2

    .line 85
    .line 86
    move-object v4, v3

    .line 87
    goto :goto_1

    .line 88
    :cond_2
    new-instance v5, Landroid/content/Intent;

    .line 89
    .line 90
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v6, "targetActivity"

    .line 94
    .line 95
    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 106
    .line 107
    .line 108
    invoke-static {p0}, Lz/X;->create(Landroid/content/Context;)Lz/X;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-virtual {v4, v5}, Lz/X;->addNextIntentWithParentStack(Landroid/content/Intent;)Lz/X;

    .line 113
    .line 114
    .line 115
    sget v5, Lcom/google/android/gms/internal/cast/zzdy;->zza:I

    .line 116
    .line 117
    const/high16 v6, 0x8000000

    .line 118
    .line 119
    or-int/2addr v5, v6

    .line 120
    invoke-virtual {v4, v1, v5}, Lz/X;->getPendingIntent(II)Landroid/app/PendingIntent;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    :goto_1
    if-eqz v4, :cond_3

    .line 125
    .line 126
    invoke-virtual {v2, v4}, Lz/B;->setContentIntent(Landroid/app/PendingIntent;)Lz/B;

    .line 127
    .line 128
    .line 129
    :cond_3
    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->b:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 130
    .line 131
    invoke-virtual {v4}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzm()Lcom/google/android/gms/cast/framework/media/zzg;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    sget-object v5, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->x:Lcom/google/android/gms/cast/internal/Logger;

    .line 136
    .line 137
    if-eqz v4, :cond_9

    .line 138
    .line 139
    new-array v6, v0, [Ljava/lang/Object;

    .line 140
    .line 141
    const-string v7, "actionsProvider != null"

    .line 142
    .line 143
    invoke-virtual {v5, v7, v6}, Lcom/google/android/gms/cast/internal/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    invoke-static {v4}, Lcom/google/android/gms/cast/framework/media/internal/zzw;->zzg(Lcom/google/android/gms/cast/framework/media/zzg;)[I

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    if-nez v5, :cond_4

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_4
    invoke-virtual {v5}, [I->clone()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    check-cast v3, [I

    .line 158
    .line 159
    :goto_2
    iput-object v3, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->n:[I

    .line 160
    .line 161
    invoke-static {v4}, Lcom/google/android/gms/cast/framework/media/internal/zzw;->zzf(Lcom/google/android/gms/cast/framework/media/zzg;)Ljava/util/List;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    new-instance v4, Ljava/util/ArrayList;

    .line 166
    .line 167
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .line 169
    .line 170
    iput-object v4, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->m:Ljava/util/ArrayList;

    .line 171
    .line 172
    if-nez v3, :cond_5

    .line 173
    .line 174
    goto/16 :goto_7

    .line 175
    .line 176
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    :cond_6
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    if-eqz v4, :cond_c

    .line 185
    .line 186
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    check-cast v4, Lcom/google/android/gms/cast/framework/media/NotificationAction;

    .line 191
    .line 192
    invoke-virtual {v4}, Lcom/google/android/gms/cast/framework/media/NotificationAction;->getAction()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    const-string v6, "com.google.android.gms.cast.framework.action.TOGGLE_PLAYBACK"

    .line 197
    .line 198
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v6

    .line 202
    if-nez v6, :cond_8

    .line 203
    .line 204
    const-string v6, "com.google.android.gms.cast.framework.action.SKIP_NEXT"

    .line 205
    .line 206
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v6

    .line 210
    if-nez v6, :cond_8

    .line 211
    .line 212
    const-string v6, "com.google.android.gms.cast.framework.action.SKIP_PREV"

    .line 213
    .line 214
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v6

    .line 218
    if-nez v6, :cond_8

    .line 219
    .line 220
    const-string v6, "com.google.android.gms.cast.framework.action.FORWARD"

    .line 221
    .line 222
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v6

    .line 226
    if-nez v6, :cond_8

    .line 227
    .line 228
    const-string v6, "com.google.android.gms.cast.framework.action.REWIND"

    .line 229
    .line 230
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v6

    .line 234
    if-nez v6, :cond_8

    .line 235
    .line 236
    const-string v6, "com.google.android.gms.cast.framework.action.STOP_CASTING"

    .line 237
    .line 238
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v6

    .line 242
    if-nez v6, :cond_8

    .line 243
    .line 244
    const-string v6, "com.google.android.gms.cast.framework.action.DISCONNECT"

    .line 245
    .line 246
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result v5

    .line 250
    if-eqz v5, :cond_7

    .line 251
    .line 252
    goto :goto_4

    .line 253
    :cond_7
    new-instance v5, Landroid/content/Intent;

    .line 254
    .line 255
    invoke-virtual {v4}, Lcom/google/android/gms/cast/framework/media/NotificationAction;->getAction()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v6

    .line 259
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    iget-object v6, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->f:Landroid/content/ComponentName;

    .line 263
    .line 264
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 265
    .line 266
    .line 267
    sget v6, Lcom/google/android/gms/internal/cast/zzdy;->zza:I

    .line 268
    .line 269
    invoke-static {p0, v0, v5, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 270
    .line 271
    .line 272
    move-result-object v5

    .line 273
    new-instance v6, Lz/x;

    .line 274
    .line 275
    invoke-virtual {v4}, Lcom/google/android/gms/cast/framework/media/NotificationAction;->getIconResId()I

    .line 276
    .line 277
    .line 278
    move-result v7

    .line 279
    invoke-virtual {v4}, Lcom/google/android/gms/cast/framework/media/NotificationAction;->getContentDescription()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v4

    .line 283
    invoke-direct {v6, v7, v4, v5}, Lz/x;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v6}, Lz/x;->build()Lz/y;

    .line 287
    .line 288
    .line 289
    move-result-object v4

    .line 290
    goto :goto_5

    .line 291
    :cond_8
    :goto_4
    invoke-virtual {v4}, Lcom/google/android/gms/cast/framework/media/NotificationAction;->getAction()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v4

    .line 295
    invoke-virtual {p0, v4}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->a(Ljava/lang/String;)Lz/y;

    .line 296
    .line 297
    .line 298
    move-result-object v4

    .line 299
    :goto_5
    if-eqz v4, :cond_6

    .line 300
    .line 301
    iget-object v5, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->m:Ljava/util/ArrayList;

    .line 302
    .line 303
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    goto :goto_3

    .line 307
    :cond_9
    new-array v0, v0, [Ljava/lang/Object;

    .line 308
    .line 309
    const-string v3, "actionsProvider == null"

    .line 310
    .line 311
    invoke-virtual {v5, v3, v0}, Lcom/google/android/gms/cast/internal/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    .line 313
    .line 314
    new-instance v0, Ljava/util/ArrayList;

    .line 315
    .line 316
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 317
    .line 318
    .line 319
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->m:Ljava/util/ArrayList;

    .line 320
    .line 321
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->b:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 322
    .line 323
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getActions()Ljava/util/List;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    :cond_a
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 332
    .line 333
    .line 334
    move-result v3

    .line 335
    if-eqz v3, :cond_b

    .line 336
    .line 337
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v3

    .line 341
    check-cast v3, Ljava/lang/String;

    .line 342
    .line 343
    invoke-virtual {p0, v3}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->a(Ljava/lang/String;)Lz/y;

    .line 344
    .line 345
    .line 346
    move-result-object v3

    .line 347
    if-eqz v3, :cond_a

    .line 348
    .line 349
    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->m:Ljava/util/ArrayList;

    .line 350
    .line 351
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    goto :goto_6

    .line 355
    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->b:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 356
    .line 357
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getCompatActionIndices()[I

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    check-cast v0, [I

    .line 366
    .line 367
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->n:[I

    .line 368
    .line 369
    :cond_c
    :goto_7
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->m:Ljava/util/ArrayList;

    .line 370
    .line 371
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 376
    .line 377
    .line 378
    move-result v3

    .line 379
    if-eqz v3, :cond_d

    .line 380
    .line 381
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v3

    .line 385
    check-cast v3, Lz/y;

    .line 386
    .line 387
    invoke-virtual {v2, v3}, Lz/B;->addAction(Lz/y;)Lz/B;

    .line 388
    .line 389
    .line 390
    goto :goto_8

    .line 391
    :cond_d
    new-instance v0, Lq0/c;

    .line 392
    .line 393
    invoke-direct {v0}, Lq0/c;-><init>()V

    .line 394
    .line 395
    .line 396
    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->n:[I

    .line 397
    .line 398
    if-eqz v3, :cond_e

    .line 399
    .line 400
    invoke-virtual {v0, v3}, Lq0/c;->setShowActionsInCompactView([I)Lq0/c;

    .line 401
    .line 402
    .line 403
    :cond_e
    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->t:Lcom/google/android/gms/cast/framework/media/zzm;

    .line 404
    .line 405
    iget-object v3, v3, Lcom/google/android/gms/cast/framework/media/zzm;->a:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 406
    .line 407
    if-eqz v3, :cond_f

    .line 408
    .line 409
    invoke-virtual {v0, v3}, Lq0/c;->setMediaSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)Lq0/c;

    .line 410
    .line 411
    .line 412
    :cond_f
    invoke-virtual {v2, v0}, Lz/B;->setStyle(Lz/C;)Lz/B;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v2}, Lz/B;->build()Landroid/app/Notification;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->w:Landroid/app/Notification;

    .line 420
    .line 421
    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 422
    .line 423
    .line 424
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 1
    const-string v0, "notification"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/NotificationManager;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->v:Landroid/app/NotificationManager;

    .line 10
    .line 11
    invoke-static {p0}, Lcom/google/android/gms/cast/framework/CastContext;->getSharedInstance(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastContext;->getCastOptions()Lcom/google/android/gms/cast/framework/CastOptions;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getNotificationOptions()Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 38
    .line 39
    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->b:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getImagePicker()Lcom/google/android/gms/cast/framework/media/ImagePicker;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->e:Lcom/google/android/gms/cast/framework/media/ImagePicker;

    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->s:Landroid/content/res/Resources;

    .line 52
    .line 53
    new-instance v1, Landroid/content/ComponentName;

    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getMediaIntentReceiverClassName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->f:Landroid/content/ComponentName;

    .line 67
    .line 68
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->b:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getTargetActivityClassName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_0

    .line 79
    .line 80
    new-instance v0, Landroid/content/ComponentName;

    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->b:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 87
    .line 88
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getTargetActivityClassName()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->j:Landroid/content/ComponentName;

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_0
    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->j:Landroid/content/ComponentName;

    .line 100
    .line 101
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->b:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getSkipStepMs()J

    .line 104
    .line 105
    .line 106
    move-result-wide v0

    .line 107
    iput-wide v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->p:J

    .line 108
    .line 109
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->s:Landroid/content/res/Resources;

    .line 110
    .line 111
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->b:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 112
    .line 113
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zze()I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    new-instance v1, Lcom/google/android/gms/cast/framework/media/ImageHints;

    .line 122
    .line 123
    const/4 v2, 0x1

    .line 124
    invoke-direct {v1, v2, v0, v0}, Lcom/google/android/gms/cast/framework/media/ImageHints;-><init>(III)V

    .line 125
    .line 126
    .line 127
    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->r:Lcom/google/android/gms/cast/framework/media/ImageHints;

    .line 128
    .line 129
    new-instance v0, Lcom/google/android/gms/cast/framework/media/internal/zzb;

    .line 130
    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->r:Lcom/google/android/gms/cast/framework/media/ImageHints;

    .line 136
    .line 137
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/cast/framework/media/internal/zzb;-><init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/media/ImageHints;)V

    .line 138
    .line 139
    .line 140
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->q:Lcom/google/android/gms/cast/framework/media/internal/zzb;

    .line 141
    .line 142
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastO()Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_1

    .line 147
    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    sget v1, Lcom/google/android/gms/cast/framework/R$string;->media_notification_channel_name:I

    .line 153
    .line 154
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-static {v0}, Lb4/h;->C(Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-static {v0}, Lb4/h;->u(Landroid/app/NotificationChannel;)V

    .line 163
    .line 164
    .line 165
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->v:Landroid/app/NotificationManager;

    .line 166
    .line 167
    invoke-static {v1, v0}, LB4/o;->r(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 168
    .line 169
    .line 170
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/cast/zzml;->zzX:Lcom/google/android/gms/internal/cast/zzml;

    .line 171
    .line 172
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzo;->zzd(Lcom/google/android/gms/internal/cast/zzml;)V

    .line 173
    .line 174
    .line 175
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->q:Lcom/google/android/gms/cast/framework/media/internal/zzb;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/internal/zzb;->zza()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->v:Landroid/app/NotificationManager;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 12

    .line 1
    const-string p2, "extra_media_info"

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Lcom/google/android/gms/cast/MediaInfo;

    .line 8
    .line 9
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    check-cast p2, Lcom/google/android/gms/cast/MediaInfo;

    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaInfo;->getMetadata()Lcom/google/android/gms/cast/MediaMetadata;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/google/android/gms/cast/MediaMetadata;

    .line 24
    .line 25
    const-string v1, "extra_remote_media_client_player_state"

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const-string v3, "extra_cast_device"

    .line 33
    .line 34
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Lcom/google/android/gms/cast/CastDevice;

    .line 39
    .line 40
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Lcom/google/android/gms/cast/CastDevice;

    .line 45
    .line 46
    new-instance v4, Lcom/google/android/gms/cast/framework/media/zzm;

    .line 47
    .line 48
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaInfo;->getStreamType()I

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    const-string p2, "com.google.android.gms.cast.metadata.TITLE"

    .line 53
    .line 54
    invoke-virtual {v0, p2}, Lcom/google/android/gms/cast/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    invoke-virtual {v3}, Lcom/google/android/gms/cast/CastDevice;->getFriendlyName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    const-string p2, "extra_media_session_token"

    .line 63
    .line 64
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    move-object v9, p2

    .line 69
    check-cast v9, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 70
    .line 71
    const/4 p2, 0x1

    .line 72
    const/4 v3, 0x2

    .line 73
    if-ne v1, v3, :cond_0

    .line 74
    .line 75
    move v5, p2

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    move v5, v2

    .line 78
    :goto_0
    const-string v1, "extra_can_skip_next"

    .line 79
    .line 80
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 81
    .line 82
    .line 83
    move-result v10

    .line 84
    const-string v1, "extra_can_skip_prev"

    .line 85
    .line 86
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 87
    .line 88
    .line 89
    move-result v11

    .line 90
    invoke-direct/range {v4 .. v11}, Lcom/google/android/gms/cast/framework/media/zzm;-><init>(ZILjava/lang/String;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;ZZ)V

    .line 91
    .line 92
    .line 93
    const-string v1, "extra_media_notification_force_update"

    .line 94
    .line 95
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-nez p1, :cond_1

    .line 100
    .line 101
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->t:Lcom/google/android/gms/cast/framework/media/zzm;

    .line 102
    .line 103
    if-eqz p1, :cond_1

    .line 104
    .line 105
    iget-boolean v1, v4, Lcom/google/android/gms/cast/framework/media/zzm;->b:Z

    .line 106
    .line 107
    iget-boolean v5, p1, Lcom/google/android/gms/cast/framework/media/zzm;->b:Z

    .line 108
    .line 109
    if-ne v1, v5, :cond_1

    .line 110
    .line 111
    iget v1, v4, Lcom/google/android/gms/cast/framework/media/zzm;->c:I

    .line 112
    .line 113
    iget v5, p1, Lcom/google/android/gms/cast/framework/media/zzm;->c:I

    .line 114
    .line 115
    if-ne v1, v5, :cond_1

    .line 116
    .line 117
    iget-object v1, v4, Lcom/google/android/gms/cast/framework/media/zzm;->d:Ljava/lang/String;

    .line 118
    .line 119
    iget-object v5, p1, Lcom/google/android/gms/cast/framework/media/zzm;->d:Ljava/lang/String;

    .line 120
    .line 121
    invoke-static {v1, v5}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-eqz v1, :cond_1

    .line 126
    .line 127
    iget-object v1, v4, Lcom/google/android/gms/cast/framework/media/zzm;->e:Ljava/lang/String;

    .line 128
    .line 129
    iget-object v5, p1, Lcom/google/android/gms/cast/framework/media/zzm;->e:Ljava/lang/String;

    .line 130
    .line 131
    invoke-static {v1, v5}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-eqz v1, :cond_1

    .line 136
    .line 137
    iget-boolean v1, v4, Lcom/google/android/gms/cast/framework/media/zzm;->f:Z

    .line 138
    .line 139
    iget-boolean v5, p1, Lcom/google/android/gms/cast/framework/media/zzm;->f:Z

    .line 140
    .line 141
    if-ne v1, v5, :cond_1

    .line 142
    .line 143
    iget-boolean v1, v4, Lcom/google/android/gms/cast/framework/media/zzm;->g:Z

    .line 144
    .line 145
    iget-boolean p1, p1, Lcom/google/android/gms/cast/framework/media/zzm;->g:Z

    .line 146
    .line 147
    if-eq v1, p1, :cond_2

    .line 148
    .line 149
    :cond_1
    iput-object v4, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->t:Lcom/google/android/gms/cast/framework/media/zzm;

    .line 150
    .line 151
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->b()V

    .line 152
    .line 153
    .line 154
    :cond_2
    new-instance p1, Lcom/google/android/gms/cast/framework/media/zzn;

    .line 155
    .line 156
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->e:Lcom/google/android/gms/cast/framework/media/ImagePicker;

    .line 157
    .line 158
    if-eqz v1, :cond_3

    .line 159
    .line 160
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->r:Lcom/google/android/gms/cast/framework/media/ImageHints;

    .line 161
    .line 162
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/cast/framework/media/ImagePicker;->onPickImage(Lcom/google/android/gms/cast/MediaMetadata;Lcom/google/android/gms/cast/framework/media/ImageHints;)Lcom/google/android/gms/common/images/WebImage;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    goto :goto_1

    .line 167
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaMetadata;->hasImages()Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    if-eqz v1, :cond_4

    .line 172
    .line 173
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaMetadata;->getImages()Ljava/util/List;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    check-cast v0, Lcom/google/android/gms/common/images/WebImage;

    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_4
    const/4 v0, 0x0

    .line 185
    :goto_1
    invoke-direct {p1, v0}, Lcom/google/android/gms/cast/framework/media/zzn;-><init>(Lcom/google/android/gms/common/images/WebImage;)V

    .line 186
    .line 187
    .line 188
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->u:Lcom/google/android/gms/cast/framework/media/zzn;

    .line 189
    .line 190
    iget-object v1, p1, Lcom/google/android/gms/cast/framework/media/zzn;->a:Landroid/net/Uri;

    .line 191
    .line 192
    if-eqz v0, :cond_5

    .line 193
    .line 194
    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/zzn;->a:Landroid/net/Uri;

    .line 195
    .line 196
    invoke-static {v1, v0}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-nez v0, :cond_6

    .line 201
    .line 202
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->q:Lcom/google/android/gms/cast/framework/media/internal/zzb;

    .line 203
    .line 204
    new-instance v2, Lcom/google/android/gms/cast/framework/media/zzl;

    .line 205
    .line 206
    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/cast/framework/media/zzl;-><init>(Lcom/google/android/gms/cast/framework/media/MediaNotificationService;Lcom/google/android/gms/cast/framework/media/zzn;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/framework/media/internal/zzb;->zzc(Lcom/google/android/gms/cast/framework/media/internal/zza;)V

    .line 210
    .line 211
    .line 212
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->q:Lcom/google/android/gms/cast/framework/media/internal/zzb;

    .line 213
    .line 214
    invoke-virtual {p1, v1}, Lcom/google/android/gms/cast/framework/media/internal/zzb;->zzd(Landroid/net/Uri;)Z

    .line 215
    .line 216
    .line 217
    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->w:Landroid/app/Notification;

    .line 218
    .line 219
    invoke-virtual {p0, p2, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 220
    .line 221
    .line 222
    new-instance p1, Lcom/google/android/gms/cast/framework/media/zzk;

    .line 223
    .line 224
    invoke-direct {p1, p0, p3}, Lcom/google/android/gms/cast/framework/media/zzk;-><init>(Lcom/google/android/gms/cast/framework/media/MediaNotificationService;I)V

    .line 225
    .line 226
    .line 227
    return v3
.end method
