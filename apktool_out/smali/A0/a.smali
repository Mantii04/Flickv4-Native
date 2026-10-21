.class public final synthetic LA0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv0/l;
.implements Ln3/a;
.implements Ll/m2;
.implements Lr1/l;
.implements LN/c;
.implements Ls0/A;
.implements LX2/a;
.implements LR/f;
.implements Landroidx/media3/common/util/Consumer;
.implements Lu0/g;
.implements Lb3/a;
.implements Lcom/android/volley/Response$ErrorListener;
.implements LV3/q;
.implements Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory;
.implements Landroidx/media3/exoplayer/trackselection/TrackSelectionUtil$AdaptiveTrackSelectionFactory;
.implements Lcom/google/firebase/inject/Deferred$DeferredHandler;
.implements Lcom/google/android/gms/tasks/Continuation;
.implements Lcom/google/android/gms/tasks/SuccessContinuation;
.implements LP2/d;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, LA0/a;->b:I

    iput-object p1, p0, LA0/a;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LR/k;ILandroid/os/Bundle;)Z
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x19

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-lt v0, v1, :cond_1

    .line 7
    .line 8
    and-int/2addr p2, v2

    .line 9
    if-eqz p2, :cond_1

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p1}, LR/k;->requestPermission()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, LR/k;->unwrap()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    check-cast p2, Landroid/os/Parcelable;

    .line 19
    .line 20
    if-nez p3, :cond_0

    .line 21
    .line 22
    new-instance p3, Landroid/os/Bundle;

    .line 23
    .line 24
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 29
    .line 30
    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 31
    .line 32
    .line 33
    move-object p3, v0

    .line 34
    :goto_0
    const-string v0, "androidx.core.view.extra.INPUT_CONTENT_INFO"

    .line 35
    .line 36
    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :catch_0
    move-exception p1

    .line 41
    const-string p2, "InputConnectionCompat"

    .line 42
    .line 43
    const-string p3, "Can\'t insert content from IME; requestPermission() failed"

    .line 44
    .line 45
    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_1
    :goto_1
    new-instance p2, Landroid/content/ClipData;

    .line 50
    .line 51
    invoke-virtual {p1}, LR/k;->getDescription()Landroid/content/ClipDescription;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    new-instance v1, Landroid/content/ClipData$Item;

    .line 56
    .line 57
    invoke-virtual {p1}, LR/k;->getContentUri()Landroid/net/Uri;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-direct {v1, v3}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 62
    .line 63
    .line 64
    invoke-direct {p2, v0, v1}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    .line 65
    .line 66
    .line 67
    new-instance v0, LM/f;

    .line 68
    .line 69
    const/4 v1, 0x2

    .line 70
    invoke-direct {v0, p2, v1}, LM/f;-><init>(Landroid/content/ClipData;I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, LR/k;->getLinkUri()Landroid/net/Uri;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {v0, p1}, LM/f;->setLinkUri(Landroid/net/Uri;)LM/f;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1, p3}, LM/f;->setExtras(Landroid/os/Bundle;)LM/f;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1}, LM/f;->build()LM/m;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iget-object p2, p0, LA0/a;->e:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast p2, Landroid/view/View;

    .line 92
    .line 93
    invoke-static {p2, p1}, LM/p0;->performReceiveContent(Landroid/view/View;LM/m;)LM/m;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    if-nez p1, :cond_2

    .line 98
    .line 99
    return v2

    .line 100
    :cond_2
    :goto_2
    const/4 p1, 0x0

    .line 101
    return p1
.end method

.method public accept(Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget v0, p0, LA0/a;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LA0/a;->e:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, LQ3/s;

    .line 9
    .line 10
    check-cast p1, LS0/c;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, LQ3/s;->add(Ljava/lang/Object;)LQ3/s;

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    check-cast p1, LS0/c;

    .line 17
    .line 18
    iget-object v0, p0, LA0/a;->e:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, LS0/l;

    .line 21
    .line 22
    new-instance v1, LS0/k;

    .line 23
    .line 24
    iget-wide v2, p1, LS0/c;->b:J

    .line 25
    .line 26
    iget-object v4, p1, LS0/c;->a:Lcom/google/common/collect/ImmutableList;

    .line 27
    .line 28
    iget-wide v5, p1, LS0/c;->c:J

    .line 29
    .line 30
    iget-object v7, v0, LS0/l;->b:LS0/b;

    .line 31
    .line 32
    invoke-virtual {v7, v4, v5, v6}, LS0/b;->encode(Ljava/util/List;J)[B

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-direct {v1, v2, v3, v4}, LS0/k;-><init>(J[B)V

    .line 37
    .line 38
    .line 39
    iget-object v2, v0, LS0/l;->d:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    iget-wide v2, v0, LS0/l;->k:J

    .line 45
    .line 46
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    cmp-long v4, v2, v4

    .line 52
    .line 53
    if-eqz v4, :cond_0

    .line 54
    .line 55
    iget-wide v4, p1, LS0/c;->d:J

    .line 56
    .line 57
    cmp-long p1, v4, v2

    .line 58
    .line 59
    if-ltz p1, :cond_1

    .line 60
    .line 61
    :cond_0
    invoke-virtual {v0, v1}, LS0/l;->a(LS0/k;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    return-void

    .line 65
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, LA0/a;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LA0/a;->e:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/google/firebase/sessions/EventGDTLogger;

    .line 9
    .line 10
    check-cast p1, Lcom/google/firebase/sessions/SessionEvent;

    .line 11
    .line 12
    invoke-static {v0, p1}, Lcom/google/firebase/sessions/EventGDTLogger;->a(Lcom/google/firebase/sessions/EventGDTLogger;Lcom/google/firebase/sessions/SessionEvent;)[B

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1

    .line 17
    :pswitch_0
    check-cast p1, LQ2/b;

    .line 18
    .line 19
    iget-object v0, p0, LA0/a;->e:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, LQ2/d;

    .line 22
    .line 23
    iget-object v1, p1, LQ2/b;->a:Ljava/net/URL;

    .line 24
    .line 25
    const-string v2, "Making request to: %s"

    .line 26
    .line 27
    const-string v3, "CctTransportBackend"

    .line 28
    .line 29
    invoke-static {v3, v2, v1}, LW2/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p1, LQ2/b;->a:Ljava/net/URL;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 39
    .line 40
    const/16 v2, 0x7530

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 43
    .line 44
    .line 45
    iget v2, v0, LQ2/d;->g:I

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 48
    .line 49
    .line 50
    const/4 v2, 0x1

    .line 51
    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 52
    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 56
    .line 57
    .line 58
    const-string v2, "POST"

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string v2, "User-Agent"

    .line 64
    .line 65
    const-string v4, "datatransport/3.1.9 android/"

    .line 66
    .line 67
    invoke-virtual {v1, v2, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-string v2, "Content-Encoding"

    .line 71
    .line 72
    const-string v4, "gzip"

    .line 73
    .line 74
    invoke-virtual {v1, v2, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const-string v5, "Content-Type"

    .line 78
    .line 79
    const-string v6, "application/json"

    .line 80
    .line 81
    invoke-virtual {v1, v5, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const-string v6, "Accept-Encoding"

    .line 85
    .line 86
    invoke-virtual {v1, v6, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object v6, p1, LQ2/b;->c:Ljava/lang/String;

    .line 90
    .line 91
    if-eqz v6, :cond_0

    .line 92
    .line 93
    const-string v7, "X-Goog-Api-Key"

    .line 94
    .line 95
    invoke-virtual {v1, v7, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :cond_0
    const-wide/16 v6, 0x0

    .line 99
    .line 100
    const/4 v8, 0x0

    .line 101
    :try_start_0
    invoke-virtual {v1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 102
    .line 103
    .line 104
    move-result-object v9
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/firebase/encoders/EncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :try_start_1
    new-instance v10, Ljava/util/zip/GZIPOutputStream;

    .line 106
    .line 107
    invoke-direct {v10, v9}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 108
    .line 109
    .line 110
    :try_start_2
    iget-object v0, v0, LQ2/d;->a:Lcom/google/firebase/encoders/DataEncoder;

    .line 111
    .line 112
    iget-object p1, p1, LQ2/b;->b:LR2/v;

    .line 113
    .line 114
    new-instance v11, Ljava/io/BufferedWriter;

    .line 115
    .line 116
    new-instance v12, Ljava/io/OutputStreamWriter;

    .line 117
    .line 118
    invoke-direct {v12, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 119
    .line 120
    .line 121
    invoke-direct {v11, v12}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 122
    .line 123
    .line 124
    invoke-interface {v0, p1, v11}, Lcom/google/firebase/encoders/DataEncoder;->encode(Ljava/lang/Object;Ljava/io/Writer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 125
    .line 126
    .line 127
    :try_start_3
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 128
    .line 129
    .line 130
    if-eqz v9, :cond_1

    .line 131
    .line 132
    :try_start_4
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/net/ConnectException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/google/firebase/encoders/EncodingException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :catch_0
    move-exception p1

    .line 137
    goto/16 :goto_a

    .line 138
    .line 139
    :catch_1
    move-exception p1

    .line 140
    goto/16 :goto_a

    .line 141
    .line 142
    :catch_2
    move-exception p1

    .line 143
    goto/16 :goto_c

    .line 144
    .line 145
    :catch_3
    move-exception p1

    .line 146
    goto/16 :goto_c

    .line 147
    .line 148
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    const-string v9, "Status Code: %d"

    .line 157
    .line 158
    invoke-static {v3, v9, v0}, LW2/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    const-string v0, "Content-Type: %s"

    .line 162
    .line 163
    invoke-virtual {v1, v5}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    invoke-static {v3, v0, v5}, LW2/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    const-string v0, "Content-Encoding: %s"

    .line 171
    .line 172
    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    invoke-static {v3, v0, v5}, LW2/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    const/16 v0, 0x12e

    .line 180
    .line 181
    if-eq p1, v0, :cond_9

    .line 182
    .line 183
    const/16 v0, 0x12d

    .line 184
    .line 185
    if-eq p1, v0, :cond_9

    .line 186
    .line 187
    const/16 v0, 0x133

    .line 188
    .line 189
    if-ne p1, v0, :cond_2

    .line 190
    .line 191
    goto :goto_6

    .line 192
    :cond_2
    const/16 v0, 0xc8

    .line 193
    .line 194
    if-eq p1, v0, :cond_3

    .line 195
    .line 196
    new-instance v0, LQ2/c;

    .line 197
    .line 198
    invoke-direct {v0, p1, v8, v6, v7}, LQ2/c;-><init>(ILjava/net/URL;J)V

    .line 199
    .line 200
    .line 201
    goto/16 :goto_d

    .line 202
    .line 203
    :cond_3
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    :try_start_5
    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    if-eqz v1, :cond_4

    .line 216
    .line 217
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    .line 218
    .line 219
    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 220
    .line 221
    .line 222
    goto :goto_1

    .line 223
    :cond_4
    move-object v1, v0

    .line 224
    :goto_1
    :try_start_6
    new-instance v2, Ljava/io/BufferedReader;

    .line 225
    .line 226
    new-instance v3, Ljava/io/InputStreamReader;

    .line 227
    .line 228
    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 229
    .line 230
    .line 231
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 232
    .line 233
    .line 234
    invoke-static {v2}, LR2/C;->fromJson(Ljava/io/Reader;)LR2/C;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    invoke-virtual {v2}, LR2/C;->getNextRequestWaitMillis()J

    .line 239
    .line 240
    .line 241
    move-result-wide v2

    .line 242
    new-instance v4, LQ2/c;

    .line 243
    .line 244
    invoke-direct {v4, p1, v8, v2, v3}, LQ2/c;-><init>(ILjava/net/URL;J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 245
    .line 246
    .line 247
    if-eqz v1, :cond_5

    .line 248
    .line 249
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 250
    .line 251
    .line 252
    goto :goto_2

    .line 253
    :catchall_0
    move-exception p1

    .line 254
    goto :goto_4

    .line 255
    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    .line 256
    .line 257
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 258
    .line 259
    .line 260
    :cond_6
    move-object v0, v4

    .line 261
    goto :goto_d

    .line 262
    :catchall_1
    move-exception p1

    .line 263
    if-eqz v1, :cond_7

    .line 264
    .line 265
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 266
    .line 267
    .line 268
    goto :goto_3

    .line 269
    :catchall_2
    move-exception v1

    .line 270
    :try_start_9
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 271
    .line 272
    .line 273
    :cond_7
    :goto_3
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 274
    :goto_4
    if-eqz v0, :cond_8

    .line 275
    .line 276
    :try_start_a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 277
    .line 278
    .line 279
    goto :goto_5

    .line 280
    :catchall_3
    move-exception v0

    .line 281
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 282
    .line 283
    .line 284
    :cond_8
    :goto_5
    throw p1

    .line 285
    :cond_9
    :goto_6
    const-string v0, "Location"

    .line 286
    .line 287
    invoke-virtual {v1, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    new-instance v1, LQ2/c;

    .line 292
    .line 293
    new-instance v2, Ljava/net/URL;

    .line 294
    .line 295
    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    invoke-direct {v1, p1, v2, v6, v7}, LQ2/c;-><init>(ILjava/net/URL;J)V

    .line 299
    .line 300
    .line 301
    move-object v0, v1

    .line 302
    goto :goto_d

    .line 303
    :catchall_4
    move-exception p1

    .line 304
    goto :goto_8

    .line 305
    :catchall_5
    move-exception p1

    .line 306
    :try_start_b
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 307
    .line 308
    .line 309
    goto :goto_7

    .line 310
    :catchall_6
    move-exception v0

    .line 311
    :try_start_c
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 312
    .line 313
    .line 314
    :goto_7
    throw p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 315
    :goto_8
    if-eqz v9, :cond_a

    .line 316
    .line 317
    :try_start_d
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 318
    .line 319
    .line 320
    goto :goto_9

    .line 321
    :catchall_7
    move-exception v0

    .line 322
    :try_start_e
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 323
    .line 324
    .line 325
    :cond_a
    :goto_9
    throw p1
    :try_end_e
    .catch Ljava/net/ConnectException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_e .. :try_end_e} :catch_2
    .catch Lcom/google/firebase/encoders/EncodingException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    .line 326
    :goto_a
    const-string v0, "Couldn\'t encode request, returning with 400"

    .line 327
    .line 328
    invoke-static {v3, v0, p1}, LW2/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 329
    .line 330
    .line 331
    new-instance p1, LQ2/c;

    .line 332
    .line 333
    const/16 v0, 0x190

    .line 334
    .line 335
    invoke-direct {p1, v0, v8, v6, v7}, LQ2/c;-><init>(ILjava/net/URL;J)V

    .line 336
    .line 337
    .line 338
    :goto_b
    move-object v0, p1

    .line 339
    goto :goto_d

    .line 340
    :goto_c
    const-string v0, "Couldn\'t open connection, returning with 500"

    .line 341
    .line 342
    invoke-static {v3, v0, p1}, LW2/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 343
    .line 344
    .line 345
    new-instance p1, LQ2/c;

    .line 346
    .line 347
    const/16 v0, 0x1f4

    .line 348
    .line 349
    invoke-direct {p1, v0, v8, v6, v7}, LQ2/c;-><init>(ILjava/net/URL;J)V

    .line 350
    .line 351
    .line 352
    goto :goto_b

    .line 353
    :goto_d
    return-object v0

    .line 354
    nop

    .line 355
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public b(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-object v0, p0, LA0/a;->e:Ljava/lang/Object;

    check-cast v0, LA3/k;

    invoke-static {v0, p1}, LA3/k;->a(LA3/k;Landroid/graphics/Canvas;)V

    return-void
.end method

.method public consume(JLandroidx/media3/common/util/ParsableByteArray;)V
    .locals 1

    .line 1
    iget v0, p0, LA0/a;->b:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LA0/a;->e:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lc1/Z;

    .line 9
    .line 10
    iget-object v0, v0, Lc1/Z;->c:[Lv0/r0;

    .line 11
    .line 12
    invoke-static {p1, p2, p3, v0}, Lv0/q;->consumeCcData(JLandroidx/media3/common/util/ParsableByteArray;[Lv0/r0;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :sswitch_0
    iget-object v0, p0, LA0/a;->e:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Lc1/L;

    .line 19
    .line 20
    iget-object v0, v0, Lc1/L;->c:[Lv0/r0;

    .line 21
    .line 22
    invoke-static {p1, p2, p3, v0}, Lv0/q;->consume(JLandroidx/media3/common/util/ParsableByteArray;[Lv0/r0;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :sswitch_1
    iget-object v0, p0, LA0/a;->e:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, LP0/u;

    .line 29
    .line 30
    iget-object v0, v0, LP0/u;->L:[Lv0/r0;

    .line 31
    .line 32
    invoke-static {p1, p2, p3, v0}, Lv0/q;->consume(JLandroidx/media3/common/util/ParsableByteArray;[Lv0/r0;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    nop

    .line 37
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_1
        0x15 -> :sswitch_0
    .end sparse-switch
.end method

.method public create(ILandroidx/media3/common/TrackGroup;[I)Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, LA0/a;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    invoke-static {v0, p1, p2, p3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->b(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;ILandroidx/media3/common/TrackGroup;[I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public create(Lr1/k;)Lr1/m;
    .locals 2

    .line 2
    const-string v0, "$context"

    iget-object v1, p0, LA0/a;->e:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lr1/k;->f:Lr1/j;

    invoke-virtual {v0, v1}, Lr1/j;->builder(Landroid/content/Context;)Lr1/i;

    move-result-object v0

    .line 4
    iget-object v1, p1, Lr1/k;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lr1/i;->name(Ljava/lang/String;)Lr1/i;

    move-result-object v1

    .line 5
    iget-object p1, p1, Lr1/k;->c:Lr1/h;

    invoke-virtual {v1, p1}, Lr1/i;->callback(Lr1/h;)Lr1/i;

    move-result-object p1

    const/4 v1, 0x1

    .line 6
    invoke-virtual {p1, v1}, Lr1/i;->noBackupDirectory(Z)Lr1/i;

    move-result-object p1

    .line 7
    invoke-virtual {p1, v1}, Lr1/i;->allowDataLossOnRecovery(Z)Lr1/i;

    .line 8
    new-instance p1, Ls1/g;

    invoke-direct {p1}, Ls1/g;-><init>()V

    invoke-virtual {v0}, Lr1/i;->build()Lr1/k;

    move-result-object v0

    invoke-virtual {p1, v0}, Ls1/g;->create(Lr1/k;)Lr1/m;

    move-result-object p1

    return-object p1
.end method

.method public createAdaptiveTrackSelection(Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;)Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    .locals 1

    .line 1
    iget-object v0, p0, LA0/a;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/trackselection/RandomTrackSelection$Factory;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/trackselection/RandomTrackSelection$Factory;->a(Landroidx/media3/exoplayer/trackselection/RandomTrackSelection$Factory;Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;)Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    move-result-object p1

    return-object p1
.end method

.method public execute()Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, LA0/a;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LA0/a;->e:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, LZ2/o;

    .line 9
    .line 10
    iget-object v1, v0, LZ2/o;->b:La3/d;

    .line 11
    .line 12
    check-cast v1, La3/r;

    .line 13
    .line 14
    invoke-virtual {v1}, La3/r;->loadActiveContexts()Ljava/lang/Iterable;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, LS2/E;

    .line 33
    .line 34
    iget-object v3, v0, LZ2/o;->c:LZ2/q;

    .line 35
    .line 36
    check-cast v3, LZ2/d;

    .line 37
    .line 38
    const/4 v4, 0x1

    .line 39
    invoke-virtual {v3, v2, v4}, LZ2/d;->schedule(LS2/E;I)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 v0, 0x0

    .line 44
    return-object v0

    .line 45
    :pswitch_0
    iget-object v0, p0, LA0/a;->e:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v0, La3/d;

    .line 48
    .line 49
    check-cast v0, La3/r;

    .line 50
    .line 51
    invoke-virtual {v0}, La3/r;->cleanUp()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    return-object v0

    .line 60
    :pswitch_1
    iget-object v0, p0, LA0/a;->e:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v0, La3/c;

    .line 63
    .line 64
    check-cast v0, La3/r;

    .line 65
    .line 66
    invoke-virtual {v0}, La3/r;->loadClientMetrics()LV2/b;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    return-object v0

    .line 71
    :pswitch_2
    iget-object v0, p0, LA0/a;->e:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v0, LZ2/m;

    .line 74
    .line 75
    iget-object v0, v0, LZ2/m;->i:La3/c;

    .line 76
    .line 77
    check-cast v0, La3/r;

    .line 78
    .line 79
    invoke-virtual {v0}, La3/r;->resetClientMetrics()V

    .line 80
    .line 81
    .line 82
    const/4 v0, 0x0

    .line 83
    return-object v0

    .line 84
    nop

    .line 85
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handle(Lcom/google/firebase/inject/Provider;)V
    .locals 1

    .line 1
    iget v0, p0, LA0/a;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LA0/a;->e:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/crashlytics/internal/CrashlyticsRemoteConfigListener;

    invoke-static {v0, p1}, Lcom/google/firebase/crashlytics/internal/RemoteConfigDeferredProxy;->a(Lcom/google/firebase/crashlytics/internal/CrashlyticsRemoteConfigListener;Lcom/google/firebase/inject/Provider;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LA0/a;->e:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponentDeferredProxy;

    invoke-static {v0, p1}, Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponentDeferredProxy;->b(Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponentDeferredProxy;Lcom/google/firebase/inject/Provider;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 4

    .line 1
    iget-object v0, p0, LA0/a;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, La5/d;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-class v1, Lflix/com/vision/activities/MovieDetailActivity;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, ""

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-static {v1, v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v2, "getTorrentInfo:"

    .line 23
    .line 24
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v0, p1}, La5/d;->appendLog(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 8

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, LA0/a;->e:Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    iget v5, p0, LA0/a;->b:I

    .line 10
    .line 11
    packed-switch v5, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast v3, Lflix/com/vision/activities/player/SimpleVideoPlayer;

    .line 15
    .line 16
    iget-object v5, v3, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 17
    .line 18
    invoke-virtual {v5}, Lflix/com/vision/bvp/BetterVideoPlayer;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    invoke-virtual {v5}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    sget v6, Lflix/com/vision/R$id;->play_pause_button:I

    .line 27
    .line 28
    invoke-interface {v5, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    sget v7, Lflix/com/vision/R$id;->play_pause_button:I

    .line 37
    .line 38
    if-ne v6, v7, :cond_6

    .line 39
    .line 40
    :try_start_0
    iget-object p1, v3, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 41
    .line 42
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->isPlaying()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    iget-object p1, v3, Lflix/com/vision/activities/player/SimpleVideoPlayer;->K:Landroid/widget/ImageView;

    .line 49
    .line 50
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    iget-object p1, v3, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 54
    .line 55
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->pause()V

    .line 56
    .line 57
    .line 58
    if-eqz v5, :cond_0

    .line 59
    .line 60
    sget p1, Lflix/com/vision/R$drawable;->play_circle_40px:I

    .line 61
    .line 62
    invoke-interface {v5, p1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception p1

    .line 67
    goto :goto_2

    .line 68
    :cond_0
    :goto_0
    iget-object p1, v3, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Y:Ljava/lang/String;

    .line 69
    .line 70
    if-eqz p1, :cond_1

    .line 71
    .line 72
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 77
    .line 78
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iget-object v0, v3, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Y:Ljava/lang/String;

    .line 83
    .line 84
    iget-object v1, v3, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 85
    .line 86
    invoke-virtual {v1}, Lflix/com/vision/bvp/BetterVideoPlayer;->getCurrentPosition()J

    .line 87
    .line 88
    .line 89
    move-result-wide v1

    .line 90
    long-to-int v1, v1

    .line 91
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 96
    .line 97
    .line 98
    :cond_1
    invoke-virtual {v3}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->requestAndDisplayAd()V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_2
    iget-object p1, v3, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 103
    .line 104
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->isPrepared()Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-eqz p1, :cond_5

    .line 109
    .line 110
    iget-object p1, v3, Lflix/com/vision/activities/player/SimpleVideoPlayer;->f:Landroid/widget/ImageView;

    .line 111
    .line 112
    if-eqz p1, :cond_3

    .line 113
    .line 114
    iget-boolean p1, v3, Lflix/com/vision/activities/player/SimpleVideoPlayer;->H0:Z

    .line 115
    .line 116
    if-eqz p1, :cond_3

    .line 117
    .line 118
    iget-object p1, v3, Lflix/com/vision/activities/player/SimpleVideoPlayer;->u:Landroid/widget/RelativeLayout;

    .line 119
    .line 120
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 121
    .line 122
    .line 123
    :cond_3
    iget-object p1, v3, Lflix/com/vision/activities/player/SimpleVideoPlayer;->K:Landroid/widget/ImageView;

    .line 124
    .line 125
    sget v0, Lflix/com/vision/R$drawable;->ic_play:I

    .line 126
    .line 127
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 128
    .line 129
    .line 130
    new-instance p1, Landroid/os/Handler;

    .line 131
    .line 132
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 133
    .line 134
    .line 135
    new-instance v0, LB4/s;

    .line 136
    .line 137
    const/16 v1, 0xa

    .line 138
    .line 139
    invoke-direct {v0, v3, v1}, LB4/s;-><init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;I)V

    .line 140
    .line 141
    .line 142
    const-wide/16 v6, 0xc8

    .line 143
    .line 144
    invoke-virtual {p1, v0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 145
    .line 146
    .line 147
    iput-boolean v2, v3, Lflix/com/vision/activities/player/SimpleVideoPlayer;->l0:Z

    .line 148
    .line 149
    if-eqz v5, :cond_4

    .line 150
    .line 151
    sget p1, Lflix/com/vision/R$drawable;->pause_circle_40px:I

    .line 152
    .line 153
    invoke-interface {v5, p1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 154
    .line 155
    .line 156
    :cond_4
    iget-object p1, v3, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 157
    .line 158
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->start()V

    .line 159
    .line 160
    .line 161
    :cond_5
    :goto_1
    iget-object p1, v3, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 162
    .line 163
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->showControls()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .line 165
    .line 166
    goto/16 :goto_5

    .line 167
    .line 168
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 169
    .line 170
    .line 171
    goto/16 :goto_5

    .line 172
    .line 173
    :cond_6
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    sget v5, Lflix/com/vision/R$id;->hd_button:I

    .line 178
    .line 179
    if-ne v1, v5, :cond_7

    .line 180
    .line 181
    iget-object p1, v3, Lflix/com/vision/activities/player/SimpleVideoPlayer;->r:Ljava/util/ArrayList;

    .line 182
    .line 183
    invoke-virtual {v3, p1}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->j(Ljava/util/ArrayList;)V

    .line 184
    .line 185
    .line 186
    goto/16 :goto_5

    .line 187
    .line 188
    :cond_7
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    sget v5, Lflix/com/vision/R$id;->aspect_ratio_button:I

    .line 193
    .line 194
    if-ne v1, v5, :cond_b

    .line 195
    .line 196
    const-string p1, "Aspect Ratio: "

    .line 197
    .line 198
    iget-object v1, v3, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 199
    .line 200
    if-eqz v1, :cond_17

    .line 201
    .line 202
    invoke-virtual {v1}, Lflix/com/vision/bvp/BetterVideoPlayer;->toggleAspectRatio()I

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    if-eqz v1, :cond_a

    .line 207
    .line 208
    if-eq v1, v4, :cond_9

    .line 209
    .line 210
    const/4 v5, 0x2

    .line 211
    if-eq v1, v5, :cond_8

    .line 212
    .line 213
    goto :goto_3

    .line 214
    :cond_8
    const-string v0, "Stretch"

    .line 215
    .line 216
    goto :goto_3

    .line 217
    :cond_9
    const-string v0, "Zoom (Crop)"

    .line 218
    .line 219
    goto :goto_3

    .line 220
    :cond_a
    const-string v0, "Best Fit"

    .line 221
    .line 222
    :goto_3
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    invoke-static {v3, v1, v4}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 227
    .line 228
    .line 229
    goto/16 :goto_5

    .line 230
    .line 231
    :catch_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    invoke-static {v3, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 240
    .line 241
    .line 242
    goto/16 :goto_5

    .line 243
    .line 244
    :cond_b
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    sget v5, Lflix/com/vision/R$id;->episodes_button:I

    .line 249
    .line 250
    if-ne v1, v5, :cond_d

    .line 251
    .line 252
    iget-object p1, v3, Lflix/com/vision/activities/player/SimpleVideoPlayer;->t:Landroid/widget/RelativeLayout;

    .line 253
    .line 254
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 255
    .line 256
    .line 257
    move-result p1

    .line 258
    if-eqz p1, :cond_c

    .line 259
    .line 260
    iget-object p1, v3, Lflix/com/vision/activities/player/SimpleVideoPlayer;->t:Landroid/widget/RelativeLayout;

    .line 261
    .line 262
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 263
    .line 264
    .line 265
    iget-object p1, v3, Lflix/com/vision/activities/player/SimpleVideoPlayer;->t:Landroid/widget/RelativeLayout;

    .line 266
    .line 267
    iget-object v0, v3, Lflix/com/vision/activities/player/SimpleVideoPlayer;->F0:Landroid/view/animation/Animation;

    .line 268
    .line 269
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 270
    .line 271
    .line 272
    iget-object p1, v3, Lflix/com/vision/activities/player/SimpleVideoPlayer;->v:Landroidx/recyclerview/widget/RecyclerView;

    .line 273
    .line 274
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 275
    .line 276
    .line 277
    goto/16 :goto_5

    .line 278
    .line 279
    :cond_c
    invoke-virtual {v3}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->t()V

    .line 280
    .line 281
    .line 282
    goto/16 :goto_5

    .line 283
    .line 284
    :cond_d
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 285
    .line 286
    .line 287
    move-result v1

    .line 288
    sget v5, Lflix/com/vision/R$id;->subtitle_button:I

    .line 289
    .line 290
    if-ne v1, v5, :cond_e

    .line 291
    .line 292
    iget-object p1, v3, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    .line 293
    .line 294
    if-eqz p1, :cond_17

    .line 295
    .line 296
    :try_start_2
    invoke-virtual {v3}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->C()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 297
    .line 298
    .line 299
    goto/16 :goto_5

    .line 300
    .line 301
    :cond_e
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 302
    .line 303
    .line 304
    move-result v1

    .line 305
    sget v5, Lflix/com/vision/R$id;->audio_track_button:I

    .line 306
    .line 307
    if-ne v1, v5, :cond_12

    .line 308
    .line 309
    iget-object p1, v3, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 310
    .line 311
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->getAvailableAudioTracks()Ljava/util/ArrayList;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 316
    .line 317
    .line 318
    move-result v0

    .line 319
    if-eqz v0, :cond_f

    .line 320
    .line 321
    const-string p1, "No alternative audio tracks found"

    .line 322
    .line 323
    invoke-static {v3, p1, v2}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 324
    .line 325
    .line 326
    goto/16 :goto_5

    .line 327
    .line 328
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    .line 329
    .line 330
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 331
    .line 332
    .line 333
    const/4 v1, -0x1

    .line 334
    move v5, v2

    .line 335
    :goto_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 336
    .line 337
    .line 338
    move-result v6

    .line 339
    if-ge v5, v6, :cond_11

    .line 340
    .line 341
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v6

    .line 345
    check-cast v6, LK4/l;

    .line 346
    .line 347
    iget-object v6, v6, LK4/l;->c:Ljava/lang/String;

    .line 348
    .line 349
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v6

    .line 356
    check-cast v6, LK4/l;

    .line 357
    .line 358
    iget-boolean v6, v6, LK4/l;->d:Z

    .line 359
    .line 360
    if-eqz v6, :cond_10

    .line 361
    .line 362
    move v1, v5

    .line 363
    :cond_10
    add-int/2addr v5, v4

    .line 364
    goto :goto_4

    .line 365
    :cond_11
    new-array v2, v2, [Ljava/lang/CharSequence;

    .line 366
    .line 367
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    check-cast v0, [Ljava/lang/CharSequence;

    .line 372
    .line 373
    new-instance v2, Le/r;

    .line 374
    .line 375
    new-instance v5, Landroid/view/ContextThemeWrapper;

    .line 376
    .line 377
    sget v6, Lflix/com/vision/R$style;->AlertDialogCustom:I

    .line 378
    .line 379
    invoke-direct {v5, v3, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 380
    .line 381
    .line 382
    invoke-direct {v2, v5}, Le/r;-><init>(Landroid/content/Context;)V

    .line 383
    .line 384
    .line 385
    const-string v5, "Select Audio Language"

    .line 386
    .line 387
    invoke-virtual {v2, v5}, Le/r;->setTitle(Ljava/lang/CharSequence;)Le/r;

    .line 388
    .line 389
    .line 390
    move-result-object v2

    .line 391
    new-instance v5, LB4/z;

    .line 392
    .line 393
    invoke-direct {v5, v3, p1, v4}, LB4/z;-><init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;Ljava/util/ArrayList;I)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v2, v0, v1, v5}, Le/r;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Le/r;

    .line 397
    .line 398
    .line 399
    move-result-object p1

    .line 400
    invoke-virtual {p1}, Le/r;->show()Le/s;

    .line 401
    .line 402
    .line 403
    goto/16 :goto_5

    .line 404
    .line 405
    :cond_12
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 406
    .line 407
    .line 408
    move-result v1

    .line 409
    sget v2, Lflix/com/vision/R$id;->subtitle_gear_button:I

    .line 410
    .line 411
    if-ne v1, v2, :cond_13

    .line 412
    .line 413
    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 414
    .line 415
    .line 416
    move-result-object p1

    .line 417
    invoke-static {v3, v4}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    const-string v2, "Adjust Subtitles"

    .line 422
    .line 423
    invoke-virtual {v1, v2}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    const-string v2, "You can change Subtitle Offset/Sync, Size and Encoding"

    .line 427
    .line 428
    invoke-virtual {v1, v2}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    new-instance v2, LB4/q;

    .line 432
    .line 433
    const/16 v5, 0xf

    .line 434
    .line 435
    invoke-direct {v2, v3, v5}, LB4/q;-><init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;I)V

    .line 436
    .line 437
    .line 438
    const-string v5, "OFFSET"

    .line 439
    .line 440
    invoke-virtual {v1, v5, v2}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 441
    .line 442
    .line 443
    new-instance v2, LB4/q;

    .line 444
    .line 445
    const/16 v5, 0x10

    .line 446
    .line 447
    invoke-direct {v2, v3, v5}, LB4/q;-><init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;I)V

    .line 448
    .line 449
    .line 450
    const-string v5, "SIZE"

    .line 451
    .line 452
    invoke-virtual {v1, v5, v2}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 453
    .line 454
    .line 455
    new-instance v2, LB4/q;

    .line 456
    .line 457
    const/16 v5, 0x11

    .line 458
    .line 459
    invoke-direct {v2, v3, v5}, LB4/q;-><init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;I)V

    .line 460
    .line 461
    .line 462
    const-string v3, "ENCODING"

    .line 463
    .line 464
    invoke-virtual {v1, v3, v2}, LQ4/d;->setButton3(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 465
    .line 466
    .line 467
    :try_start_3
    invoke-virtual {v1, p1, v0}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 468
    .line 469
    .line 470
    goto :goto_5

    .line 471
    :catch_2
    move-exception p1

    .line 472
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 473
    .line 474
    .line 475
    goto :goto_5

    .line 476
    :cond_13
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 477
    .line 478
    .line 479
    move-result v0

    .line 480
    sget v1, Lflix/com/vision/R$id;->settings_button:I

    .line 481
    .line 482
    if-ne v0, v1, :cond_14

    .line 483
    .line 484
    iput-boolean v4, v3, Lflix/com/vision/activities/player/SimpleVideoPlayer;->b:Z

    .line 485
    .line 486
    new-instance p1, Landroid/content/Intent;

    .line 487
    .line 488
    const-class v0, Lflix/com/vision/activities/SettingsActivity;

    .line 489
    .line 490
    invoke-direct {p1, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 491
    .line 492
    .line 493
    const/high16 v0, 0x8080000

    .line 494
    .line 495
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 496
    .line 497
    .line 498
    invoke-virtual {v3, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 499
    .line 500
    .line 501
    goto :goto_5

    .line 502
    :cond_14
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 503
    .line 504
    .line 505
    move-result v0

    .line 506
    sget v1, Lflix/com/vision/R$id;->close_button:I

    .line 507
    .line 508
    if-ne v0, v1, :cond_15

    .line 509
    .line 510
    invoke-virtual {v3}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A()V

    .line 511
    .line 512
    .line 513
    goto :goto_5

    .line 514
    :cond_15
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 515
    .line 516
    .line 517
    move-result p1

    .line 518
    sget v0, Lflix/com/vision/R$id;->skip_next_button:I

    .line 519
    .line 520
    if-ne p1, v0, :cond_17

    .line 521
    .line 522
    iget-boolean p1, v3, Lflix/com/vision/activities/player/SimpleVideoPlayer;->R:Z

    .line 523
    .line 524
    if-nez p1, :cond_17

    .line 525
    .line 526
    iget p1, v3, Lflix/com/vision/activities/player/SimpleVideoPlayer;->h0:I

    .line 527
    .line 528
    add-int/lit8 v0, p1, 0x1

    .line 529
    .line 530
    iput v0, v3, Lflix/com/vision/activities/player/SimpleVideoPlayer;->h0:I

    .line 531
    .line 532
    iget-object v1, v3, Lflix/com/vision/activities/player/SimpleVideoPlayer;->P:Ljava/util/ArrayList;

    .line 533
    .line 534
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 535
    .line 536
    .line 537
    move-result v1

    .line 538
    if-le v0, v1, :cond_16

    .line 539
    .line 540
    iput v4, v3, Lflix/com/vision/activities/player/SimpleVideoPlayer;->h0:I

    .line 541
    .line 542
    :cond_16
    invoke-virtual {v3, p1}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->x(I)V

    .line 543
    .line 544
    .line 545
    :catch_3
    :cond_17
    :goto_5
    return v4

    .line 546
    :pswitch_0
    sget v5, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->B:I

    .line 547
    .line 548
    check-cast v3, Lflix/com/vision/activities/player/PlayerActivityLiveTV;

    .line 549
    .line 550
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 551
    .line 552
    .line 553
    move-result v5

    .line 554
    sget v6, Lflix/com/vision/R$id;->action_episodes:I

    .line 555
    .line 556
    if-ne v5, v6, :cond_18

    .line 557
    .line 558
    :try_start_4
    iget-object p1, v3, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 559
    .line 560
    iget v0, v3, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->s:I

    .line 561
    .line 562
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 563
    .line 564
    .line 565
    goto :goto_6

    .line 566
    :catch_4
    move-exception p1

    .line 567
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 568
    .line 569
    .line 570
    :goto_6
    invoke-virtual {v3}, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->e()V

    .line 571
    .line 572
    .line 573
    goto :goto_7

    .line 574
    :cond_18
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 575
    .line 576
    .line 577
    move-result p1

    .line 578
    sget v5, Lflix/com/vision/R$id;->action_close:I

    .line 579
    .line 580
    if-ne p1, v5, :cond_1a

    .line 581
    .line 582
    iget-object p1, v3, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->f:Landroid/widget/RelativeLayout;

    .line 583
    .line 584
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 585
    .line 586
    .line 587
    move-result p1

    .line 588
    if-nez p1, :cond_19

    .line 589
    .line 590
    iget-object p1, v3, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->f:Landroid/widget/RelativeLayout;

    .line 591
    .line 592
    iget-object v0, v3, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->p:Landroid/view/animation/Animation;

    .line 593
    .line 594
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 595
    .line 596
    .line 597
    iget-object p1, v3, Lflix/com/vision/activities/player/PlayerActivityLiveTV;->f:Landroid/widget/RelativeLayout;

    .line 598
    .line 599
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 600
    .line 601
    .line 602
    move v2, v4

    .line 603
    goto :goto_7

    .line 604
    :cond_19
    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 605
    .line 606
    .line 607
    move-result-object p1

    .line 608
    invoke-static {v3, v4}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 609
    .line 610
    .line 611
    move-result-object v1

    .line 612
    const-string v4, "Exit"

    .line 613
    .line 614
    invoke-virtual {v1, v4}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 615
    .line 616
    .line 617
    const-string v4, "Do you really want to stop playback and exit ?"

    .line 618
    .line 619
    invoke-virtual {v1, v4}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 620
    .line 621
    .line 622
    new-instance v4, LB4/h;

    .line 623
    .line 624
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 625
    .line 626
    .line 627
    const-string v5, "CANCEL"

    .line 628
    .line 629
    invoke-virtual {v1, v5, v4}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 630
    .line 631
    .line 632
    new-instance v4, LB4/i;

    .line 633
    .line 634
    invoke-direct {v4, v3}, LB4/i;-><init>(Lflix/com/vision/activities/player/PlayerActivityLiveTV;)V

    .line 635
    .line 636
    .line 637
    const-string v3, "YES"

    .line 638
    .line 639
    invoke-virtual {v1, v3, v4}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 640
    .line 641
    .line 642
    :try_start_5
    invoke-virtual {v1, p1, v0}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 643
    .line 644
    .line 645
    goto :goto_7

    .line 646
    :catch_5
    move-exception p1

    .line 647
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 648
    .line 649
    .line 650
    :cond_1a
    :goto_7
    return v2

    .line 651
    :pswitch_1
    sget v0, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->z:I

    .line 652
    .line 653
    check-cast v3, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;

    .line 654
    .line 655
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 656
    .line 657
    .line 658
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 659
    .line 660
    .line 661
    move-result v0

    .line 662
    sget v1, Lflix/com/vision/R$id;->action_related_videos:I

    .line 663
    .line 664
    if-ne v0, v1, :cond_1c

    .line 665
    .line 666
    :try_start_6
    iget-object v0, v3, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 667
    .line 668
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 669
    .line 670
    .line 671
    goto :goto_8

    .line 672
    :catch_6
    move-exception v0

    .line 673
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 674
    .line 675
    .line 676
    :goto_8
    iget-object v0, v3, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->f:Landroid/widget/RelativeLayout;

    .line 677
    .line 678
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 679
    .line 680
    .line 681
    move-result v0

    .line 682
    if-nez v0, :cond_1b

    .line 683
    .line 684
    invoke-virtual {v3}, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->g()V

    .line 685
    .line 686
    .line 687
    goto :goto_9

    .line 688
    :cond_1b
    invoke-virtual {v3}, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->i()V

    .line 689
    .line 690
    .line 691
    :cond_1c
    :goto_9
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 692
    .line 693
    .line 694
    return v4

    .line 695
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 1

    .line 1
    iget-object v0, p0, LA0/a;->e:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$FetchResponse;

    check-cast p1, Lcom/google/firebase/remoteconfig/internal/ConfigContainer;

    invoke-static {v0, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;->b(Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$FetchResponse;Lcom/google/firebase/remoteconfig/internal/ConfigContainer;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 1

    .line 2
    iget v0, p0, LA0/a;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LA0/a;->e:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/tasks/Task;

    invoke-static {v0, p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->e(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigInfo;

    move-result-object p1

    return-object p1

    :pswitch_0
    iget-object v0, p0, LA0/a;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, p1}, Lcom/google/firebase/crashlytics/internal/common/Utils;->b(Ljava/util/concurrent/CountDownLatch;Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_1
    iget-object v0, p0, LA0/a;->e:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;

    invoke-static {v0, p1}, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;->b(Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;Lcom/google/android/gms/tasks/Task;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public timeUsToTargetTime(J)J
    .locals 1

    .line 1
    iget-object v0, p0, LA0/a;->e:Ljava/lang/Object;

    check-cast v0, Lv0/P;

    invoke-virtual {v0, p1, p2}, Lv0/P;->getSampleNumber(J)J

    move-result-wide p1

    return-wide p1
.end method
