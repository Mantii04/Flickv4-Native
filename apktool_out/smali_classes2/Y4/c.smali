.class public final LY4/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final b:Ljava/util/ArrayList;

.field public final c:LU4/f;

.field public d:LU4/g;

.field public e:Lflix/com/vision/models/VideoSource;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;LU4/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, LY4/c;->c:LU4/f;

    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, LY4/c;->b:Ljava/util/ArrayList;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public addLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, LY4/c;->d:LU4/g;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, LY4/c;->addLinkHindiSplit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance v0, Lflix/com/vision/models/VideoSource;

    .line 10
    .line 11
    invoke-direct {v0}, Lflix/com/vision/models/VideoSource;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-boolean v1, p0, LY4/c;->a:Z

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    const-string v1, " - [FVSTREAM] - [DIRECT] - English"

    .line 19
    .line 20
    :goto_0
    invoke-static {p2, v1}, LA/i;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    const-string v1, " - [GOGOSTREAM] - [DIRECT]"

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :goto_1
    iput-object v1, v0, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    iput-boolean v1, v0, Lflix/com/vision/models/VideoSource;->streamable:Z

    .line 32
    .line 33
    :try_start_0
    const-string v2, "p"

    .line 34
    .line 35
    const-string v3, ""

    .line 36
    .line 37
    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    iput v2, v0, Lflix/com/vision/models/VideoSource;->quality:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    :catch_0
    iput-boolean v1, v0, Lflix/com/vision/models/VideoSource;->isSplitted:Z

    .line 52
    .line 53
    iput-object p1, v0, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 54
    .line 55
    iput-object p3, v0, Lflix/com/vision/models/VideoSource;->referer:Ljava/lang/String;

    .line 56
    .line 57
    if-eqz p2, :cond_2

    .line 58
    .line 59
    const-string p1, "1080"

    .line 60
    .line 61
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    iput-object v0, p0, LY4/c;->e:Lflix/com/vision/models/VideoSource;

    .line 68
    .line 69
    const/16 p1, 0x438

    .line 70
    .line 71
    iput p1, v0, Lflix/com/vision/models/VideoSource;->quality:I

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_2
    iget-object p1, p0, LY4/c;->b:Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    :goto_2
    return-void
.end method

.method public addLinkHindiSplit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lflix/com/vision/models/VideoSource;

    .line 2
    .line 3
    invoke-direct {v0}, Lflix/com/vision/models/VideoSource;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, v0, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, v0, Lflix/com/vision/models/VideoSource;->streamable:Z

    .line 10
    .line 11
    iput-boolean v1, v0, Lflix/com/vision/models/VideoSource;->isHindi:Z

    .line 12
    .line 13
    iput-object p3, v0, Lflix/com/vision/models/VideoSource;->referer:Ljava/lang/String;

    .line 14
    .line 15
    :try_start_0
    const-string p3, "p"

    .line 16
    .line 17
    const-string v2, ""

    .line 18
    .line 19
    invoke-virtual {p2, p3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result p3

    .line 31
    iput p3, v0, Lflix/com/vision/models/VideoSource;->quality:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    :catch_0
    iput-boolean v1, v0, Lflix/com/vision/models/VideoSource;->isHindiDirect:Z

    .line 34
    .line 35
    iput-boolean v1, v0, Lflix/com/vision/models/VideoSource;->isSplitted:Z

    .line 36
    .line 37
    iput-object p1, v0, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 38
    .line 39
    if-eqz p2, :cond_0

    .line 40
    .line 41
    const-string p1, "1080"

    .line 42
    .line 43
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    iput-object v0, p0, LY4/c;->e:Lflix/com/vision/models/VideoSource;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    iget-object p1, p0, LY4/c;->b:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    :goto_0
    return-void
.end method

.method public process(Lflix/com/vision/models/VideoSource;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p1, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v0, LY4/b;

    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, LY4/b;-><init>(LY4/c;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    new-array v1, v1, [Ljava/lang/Void;

    .line 12
    .line 13
    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, LY4/c;->f:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method

.method public setHindiM3uSpliCallBack(LU4/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, LY4/c;->d:LU4/g;

    .line 2
    .line 3
    return-void
.end method
