.class public final Landroidx/emoji2/text/i;
.super Landroidx/emoji2/text/o;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/emoji2/text/j;


# direct methods
.method public constructor <init>(Landroidx/emoji2/text/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/emoji2/text/i;->a:Landroidx/emoji2/text/j;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/emoji2/text/o;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/i;->a:Landroidx/emoji2/text/j;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/emoji2/text/j;->a:Landroidx/emoji2/text/p;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/emoji2/text/p;->a(Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onLoaded(Landroidx/emoji2/text/C;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/i;->a:Landroidx/emoji2/text/j;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object p1, v0, Landroidx/emoji2/text/j;->a:Landroidx/emoji2/text/p;

    .line 6
    .line 7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 8
    .line 9
    const-string v1, "metadataRepo cannot be null"

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroidx/emoji2/text/p;->a(Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iput-object p1, v0, Landroidx/emoji2/text/j;->c:Landroidx/emoji2/text/C;

    .line 19
    .line 20
    new-instance p1, LC/k;

    .line 21
    .line 22
    iget-object v1, v0, Landroidx/emoji2/text/j;->c:Landroidx/emoji2/text/C;

    .line 23
    .line 24
    iget-object v2, v0, Landroidx/emoji2/text/j;->a:Landroidx/emoji2/text/p;

    .line 25
    .line 26
    iget-object v2, v2, Landroidx/emoji2/text/p;->i:Landroidx/emoji2/text/h;

    .line 27
    .line 28
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v1, p1, LC/k;->a:Ljava/lang/Object;

    .line 32
    .line 33
    iput-object v2, p1, LC/k;->b:Ljava/lang/Object;

    .line 34
    .line 35
    iput-object p1, v0, Landroidx/emoji2/text/j;->b:LC/k;

    .line 36
    .line 37
    iget-object p1, v0, Landroidx/emoji2/text/j;->a:Landroidx/emoji2/text/p;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    new-instance v0, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    iget-object v1, p1, Landroidx/emoji2/text/p;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 54
    .line 55
    .line 56
    const/4 v1, 0x1

    .line 57
    :try_start_0
    iput v1, p1, Landroidx/emoji2/text/p;->c:I

    .line 58
    .line 59
    iget-object v1, p1, Landroidx/emoji2/text/p;->b:Lp/i;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 62
    .line 63
    .line 64
    iget-object v1, p1, Landroidx/emoji2/text/p;->b:Lp/i;

    .line 65
    .line 66
    invoke-interface {v1}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    .line 69
    iget-object v1, p1, Landroidx/emoji2/text/p;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 76
    .line 77
    .line 78
    iget-object v1, p1, Landroidx/emoji2/text/p;->d:Landroid/os/Handler;

    .line 79
    .line 80
    new-instance v2, Landroidx/emoji2/text/m;

    .line 81
    .line 82
    iget p1, p1, Landroidx/emoji2/text/p;->c:I

    .line 83
    .line 84
    const/4 v3, 0x0

    .line 85
    invoke-direct {v2, v0, p1, v3}, Landroidx/emoji2/text/m;-><init>(Ljava/util/List;ILjava/lang/Throwable;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :catchall_0
    move-exception v0

    .line 93
    iget-object p1, p1, Landroidx/emoji2/text/p;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 100
    .line 101
    .line 102
    throw v0
.end method
