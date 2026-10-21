.class public final Lm4/D;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final k:Lm4/y;

.field public static volatile l:Lm4/D;


# instance fields
.field public final a:Lm4/C;

.field public final b:Ljava/util/List;

.field public final c:Landroid/content/Context;

.field public final d:Lm4/p;

.field public final e:Lm4/v;

.field public final f:Lm4/P;

.field public final g:Ljava/util/WeakHashMap;

.field public final h:Ljava/util/WeakHashMap;

.field public final i:Ljava/lang/ref/ReferenceQueue;

.field public final j:Landroid/graphics/Bitmap$Config;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lm4/y;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lm4/D;->k:Lm4/y;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    sput-object v0, Lm4/D;->l:Lm4/D;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lm4/p;Lm4/v;Lm4/C;Lm4/P;Landroid/graphics/Bitmap$Config;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm4/D;->c:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lm4/D;->d:Lm4/p;

    .line 7
    .line 8
    iput-object p3, p0, Lm4/D;->e:Lm4/v;

    .line 9
    .line 10
    iput-object p4, p0, Lm4/D;->a:Lm4/C;

    .line 11
    .line 12
    iput-object p6, p0, Lm4/D;->j:Landroid/graphics/Bitmap$Config;

    .line 13
    .line 14
    new-instance p3, Ljava/util/ArrayList;

    .line 15
    .line 16
    const/4 p4, 0x7

    .line 17
    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    .line 19
    .line 20
    new-instance p4, Lm4/M;

    .line 21
    .line 22
    invoke-direct {p4, p1}, Lm4/M;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    new-instance p4, Lm4/j;

    .line 29
    .line 30
    invoke-direct {p4, p1}, Lm4/j;-><init>(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    new-instance p4, Lcom/squareup/picasso/c;

    .line 37
    .line 38
    invoke-direct {p4, p1}, Lm4/k;-><init>(Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    new-instance p4, Lm4/k;

    .line 45
    .line 46
    invoke-direct {p4, p1}, Lm4/k;-><init>(Landroid/content/Context;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    new-instance p4, Lm4/b;

    .line 53
    .line 54
    invoke-direct {p4, p1}, Lm4/b;-><init>(Landroid/content/Context;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    new-instance p4, Lm4/r;

    .line 61
    .line 62
    invoke-direct {p4, p1}, Lm4/k;-><init>(Landroid/content/Context;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    new-instance p1, Lcom/squareup/picasso/d;

    .line 69
    .line 70
    iget-object p2, p2, Lm4/p;->c:Lm4/q;

    .line 71
    .line 72
    invoke-direct {p1, p2, p5}, Lcom/squareup/picasso/d;-><init>(Lm4/q;Lm4/P;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iput-object p1, p0, Lm4/D;->b:Ljava/util/List;

    .line 83
    .line 84
    iput-object p5, p0, Lm4/D;->f:Lm4/P;

    .line 85
    .line 86
    new-instance p1, Ljava/util/WeakHashMap;

    .line 87
    .line 88
    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    .line 89
    .line 90
    .line 91
    iput-object p1, p0, Lm4/D;->g:Ljava/util/WeakHashMap;

    .line 92
    .line 93
    new-instance p1, Ljava/util/WeakHashMap;

    .line 94
    .line 95
    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    .line 96
    .line 97
    .line 98
    iput-object p1, p0, Lm4/D;->h:Ljava/util/WeakHashMap;

    .line 99
    .line 100
    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    .line 101
    .line 102
    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    .line 103
    .line 104
    .line 105
    iput-object p1, p0, Lm4/D;->i:Ljava/lang/ref/ReferenceQueue;

    .line 106
    .line 107
    new-instance p2, Lm4/B;

    .line 108
    .line 109
    sget-object p3, Lm4/D;->k:Lm4/y;

    .line 110
    .line 111
    invoke-direct {p2, p1, p3}, Lm4/B;-><init>(Ljava/lang/ref/ReferenceQueue;Lm4/y;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method public static get()Lm4/D;
    .locals 3

    .line 1
    sget-object v0, Lm4/D;->l:Lm4/D;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    const-class v0, Lm4/D;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lm4/D;->l:Lm4/D;

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    sget-object v1, Lcom/squareup/picasso/PicassoProvider;->b:Landroid/content/Context;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    new-instance v2, Lm4/z;

    .line 17
    .line 18
    invoke-direct {v2, v1}, Lm4/z;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Lm4/z;->build()Lm4/D;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    sput-object v1, Lm4/D;->l:Lm4/D;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string v2, "context == null"

    .line 33
    .line 34
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v1

    .line 38
    :cond_1
    :goto_0
    monitor-exit v0

    .line 39
    goto :goto_2

    .line 40
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw v1

    .line 42
    :cond_2
    :goto_2
    sget-object v0, Lm4/D;->l:Lm4/D;

    .line 43
    .line 44
    return-object v0
.end method

.method public static setSingletonInstance(Lm4/D;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    const-class v0, Lm4/D;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Lm4/D;->l:Lm4/D;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    sput-object p0, Lm4/D;->l:Lm4/D;

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v1, "Singleton instance already exists."

    .line 19
    .line 20
    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0

    .line 26
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    const-string v0, "Picasso must not be null."

    .line 29
    .line 30
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4

    .line 1
    sget-object v0, Lm4/W;->a:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-ne v0, v1, :cond_4

    .line 16
    .line 17
    iget-object v0, p0, Lm4/D;->g:Ljava/util/WeakHashMap;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lm4/s;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    iput-boolean v2, v0, Lm4/s;->h:Z

    .line 30
    .line 31
    iget-object v2, v0, Lm4/s;->i:Lm4/i;

    .line 32
    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    iput-object v1, v0, Lm4/s;->i:Lm4/i;

    .line 36
    .line 37
    :cond_0
    iget-object v2, p0, Lm4/D;->d:Lm4/p;

    .line 38
    .line 39
    const/4 v3, 0x2

    .line 40
    iget-object v2, v2, Lm4/p;->h:Lcom/squareup/picasso/b;

    .line 41
    .line 42
    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 47
    .line 48
    .line 49
    :cond_1
    instance-of v0, p1, Landroid/widget/ImageView;

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    check-cast p1, Landroid/widget/ImageView;

    .line 54
    .line 55
    iget-object v0, p0, Lm4/D;->h:Ljava/util/WeakHashMap;

    .line 56
    .line 57
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Lm4/l;

    .line 62
    .line 63
    if-eqz p1, :cond_3

    .line 64
    .line 65
    iput-object v1, p1, Lm4/l;->f:Lm4/i;

    .line 66
    .line 67
    iget-object v0, p1, Lm4/l;->e:Ljava/lang/ref/WeakReference;

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Landroid/widget/ImageView;

    .line 74
    .line 75
    if-nez v1, :cond_2

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, p1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_3

    .line 93
    .line 94
    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 95
    .line 96
    .line 97
    :cond_3
    :goto_0
    return-void

    .line 98
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 99
    .line 100
    const-string v0, "Method call should happen from the main thread."

    .line 101
    .line 102
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p1
.end method

.method public final b(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;Lm4/s;Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-boolean v0, p3, Lm4/s;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p3, Lm4/s;->g:Z

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lm4/D;->g:Ljava/util/WeakHashMap;

    .line 11
    .line 12
    invoke-virtual {p3}, Lm4/s;->a()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    :cond_1
    if-eqz p1, :cond_3

    .line 20
    .line 21
    if-eqz p2, :cond_2

    .line 22
    .line 23
    invoke-virtual {p3, p1, p2}, Lm4/s;->complete(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    .line 28
    .line 29
    const-string p2, "LoadedFrom cannot be null."

    .line 30
    .line 31
    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    throw p1

    .line 35
    :cond_3
    invoke-virtual {p3, p4}, Lm4/s;->error(Ljava/lang/Exception;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final c(Lm4/s;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lm4/s;->a()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lm4/D;->g:Ljava/util/WeakHashMap;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eq v2, p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lm4/D;->a(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lm4/D;->d:Lm4/p;

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    iget-object v0, v0, Lm4/p;->h:Lcom/squareup/picasso/b;

    .line 25
    .line 26
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public cancelRequest(Landroid/widget/ImageView;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lm4/D;->a(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 8
    .line 9
    const-string v0, "view cannot be null."

    .line 10
    .line 11
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    throw p1
.end method

.method public load(I)Lm4/J;
    .locals 2

    if-eqz p1, :cond_0

    .line 6
    new-instance v0, Lm4/J;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lm4/J;-><init>(Lm4/D;Landroid/net/Uri;I)V

    return-object v0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Resource ID must not be zero."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public load(Landroid/net/Uri;)Lm4/J;
    .locals 2

    .line 1
    new-instance v0, Lm4/J;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lm4/J;-><init>(Lm4/D;Landroid/net/Uri;I)V

    return-object v0
.end method

.method public load(Ljava/lang/String;)Lm4/J;
    .locals 2

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lm4/J;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lm4/J;-><init>(Lm4/D;Landroid/net/Uri;I)V

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lm4/D;->load(Landroid/net/Uri;)Lm4/J;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Path must not be empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
