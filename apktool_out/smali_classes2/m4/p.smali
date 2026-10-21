.class public final Lm4/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lm4/G;

.field public final c:Lm4/q;

.field public final d:Ljava/util/LinkedHashMap;

.field public final e:Ljava/util/WeakHashMap;

.field public final f:Ljava/util/WeakHashMap;

.field public final g:Ljava/util/LinkedHashSet;

.field public final h:Lcom/squareup/picasso/b;

.field public final i:Lm4/y;

.field public final j:Lm4/v;

.field public final k:Lm4/P;

.field public final l:Ljava/util/ArrayList;

.field public final m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lm4/G;Lm4/y;Lm4/q;Lm4/v;Lm4/P;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lm4/n;

    .line 5
    .line 6
    const-string v1, "Picasso-Dispatcher"

    .line 7
    .line 8
    const/16 v2, 0xa

    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    sget-object v2, Lm4/W;->a:Ljava/lang/StringBuilder;

    .line 21
    .line 22
    new-instance v2, Lm4/T;

    .line 23
    .line 24
    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-wide/16 v3, 0x3e8

    .line 32
    .line 33
    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lm4/p;->a:Landroid/content/Context;

    .line 37
    .line 38
    iput-object p2, p0, Lm4/p;->b:Lm4/G;

    .line 39
    .line 40
    new-instance p2, Ljava/util/LinkedHashMap;

    .line 41
    .line 42
    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object p2, p0, Lm4/p;->d:Ljava/util/LinkedHashMap;

    .line 46
    .line 47
    new-instance p2, Ljava/util/WeakHashMap;

    .line 48
    .line 49
    invoke-direct {p2}, Ljava/util/WeakHashMap;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object p2, p0, Lm4/p;->e:Ljava/util/WeakHashMap;

    .line 53
    .line 54
    new-instance p2, Ljava/util/WeakHashMap;

    .line 55
    .line 56
    invoke-direct {p2}, Ljava/util/WeakHashMap;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object p2, p0, Lm4/p;->f:Ljava/util/WeakHashMap;

    .line 60
    .line 61
    new-instance p2, Ljava/util/LinkedHashSet;

    .line 62
    .line 63
    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object p2, p0, Lm4/p;->g:Ljava/util/LinkedHashSet;

    .line 67
    .line 68
    new-instance p2, Lcom/squareup/picasso/b;

    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-direct {p2, v0, p0}, Lcom/squareup/picasso/b;-><init>(Landroid/os/Looper;Lm4/p;)V

    .line 75
    .line 76
    .line 77
    iput-object p2, p0, Lm4/p;->h:Lcom/squareup/picasso/b;

    .line 78
    .line 79
    iput-object p4, p0, Lm4/p;->c:Lm4/q;

    .line 80
    .line 81
    iput-object p3, p0, Lm4/p;->i:Lm4/y;

    .line 82
    .line 83
    iput-object p5, p0, Lm4/p;->j:Lm4/v;

    .line 84
    .line 85
    iput-object p6, p0, Lm4/p;->k:Lm4/P;

    .line 86
    .line 87
    new-instance p2, Ljava/util/ArrayList;

    .line 88
    .line 89
    const/4 p3, 0x4

    .line 90
    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 91
    .line 92
    .line 93
    iput-object p2, p0, Lm4/p;->l:Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    const/4 p3, 0x1

    .line 100
    const/4 p4, 0x0

    .line 101
    :try_start_0
    const-string p5, "airplane_mode_on"

    .line 102
    .line 103
    invoke-static {p2, p5, p4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .line 105
    .line 106
    :catch_0
    const-string p2, "android.permission.ACCESS_NETWORK_STATE"

    .line 107
    .line 108
    invoke-virtual {p1, p2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-nez p1, :cond_0

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_0
    move p3, p4

    .line 116
    :goto_0
    iput-boolean p3, p0, Lm4/p;->m:Z

    .line 117
    .line 118
    new-instance p1, Lm4/o;

    .line 119
    .line 120
    invoke-direct {p1, p0}, Lm4/o;-><init>(Lm4/p;)V

    .line 121
    .line 122
    .line 123
    new-instance p2, Landroid/content/IntentFilter;

    .line 124
    .line 125
    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 126
    .line 127
    .line 128
    const-string p3, "android.intent.action.AIRPLANE_MODE"

    .line 129
    .line 130
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    iget-object p3, p1, Lm4/o;->a:Lm4/p;

    .line 134
    .line 135
    iget-boolean p4, p3, Lm4/p;->m:Z

    .line 136
    .line 137
    if-eqz p4, :cond_1

    .line 138
    .line 139
    const-string p4, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 140
    .line 141
    invoke-virtual {p2, p4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    :cond_1
    iget-object p3, p3, Lm4/p;->a:Landroid/content/Context;

    .line 145
    .line 146
    invoke-virtual {p3, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 147
    .line 148
    .line 149
    return-void
.end method


# virtual methods
.method public final a(Lcom/squareup/picasso/a;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/squareup/picasso/a;->v:Ljava/util/concurrent/Future;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p1, Lcom/squareup/picasso/a;->u:Landroid/graphics/Bitmap;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lm4/p;->l:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lm4/p;->h:Lcom/squareup/picasso/b;

    .line 25
    .line 26
    const/4 v0, 0x7

    .line 27
    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    const-wide/16 v1, 0xc8

    .line 34
    .line 35
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 36
    .line 37
    .line 38
    :cond_2
    return-void
.end method

.method public final b(Lcom/squareup/picasso/a;)V
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    iget-object v1, p0, Lm4/p;->h:Lcom/squareup/picasso/b;

    .line 3
    .line 4
    invoke-virtual {v1, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final c(Lcom/squareup/picasso/a;Z)V
    .locals 1

    .line 1
    iget-object p2, p1, Lcom/squareup/picasso/a;->e:Lm4/D;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lm4/p;->d:Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    iget-object v0, p1, Lcom/squareup/picasso/a;->n:Ljava/lang/String;

    .line 9
    .line 10
    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lm4/p;->a(Lcom/squareup/picasso/a;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final d(Lm4/s;Z)V
    .locals 12

    .line 1
    iget-object v0, p0, Lm4/p;->g:Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    iget-object v1, p1, Lm4/s;->f:Lm4/s;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p2, p0, Lm4/p;->f:Ljava/util/WeakHashMap;

    .line 12
    .line 13
    invoke-virtual {p1}, Lm4/s;->a()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p2, v0, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lm4/p;->d:Ljava/util/LinkedHashMap;

    .line 22
    .line 23
    iget-object v1, p1, Lm4/s;->e:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/squareup/picasso/a;

    .line 30
    .line 31
    iget-object v3, p1, Lm4/s;->b:Lm4/I;

    .line 32
    .line 33
    if-eqz v2, :cond_4

    .line 34
    .line 35
    iget-object p2, v2, Lcom/squareup/picasso/a;->e:Lm4/D;

    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    iget-object p2, v2, Lcom/squareup/picasso/a;->s:Lm4/s;

    .line 41
    .line 42
    if-nez p2, :cond_1

    .line 43
    .line 44
    iput-object p1, v2, Lcom/squareup/picasso/a;->s:Lm4/s;

    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    iget-object p2, v2, Lcom/squareup/picasso/a;->t:Ljava/util/ArrayList;

    .line 48
    .line 49
    if-nez p2, :cond_2

    .line 50
    .line 51
    new-instance p2, Ljava/util/ArrayList;

    .line 52
    .line 53
    const/4 v0, 0x3

    .line 54
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 55
    .line 56
    .line 57
    iput-object p2, v2, Lcom/squareup/picasso/a;->t:Ljava/util/ArrayList;

    .line 58
    .line 59
    :cond_2
    iget-object p2, v2, Lcom/squareup/picasso/a;->t:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    iget-object p1, v3, Lm4/I;->j:Lcom/squareup/picasso/Picasso$Priority;

    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    iget-object v0, v2, Lcom/squareup/picasso/a;->A:Lcom/squareup/picasso/Picasso$Priority;

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-le p2, v0, :cond_3

    .line 77
    .line 78
    iput-object p1, v2, Lcom/squareup/picasso/a;->A:Lcom/squareup/picasso/Picasso$Priority;

    .line 79
    .line 80
    :cond_3
    return-void

    .line 81
    :cond_4
    iget-object v2, p0, Lm4/p;->b:Lm4/G;

    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-eqz v4, :cond_5

    .line 88
    .line 89
    return-void

    .line 90
    :cond_5
    iget-object v6, p1, Lm4/s;->a:Lm4/D;

    .line 91
    .line 92
    sget-object v4, Lcom/squareup/picasso/a;->B:Ljava/lang/Object;

    .line 93
    .line 94
    iget-object v4, v6, Lm4/D;->b:Ljava/util/List;

    .line 95
    .line 96
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    const/4 v7, 0x0

    .line 101
    :goto_0
    iget-object v8, p0, Lm4/p;->j:Lm4/v;

    .line 102
    .line 103
    iget-object v9, p0, Lm4/p;->k:Lm4/P;

    .line 104
    .line 105
    if-ge v7, v5, :cond_7

    .line 106
    .line 107
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v10

    .line 111
    move-object v11, v10

    .line 112
    check-cast v11, Lm4/L;

    .line 113
    .line 114
    invoke-virtual {v11, v3}, Lm4/L;->canHandleRequest(Lm4/I;)Z

    .line 115
    .line 116
    .line 117
    move-result v10

    .line 118
    if-eqz v10, :cond_6

    .line 119
    .line 120
    new-instance v5, Lcom/squareup/picasso/a;

    .line 121
    .line 122
    move-object v7, p0

    .line 123
    move-object v10, p1

    .line 124
    invoke-direct/range {v5 .. v11}, Lcom/squareup/picasso/a;-><init>(Lm4/D;Lm4/p;Lm4/v;Lm4/P;Lm4/s;Lm4/L;)V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_6
    move-object v10, p1

    .line 129
    add-int/lit8 v7, v7, 0x1

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_7
    move-object v10, p1

    .line 133
    new-instance v5, Lcom/squareup/picasso/a;

    .line 134
    .line 135
    sget-object v11, Lcom/squareup/picasso/a;->E:Lm4/d;

    .line 136
    .line 137
    move-object v7, p0

    .line 138
    invoke-direct/range {v5 .. v11}, Lcom/squareup/picasso/a;-><init>(Lm4/D;Lm4/p;Lm4/v;Lm4/P;Lm4/s;Lm4/L;)V

    .line 139
    .line 140
    .line 141
    :goto_1
    invoke-interface {v2, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    iput-object p1, v5, Lcom/squareup/picasso/a;->v:Ljava/util/concurrent/Future;

    .line 146
    .line 147
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    if-eqz p2, :cond_8

    .line 151
    .line 152
    iget-object p1, v7, Lm4/p;->e:Ljava/util/WeakHashMap;

    .line 153
    .line 154
    invoke-virtual {v10}, Lm4/s;->a()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    invoke-virtual {p1, p2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    :cond_8
    return-void
.end method
