.class Lflix/com/vision/subtitles/SubDownloadExtended$SubDownloadWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflix/com/vision/subtitles/SubDownloadExtended;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubDownloadWebViewClient"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lflix/com/vision/subtitles/SubDownloadExtended$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lflix/com/vision/subtitles/SubDownloadExtended$SubDownloadWebViewClient;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/webkit/WebView;)V
    .locals 1

    .line 1
    const-string v0, "(function() { return document.documentElement.outerHTML; })();"

    invoke-static {p0, v0}, Lflix/com/vision/subtitles/SubDownloadExtended$SubDownloadWebViewClient;->lambda$extractDownloadLink$6(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lflix/com/vision/subtitles/SubDownloadExtended$SubDownloadWebViewClient;->lambda$submitCaptchaSolution$3(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lflix/com/vision/subtitles/SubDownloadExtended$SubDownloadWebViewClient;Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lflix/com/vision/subtitles/SubDownloadExtended$SubDownloadWebViewClient;->lambda$solveCaptcha$0(Ljava/lang/String;Landroid/webkit/WebView;)V

    return-void
.end method

.method public static synthetic d(Landroid/webkit/WebView;[Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
    .locals 1

    .line 1
    const-string v0, "(function() {   var img = document.querySelector(\'img[src*=\"captcha\"]\');  return img ? img.src : null;})();"

    invoke-static {p0, v0, p1, p2}, Lflix/com/vision/subtitles/SubDownloadExtended$SubDownloadWebViewClient;->lambda$extractCaptchaImageUrl$2(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic e(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lflix/com/vision/subtitles/SubDownloadExtended$SubDownloadWebViewClient;->lambda$submitCaptchaSolution$4(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method private extractCaptchaImageUrl(Landroid/webkit/WebView;)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    filled-new-array {v0}, [Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 10
    .line 11
    .line 12
    new-instance v2, Landroid/os/Handler;

    .line 13
    .line 14
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 19
    .line 20
    .line 21
    new-instance v3, Lflix/com/vision/subtitles/g;

    .line 22
    .line 23
    invoke-direct {v3, p1, v0, v1}, Lflix/com/vision/subtitles/g;-><init>(Landroid/webkit/WebView;[Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    :try_start_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 30
    .line 31
    const-wide/16 v2, 0xa

    .line 32
    .line 33
    invoke-virtual {v1, v2, v3, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p1

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v2, "Interrupted while waiting for image URL: "

    .line 41
    .line 42
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const-string v1, "SubDownloadExtended"

    .line 57
    .line 58
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    :goto_0
    const/4 p1, 0x0

    .line 62
    aget-object p1, v0, p1

    .line 63
    .line 64
    return-object p1
.end method

.method private extractDownloadLink(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const-string v0, "download/sub"

    .line 4
    .line 5
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string p1, "Extracted download link: "

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v0, "SubDownloadExtended"

    .line 18
    .line 19
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    invoke-static {p2}, Lflix/com/vision/subtitles/SubDownloadExtended;->access$002(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lflix/com/vision/subtitles/SubDownloadExtended;->access$000()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1}, Lflix/com/vision/subtitles/SubDownloadExtended;->access$100(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    new-instance p2, Ljava/lang/Thread;

    .line 34
    .line 35
    new-instance v0, Lflix/com/vision/subtitles/d;

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    invoke-direct {v0, p1, v1}, Lflix/com/vision/subtitles/d;-><init>(Landroid/webkit/WebView;I)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public static synthetic f(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lflix/com/vision/subtitles/SubDownloadExtended$SubDownloadWebViewClient;->lambda$extractDownloadLink$5(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic g([Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lflix/com/vision/subtitles/SubDownloadExtended$SubDownloadWebViewClient;->lambda$extractCaptchaImageUrl$1([Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V

    return-void
.end method

.method private getCaptchaSolution(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    const-string p1, ""

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic h(Landroid/webkit/WebView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lflix/com/vision/subtitles/SubDownloadExtended$SubDownloadWebViewClient;->lambda$extractDownloadLink$7(Landroid/webkit/WebView;)V

    return-void
.end method

.method private static synthetic lambda$extractCaptchaImageUrl$1([Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const-string v0, "null"

    .line 4
    .line 5
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string v0, "\""

    .line 12
    .line 13
    const-string v1, ""

    .line 14
    .line 15
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    const/4 v0, 0x0

    .line 20
    aput-object p2, p0, v0

    .line 21
    .line 22
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private static synthetic lambda$extractCaptchaImageUrl$2(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
    .locals 1

    .line 1
    new-instance v0, Lflix/com/vision/subtitles/e;

    .line 2
    .line 3
    invoke-direct {v0, p2, p3}, Lflix/com/vision/subtitles/e;-><init>([Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static synthetic lambda$extractDownloadLink$5(Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    const-string v0, "null"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_3

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/StringEscapeUtils;->unescapeJava(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string v0, "\""

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    invoke-static {v0, v0, p0}, LA/i;->d(IILjava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    :cond_1
    invoke-static {p0}, Lg6/e;->parse(Ljava/lang/String;)Lj6/h;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const-string v0, "a[href*=download/sub]"

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/b;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p0}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/b;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    if-nez p0, :cond_2

    .line 56
    .line 57
    const-string p0, "SubDownloadExtended"

    .line 58
    .line 59
    const-string v0, "Download Link not Found with selector  a[href*=download/sub]"

    .line 60
    .line 61
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_2
    const-string v0, "href"

    .line 66
    .line 67
    invoke-virtual {p0, v0}, Lj6/p;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-static {p0}, Lflix/com/vision/subtitles/SubDownloadExtended;->access$002(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    invoke-static {}, Lflix/com/vision/subtitles/SubDownloadExtended;->access$000()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-static {p0}, Lflix/com/vision/subtitles/SubDownloadExtended;->access$100(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :cond_3
    :goto_0
    return-void
.end method

.method private static synthetic lambda$extractDownloadLink$6(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lflix/com/vision/subtitles/f;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lflix/com/vision/subtitles/f;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private static synthetic lambda$extractDownloadLink$7(Landroid/webkit/WebView;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lflix/com/vision/subtitles/d;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v1, p0, v2}, Lflix/com/vision/subtitles/d;-><init>(Landroid/webkit/WebView;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catch_0
    move-exception p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private synthetic lambda$solveCaptcha$0(Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 2

    .line 1
    const-string v0, "SubDownloadExtended"

    .line 2
    .line 3
    :try_start_0
    invoke-direct {p0, p1}, Lflix/com/vision/subtitles/SubDownloadExtended$SubDownloadWebViewClient;->getCaptchaSolution(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lflix/com/vision/subtitles/SubDownloadExtended;->access$202(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lflix/com/vision/subtitles/SubDownloadExtended;->access$200()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-static {}, Lflix/com/vision/subtitles/SubDownloadExtended;->access$200()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    invoke-static {}, Lflix/com/vision/subtitles/SubDownloadExtended;->access$200()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {p0, p2, p1}, Lflix/com/vision/subtitles/SubDownloadExtended$SubDownloadWebViewClient;->submitCaptchaSolution(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catch_0
    move-exception p1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const-string p1, "Captcha solution is null or empty"

    .line 37
    .line 38
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v1, "Error solving captcha: "

    .line 45
    .line 46
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method private static synthetic lambda$submitCaptchaSolution$3(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "SubDownloadExtended"

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-string v1, "true"

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const-string p0, "Captcha solution submitted successfully."

    .line 14
    .line 15
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const-string p0, "Failed to submit captcha solution."

    .line 20
    .line 21
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private static synthetic lambda$submitCaptchaSolution$4(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lflix/com/vision/subtitles/f;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lflix/com/vision/subtitles/f;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private solveCaptcha(Landroid/webkit/WebView;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lflix/com/vision/subtitles/SubDownloadExtended$SubDownloadWebViewClient;->extractCaptchaImageUrl(Landroid/webkit/WebView;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    .line 15
    .line 16
    new-instance v2, Lflix/com/vision/subtitles/g;

    .line 17
    .line 18
    invoke-direct {v2, p0, v0, p1}, Lflix/com/vision/subtitles/g;-><init>(Lflix/com/vision/subtitles/SubDownloadExtended$SubDownloadWebViewClient;Ljava/lang/String;Landroid/webkit/WebView;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    :goto_0
    const-string p1, "SubDownloadExtended"

    .line 29
    .line 30
    const-string v0, "Could not extract Captcha URL!"

    .line 31
    .line 32
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private submitCaptchaSolution(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "(function() {   var captchaInput = document.getElementById(\'captcha_input\');  var submitButton = document.getElementById(\'captcha_submit\');  if (captchaInput && submitButton) {    captchaInput.value = \'"

    .line 2
    .line 3
    const-string v1, "\';    submitButton.click();    return true;  } else {    return false;  }})();"

    .line 4
    .line 5
    invoke-static {v0, p2, v1}, LA/i;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    new-instance v0, Landroid/os/Handler;

    .line 10
    .line 11
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Lflix/com/vision/subtitles/c;

    .line 19
    .line 20
    invoke-direct {v1, p1, p2}, Lflix/com/vision/subtitles/c;-><init>(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    const-string v0, "captcha"

    .line 7
    .line 8
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string p2, "SubDownloadExtended"

    .line 15
    .line 16
    const-string v0, "Captcha detected!"

    .line 17
    .line 18
    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1}, Lflix/com/vision/subtitles/SubDownloadExtended$SubDownloadWebViewClient;->solveCaptcha(Landroid/webkit/WebView;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-direct {p0, p1, p2}, Lflix/com/vision/subtitles/SubDownloadExtended$SubDownloadWebViewClient;->extractDownloadLink(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
