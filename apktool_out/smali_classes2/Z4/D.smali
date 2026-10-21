.class public final LZ4/D;
.super Lflix/com/vision/processors/english/m;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public final c:Lflix/com/vision/models/Movie;

.field public final d:Landroid/content/Context;

.field public final e:Ljava/lang/String;

.field public final f:Z

.field public final g:Ljava/util/ArrayList;

.field public h:Z

.field public i:I

.field public j:Landroid/webkit/WebView;

.field public k:Z

.field public l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lflix/com/vision/models/Movie;LU4/f;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lflix/com/vision/processors/english/m;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "https://search.rlsbb.to"

    .line 5
    .line 6
    iput-object v0, p0, LZ4/D;->e:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, LZ4/D;->f:Z

    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, LZ4/D;->g:Ljava/util/ArrayList;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, LZ4/D;->h:Z

    .line 25
    .line 26
    iput v0, p0, LZ4/D;->i:I

    .line 27
    .line 28
    iput-boolean v0, p0, LZ4/D;->k:Z

    .line 29
    .line 30
    iput-boolean v0, p0, LZ4/D;->l:Z

    .line 31
    .line 32
    iput-object p1, p0, LZ4/D;->d:Landroid/content/Context;

    .line 33
    .line 34
    iput-object p2, p0, LZ4/D;->c:Lflix/com/vision/models/Movie;

    .line 35
    .line 36
    iput-object p3, p0, Lflix/com/vision/processors/english/m;->callBack:LU4/f;

    .line 37
    .line 38
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/String;Z)V
    .locals 8

    .line 1
    iget-object p2, p0, LZ4/D;->g:Ljava/util/ArrayList;

    .line 2
    .line 3
    const-string v0, "NiTROFLARE."

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    const-string v0, "RAPiDGATOR."

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    const-string v0, "FIKPER."

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    :try_start_0
    invoke-static {p1}, Lg6/e;->parse(Ljava/lang/String;)Lj6/h;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "A"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/b;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    :catch_0
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 48
    const/4 v2, 0x0

    .line 49
    const-string v3, "href"

    .line 50
    .line 51
    const/4 v4, 0x1

    .line 52
    if-eqz v1, :cond_4

    .line 53
    .line 54
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Lorg/jsoup/nodes/b;

    .line 59
    .line 60
    invoke-virtual {v1}, Lorg/jsoup/nodes/b;->text()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v3}, Lj6/p;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    if-nez v6, :cond_0

    .line 88
    .line 89
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    const/16 v7, 0xf

    .line 94
    .line 95
    if-ge v6, v7, :cond_1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    if-eqz v7, :cond_0

    .line 107
    .line 108
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    check-cast v7, Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 115
    .line 116
    .line 117
    move-result v7

    .line 118
    if-eqz v7, :cond_2

    .line 119
    .line 120
    iget v5, p0, LZ4/D;->i:I

    .line 121
    .line 122
    const/16 v6, 0x32

    .line 123
    .line 124
    if-ge v5, v6, :cond_0

    .line 125
    .line 126
    invoke-virtual {v1, v3}, Lj6/p;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    const-string v3, "protected."

    .line 131
    .line 132
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    if-eqz v3, :cond_3

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_3
    new-instance v3, Lflix/com/vision/models/VideoSource;

    .line 140
    .line 141
    invoke-direct {v3}, Lflix/com/vision/models/VideoSource;-><init>()V

    .line 142
    .line 143
    .line 144
    iput-boolean v2, v3, Lflix/com/vision/models/VideoSource;->streamable:Z

    .line 145
    .line 146
    iput-boolean v4, v3, Lflix/com/vision/models/VideoSource;->rd_checked:Z

    .line 147
    .line 148
    iput-boolean v4, v3, Lflix/com/vision/models/VideoSource;->isPremiumSupported:Z

    .line 149
    .line 150
    iput-boolean v4, v3, Lflix/com/vision/models/VideoSource;->external_link:Z

    .line 151
    .line 152
    iput-object v1, v3, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 153
    .line 154
    :try_start_2
    invoke-virtual {p0, v3}, Lflix/com/vision/processors/english/m;->addLink(Lflix/com/vision/models/VideoSource;)V

    .line 155
    .line 156
    .line 157
    iget v1, p0, LZ4/D;->i:I

    .line 158
    .line 159
    add-int/2addr v1, v4

    .line 160
    iput v1, p0, LZ4/D;->i:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 161
    .line 162
    goto :goto_0

    .line 163
    :catch_1
    move-exception p1

    .line 164
    goto :goto_1

    .line 165
    :cond_4
    :try_start_3
    iget p2, p0, LZ4/D;->i:I

    .line 166
    .line 167
    if-nez p2, :cond_6

    .line 168
    .line 169
    iget-boolean p2, p0, LZ4/D;->h:Z

    .line 170
    .line 171
    if-nez p2, :cond_6

    .line 172
    .line 173
    iput-boolean v4, p0, LZ4/D;->h:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 174
    .line 175
    const/4 p2, 0x0

    .line 176
    :try_start_4
    invoke-static {p1}, Lg6/e;->parse(Ljava/lang/String;)Lj6/h;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    const-string v0, "more-link"

    .line 181
    .line 182
    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/b;->getElementsByClass(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-virtual {p1}, Lorg/jsoup/select/Elements;->last()Lorg/jsoup/nodes/b;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    if-eqz p1, :cond_5

    .line 191
    .line 192
    invoke-virtual {p1, v3}, Lj6/p;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 196
    :catch_2
    :cond_5
    if-eqz p2, :cond_6

    .line 197
    .line 198
    :try_start_5
    new-instance p1, LZ4/z;

    .line 199
    .line 200
    invoke-direct {p1, p0, p2}, LZ4/z;-><init>(LZ4/D;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 204
    .line 205
    new-array v0, v2, [Ljava/lang/Void;

    .line 206
    .line 207
    invoke-virtual {p1, p2, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 208
    .line 209
    .line 210
    goto :goto_2

    .line 211
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 212
    .line 213
    .line 214
    :cond_6
    :goto_2
    return-void
.end method

.method public onMessageEvent(LT4/e;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, LZ4/D;->l:Z

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onMessageEvent(LZ4/A;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 3
    iget-boolean v0, p0, LZ4/D;->k:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p1, LZ4/A;->a:Ljava/lang/String;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, LZ4/D;->k:Z

    .line 6
    :try_start_0
    iget-object v0, p0, LZ4/D;->j:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :catch_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, LA3/d;

    const/16 v1, 0x13

    invoke-direct {v0, p0, v1}, LA3/d;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public process(III)V
    .locals 2

    .line 1
    iput p2, p0, LZ4/D;->a:I

    .line 2
    .line 3
    iput p3, p0, LZ4/D;->b:I

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    if-ne p1, p2, :cond_0

    .line 7
    .line 8
    sget-object p1, Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;->b:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object p1, Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;->e:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 12
    .line 13
    :goto_0
    iput-object p1, p0, Lflix/com/vision/processors/english/m;->torrentServiceType:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 14
    .line 15
    iget-object p1, p0, LZ4/D;->d:Landroid/content/Context;

    .line 16
    .line 17
    :try_start_0
    new-instance p3, Landroid/webkit/WebView;

    .line 18
    .line 19
    invoke-direct {p3, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    iput-object p3, p0, LZ4/D;->j:Landroid/webkit/WebView;

    .line 23
    .line 24
    new-instance v0, LZ4/C;

    .line 25
    .line 26
    invoke-direct {v0, p0}, LZ4/C;-><init>(LZ4/D;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p3, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 30
    .line 31
    .line 32
    iget-object p3, p0, LZ4/D;->j:Landroid/webkit/WebView;

    .line 33
    .line 34
    invoke-virtual {p3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    invoke-virtual {p3, p2}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 39
    .line 40
    .line 41
    iget-object p3, p0, LZ4/D;->j:Landroid/webkit/WebView;

    .line 42
    .line 43
    invoke-virtual {p3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    invoke-virtual {p3, p2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, LZ4/D;->c:Lflix/com/vision/models/Movie;

    .line 51
    .line 52
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getTitle()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const-string p2, "&"

    .line 57
    .line 58
    const-string p3, ""

    .line 59
    .line 60
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    new-instance p2, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string p3, "S"

    .line 67
    .line 68
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget p3, p0, LZ4/D;->a:I

    .line 72
    .line 73
    invoke-static {p3}, Lh5/n;->formatSeasonnumber(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string p3, "E"

    .line 81
    .line 82
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget p3, p0, LZ4/D;->b:I

    .line 86
    .line 87
    invoke-static {p3}, Lh5/n;->formatSeasonnumber(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p3

    .line 91
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    new-instance p3, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-static {p1}, Lh5/n;->removeSpecialCharsKeepSpace(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string p1, " "

    .line 111
    .line 112
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    new-instance p3, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, LZ4/D;->e:Ljava/lang/String;

    .line 128
    .line 129
    const-string v1, "/?s="

    .line 130
    .line 131
    invoke-static {p3, v0, v1}, LA/i;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p3

    .line 135
    :try_start_1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-static {p2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 145
    goto :goto_1

    .line 146
    :catch_0
    const-string p2, "+"

    .line 147
    .line 148
    invoke-virtual {p3, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    :goto_1
    invoke-static {p3, p1}, LA/i;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    new-instance p2, LZ4/z;

    .line 157
    .line 158
    invoke-direct {p2, p0, p1}, LZ4/z;-><init>(LZ4/D;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 162
    .line 163
    const/4 p3, 0x0

    .line 164
    new-array p3, p3, [Ljava/lang/Void;

    .line 165
    .line 166
    invoke-virtual {p2, p1, p3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 167
    .line 168
    .line 169
    goto :goto_2

    .line 170
    :catch_1
    const-string p3, "Error initializing mobule. Please restart your device"

    .line 171
    .line 172
    invoke-static {p1, p3, p2}, Lh5/i;->makeToastLong(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 173
    .line 174
    .line 175
    :goto_2
    return-void
.end method
