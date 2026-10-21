.class public Lflix/com/vision/extractors/DoodExtractor;
.super Lflix/com/vision/extractors/BaseExtractor;
.source "SourceFile"


# instance fields
.field input:Lflix/com/vision/models/VideoSource;

.field referer:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;LU4/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lflix/com/vision/extractors/BaseExtractor;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lflix/com/vision/extractors/BaseExtractor;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lflix/com/vision/extractors/BaseExtractor;->callBack:LU4/f;

    .line 7
    .line 8
    const-string p1, "https://doodstream.com"

    .line 9
    .line 10
    iput-object p1, p0, Lflix/com/vision/extractors/BaseExtractor;->baseUrl:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public fetchLinks(Lflix/com/vision/models/VideoSource;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 2
    .line 3
    iput-object v0, p0, Lflix/com/vision/extractors/DoodExtractor;->referer:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v0, Lflix/com/vision/extractors/DoodExtractor$1;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1}, Lflix/com/vision/extractors/DoodExtractor$1;-><init>(Lflix/com/vision/extractors/DoodExtractor;Lflix/com/vision/models/VideoSource;)V

    .line 8
    .line 9
    .line 10
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    new-array v1, v1, [Ljava/lang/Void;

    .line 14
    .line 15
    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public getPassMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lkotlin/text/Regex;

    .line 2
    .line 3
    const-string v1, "/pass_md5/[^\']*"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, p1, v1}, Lkotlin/text/Regex;->find(Ljava/lang/CharSequence;I)LP5/g;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, LP5/i;

    .line 14
    .line 15
    invoke-virtual {p1}, LP5/i;->getValue()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return-object p1

    .line 20
    :catch_0
    const/4 p1, 0x0

    .line 21
    return-object p1
.end method

.method public getQuality(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lkotlin/text/Regex;

    .line 2
    .line 3
    const-string v1, "\\d{3,4}p"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, p1, v1}, Lkotlin/text/Regex;->find(Ljava/lang/CharSequence;I)LP5/g;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, LP5/i;

    .line 14
    .line 15
    invoke-virtual {p1}, LP5/i;->getValue()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return-object p1

    .line 20
    :catch_0
    const/4 p1, 0x0

    .line 21
    return-object p1
.end method
