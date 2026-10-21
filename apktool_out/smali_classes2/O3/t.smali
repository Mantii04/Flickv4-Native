.class public final LO3/t;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final synthetic a:LO3/y;


# direct methods
.method public constructor <init>(LO3/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, LO3/t;->a:LO3/y;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, LO3/t;->a:LO3/y;

    .line 7
    .line 8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p1, Lcom/google/android/youtube/player/YouTubeInitializationResult;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, LO3/y;->a(Lcom/google/android/youtube/player/YouTubeInitializationResult;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const/4 v1, 0x4

    .line 17
    if-ne v0, v1, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, LO3/t;->a:LO3/y;

    .line 20
    .line 21
    iget-object v1, v0, LO3/y;->d:Ljava/util/ArrayList;

    .line 22
    .line 23
    monitor-enter v1

    .line 24
    :try_start_0
    iget-object v0, p0, LO3/t;->a:LO3/y;

    .line 25
    .line 26
    iget-boolean v2, v0, LO3/y;->j:Z

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, LO3/y;->f()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, LO3/t;->a:LO3/y;

    .line 37
    .line 38
    iget-object v0, v0, LO3/y;->d:Ljava/util/ArrayList;

    .line 39
    .line 40
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p1, LO3/A;

    .line 51
    .line 52
    check-cast p1, LN3/g;

    .line 53
    .line 54
    invoke-virtual {p1}, LN3/g;->a()V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    :goto_0
    monitor-exit v1

    .line 61
    return-void

    .line 62
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    throw p1

    .line 64
    :cond_2
    const/4 v1, 0x2

    .line 65
    if-ne v0, v1, :cond_3

    .line 66
    .line 67
    iget-object v0, p0, LO3/t;->a:LO3/y;

    .line 68
    .line 69
    invoke-virtual {v0}, LO3/y;->f()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_3

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    .line 77
    .line 78
    if-eq v0, v1, :cond_5

    .line 79
    .line 80
    const/4 v1, 0x1

    .line 81
    if-ne v0, v1, :cond_4

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_4
    :goto_2
    return-void

    .line 85
    :cond_5
    :goto_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast p1, LO3/u;

    .line 88
    .line 89
    invoke-virtual {p1}, LO3/u;->a()V

    .line 90
    .line 91
    .line 92
    return-void
.end method
