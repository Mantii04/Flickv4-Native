.class public final synthetic Lflix/com/vision/processors/english/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/processors/english/y;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/processors/english/y;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, Lflix/com/vision/processors/english/w;->b:I

    iput-object p1, p0, Lflix/com/vision/processors/english/w;->e:Lflix/com/vision/processors/english/y;

    iput-object p2, p0, Lflix/com/vision/processors/english/w;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lflix/com/vision/processors/english/w;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lflix/com/vision/processors/english/w;->f:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v1, p0, Lflix/com/vision/processors/english/w;->e:Lflix/com/vision/processors/english/y;

    .line 9
    .line 10
    :try_start_0
    invoke-virtual {v1, v0}, Lflix/com/vision/processors/english/y;->e(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :catch_0
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_3

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    const/4 v4, 0x1

    .line 32
    :try_start_1
    const-string v5, "/"

    .line 33
    .line 34
    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    add-int/2addr v5, v4

    .line 39
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const-string v5, "-"

    .line 44
    .line 45
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    aget-object v2, v2, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catch_1
    move-exception v2

    .line 53
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 54
    .line 55
    .line 56
    const/4 v2, 0x0

    .line 57
    :goto_1
    if-nez v2, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    iget-object v6, v1, Lflix/com/vision/processors/english/m;->domain:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v6, "en/iframe/"

    .line 71
    .line 72
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 82
    :try_start_3
    invoke-static {v2}, Lg6/e;->connect(Ljava/lang/String;)Lg6/d;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    check-cast v2, Lh6/h;

    .line 87
    .line 88
    const/16 v5, 0x2710

    .line 89
    .line 90
    invoke-virtual {v2, v5}, Lh6/h;->timeout(I)Lg6/d;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    check-cast v2, Lh6/h;

    .line 95
    .line 96
    invoke-virtual {v2}, Lh6/h;->get()Lj6/h;

    .line 97
    .line 98
    .line 99
    move-result-object v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 100
    :try_start_4
    const-string v5, "IFRAME"

    .line 101
    .line 102
    invoke-virtual {v2, v5}, Lorg/jsoup/nodes/b;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v2}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/b;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    if-nez v2, :cond_2

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_2
    const-string v5, "src"

    .line 114
    .line 115
    invoke-virtual {v2, v5}, Lj6/p;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 119
    :try_start_5
    new-instance v5, Lflix/com/vision/extractors/VixcloudExtractor;

    .line 120
    .line 121
    invoke-direct {v5}, Lflix/com/vision/extractors/VixcloudExtractor;-><init>()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v5, v2}, Lflix/com/vision/extractors/VixcloudExtractor;->extract(Ljava/lang/String;)Lflix/com/vision/models/Video;

    .line 125
    .line 126
    .line 127
    move-result-object v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 128
    if-eqz v2, :cond_0

    .line 129
    .line 130
    :try_start_6
    new-instance v5, Lflix/com/vision/models/VideoSource;

    .line 131
    .line 132
    invoke-direct {v5}, Lflix/com/vision/models/VideoSource;-><init>()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2}, Lflix/com/vision/models/Video;->getSource()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    iput-object v2, v5, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 140
    .line 141
    const-string v2, "1080p \u00b7 [FVSTREAM 2] \u00b7 [DIRECT] \u00b7 English"

    .line 142
    .line 143
    iput-object v2, v5, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 144
    .line 145
    iput-boolean v4, v5, Lflix/com/vision/models/VideoSource;->streamable:Z

    .line 146
    .line 147
    iput-boolean v3, v5, Lflix/com/vision/models/VideoSource;->is_embed:Z

    .line 148
    .line 149
    const/16 v2, 0x44c

    .line 150
    .line 151
    iput v2, v5, Lflix/com/vision/models/VideoSource;->quality:I

    .line 152
    .line 153
    const-string v2, "https://vixcloud.co/"

    .line 154
    .line 155
    iput-object v2, v5, Lflix/com/vision/models/VideoSource;->referer:Ljava/lang/String;

    .line 156
    .line 157
    new-instance v2, Landroid/os/Handler;

    .line 158
    .line 159
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 164
    .line 165
    .line 166
    new-instance v3, Lflix/com/vision/activities/leanback/fragment/a;

    .line 167
    .line 168
    const/16 v4, 0xa

    .line 169
    .line 170
    invoke-direct {v3, v4, v1, v5}, Lflix/com/vision/activities/leanback/fragment/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 174
    .line 175
    .line 176
    goto/16 :goto_0

    .line 177
    .line 178
    :catch_2
    move-exception v0

    .line 179
    goto :goto_2

    .line 180
    :cond_3
    new-instance v0, Landroid/os/Handler;

    .line 181
    .line 182
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 187
    .line 188
    .line 189
    new-instance v2, Lflix/com/vision/processors/english/d;

    .line 190
    .line 191
    const/4 v3, 0x6

    .line 192
    invoke-direct {v2, v1, v3}, Lflix/com/vision/processors/english/d;-><init>(Ljava/lang/Object;I)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 196
    .line 197
    .line 198
    goto :goto_3

    .line 199
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 200
    .line 201
    .line 202
    :goto_3
    return-void

    .line 203
    :pswitch_0
    iget-object v0, p0, Lflix/com/vision/processors/english/w;->e:Lflix/com/vision/processors/english/y;

    .line 204
    .line 205
    new-instance v1, Landroid/webkit/WebView;

    .line 206
    .line 207
    iget-object v2, v0, Lflix/com/vision/processors/english/y;->c:Landroid/content/Context;

    .line 208
    .line 209
    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 210
    .line 211
    .line 212
    iput-object v1, v0, Lflix/com/vision/processors/english/y;->b:Landroid/webkit/WebView;

    .line 213
    .line 214
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    const/4 v2, 0x1

    .line 219
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 220
    .line 221
    .line 222
    iget-object v1, v0, Lflix/com/vision/processors/english/y;->b:Landroid/webkit/WebView;

    .line 223
    .line 224
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 229
    .line 230
    .line 231
    iget-object v1, v0, Lflix/com/vision/processors/english/y;->b:Landroid/webkit/WebView;

    .line 232
    .line 233
    new-instance v2, Lflix/com/vision/processors/english/x;

    .line 234
    .line 235
    invoke-direct {v2, v0}, Lflix/com/vision/processors/english/x;-><init>(Lflix/com/vision/processors/english/y;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 239
    .line 240
    .line 241
    iget-object v0, v0, Lflix/com/vision/processors/english/y;->b:Landroid/webkit/WebView;

    .line 242
    .line 243
    iget-object v1, p0, Lflix/com/vision/processors/english/w;->f:Ljava/lang/String;

    .line 244
    .line 245
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    return-void

    .line 249
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
