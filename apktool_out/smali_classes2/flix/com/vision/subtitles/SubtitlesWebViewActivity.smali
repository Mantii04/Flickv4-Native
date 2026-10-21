.class public Lflix/com/vision/subtitles/SubtitlesWebViewActivity;
.super Lflix/com/vision/activities/base/a;
.source "SourceFile"

# interfaces
.implements LU4/m;


# static fields
.field static final BACK:I = 0xa


# instance fields
.field cursorLayout:Lflix/com/vision/helpers/CursorLayout;

.field decorView:Landroid/view/View;

.field info_layout:Landroid/widget/LinearLayout;

.field loader:Lcom/github/ybq/android/spinkit/SpinKitView;

.field mDpad:LT4/j;

.field poster_yt:Landroid/widget/ImageView;

.field title_text_view:Landroid/widget/TextView;

.field web:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lflix/com/vision/activities/base/a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lflix/com/vision/subtitles/SubtitlesWebViewActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lflix/com/vision/subtitles/SubtitlesWebViewActivity;->lambda$setDownloadListener$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic f(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lflix/com/vision/subtitles/SubtitlesWebViewActivity;->lambda$showDialogHelp$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lflix/com/vision/subtitles/SubtitlesWebViewActivity;->lambda$showDialog$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lflix/com/vision/subtitles/SubtitlesWebViewActivity;->lambda$showDialogSubtitle$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lflix/com/vision/subtitles/SubtitlesWebViewActivity;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lflix/com/vision/subtitles/SubtitlesWebViewActivity;->lambda$showDialogSubtitle$4(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic j(Lflix/com/vision/subtitles/SubtitlesWebViewActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lflix/com/vision/subtitles/SubtitlesWebViewActivity;->lambda$showDialog$2(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$setDownloadListener$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-lez p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lflix/com/vision/subtitles/SubtitlesWebViewActivity;->showDialogSubtitle(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private static synthetic lambda$showDialog$1(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$showDialog$2(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$showDialogHelp$5(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 6
    .line 7
    const-string v0, "open_sub_help_shown"

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-static {p0, v0, v1}, LA/i;->x(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private static synthetic lambda$showDialogSubtitle$3(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$showDialogSubtitle$4(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1
    :try_start_0
    const-string p2, ".srt"

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-nez p2, :cond_1

    .line 8
    .line 9
    const-string p2, ".vtt"

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {p0, p1}, Lflix/com/vision/subtitles/SubDownload;->downloadSubtitle(Landroid/content/Context;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    invoke-static {p0, p1}, Lflix/com/vision/subtitles/SubDownload;->downloadSubtitleDirect(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    :catch_0
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 26
    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public infoToggle(Z)V
    .locals 0

    return-void
.end method

.method public loadImage(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lm4/D;->get()Lm4/D;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget v0, Lflix/com/vision/R$drawable;->open_sub_logo:I

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lm4/D;->load(I)Lm4/J;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lm4/J;->fit()Lm4/J;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lm4/J;->centerCrop()Lm4/J;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object v0, p0, Lflix/com/vision/subtitles/SubtitlesWebViewActivity;->poster_yt:Landroid/widget/ImageView;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lm4/J;->into(Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception p1

    .line 26
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 27
    .line 28
    .line 29
    :catch_1
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lflix/com/vision/activities/base/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lflix/com/vision/R$layout;->subtitle_webview_activity:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Le/v;->setContentView(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lflix/com/vision/subtitles/SubtitlesWebViewActivity;->decorView:Landroid/view/View;

    .line 18
    .line 19
    const/16 v0, 0x404

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 22
    .line 23
    .line 24
    new-instance p1, LT4/j;

    .line 25
    .line 26
    invoke-direct {p1}, LT4/j;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lflix/com/vision/subtitles/SubtitlesWebViewActivity;->mDpad:LT4/j;

    .line 30
    .line 31
    sget p1, Lflix/com/vision/R$id;->info_layout:I

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Landroid/widget/LinearLayout;

    .line 38
    .line 39
    iput-object p1, p0, Lflix/com/vision/subtitles/SubtitlesWebViewActivity;->info_layout:Landroid/widget/LinearLayout;

    .line 40
    .line 41
    sget p1, Lflix/com/vision/R$id;->poster_yt:I

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Landroid/widget/ImageView;

    .line 48
    .line 49
    iput-object p1, p0, Lflix/com/vision/subtitles/SubtitlesWebViewActivity;->poster_yt:Landroid/widget/ImageView;

    .line 50
    .line 51
    sget p1, Lflix/com/vision/R$id;->loader:I

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Lcom/github/ybq/android/spinkit/SpinKitView;

    .line 58
    .line 59
    iput-object p1, p0, Lflix/com/vision/subtitles/SubtitlesWebViewActivity;->loader:Lcom/github/ybq/android/spinkit/SpinKitView;

    .line 60
    .line 61
    sget p1, Lflix/com/vision/R$id;->title_text_view:I

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Landroid/widget/TextView;

    .line 68
    .line 69
    iput-object p1, p0, Lflix/com/vision/subtitles/SubtitlesWebViewActivity;->title_text_view:Landroid/widget/TextView;

    .line 70
    .line 71
    sget p1, Lflix/com/vision/R$id;->webview:I

    .line 72
    .line 73
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Landroid/webkit/WebView;

    .line 78
    .line 79
    iput-object p1, p0, Lflix/com/vision/subtitles/SubtitlesWebViewActivity;->web:Landroid/webkit/WebView;

    .line 80
    .line 81
    sget p1, Lflix/com/vision/R$id;->cursorLayout:I

    .line 82
    .line 83
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Lflix/com/vision/helpers/CursorLayout;

    .line 88
    .line 89
    iput-object p1, p0, Lflix/com/vision/subtitles/SubtitlesWebViewActivity;->cursorLayout:Lflix/com/vision/helpers/CursorLayout;

    .line 90
    .line 91
    if-eqz p1, :cond_0

    .line 92
    .line 93
    invoke-virtual {p1, p0}, Lflix/com/vision/helpers/CursorLayout;->setActivity(LU4/m;)V

    .line 94
    .line 95
    .line 96
    :cond_0
    iget-object p1, p0, Lflix/com/vision/subtitles/SubtitlesWebViewActivity;->web:Landroid/webkit/WebView;

    .line 97
    .line 98
    new-instance v0, Landroid/webkit/WebViewClient;

    .line 99
    .line 100
    invoke-direct {v0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Lflix/com/vision/subtitles/SubtitlesWebViewActivity;->setDownloadListener()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    const-string v0, "url"

    .line 114
    .line 115
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    const-string v1, "title"

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    const/4 v1, 0x1

    .line 130
    if-eqz v0, :cond_2

    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    xor-int/2addr v2, v1

    .line 137
    iget-object v3, p0, Lflix/com/vision/subtitles/SubtitlesWebViewActivity;->title_text_view:Landroid/widget/TextView;

    .line 138
    .line 139
    if-eqz v3, :cond_1

    .line 140
    .line 141
    move v4, v1

    .line 142
    goto :goto_0

    .line 143
    :cond_1
    const/4 v4, 0x0

    .line 144
    :goto_0
    and-int/2addr v2, v4

    .line 145
    if-eqz v2, :cond_2

    .line 146
    .line 147
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    .line 149
    .line 150
    :cond_2
    const/4 v0, 0x0

    .line 151
    invoke-virtual {p0, v0}, Lflix/com/vision/subtitles/SubtitlesWebViewActivity;->loadImage(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    iget-object v0, p0, Lflix/com/vision/subtitles/SubtitlesWebViewActivity;->web:Landroid/webkit/WebView;

    .line 155
    .line 156
    if-eqz v0, :cond_3

    .line 157
    .line 158
    if-eqz p1, :cond_3

    .line 159
    .line 160
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    :cond_3
    iget-object p1, p0, Lflix/com/vision/subtitles/SubtitlesWebViewActivity;->web:Landroid/webkit/WebView;

    .line 164
    .line 165
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 170
    .line 171
    .line 172
    iget-object p1, p0, Lflix/com/vision/subtitles/SubtitlesWebViewActivity;->web:Landroid/webkit/WebView;

    .line 173
    .line 174
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 179
    .line 180
    .line 181
    iget-object p1, p0, Lflix/com/vision/subtitles/SubtitlesWebViewActivity;->web:Landroid/webkit/WebView;

    .line 182
    .line 183
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 188
    .line 189
    .line 190
    iget-object p1, p0, Lflix/com/vision/subtitles/SubtitlesWebViewActivity;->web:Landroid/webkit/WebView;

    .line 191
    .line 192
    new-instance v0, Lflix/com/vision/subtitles/SubtitlesWebViewActivity$1;

    .line 193
    .line 194
    invoke-direct {v0, p0}, Lflix/com/vision/subtitles/SubtitlesWebViewActivity$1;-><init>(Lflix/com/vision/subtitles/SubtitlesWebViewActivity;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 198
    .line 199
    .line 200
    iget-object p1, p0, Lflix/com/vision/subtitles/SubtitlesWebViewActivity;->web:Landroid/webkit/WebView;

    .line 201
    .line 202
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 207
    .line 208
    .line 209
    iget-object p1, p0, Lflix/com/vision/subtitles/SubtitlesWebViewActivity;->web:Landroid/webkit/WebView;

    .line 210
    .line 211
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 216
    .line 217
    .line 218
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lflix/com/vision/subtitles/SubtitlesWebViewActivity;->mDpad:LT4/j;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, LT4/j;->getDirectionPressed(Landroid/view/InputEvent;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0xa

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    invoke-super {p0, p1, p2}, Le/v;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    invoke-virtual {p0}, Lflix/com/vision/subtitles/SubtitlesWebViewActivity;->showDialog()V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    return p1
.end method

.method public onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Le/v;->onStop()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lflix/com/vision/subtitles/SubtitlesWebViewActivity;->decorView:Landroid/view/View;

    .line 7
    .line 8
    const/16 v0, 0x1706

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public setDownloadListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lflix/com/vision/subtitles/SubtitlesWebViewActivity;->web:Landroid/webkit/WebView;

    .line 2
    .line 3
    new-instance v1, Lflix/com/vision/subtitles/h;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lflix/com/vision/subtitles/h;-><init>(Lflix/com/vision/subtitles/SubtitlesWebViewActivity;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public showDialog()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-static {p0, v1}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "Exit"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v2, "Do you really want to and exit without downloading Subtitles?"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v2, Lflix/com/vision/subtitles/i;

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    invoke-direct {v2, v3}, Lflix/com/vision/subtitles/i;-><init>(I)V

    .line 24
    .line 25
    .line 26
    const-string v3, "CANCEL"

    .line 27
    .line 28
    invoke-virtual {v1, v3, v2}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 29
    .line 30
    .line 31
    new-instance v2, Lflix/com/vision/subtitles/j;

    .line 32
    .line 33
    invoke-direct {v2, p0}, Lflix/com/vision/subtitles/j;-><init>(Lflix/com/vision/subtitles/SubtitlesWebViewActivity;)V

    .line 34
    .line 35
    .line 36
    const-string v3, "YES"

    .line 37
    .line 38
    invoke-virtual {v1, v3, v2}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 39
    .line 40
    .line 41
    :try_start_0
    const-string v2, ""

    .line 42
    .line 43
    invoke-virtual {v1, v0, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public showDialogHelp()V
    .locals 4

    .line 1
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 6
    .line 7
    const-string v1, "open_sub_help_shown"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {p0, v2}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "How to Download Subtitles?"

    .line 26
    .line 27
    invoke-virtual {v1, v2}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v2, "Simply scroll down and select a .SRT or .VTT Subtitle file and we\'ll download it for you"

    .line 31
    .line 32
    invoke-virtual {v1, v2}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance v2, Lflix/com/vision/subtitles/i;

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-direct {v2, v3}, Lflix/com/vision/subtitles/i;-><init>(I)V

    .line 39
    .line 40
    .line 41
    const-string v3, "GOT IT"

    .line 42
    .line 43
    invoke-virtual {v1, v3, v2}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 44
    .line 45
    .line 46
    :try_start_0
    const-string v2, ""

    .line 47
    .line 48
    invoke-virtual {v1, v0, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void
.end method

.method public showDialogSubtitle(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x64

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-le v0, v1, :cond_0

    .line 9
    .line 10
    const-string v0, "/"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    add-int/2addr v0, v2

    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v0, p1

    .line 27
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {p0, v2}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const-string v3, "Download this Subtitle?"

    .line 36
    .line 37
    invoke-virtual {v2, v3}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v0}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    new-instance v0, Lflix/com/vision/subtitles/i;

    .line 44
    .line 45
    const/4 v3, 0x2

    .line 46
    invoke-direct {v0, v3}, Lflix/com/vision/subtitles/i;-><init>(I)V

    .line 47
    .line 48
    .line 49
    const-string v3, "CANCEL"

    .line 50
    .line 51
    invoke-virtual {v2, v3, v0}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 52
    .line 53
    .line 54
    new-instance v0, Lflix/com/vision/subtitles/k;

    .line 55
    .line 56
    invoke-direct {v0, p0, p1}, Lflix/com/vision/subtitles/k;-><init>(Lflix/com/vision/subtitles/SubtitlesWebViewActivity;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string p1, "YES"

    .line 60
    .line 61
    invoke-virtual {v2, p1, v0}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 62
    .line 63
    .line 64
    :try_start_0
    const-string p1, ""

    .line 65
    .line 66
    invoke-virtual {v2, v1, p1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :catch_0
    move-exception p1

    .line 71
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 72
    .line 73
    .line 74
    return-void
.end method
