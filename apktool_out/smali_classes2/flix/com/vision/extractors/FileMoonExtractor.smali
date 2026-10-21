.class public Lflix/com/vision/extractors/FileMoonExtractor;
.super Lflix/com/vision/processors/english/m;
.source "SourceFile"


# instance fields
.field context:Landroid/content/Context;

.field sources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lflix/com/vision/models/VideoSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;LU4/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lflix/com/vision/processors/english/m;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lflix/com/vision/extractors/FileMoonExtractor;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lflix/com/vision/processors/english/m;->callBack:LU4/f;

    .line 7
    .line 8
    new-instance p1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lflix/com/vision/extractors/FileMoonExtractor;->sources:Ljava/util/ArrayList;

    .line 14
    .line 15
    const-string p1, "https://azm.to"

    .line 16
    .line 17
    iput-object p1, p0, Lflix/com/vision/processors/english/m;->domain:Ljava/lang/String;

    .line 18
    .line 19
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
    new-instance v0, Lflix/com/vision/extractors/FileMoonExtractor$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lflix/com/vision/extractors/FileMoonExtractor$1;-><init>(Lflix/com/vision/extractors/FileMoonExtractor;Lflix/com/vision/models/VideoSource;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    new-array v1, v1, [Ljava/lang/Void;

    .line 10
    .line 11
    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public getlink(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lkotlin/text/Regex;

    .line 2
    .line 3
    const-string v1, ".setup(.*?);"

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
