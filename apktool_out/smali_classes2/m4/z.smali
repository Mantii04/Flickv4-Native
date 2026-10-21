.class public final Lm4/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Lm4/q;

.field public c:Lm4/G;

.field public d:Lm4/v;

.field public e:Lm4/C;

.field public f:Landroid/graphics/Bitmap$Config;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lm4/z;->a:Landroid/content/Context;

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string v0, "Context must not be null."

    .line 16
    .line 17
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1
.end method


# virtual methods
.method public build()Lm4/D;
    .locals 11

    .line 1
    iget-object v0, p0, Lm4/z;->b:Lm4/q;

    .line 2
    .line 3
    iget-object v2, p0, Lm4/z;->a:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lm4/x;

    .line 8
    .line 9
    invoke-direct {v0, v2}, Lm4/x;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lm4/z;->b:Lm4/q;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lm4/z;->d:Lm4/v;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    new-instance v0, Lm4/v;

    .line 19
    .line 20
    invoke-direct {v0, v2}, Lm4/v;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lm4/z;->d:Lm4/v;

    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lm4/z;->c:Lm4/G;

    .line 26
    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    new-instance v3, Lm4/G;

    .line 30
    .line 31
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 32
    .line 33
    new-instance v9, Ljava/util/concurrent/PriorityBlockingQueue;

    .line 34
    .line 35
    invoke-direct {v9}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    .line 36
    .line 37
    .line 38
    new-instance v10, Lm4/V;

    .line 39
    .line 40
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 41
    .line 42
    .line 43
    const-wide/16 v6, 0x0

    .line 44
    .line 45
    const/4 v4, 0x3

    .line 46
    const/4 v5, 0x3

    .line 47
    invoke-direct/range {v3 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 48
    .line 49
    .line 50
    iput-object v3, p0, Lm4/z;->c:Lm4/G;

    .line 51
    .line 52
    :cond_2
    iget-object v0, p0, Lm4/z;->e:Lm4/C;

    .line 53
    .line 54
    if-nez v0, :cond_3

    .line 55
    .line 56
    sget-object v0, Lm4/C;->a:Lm4/C;

    .line 57
    .line 58
    iput-object v0, p0, Lm4/z;->e:Lm4/C;

    .line 59
    .line 60
    :cond_3
    new-instance v6, Lm4/P;

    .line 61
    .line 62
    iget-object v0, p0, Lm4/z;->d:Lm4/v;

    .line 63
    .line 64
    invoke-direct {v6, v0}, Lm4/P;-><init>(Lm4/v;)V

    .line 65
    .line 66
    .line 67
    new-instance v1, Lm4/p;

    .line 68
    .line 69
    iget-object v3, p0, Lm4/z;->c:Lm4/G;

    .line 70
    .line 71
    sget-object v4, Lm4/D;->k:Lm4/y;

    .line 72
    .line 73
    iget-object v5, p0, Lm4/z;->b:Lm4/q;

    .line 74
    .line 75
    move-object v7, v6

    .line 76
    iget-object v6, p0, Lm4/z;->d:Lm4/v;

    .line 77
    .line 78
    invoke-direct/range {v1 .. v7}, Lm4/p;-><init>(Landroid/content/Context;Lm4/G;Lm4/y;Lm4/q;Lm4/v;Lm4/P;)V

    .line 79
    .line 80
    .line 81
    new-instance v0, Lm4/D;

    .line 82
    .line 83
    iget-object v4, p0, Lm4/z;->d:Lm4/v;

    .line 84
    .line 85
    iget-object v5, p0, Lm4/z;->e:Lm4/C;

    .line 86
    .line 87
    move-object v6, v7

    .line 88
    iget-object v7, p0, Lm4/z;->f:Landroid/graphics/Bitmap$Config;

    .line 89
    .line 90
    move-object v3, v1

    .line 91
    move-object v1, v0

    .line 92
    invoke-direct/range {v1 .. v7}, Lm4/D;-><init>(Landroid/content/Context;Lm4/p;Lm4/v;Lm4/C;Lm4/P;Landroid/graphics/Bitmap$Config;)V

    .line 93
    .line 94
    .line 95
    return-object v1
.end method

.method public defaultBitmapConfig(Landroid/graphics/Bitmap$Config;)Lm4/z;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lm4/z;->f:Landroid/graphics/Bitmap$Config;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    const-string v0, "Bitmap config must not be null."

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public downloader(Lm4/q;)Lm4/z;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lm4/z;->b:Lm4/q;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iput-object p1, p0, Lm4/z;->b:Lm4/q;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string v0, "Downloader already set."

    .line 13
    .line 14
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1

    .line 18
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    const-string v0, "Downloader must not be null."

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1
.end method
