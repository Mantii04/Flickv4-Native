.class public final Le5/d;
.super Lflix/com/vision/processors/english/m;
.source "SourceFile"


# instance fields
.field public final a:Lflix/com/vision/models/Movie;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lflix/com/vision/models/Movie;LU4/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lflix/com/vision/processors/english/m;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Le5/d;->a:Lflix/com/vision/models/Movie;

    .line 5
    .line 6
    iput-object p3, p0, Lflix/com/vision/processors/english/m;->callBack:LU4/f;

    .line 7
    .line 8
    new-instance p1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string p1, "https://www.hindimoviestv.com/"

    .line 14
    .line 15
    iput-object p1, p0, Lflix/com/vision/processors/english/m;->domain:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public process()V
    .locals 4

    .line 1
    iget-object v0, p0, Le5/d;->a:Lflix/com/vision/models/Movie;

    .line 2
    .line 3
    invoke-virtual {v0}, Lflix/com/vision/models/Movie;->getTitle()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, ","

    .line 8
    .line 9
    const-string v3, ""

    .line 10
    .line 11
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "("

    .line 16
    .line 17
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, ")"

    .line 22
    .line 23
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const-string v3, "birds of prey"

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    iget-object v2, v0, Lflix/com/vision/models/Movie;->year:Ljava/lang/String;

    .line 40
    .line 41
    const-string v3, "2020"

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    const-string v1, "Birds Of Prey"

    .line 50
    .line 51
    :cond_0
    const-string v2, " "

    .line 52
    .line 53
    const-string v3, "+"

    .line 54
    .line 55
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lflix/com/vision/models/Movie;->getTitle()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v0}, Lflix/com/vision/processors/english/m;->removeSpecialCharsOld(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    iget-object v2, p0, Lflix/com/vision/processors/english/m;->domain:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v2, "?s="

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    new-instance v1, Le5/c;

    .line 93
    .line 94
    invoke-direct {v1, p0, v0}, Le5/c;-><init>(Le5/d;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 98
    .line 99
    const/4 v2, 0x0

    .line 100
    new-array v2, v2, [Ljava/lang/Void;

    .line 101
    .line 102
    invoke-virtual {v1, v0, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 103
    .line 104
    .line 105
    return-void
.end method
