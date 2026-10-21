.class public final synthetic Lflix/com/vision/processors/english/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/processors/english/B;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/processors/english/B;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, Lflix/com/vision/processors/english/z;->b:I

    iput-object p1, p0, Lflix/com/vision/processors/english/z;->e:Lflix/com/vision/processors/english/B;

    iput-object p2, p0, Lflix/com/vision/processors/english/z;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget v0, p0, Lflix/com/vision/processors/english/z;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lflix/com/vision/processors/english/z;->f:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v1, p0, Lflix/com/vision/processors/english/z;->e:Lflix/com/vision/processors/english/B;

    .line 9
    .line 10
    const-string v2, "IFRAME"

    .line 11
    .line 12
    :try_start_0
    invoke-static {v0}, Lg6/e;->connect(Ljava/lang/String;)Lg6/d;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lh6/h;

    .line 17
    .line 18
    const/16 v3, 0x2710

    .line 19
    .line 20
    invoke-virtual {v0, v3}, Lh6/h;->timeout(I)Lg6/d;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lh6/h;

    .line 25
    .line 26
    invoke-virtual {v0}, Lh6/h;->get()Lj6/h;

    .line 27
    .line 28
    .line 29
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    const-string v4, "#app"

    .line 31
    .line 32
    invoke-virtual {v0, v4}, Lorg/jsoup/nodes/b;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/b;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v4, "StreamingCommunity"

    .line 37
    .line 38
    if-nez v0, :cond_0

    .line 39
    .line 40
    const-string v0, "Required #app element missing from season page"

    .line 41
    .line 42
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    goto/16 :goto_0

    .line 46
    .line 47
    :cond_0
    const-string v5, "data-page"

    .line 48
    .line 49
    invoke-virtual {v0, v5}, Lj6/p;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const/4 v5, 0x0

    .line 54
    invoke-static {v0, v5}, Lk6/e;->unescapeEntities(Ljava/lang/String;Z)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-boolean v6, v1, Lflix/com/vision/processors/english/B;->f:Z

    .line 59
    .line 60
    if-eqz v6, :cond_1

    .line 61
    .line 62
    goto/16 :goto_0

    .line 63
    .line 64
    :cond_1
    const/4 v6, 0x1

    .line 65
    iput-boolean v6, v1, Lflix/com/vision/processors/english/B;->f:Z

    .line 66
    .line 67
    :try_start_1
    new-instance v7, Lcom/google/gson/Gson;

    .line 68
    .line 69
    invoke-direct {v7}, Lcom/google/gson/Gson;-><init>()V

    .line 70
    .line 71
    .line 72
    const-class v8, Lcom/google/gson/JsonElement;

    .line 73
    .line 74
    invoke-virtual {v7, v0, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Lcom/google/gson/JsonElement;

    .line 79
    .line 80
    iget v7, v1, Lflix/com/vision/processors/english/B;->e:I

    .line 81
    .line 82
    invoke-static {v0, v7}, Lflix/com/vision/processors/english/B;->getSeasonIdByNumber(Lcom/google/gson/JsonElement;I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    iget v8, v1, Lflix/com/vision/processors/english/B;->d:I

    .line 87
    .line 88
    invoke-static {v0, v8}, Lflix/com/vision/processors/english/B;->getEpisodeIdByNumber(Lcom/google/gson/JsonElement;I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    new-instance v8, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    iget-object v9, v1, Lflix/com/vision/processors/english/m;->domain:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v9, "en/iframe/"

    .line 103
    .line 104
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v7, "?episode_id="

    .line 111
    .line 112
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-static {v0}, Lg6/e;->connect(Ljava/lang/String;)Lg6/d;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    check-cast v0, Lh6/h;

    .line 127
    .line 128
    invoke-virtual {v0, v3}, Lh6/h;->timeout(I)Lg6/d;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    check-cast v0, Lh6/h;

    .line 133
    .line 134
    invoke-virtual {v0}, Lh6/h;->get()Lj6/h;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {v0, v2}, Lorg/jsoup/nodes/b;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-virtual {v3}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/b;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    if-nez v3, :cond_2

    .line 147
    .line 148
    const-string v0, "Iframe not found on resolver page"

    .line 149
    .line 150
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    .line 155
    .line 156
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v2}, Lorg/jsoup/nodes/b;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/b;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    const-string v2, "src"

    .line 168
    .line 169
    invoke-virtual {v0, v2}, Lj6/p;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 174
    .line 175
    .line 176
    move-result v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 177
    if-eqz v2, :cond_3

    .line 178
    .line 179
    goto :goto_0

    .line 180
    :cond_3
    :try_start_2
    new-instance v2, Lflix/com/vision/extractors/VixcloudExtractor;

    .line 181
    .line 182
    invoke-direct {v2}, Lflix/com/vision/extractors/VixcloudExtractor;-><init>()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2, v0}, Lflix/com/vision/extractors/VixcloudExtractor;->extract(Ljava/lang/String;)Lflix/com/vision/models/Video;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    if-eqz v0, :cond_4

    .line 190
    .line 191
    new-instance v2, Lflix/com/vision/models/VideoSource;

    .line 192
    .line 193
    invoke-direct {v2}, Lflix/com/vision/models/VideoSource;-><init>()V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0}, Lflix/com/vision/models/Video;->getSource()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    iput-object v0, v2, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 201
    .line 202
    const-string v0, "1080p \u00b7 [FVSTREAM 2] \u00b7 [DIRECT] \u00b7 English"

    .line 203
    .line 204
    iput-object v0, v2, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 205
    .line 206
    iput-boolean v6, v2, Lflix/com/vision/models/VideoSource;->streamable:Z

    .line 207
    .line 208
    iput-boolean v5, v2, Lflix/com/vision/models/VideoSource;->is_embed:Z

    .line 209
    .line 210
    const/16 v0, 0x44c

    .line 211
    .line 212
    iput v0, v2, Lflix/com/vision/models/VideoSource;->quality:I

    .line 213
    .line 214
    const-string v0, "https://vixcloud.co/"

    .line 215
    .line 216
    iput-object v0, v2, Lflix/com/vision/models/VideoSource;->referer:Ljava/lang/String;

    .line 217
    .line 218
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    new-instance v0, Landroid/os/Handler;

    .line 222
    .line 223
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 228
    .line 229
    .line 230
    new-instance v3, Lflix/com/vision/activities/leanback/fragment/a;

    .line 231
    .line 232
    const/16 v4, 0xb

    .line 233
    .line 234
    invoke-direct {v3, v4, v1, v2}, Lflix/com/vision/activities/leanback/fragment/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 238
    .line 239
    .line 240
    :catch_0
    :cond_4
    :goto_0
    return-void

    .line 241
    :pswitch_0
    iget-object v0, p0, Lflix/com/vision/processors/english/z;->e:Lflix/com/vision/processors/english/B;

    .line 242
    .line 243
    new-instance v1, Landroid/webkit/WebView;

    .line 244
    .line 245
    iget-object v2, v0, Lflix/com/vision/processors/english/B;->c:Landroid/content/Context;

    .line 246
    .line 247
    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 248
    .line 249
    .line 250
    iput-object v1, v0, Lflix/com/vision/processors/english/B;->a:Landroid/webkit/WebView;

    .line 251
    .line 252
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    const/4 v2, 0x1

    .line 257
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 258
    .line 259
    .line 260
    iget-object v1, v0, Lflix/com/vision/processors/english/B;->a:Landroid/webkit/WebView;

    .line 261
    .line 262
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 267
    .line 268
    .line 269
    iget-object v1, v0, Lflix/com/vision/processors/english/B;->a:Landroid/webkit/WebView;

    .line 270
    .line 271
    new-instance v2, Lflix/com/vision/processors/english/A;

    .line 272
    .line 273
    invoke-direct {v2, v0}, Lflix/com/vision/processors/english/A;-><init>(Lflix/com/vision/processors/english/B;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 277
    .line 278
    .line 279
    iget-object v0, v0, Lflix/com/vision/processors/english/B;->a:Landroid/webkit/WebView;

    .line 280
    .line 281
    iget-object v1, p0, Lflix/com/vision/processors/english/z;->f:Ljava/lang/String;

    .line 282
    .line 283
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    return-void

    .line 287
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
