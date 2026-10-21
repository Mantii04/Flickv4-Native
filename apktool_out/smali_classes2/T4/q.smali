.class public final synthetic LT4/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:LT4/r;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(LT4/r;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, LT4/q;->b:I

    iput-object p1, p0, LT4/q;->e:LT4/r;

    iput-object p2, p0, LT4/q;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget v0, p0, LT4/q;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LT4/q;->e:LT4/r;

    .line 7
    .line 8
    iget-object v1, v0, LT4/r;->d:Landroid/app/ProgressDialog;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v1, v0, LT4/r;->d:Landroid/app/ProgressDialog;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v1, p0, LT4/q;->f:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v0, v0, LT4/r;->a:Landroid/app/Activity;

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    if-eqz v1, :cond_4

    .line 29
    .line 30
    new-instance v3, Ljava/io/File;

    .line 31
    .line 32
    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    goto/16 :goto_1

    .line 42
    .line 43
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 44
    .line 45
    const/16 v4, 0x1a

    .line 46
    .line 47
    if-lt v1, v4, :cond_2

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-static {v4}, Lb4/h;->A(Landroid/content/pm/PackageManager;)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-nez v4, :cond_2

    .line 58
    .line 59
    const-string v1, "Please allow \'Install Unknown Apps\' for FlixVision"

    .line 60
    .line 61
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 66
    .line 67
    .line 68
    new-instance v1, Landroid/content/Intent;

    .line 69
    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v3, "package:"

    .line 73
    .line 74
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    const-string v3, "android.settings.MANAGE_UNKNOWN_APP_SOURCES"

    .line 93
    .line 94
    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_2
    const/16 v4, 0x18

    .line 102
    .line 103
    if-lt v1, v4, :cond_3

    .line 104
    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v4, ".provider"

    .line 118
    .line 119
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-static {v0, v1, v3}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    goto :goto_0

    .line 131
    :cond_3
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    :goto_0
    new-instance v3, Landroid/content/Intent;

    .line 136
    .line 137
    const-string v4, "android.intent.action.VIEW"

    .line 138
    .line 139
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    const-string v4, "application/vnd.android.package-archive"

    .line 143
    .line 144
    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 148
    .line 149
    .line 150
    const/high16 v1, 0x10000000

    .line 151
    .line 152
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 153
    .line 154
    .line 155
    :try_start_0
    invoke-virtual {v0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :catch_0
    move-exception v1

    .line 160
    const-string v3, "UpdateManager"

    .line 161
    .line 162
    const-string v4, "Installation failed"

    .line 163
    .line 164
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    .line 166
    .line 167
    const-string v1, "Unable to open APK. Try installing manually from Downloads."

    .line 168
    .line 169
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 174
    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_4
    const-string v1, "Download failed. Please try again."

    .line 178
    .line 179
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 184
    .line 185
    .line 186
    :goto_1
    return-void

    .line 187
    :pswitch_0
    iget-object v0, p0, LT4/q;->f:Ljava/lang/String;

    .line 188
    .line 189
    iget-object v1, p0, LT4/q;->e:LT4/r;

    .line 190
    .line 191
    iget-object v2, v1, LT4/r;->c:Landroid/os/Handler;

    .line 192
    .line 193
    :try_start_1
    new-instance v3, Ljava/net/URL;

    .line 194
    .line 195
    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    iget-object v4, v1, LT4/r;->a:Landroid/app/Activity;

    .line 210
    .line 211
    sget-object v5, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 212
    .line 213
    invoke-virtual {v4, v5}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    new-instance v5, Ljava/io/File;

    .line 218
    .line 219
    const-string v6, "FlixVision_Update.apk"

    .line 220
    .line 221
    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 225
    .line 226
    .line 227
    move-result v4

    .line 228
    if-eqz v4, :cond_5

    .line 229
    .line 230
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 231
    .line 232
    .line 233
    goto :goto_2

    .line 234
    :catch_1
    move-exception v0

    .line 235
    goto :goto_8

    .line 236
    :cond_5
    :goto_2
    new-instance v4, Ljava/io/BufferedInputStream;

    .line 237
    .line 238
    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    invoke-direct {v4, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 243
    .line 244
    .line 245
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    .line 246
    .line 247
    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 248
    .line 249
    .line 250
    const/16 v6, 0x2000

    .line 251
    .line 252
    :try_start_3
    new-array v6, v6, [B

    .line 253
    .line 254
    const-wide/16 v7, 0x0

    .line 255
    .line 256
    :goto_3
    invoke-virtual {v4, v6}, Ljava/io/InputStream;->read([B)I

    .line 257
    .line 258
    .line 259
    move-result v9

    .line 260
    const/4 v10, -0x1

    .line 261
    if-eq v9, v10, :cond_6

    .line 262
    .line 263
    int-to-long v10, v9

    .line 264
    add-long/2addr v7, v10

    .line 265
    const-wide/16 v10, 0x64

    .line 266
    .line 267
    mul-long/2addr v10, v7

    .line 268
    int-to-long v12, v0

    .line 269
    div-long/2addr v10, v12

    .line 270
    long-to-int v10, v10

    .line 271
    new-instance v11, LC/q;

    .line 272
    .line 273
    const/4 v12, 0x3

    .line 274
    invoke-direct {v11, v1, v10, v12}, LC/q;-><init>(Ljava/lang/Object;II)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v2, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 278
    .line 279
    .line 280
    const/4 v10, 0x0

    .line 281
    invoke-virtual {v3, v6, v10, v9}, Ljava/io/OutputStream;->write([BII)V

    .line 282
    .line 283
    .line 284
    goto :goto_3

    .line 285
    :catchall_0
    move-exception v0

    .line 286
    goto :goto_4

    .line 287
    :cond_6
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 288
    .line 289
    .line 290
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 291
    .line 292
    .line 293
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 300
    goto :goto_9

    .line 301
    :catchall_1
    move-exception v0

    .line 302
    goto :goto_6

    .line 303
    :goto_4
    :try_start_6
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 304
    .line 305
    .line 306
    goto :goto_5

    .line 307
    :catchall_2
    move-exception v3

    .line 308
    :try_start_7
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 309
    .line 310
    .line 311
    :goto_5
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 312
    :goto_6
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 313
    .line 314
    .line 315
    goto :goto_7

    .line 316
    :catchall_3
    move-exception v3

    .line 317
    :try_start_9
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 318
    .line 319
    .line 320
    :goto_7
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 321
    :goto_8
    const-string v3, "UpdateManager"

    .line 322
    .line 323
    const-string v4, "Error downloading APK"

    .line 324
    .line 325
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 326
    .line 327
    .line 328
    const/4 v0, 0x0

    .line 329
    :goto_9
    new-instance v3, LT4/q;

    .line 330
    .line 331
    const/4 v4, 0x1

    .line 332
    invoke-direct {v3, v1, v0, v4}, LT4/q;-><init>(LT4/r;Ljava/lang/String;I)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 336
    .line 337
    .line 338
    return-void

    .line 339
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
