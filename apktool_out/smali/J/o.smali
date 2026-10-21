.class public abstract LJ/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lp/p;

.field public static final b:Ljava/util/concurrent/ThreadPoolExecutor;

.field public static final c:Ljava/lang/Object;

.field public static final d:Lp/q;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lp/p;

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lp/p;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, LJ/o;->a:Lp/p;

    .line 9
    .line 10
    new-instance v9, LJ/u;

    .line 11
    .line 12
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 16
    .line 17
    const/16 v0, 0x2710

    .line 18
    .line 19
    int-to-long v5, v0

    .line 20
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 21
    .line 22
    new-instance v8, Ljava/util/concurrent/LinkedBlockingDeque;

    .line 23
    .line 24
    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    .line 25
    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    const/4 v4, 0x1

    .line 29
    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 34
    .line 35
    .line 36
    sput-object v2, LJ/o;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 37
    .line 38
    new-instance v0, Ljava/lang/Object;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 41
    .line 42
    .line 43
    sput-object v0, LJ/o;->c:Ljava/lang/Object;

    .line 44
    .line 45
    new-instance v0, Lp/q;

    .line 46
    .line 47
    invoke-direct {v0}, Lp/q;-><init>()V

    .line 48
    .line 49
    .line 50
    sput-object v0, LJ/o;->d:Lp/q;

    .line 51
    .line 52
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;LJ/i;I)LJ/n;
    .locals 8

    .line 1
    sget-object v0, LJ/o;->a:Lp/p;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lp/p;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Landroid/graphics/Typeface;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    new-instance p0, LJ/n;

    .line 12
    .line 13
    invoke-direct {p0, v1}, LJ/n;-><init>(Landroid/graphics/Typeface;)V

    .line 14
    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    :try_start_0
    invoke-static {p1, v1, p2}, LJ/h;->a(Landroid/content/Context;Landroid/os/CancellationSignal;LJ/i;)LJ/p;

    .line 19
    .line 20
    .line 21
    move-result-object p2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    invoke-virtual {p2}, LJ/p;->getStatusCode()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x1

    .line 27
    const/4 v4, -0x3

    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    invoke-virtual {p2}, LJ/p;->getStatusCode()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eq v2, v3, :cond_1

    .line 35
    .line 36
    :goto_0
    move v3, v4

    .line 37
    goto :goto_2

    .line 38
    :cond_1
    const/4 v3, -0x2

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    invoke-virtual {p2}, LJ/p;->getFonts()[LJ/q;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-eqz v2, :cond_7

    .line 45
    .line 46
    array-length v5, v2

    .line 47
    if-nez v5, :cond_3

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_3
    array-length v3, v2

    .line 51
    const/4 v5, 0x0

    .line 52
    move v6, v5

    .line 53
    :goto_1
    if-ge v6, v3, :cond_6

    .line 54
    .line 55
    aget-object v7, v2, v6

    .line 56
    .line 57
    invoke-virtual {v7}, LJ/q;->getResultCode()I

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    if-eqz v7, :cond_5

    .line 62
    .line 63
    if-gez v7, :cond_4

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_4
    move v3, v7

    .line 67
    goto :goto_2

    .line 68
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_6
    move v3, v5

    .line 72
    :cond_7
    :goto_2
    if-eqz v3, :cond_8

    .line 73
    .line 74
    new-instance p0, LJ/n;

    .line 75
    .line 76
    invoke-direct {p0, v3}, LJ/n;-><init>(I)V

    .line 77
    .line 78
    .line 79
    return-object p0

    .line 80
    :cond_8
    invoke-virtual {p2}, LJ/p;->getFonts()[LJ/q;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-static {p1, v1, p2, p3}, LD/i;->createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[LJ/q;I)Landroid/graphics/Typeface;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    if-eqz p1, :cond_9

    .line 89
    .line 90
    invoke-virtual {v0, p0, p1}, Lp/p;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    new-instance p0, LJ/n;

    .line 94
    .line 95
    invoke-direct {p0, p1}, LJ/n;-><init>(Landroid/graphics/Typeface;)V

    .line 96
    .line 97
    .line 98
    return-object p0

    .line 99
    :cond_9
    new-instance p0, LJ/n;

    .line 100
    .line 101
    invoke-direct {p0, v4}, LJ/n;-><init>(I)V

    .line 102
    .line 103
    .line 104
    return-object p0

    .line 105
    :catch_0
    new-instance p0, LJ/n;

    .line 106
    .line 107
    const/4 p1, -0x1

    .line 108
    invoke-direct {p0, p1}, LJ/n;-><init>(I)V

    .line 109
    .line 110
    .line 111
    return-object p0
.end method
