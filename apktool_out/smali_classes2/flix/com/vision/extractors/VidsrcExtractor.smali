.class public Lflix/com/vision/extractors/VidsrcExtractor;
.super Lflix/com/vision/extractors/BaseExtractor;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final baseHelperUrl:Ljava/lang/String;

.field private callBack:LU4/f;

.field private context:Landroid/content/Context;

.field private final vidsrcUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;LU4/f;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lflix/com/vision/extractors/BaseExtractor;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "VidsrcExtractor"

    .line 5
    .line 6
    iput-object v0, p0, Lflix/com/vision/extractors/VidsrcExtractor;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "https://9anime.eltik.net"

    .line 9
    .line 10
    iput-object v0, p0, Lflix/com/vision/extractors/VidsrcExtractor;->baseHelperUrl:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "https://vsembed.ru"

    .line 13
    .line 14
    iput-object v0, p0, Lflix/com/vision/extractors/VidsrcExtractor;->vidsrcUrl:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p1, p0, Lflix/com/vision/extractors/VidsrcExtractor;->context:Landroid/content/Context;

    .line 17
    .line 18
    iput-object p2, p0, Lflix/com/vision/extractors/VidsrcExtractor;->callBack:LU4/f;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic access$000(Lflix/com/vision/extractors/VidsrcExtractor;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lflix/com/vision/extractors/VidsrcExtractor;->matchRegex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$100(Lflix/com/vision/extractors/VidsrcExtractor;)LU4/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lflix/com/vision/extractors/VidsrcExtractor;->callBack:LU4/f;

    .line 2
    .line 3
    return-object p0
.end method

.method private matchRegex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    const/4 p2, 0x1

    .line 16
    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    return-object p1

    .line 21
    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    return-object p1
.end method


# virtual methods
.method public fetchLinks(Ljava/lang/String;Z)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation

    .line 1
    new-instance p1, Lflix/com/vision/extractors/VidsrcExtractor$1;

    .line 2
    .line 3
    invoke-direct {p1, p0, p2}, Lflix/com/vision/extractors/VidsrcExtractor$1;-><init>(Lflix/com/vision/extractors/VidsrcExtractor;Z)V

    .line 4
    .line 5
    .line 6
    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    new-array v0, v0, [Ljava/lang/Void;

    .line 10
    .line 11
    invoke-virtual {p1, p2, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 12
    .line 13
    .line 14
    return-void
.end method
