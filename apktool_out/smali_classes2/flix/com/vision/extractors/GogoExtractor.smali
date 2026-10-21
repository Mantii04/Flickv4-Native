.class public Lflix/com/vision/extractors/GogoExtractor;
.super Lflix/com/vision/processors/english/m;
.source "SourceFile"


# instance fields
.field context:Landroid/content/Context;

.field domain:Ljava/lang/String;

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
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;LU4/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lflix/com/vision/processors/english/m;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lflix/com/vision/extractors/GogoExtractor;->domain:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p1, p0, Lflix/com/vision/extractors/GogoExtractor;->context:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Lflix/com/vision/processors/english/m;->callBack:LU4/f;

    .line 9
    .line 10
    new-instance p1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lflix/com/vision/extractors/GogoExtractor;->sources:Ljava/util/ArrayList;

    .line 16
    .line 17
    return-void
.end method

.method private doSearch(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation

    .line 1
    new-instance v0, Lflix/com/vision/extractors/GogoExtractor$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lflix/com/vision/extractors/GogoExtractor$1;-><init>(Lflix/com/vision/extractors/GogoExtractor;Ljava/lang/String;)V

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


# virtual methods
.method public process(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lflix/com/vision/extractors/GogoExtractor;->doSearch(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
