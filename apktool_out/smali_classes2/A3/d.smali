.class public final synthetic LA3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, LA3/d;->b:I

    iput-object p1, p0, LA3/d;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 5

    .line 1
    iget-object v0, p0, LA3/d;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/emoji2/text/y;

    .line 4
    .line 5
    const-string v1, "fetchFonts result is not OK. ("

    .line 6
    .line 7
    iget-object v2, v0, Landroidx/emoji2/text/y;->d:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    iget-object v3, v0, Landroidx/emoji2/text/y;->h:Landroidx/emoji2/text/o;

    .line 11
    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    monitor-exit v2

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    goto/16 :goto_7

    .line 18
    .line 19
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :try_start_1
    invoke-virtual {v0}, Landroidx/emoji2/text/y;->c()LJ/q;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, LJ/q;->getResultCode()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    const/4 v4, 0x2

    .line 29
    if-ne v3, v4, :cond_1

    .line 30
    .line 31
    iget-object v4, v0, Landroidx/emoji2/text/y;->d:Ljava/lang/Object;

    .line 32
    .line 33
    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 34
    :try_start_2
    monitor-exit v4

    .line 35
    goto :goto_0

    .line 36
    :catchall_1
    move-exception v1

    .line 37
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 38
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 39
    :catchall_2
    move-exception v1

    .line 40
    goto :goto_4

    .line 41
    :cond_1
    :goto_0
    if-nez v3, :cond_4

    .line 42
    .line 43
    :try_start_4
    const-string v1, "EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface"

    .line 44
    .line 45
    invoke-static {v1}, LI/s;->beginSection(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v1, v0, Landroidx/emoji2/text/y;->c:Landroidx/emoji2/text/x;

    .line 49
    .line 50
    iget-object v3, v0, Landroidx/emoji2/text/y;->a:Landroid/content/Context;

    .line 51
    .line 52
    invoke-virtual {v1, v3, v2}, Landroidx/emoji2/text/x;->buildTypeface(Landroid/content/Context;LJ/q;)Landroid/graphics/Typeface;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iget-object v3, v0, Landroidx/emoji2/text/y;->a:Landroid/content/Context;

    .line 57
    .line 58
    invoke-virtual {v2}, LJ/q;->getUri()Landroid/net/Uri;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    const/4 v4, 0x0

    .line 63
    invoke-static {v3, v4, v2}, LD/r;->mmap(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/net/Uri;)Ljava/nio/ByteBuffer;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    if-eqz v2, :cond_3

    .line 68
    .line 69
    if-eqz v1, :cond_3

    .line 70
    .line 71
    invoke-static {v1, v2}, Landroidx/emoji2/text/C;->create(Landroid/graphics/Typeface;Ljava/nio/ByteBuffer;)Landroidx/emoji2/text/C;

    .line 72
    .line 73
    .line 74
    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 75
    :try_start_5
    invoke-static {}, LI/s;->endSection()V

    .line 76
    .line 77
    .line 78
    iget-object v2, v0, Landroidx/emoji2/text/y;->d:Ljava/lang/Object;

    .line 79
    .line 80
    monitor-enter v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 81
    :try_start_6
    iget-object v3, v0, Landroidx/emoji2/text/y;->h:Landroidx/emoji2/text/o;

    .line 82
    .line 83
    if-eqz v3, :cond_2

    .line 84
    .line 85
    invoke-virtual {v3, v1}, Landroidx/emoji2/text/o;->onLoaded(Landroidx/emoji2/text/C;)V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :catchall_3
    move-exception v1

    .line 90
    goto :goto_2

    .line 91
    :cond_2
    :goto_1
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 92
    :try_start_7
    invoke-virtual {v0}, Landroidx/emoji2/text/y;->a()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :goto_2
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 97
    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 98
    :catchall_4
    move-exception v1

    .line 99
    goto :goto_3

    .line 100
    :cond_3
    :try_start_a
    new-instance v1, Ljava/lang/RuntimeException;

    .line 101
    .line 102
    const-string v2, "Unable to open file."

    .line 103
    .line 104
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 108
    :goto_3
    :try_start_b
    invoke-static {}, LI/s;->endSection()V

    .line 109
    .line 110
    .line 111
    throw v1

    .line 112
    :cond_4
    new-instance v2, Ljava/lang/RuntimeException;

    .line 113
    .line 114
    new-instance v4, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v1, ")"

    .line 123
    .line 124
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 135
    :goto_4
    iget-object v3, v0, Landroidx/emoji2/text/y;->d:Ljava/lang/Object;

    .line 136
    .line 137
    monitor-enter v3

    .line 138
    :try_start_c
    iget-object v2, v0, Landroidx/emoji2/text/y;->h:Landroidx/emoji2/text/o;

    .line 139
    .line 140
    if-eqz v2, :cond_5

    .line 141
    .line 142
    invoke-virtual {v2, v1}, Landroidx/emoji2/text/o;->onFailed(Ljava/lang/Throwable;)V

    .line 143
    .line 144
    .line 145
    goto :goto_5

    .line 146
    :catchall_5
    move-exception v0

    .line 147
    goto :goto_6

    .line 148
    :cond_5
    :goto_5
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 149
    invoke-virtual {v0}, Landroidx/emoji2/text/y;->a()V

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :goto_6
    :try_start_d
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 154
    throw v0

    .line 155
    :goto_7
    :try_start_e
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 156
    throw v0
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    iget v3, p0, LA3/d;->b:I

    .line 5
    .line 6
    packed-switch v3, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, LA3/d;->e:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lcom/google/firebase/installations/FirebaseInstallations;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/google/firebase/installations/FirebaseInstallations;->d(Lcom/google/firebase/installations/FirebaseInstallations;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    iget-object v0, p0, LA3/d;->e:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lb4/m;

    .line 20
    .line 21
    :try_start_0
    invoke-virtual {v0}, Lb4/m;->b()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-static {v3}, Lb4/m;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-static {v3}, Lb4/n;->a(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v5, v0, Lb4/m;->i:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-nez v5, :cond_2

    .line 39
    .line 40
    iget-object v5, v0, Lb4/m;->i:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-nez v5, :cond_0

    .line 47
    .line 48
    iget-object v5, v0, Lb4/m;->g:Lb4/j;

    .line 49
    .line 50
    if-eqz v5, :cond_0

    .line 51
    .line 52
    iget-object v5, v0, Lb4/m;->h:Ljava/util/ArrayList;

    .line 53
    .line 54
    if-eqz v5, :cond_0

    .line 55
    .line 56
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-nez v5, :cond_0

    .line 61
    .line 62
    iget-object v5, v0, Lb4/m;->g:Lb4/j;

    .line 63
    .line 64
    iget-object v6, v0, Lb4/m;->h:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {v5, v6}, Lb4/j;->a(Ljava/util/List;)V

    .line 67
    .line 68
    .line 69
    const-wide/16 v5, 0x1388

    .line 70
    .line 71
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    goto :goto_2

    .line 77
    :cond_0
    :goto_0
    new-instance v5, Lc4/b;

    .line 78
    .line 79
    invoke-direct {v5, v3}, Lc4/b;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const-string v3, "enableRemoteLogging"

    .line 83
    .line 84
    invoke-virtual {v5, v3}, Lc4/b;->b(Ljava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    invoke-static {v3}, Lb4/n;->b(Z)V

    .line 89
    .line 90
    .line 91
    const-string v3, "modules"

    .line 92
    .line 93
    invoke-virtual {v5, v3}, Lc4/b;->c(Ljava/lang/String;)Lc4/a;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    new-instance v5, Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .line 101
    .line 102
    iput-object v5, v0, Lb4/m;->h:Ljava/util/ArrayList;

    .line 103
    .line 104
    :goto_1
    invoke-virtual {v3}, Lc4/a;->a()I

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    if-ge v2, v5, :cond_1

    .line 109
    .line 110
    invoke-virtual {v3, v2}, Lc4/a;->b(I)Lc4/b;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    iget-object v6, v0, Lb4/m;->h:Ljava/util/ArrayList;

    .line 115
    .line 116
    new-instance v7, Lb4/d;

    .line 117
    .line 118
    invoke-direct {v7, v5}, Lb4/d;-><init>(Lc4/b;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    add-int/2addr v2, v1

    .line 125
    goto :goto_1

    .line 126
    :cond_1
    new-instance v1, Lb4/k;

    .line 127
    .line 128
    iget-object v2, v0, Lb4/m;->a:Landroid/content/Context;

    .line 129
    .line 130
    invoke-direct {v1, v2}, Lb4/k;-><init>(Landroid/content/Context;)V

    .line 131
    .line 132
    .line 133
    iget-object v2, v0, Lb4/m;->h:Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-virtual {v1, v2}, Lb4/k;->a(Ljava/util/List;)V

    .line 136
    .line 137
    .line 138
    iget-object v1, v0, Lb4/m;->g:Lb4/j;

    .line 139
    .line 140
    iget-object v2, v0, Lb4/m;->h:Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-virtual {v1, v2}, Lb4/j;->b(Ljava/util/List;)V

    .line 143
    .line 144
    .line 145
    iput-object v4, v0, Lb4/m;->i:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .line 147
    goto :goto_3

    .line 148
    :goto_2
    const-string v1, "Update check failed"

    .line 149
    .line 150
    invoke-static {v1, v0}, Lb4/n;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    .line 152
    .line 153
    :cond_2
    :goto_3
    return-void

    .line 154
    :pswitch_1
    iget-object v0, p0, LA3/d;->e:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast v0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;

    .line 157
    .line 158
    invoke-static {v0}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->d(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;)V

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    :pswitch_2
    iget-object v0, p0, LA3/d;->e:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast v0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;

    .line 165
    .line 166
    invoke-static {v0}, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->a(Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;)V

    .line 167
    .line 168
    .line 169
    return-void

    .line 170
    :pswitch_3
    iget-object v0, p0, LA3/d;->e:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast v0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    .line 173
    .line 174
    invoke-static {v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->R(Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;)V

    .line 175
    .line 176
    .line 177
    return-void

    .line 178
    :pswitch_4
    const-string v0, "this$0"

    .line 179
    .line 180
    iget-object v1, p0, LA3/d;->e:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast v1, Landroidx/lifecycle/J;

    .line 183
    .line 184
    invoke-static {v1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1}, Landroidx/lifecycle/J;->dispatchPauseIfNeeded$lifecycle_process_release()V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1}, Landroidx/lifecycle/J;->dispatchStopIfNeeded$lifecycle_process_release()V

    .line 191
    .line 192
    .line 193
    return-void

    .line 194
    :pswitch_5
    invoke-direct {p0}, LA3/d;->a()V

    .line 195
    .line 196
    .line 197
    return-void

    .line 198
    :pswitch_6
    iget-object v0, p0, LA3/d;->e:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast v0, Landroidx/activity/p;

    .line 201
    .line 202
    invoke-static {v0}, Landroidx/activity/p;->a(Landroidx/activity/p;)V

    .line 203
    .line 204
    .line 205
    return-void

    .line 206
    :pswitch_7
    iget-object v1, p0, LA3/d;->e:Ljava/lang/Object;

    .line 207
    .line 208
    check-cast v1, Landroidx/activity/o;

    .line 209
    .line 210
    iget-object v2, v1, Landroidx/activity/o;->e:Ljava/lang/Runnable;

    .line 211
    .line 212
    if-eqz v2, :cond_3

    .line 213
    .line 214
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 215
    .line 216
    .line 217
    iput-object v0, v1, Landroidx/activity/o;->e:Ljava/lang/Runnable;

    .line 218
    .line 219
    :cond_3
    return-void

    .line 220
    :pswitch_8
    iget-object v0, p0, LA3/d;->e:Ljava/lang/Object;

    .line 221
    .line 222
    check-cast v0, Landroidx/activity/ComponentActivity;

    .line 223
    .line 224
    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->invalidateMenu()V

    .line 225
    .line 226
    .line 227
    return-void

    .line 228
    :pswitch_9
    iget-object v0, p0, LA3/d;->e:Ljava/lang/Object;

    .line 229
    .line 230
    check-cast v0, LZ4/D;

    .line 231
    .line 232
    iput-boolean v2, v0, LZ4/D;->k:Z

    .line 233
    .line 234
    return-void

    .line 235
    :pswitch_a
    iget-object v0, p0, LA3/d;->e:Ljava/lang/Object;

    .line 236
    .line 237
    check-cast v0, LZ4/y;

    .line 238
    .line 239
    iput-boolean v2, v0, LZ4/y;->i:Z

    .line 240
    .line 241
    return-void

    .line 242
    :pswitch_b
    iget-object v0, p0, LA3/d;->e:Ljava/lang/Object;

    .line 243
    .line 244
    check-cast v0, LZ4/t;

    .line 245
    .line 246
    iput-boolean v2, v0, LZ4/t;->l:Z

    .line 247
    .line 248
    return-void

    .line 249
    :pswitch_c
    iget-object v0, p0, LA3/d;->e:Ljava/lang/Object;

    .line 250
    .line 251
    check-cast v0, LZ4/j;

    .line 252
    .line 253
    iput-boolean v2, v0, LZ4/j;->l:Z

    .line 254
    .line 255
    return-void

    .line 256
    :pswitch_d
    iget-object v0, p0, LA3/d;->e:Ljava/lang/Object;

    .line 257
    .line 258
    check-cast v0, LZ4/d;

    .line 259
    .line 260
    iget-object v0, v0, LZ4/d;->a:LZ4/e;

    .line 261
    .line 262
    iget-object v1, v0, LZ4/e;->a:Landroid/webkit/WebView;

    .line 263
    .line 264
    if-nez v1, :cond_4

    .line 265
    .line 266
    goto :goto_4

    .line 267
    :cond_4
    new-instance v2, LZ4/b;

    .line 268
    .line 269
    invoke-direct {v2, v0}, LZ4/b;-><init>(LZ4/e;)V

    .line 270
    .line 271
    .line 272
    const-string v0, "(function(){return document.documentElement.innerHTML;})()"

    .line 273
    .line 274
    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 275
    .line 276
    .line 277
    :goto_4
    return-void

    .line 278
    :pswitch_e
    iget-object v0, p0, LA3/d;->e:Ljava/lang/Object;

    .line 279
    .line 280
    check-cast v0, LZ2/o;

    .line 281
    .line 282
    new-instance v1, LA0/a;

    .line 283
    .line 284
    const/16 v2, 0x10

    .line 285
    .line 286
    invoke-direct {v1, v0, v2}, LA0/a;-><init>(Ljava/lang/Object;I)V

    .line 287
    .line 288
    .line 289
    iget-object v0, v0, LZ2/o;->d:Lb3/b;

    .line 290
    .line 291
    check-cast v0, La3/r;

    .line 292
    .line 293
    invoke-virtual {v0, v1}, La3/r;->runCriticalSection(Lb3/a;)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    return-void

    .line 297
    :pswitch_f
    iget-object v0, p0, LA3/d;->e:Ljava/lang/Object;

    .line 298
    .line 299
    check-cast v0, LQ4/g;

    .line 300
    .line 301
    iget-object v0, v0, LQ4/g;->b:Landroid/widget/ImageButton;

    .line 302
    .line 303
    if-eqz v0, :cond_5

    .line 304
    .line 305
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 306
    .line 307
    .line 308
    :cond_5
    return-void

    .line 309
    :pswitch_10
    iget-object v0, p0, LA3/d;->e:Ljava/lang/Object;

    .line 310
    .line 311
    check-cast v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;

    .line 312
    .line 313
    const-string v1, "this$0"

    .line 314
    .line 315
    invoke-static {v0, v1}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    iget-object v1, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->q:LM1/g;

    .line 319
    .line 320
    invoke-virtual {v1}, Landroidx/work/impl/utils/futures/b;->isCancelled()Z

    .line 321
    .line 322
    .line 323
    move-result v1

    .line 324
    if-eqz v1, :cond_6

    .line 325
    .line 326
    goto/16 :goto_8

    .line 327
    .line 328
    :cond_6
    invoke-virtual {v0}, LB1/r;->getInputData()LB1/h;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    const-string v2, "androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME"

    .line 333
    .line 334
    invoke-virtual {v1, v2}, LB1/h;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    const-string v3, "get()"

    .line 343
    .line 344
    invoke-static {v2, v3}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    if-eqz v1, :cond_c

    .line 348
    .line 349
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 350
    .line 351
    .line 352
    move-result v3

    .line 353
    if-nez v3, :cond_7

    .line 354
    .line 355
    goto/16 :goto_7

    .line 356
    .line 357
    :cond_7
    invoke-virtual {v0}, LB1/r;->getWorkerFactory()LB1/P;

    .line 358
    .line 359
    .line 360
    move-result-object v3

    .line 361
    invoke-virtual {v0}, LB1/r;->getApplicationContext()Landroid/content/Context;

    .line 362
    .line 363
    .line 364
    move-result-object v4

    .line 365
    iget-object v5, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->m:Landroidx/work/WorkerParameters;

    .line 366
    .line 367
    invoke-virtual {v3, v4, v1, v5}, LB1/P;->createWorkerWithDefaultFallback(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)LB1/r;

    .line 368
    .line 369
    .line 370
    move-result-object v3

    .line 371
    iput-object v3, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->r:LB1/r;

    .line 372
    .line 373
    if-nez v3, :cond_8

    .line 374
    .line 375
    invoke-static {}, LO1/a;->access$getTAG$p()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    const-string v3, "No worker to delegate to."

    .line 380
    .line 381
    invoke-virtual {v2, v1, v3}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    iget-object v0, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->q:LM1/g;

    .line 385
    .line 386
    const-string v1, "future"

    .line 387
    .line 388
    invoke-static {v0, v1}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    invoke-static {v0}, LO1/a;->access$setFailed(LM1/g;)Z

    .line 392
    .line 393
    .line 394
    goto/16 :goto_8

    .line 395
    .line 396
    :cond_8
    invoke-virtual {v0}, LB1/r;->getApplicationContext()Landroid/content/Context;

    .line 397
    .line 398
    .line 399
    move-result-object v3

    .line 400
    invoke-static {v3}, LC1/G;->getInstance(Landroid/content/Context;)LC1/G;

    .line 401
    .line 402
    .line 403
    move-result-object v3

    .line 404
    const-string v4, "getInstance(applicationContext)"

    .line 405
    .line 406
    invoke-static {v3, v4}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v3}, LC1/G;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    .line 410
    .line 411
    .line 412
    move-result-object v4

    .line 413
    invoke-virtual {v4}, Landroidx/work/impl/WorkDatabase;->workSpecDao()LK1/F;

    .line 414
    .line 415
    .line 416
    move-result-object v4

    .line 417
    invoke-virtual {v0}, LB1/r;->getId()Ljava/util/UUID;

    .line 418
    .line 419
    .line 420
    move-result-object v5

    .line 421
    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v5

    .line 425
    const-string v6, "id.toString()"

    .line 426
    .line 427
    invoke-static {v5, v6}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    check-cast v4, LK1/U;

    .line 431
    .line 432
    invoke-virtual {v4, v5}, LK1/U;->getWorkSpec(Ljava/lang/String;)LK1/E;

    .line 433
    .line 434
    .line 435
    move-result-object v4

    .line 436
    if-nez v4, :cond_9

    .line 437
    .line 438
    iget-object v0, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->q:LM1/g;

    .line 439
    .line 440
    const-string v1, "future"

    .line 441
    .line 442
    invoke-static {v0, v1}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    invoke-static {v0}, LO1/a;->access$setFailed(LM1/g;)Z

    .line 446
    .line 447
    .line 448
    goto/16 :goto_8

    .line 449
    .line 450
    :cond_9
    new-instance v5, LG1/e;

    .line 451
    .line 452
    invoke-virtual {v3}, LC1/G;->getTrackers()LI1/p;

    .line 453
    .line 454
    .line 455
    move-result-object v3

    .line 456
    const-string v6, "workManagerImpl.trackers"

    .line 457
    .line 458
    invoke-static {v3, v6}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    invoke-direct {v5, v3, v0}, LG1/e;-><init>(LI1/p;LG1/c;)V

    .line 462
    .line 463
    .line 464
    invoke-static {v4}, Lv5/o;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 465
    .line 466
    .line 467
    move-result-object v3

    .line 468
    check-cast v3, Ljava/lang/Iterable;

    .line 469
    .line 470
    invoke-virtual {v5, v3}, LG1/e;->replace(Ljava/lang/Iterable;)V

    .line 471
    .line 472
    .line 473
    invoke-virtual {v0}, LB1/r;->getId()Ljava/util/UUID;

    .line 474
    .line 475
    .line 476
    move-result-object v3

    .line 477
    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v3

    .line 481
    const-string v4, "id.toString()"

    .line 482
    .line 483
    invoke-static {v3, v4}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    invoke-virtual {v5, v3}, LG1/e;->areAllConstraintsMet(Ljava/lang/String;)Z

    .line 487
    .line 488
    .line 489
    move-result v3

    .line 490
    if-eqz v3, :cond_b

    .line 491
    .line 492
    invoke-static {}, LO1/a;->access$getTAG$p()Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v3

    .line 496
    const-string v4, "Constraints met for delegate "

    .line 497
    .line 498
    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v4

    .line 502
    invoke-virtual {v2, v3, v4}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    :try_start_1
    iget-object v3, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->r:LB1/r;

    .line 506
    .line 507
    invoke-static {v3}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v3}, LB1/r;->startWork()LV3/F;

    .line 511
    .line 512
    .line 513
    move-result-object v3

    .line 514
    const-string v4, "delegate!!.startWork()"

    .line 515
    .line 516
    invoke-static {v3, v4}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    new-instance v4, LA4/n;

    .line 520
    .line 521
    const/16 v5, 0xb

    .line 522
    .line 523
    invoke-direct {v4, v5, v0, v3}, LA4/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 524
    .line 525
    .line 526
    invoke-virtual {v0}, LB1/r;->getBackgroundExecutor()Ljava/util/concurrent/Executor;

    .line 527
    .line 528
    .line 529
    move-result-object v5

    .line 530
    invoke-interface {v3, v4, v5}, LV3/F;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 531
    .line 532
    .line 533
    goto :goto_8

    .line 534
    :catchall_0
    move-exception v3

    .line 535
    invoke-static {}, LO1/a;->access$getTAG$p()Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v4

    .line 539
    const-string v5, "Delegated worker "

    .line 540
    .line 541
    const-string v6, " threw exception in startWork."

    .line 542
    .line 543
    invoke-static {v5, v1, v6}, LA/i;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v1

    .line 547
    invoke-virtual {v2, v4, v1, v3}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 548
    .line 549
    .line 550
    iget-object v1, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->n:Ljava/lang/Object;

    .line 551
    .line 552
    monitor-enter v1

    .line 553
    :try_start_2
    iget-boolean v3, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->p:Z

    .line 554
    .line 555
    if-eqz v3, :cond_a

    .line 556
    .line 557
    invoke-static {}, LO1/a;->access$getTAG$p()Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object v3

    .line 561
    const-string v4, "Constraints were unmet, Retrying."

    .line 562
    .line 563
    invoke-virtual {v2, v3, v4}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    .line 565
    .line 566
    iget-object v0, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->q:LM1/g;

    .line 567
    .line 568
    const-string v2, "future"

    .line 569
    .line 570
    invoke-static {v0, v2}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 571
    .line 572
    .line 573
    invoke-static {v0}, LO1/a;->access$setRetry(LM1/g;)Z

    .line 574
    .line 575
    .line 576
    goto :goto_5

    .line 577
    :catchall_1
    move-exception v0

    .line 578
    goto :goto_6

    .line 579
    :cond_a
    iget-object v0, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->q:LM1/g;

    .line 580
    .line 581
    const-string v2, "future"

    .line 582
    .line 583
    invoke-static {v0, v2}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 584
    .line 585
    .line 586
    invoke-static {v0}, LO1/a;->access$setFailed(LM1/g;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 587
    .line 588
    .line 589
    :goto_5
    monitor-exit v1

    .line 590
    goto :goto_8

    .line 591
    :goto_6
    monitor-exit v1

    .line 592
    throw v0

    .line 593
    :cond_b
    invoke-static {}, LO1/a;->access$getTAG$p()Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v3

    .line 597
    new-instance v4, Ljava/lang/StringBuilder;

    .line 598
    .line 599
    const-string v5, "Constraints not met for delegate "

    .line 600
    .line 601
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    .line 606
    .line 607
    const-string v1, ". Requesting retry."

    .line 608
    .line 609
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    .line 611
    .line 612
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object v1

    .line 616
    invoke-virtual {v2, v3, v1}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    .line 618
    .line 619
    iget-object v0, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->q:LM1/g;

    .line 620
    .line 621
    const-string v1, "future"

    .line 622
    .line 623
    invoke-static {v0, v1}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 624
    .line 625
    .line 626
    invoke-static {v0}, LO1/a;->access$setRetry(LM1/g;)Z

    .line 627
    .line 628
    .line 629
    goto :goto_8

    .line 630
    :cond_c
    :goto_7
    invoke-static {}, LO1/a;->access$getTAG$p()Ljava/lang/String;

    .line 631
    .line 632
    .line 633
    move-result-object v1

    .line 634
    const-string v3, "No worker to delegate to."

    .line 635
    .line 636
    invoke-virtual {v2, v1, v3}, LB1/t;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    .line 638
    .line 639
    iget-object v0, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->q:LM1/g;

    .line 640
    .line 641
    const-string v1, "future"

    .line 642
    .line 643
    invoke-static {v0, v1}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 644
    .line 645
    .line 646
    invoke-static {v0}, LO1/a;->access$setFailed(LM1/g;)Z

    .line 647
    .line 648
    .line 649
    :goto_8
    return-void

    .line 650
    :pswitch_11
    iget-object v0, p0, LA3/d;->e:Ljava/lang/Object;

    .line 651
    .line 652
    check-cast v0, Landroid/view/View;

    .line 653
    .line 654
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 655
    .line 656
    .line 657
    move-result-object v1

    .line 658
    const-string v3, "input_method"

    .line 659
    .line 660
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 661
    .line 662
    .line 663
    move-result-object v1

    .line 664
    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 665
    .line 666
    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 667
    .line 668
    .line 669
    return-void

    .line 670
    :pswitch_12
    iget-object v0, p0, LA3/d;->e:Ljava/lang/Object;

    .line 671
    .line 672
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 673
    .line 674
    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->j:Landroid/widget/EditText;

    .line 675
    .line 676
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 677
    .line 678
    .line 679
    return-void

    .line 680
    :pswitch_13
    iget-object v0, p0, LA3/d;->e:Ljava/lang/Object;

    .line 681
    .line 682
    check-cast v0, LK3/l;

    .line 683
    .line 684
    iget-object v1, v0, LK3/l;->h:Landroid/widget/AutoCompleteTextView;

    .line 685
    .line 686
    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    .line 687
    .line 688
    .line 689
    move-result v1

    .line 690
    invoke-virtual {v0, v1}, LK3/l;->o(Z)V

    .line 691
    .line 692
    .line 693
    iput-boolean v1, v0, LK3/l;->m:Z

    .line 694
    .line 695
    return-void

    .line 696
    :pswitch_14
    iget-object v0, p0, LA3/d;->e:Ljava/lang/Object;

    .line 697
    .line 698
    check-cast v0, LK3/d;

    .line 699
    .line 700
    invoke-virtual {v0, v1}, LK3/d;->o(Z)V

    .line 701
    .line 702
    .line 703
    return-void

    .line 704
    :pswitch_15
    iget-object v1, p0, LA3/d;->e:Ljava/lang/Object;

    .line 705
    .line 706
    check-cast v1, LI4/e;

    .line 707
    .line 708
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 709
    .line 710
    .line 711
    :try_start_3
    iget-object v1, v1, LI4/e;->a:Lflix/com/vision/api/realdebrid/RealDebridLoginActivity;

    .line 712
    .line 713
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 714
    .line 715
    .line 716
    move-result-object v1

    .line 717
    const-string v3, "Successfully logged In"

    .line 718
    .line 719
    const/16 v4, 0x50

    .line 720
    .line 721
    invoke-static {v1, v3, v0, v4, v2}, LN4/a;->Success(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 722
    .line 723
    .line 724
    :catch_1
    return-void

    .line 725
    :pswitch_16
    iget-object v0, p0, LA3/d;->e:Ljava/lang/Object;

    .line 726
    .line 727
    check-cast v0, LH3/i;

    .line 728
    .line 729
    iput-boolean v2, v0, LH3/i;->c:Z

    .line 730
    .line 731
    iget-object v2, v0, LH3/i;->e:Ly/c;

    .line 732
    .line 733
    check-cast v2, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    .line 734
    .line 735
    iget-object v3, v2, Lcom/google/android/material/sidesheet/SideSheetBehavior;->r:LW/l;

    .line 736
    .line 737
    if-eqz v3, :cond_d

    .line 738
    .line 739
    invoke-virtual {v3, v1}, LW/l;->continueSettling(Z)Z

    .line 740
    .line 741
    .line 742
    move-result v1

    .line 743
    if-eqz v1, :cond_d

    .line 744
    .line 745
    iget v1, v0, LH3/i;->b:I

    .line 746
    .line 747
    invoke-virtual {v0, v1}, LH3/i;->a(I)V

    .line 748
    .line 749
    .line 750
    goto :goto_9

    .line 751
    :cond_d
    iget v1, v2, Lcom/google/android/material/sidesheet/SideSheetBehavior;->q:I

    .line 752
    .line 753
    const/4 v3, 0x2

    .line 754
    if-ne v1, v3, :cond_e

    .line 755
    .line 756
    iget v0, v0, LH3/i;->b:I

    .line 757
    .line 758
    invoke-virtual {v2, v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a(I)V

    .line 759
    .line 760
    .line 761
    :cond_e
    :goto_9
    return-void

    .line 762
    :pswitch_17
    sget v0, Lflix/com/vision/activities/player/WebPlayerActivity;->O:I

    .line 763
    .line 764
    iget-object v0, p0, LA3/d;->e:Ljava/lang/Object;

    .line 765
    .line 766
    check-cast v0, Lflix/com/vision/activities/player/WebPlayerActivity;

    .line 767
    .line 768
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 769
    .line 770
    .line 771
    move-result-object v1

    .line 772
    invoke-static {v0, v2}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 773
    .line 774
    .line 775
    move-result-object v3

    .line 776
    const-string v4, "Did you know?"

    .line 777
    .line 778
    invoke-virtual {v3, v4}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 779
    .line 780
    .line 781
    invoke-virtual {v3, v2}, Landroid/app/DialogFragment;->setCancelable(Z)V

    .line 782
    .line 783
    .line 784
    const-string v4, "You can hide the server name and movie title at the top corner left from the settings"

    .line 785
    .line 786
    invoke-virtual {v3, v4}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 787
    .line 788
    .line 789
    new-instance v4, LB4/M;

    .line 790
    .line 791
    const/4 v5, 0x4

    .line 792
    invoke-direct {v4, v0, v5}, LB4/M;-><init>(Lflix/com/vision/activities/player/WebPlayerActivity;I)V

    .line 793
    .line 794
    .line 795
    const-string v5, "NO THANKS"

    .line 796
    .line 797
    invoke-virtual {v3, v5, v4}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 798
    .line 799
    .line 800
    new-instance v4, LB4/M;

    .line 801
    .line 802
    const/4 v5, 0x5

    .line 803
    invoke-direct {v4, v0, v5}, LB4/M;-><init>(Lflix/com/vision/activities/player/WebPlayerActivity;I)V

    .line 804
    .line 805
    .line 806
    const-string v5, "GO TO SETTINGS"

    .line 807
    .line 808
    invoke-virtual {v3, v5, v4}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 809
    .line 810
    .line 811
    :try_start_4
    const-string v4, ""

    .line 812
    .line 813
    invoke-virtual {v3, v1, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 814
    .line 815
    .line 816
    goto :goto_a

    .line 817
    :catch_2
    move-exception v1

    .line 818
    iput-boolean v2, v0, Lflix/com/vision/activities/player/WebPlayerActivity;->K:Z

    .line 819
    .line 820
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 821
    .line 822
    .line 823
    :goto_a
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 824
    .line 825
    .line 826
    move-result-object v0

    .line 827
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 828
    .line 829
    const-string v1, "pref_hide_watermark_tip"

    .line 830
    .line 831
    invoke-static {v0, v1, v2}, LA/i;->x(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 832
    .line 833
    .line 834
    return-void

    .line 835
    :pswitch_18
    sget-boolean v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Q0:Z

    .line 836
    .line 837
    const/16 v0, 0x8

    .line 838
    .line 839
    iget-object v1, p0, LA3/d;->e:Ljava/lang/Object;

    .line 840
    .line 841
    check-cast v1, Landroid/widget/LinearLayout;

    .line 842
    .line 843
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 844
    .line 845
    .line 846
    return-void

    .line 847
    :pswitch_19
    sget-boolean v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Q0:Z

    .line 848
    .line 849
    iget-object v0, p0, LA3/d;->e:Ljava/lang/Object;

    .line 850
    .line 851
    check-cast v0, Landroid/widget/TextView;

    .line 852
    .line 853
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 854
    .line 855
    .line 856
    move-result-object v0

    .line 857
    const/high16 v1, 0x3f800000    # 1.0f

    .line 858
    .line 859
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 860
    .line 861
    .line 862
    move-result-object v0

    .line 863
    const/4 v1, 0x0

    .line 864
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 865
    .line 866
    .line 867
    move-result-object v0

    .line 868
    const-wide/16 v1, 0x320

    .line 869
    .line 870
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 871
    .line 872
    .line 873
    move-result-object v0

    .line 874
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 875
    .line 876
    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 877
    .line 878
    .line 879
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 880
    .line 881
    .line 882
    move-result-object v0

    .line 883
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 884
    .line 885
    .line 886
    return-void

    .line 887
    :pswitch_1a
    iget-object v0, p0, LA3/d;->e:Ljava/lang/Object;

    .line 888
    .line 889
    check-cast v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;

    .line 890
    .line 891
    iput-boolean v2, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->R:Z

    .line 892
    .line 893
    return-void

    .line 894
    :pswitch_1b
    iget-object v0, p0, LA3/d;->e:Ljava/lang/Object;

    .line 895
    .line 896
    check-cast v0, Lflix/com/vision/activities/leanback/CastMoviesActivityLeanBack;

    .line 897
    .line 898
    iput-boolean v2, v0, Lflix/com/vision/activities/leanback/CastMoviesActivityLeanBack;->F:Z

    .line 899
    .line 900
    return-void

    .line 901
    :pswitch_1c
    iget-object v0, p0, LA3/d;->e:Ljava/lang/Object;

    .line 902
    .line 903
    check-cast v0, Lz3/f;

    .line 904
    .line 905
    invoke-virtual {v0}, Lz3/f;->startListeningForBackCallbacksWithPriorityOverlay()V

    .line 906
    .line 907
    .line 908
    return-void

    .line 909
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
