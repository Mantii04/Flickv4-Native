.class public final Lcom/bumptech/glide/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks2;
.implements Lcom/bumptech/glide/manager/l;


# static fields
.field public static final t:LC2/f;

.field public static final u:LC2/f;


# instance fields
.field public final b:Lcom/bumptech/glide/c;

.field public final e:Landroid/content/Context;

.field public final f:Lcom/bumptech/glide/manager/k;

.field public final j:Lcom/bumptech/glide/manager/s;

.field public final m:Lcom/bumptech/glide/manager/r;

.field public final n:Lcom/bumptech/glide/manager/G;

.field public final p:Lcom/bumptech/glide/n;

.field public final q:Lcom/bumptech/glide/manager/c;

.field public final r:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public s:LC2/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Landroid/graphics/Bitmap;

    .line 2
    .line 3
    invoke-static {v0}, LC2/f;->decodeTypeOf(Ljava/lang/Class;)LC2/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, LC2/a;->lock()LC2/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, LC2/f;

    .line 12
    .line 13
    sput-object v0, Lcom/bumptech/glide/q;->t:LC2/f;

    .line 14
    .line 15
    const-class v0, Ly2/d;

    .line 16
    .line 17
    invoke-static {v0}, LC2/f;->decodeTypeOf(Ljava/lang/Class;)LC2/f;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, LC2/a;->lock()LC2/a;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, LC2/f;

    .line 26
    .line 27
    sput-object v0, Lcom/bumptech/glide/q;->u:LC2/f;

    .line 28
    .line 29
    sget-object v0, Ln2/u;->b:Ln2/r;

    .line 30
    .line 31
    invoke-static {v0}, LC2/f;->diskCacheStrategyOf(Ln2/u;)LC2/f;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sget-object v1, Lcom/bumptech/glide/Priority;->j:Lcom/bumptech/glide/Priority;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, LC2/a;->priority(Lcom/bumptech/glide/Priority;)LC2/a;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, LC2/f;

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    invoke-virtual {v0, v1}, LC2/a;->skipMemoryCache(Z)LC2/a;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, LC2/f;

    .line 49
    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/manager/k;Lcom/bumptech/glide/manager/r;Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/bumptech/glide/manager/s;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bumptech/glide/manager/s;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p1, Lcom/bumptech/glide/c;->n:Lcom/bumptech/glide/manager/e;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lcom/bumptech/glide/manager/G;

    .line 12
    .line 13
    invoke-direct {v2}, Lcom/bumptech/glide/manager/G;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v2, p0, Lcom/bumptech/glide/q;->n:Lcom/bumptech/glide/manager/G;

    .line 17
    .line 18
    new-instance v2, Lcom/bumptech/glide/n;

    .line 19
    .line 20
    invoke-direct {v2, p0}, Lcom/bumptech/glide/n;-><init>(Lcom/bumptech/glide/q;)V

    .line 21
    .line 22
    .line 23
    iput-object v2, p0, Lcom/bumptech/glide/q;->p:Lcom/bumptech/glide/n;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/bumptech/glide/q;->b:Lcom/bumptech/glide/c;

    .line 26
    .line 27
    iput-object p2, p0, Lcom/bumptech/glide/q;->f:Lcom/bumptech/glide/manager/k;

    .line 28
    .line 29
    iput-object p3, p0, Lcom/bumptech/glide/q;->m:Lcom/bumptech/glide/manager/r;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/bumptech/glide/q;->j:Lcom/bumptech/glide/manager/s;

    .line 32
    .line 33
    iput-object p4, p0, Lcom/bumptech/glide/q;->e:Landroid/content/Context;

    .line 34
    .line 35
    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    new-instance p4, Lcom/bumptech/glide/p;

    .line 40
    .line 41
    invoke-direct {p4, p0, v0}, Lcom/bumptech/glide/p;-><init>(Lcom/bumptech/glide/q;Lcom/bumptech/glide/manager/s;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p3, p4}, Lcom/bumptech/glide/manager/e;->build(Landroid/content/Context;Lcom/bumptech/glide/manager/b;)Lcom/bumptech/glide/manager/c;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    iput-object p3, p0, Lcom/bumptech/glide/q;->q:Lcom/bumptech/glide/manager/c;

    .line 49
    .line 50
    iget-object p4, p1, Lcom/bumptech/glide/c;->p:Ljava/util/ArrayList;

    .line 51
    .line 52
    monitor-enter p4

    .line 53
    :try_start_0
    iget-object v0, p1, Lcom/bumptech/glide/c;->p:Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_1

    .line 60
    .line 61
    iget-object v0, p1, Lcom/bumptech/glide/c;->p:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    invoke-static {}, LG2/t;->isOnBackgroundThread()Z

    .line 68
    .line 69
    .line 70
    move-result p4

    .line 71
    if-eqz p4, :cond_0

    .line 72
    .line 73
    invoke-static {v2}, LG2/t;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    invoke-interface {p2, p0}, Lcom/bumptech/glide/manager/k;->addListener(Lcom/bumptech/glide/manager/l;)V

    .line 78
    .line 79
    .line 80
    :goto_0
    invoke-interface {p2, p3}, Lcom/bumptech/glide/manager/k;->addListener(Lcom/bumptech/glide/manager/l;)V

    .line 81
    .line 82
    .line 83
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 84
    .line 85
    iget-object p3, p1, Lcom/bumptech/glide/c;->f:Lcom/bumptech/glide/h;

    .line 86
    .line 87
    invoke-virtual {p3}, Lcom/bumptech/glide/h;->getDefaultRequestListeners()Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object p3

    .line 91
    invoke-direct {p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 92
    .line 93
    .line 94
    iput-object p2, p0, Lcom/bumptech/glide/q;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 95
    .line 96
    iget-object p1, p1, Lcom/bumptech/glide/c;->f:Lcom/bumptech/glide/h;

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/bumptech/glide/h;->getDefaultRequestOptions()LC2/f;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/q;->setRequestOptions(LC2/f;)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :catchall_0
    move-exception p1

    .line 107
    goto :goto_1

    .line 108
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 109
    .line 110
    const-string p2, "Cannot register already registered manager"

    .line 111
    .line 112
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p1

    .line 116
    :goto_1
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    throw p1
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/q;->n:Lcom/bumptech/glide/manager/G;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/G;->getAll()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, LD2/k;

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/q;->clear(LD2/k;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/q;->n:Lcom/bumptech/glide/manager/G;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/G;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    monitor-exit p0

    .line 36
    return-void

    .line 37
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    throw v0
.end method

.method public as(Ljava/lang/Class;)Lcom/bumptech/glide/m;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResourceType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TResourceType;>;)",
            "Lcom/bumptech/glide/m;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/bumptech/glide/m;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/q;->b:Lcom/bumptech/glide/c;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/bumptech/glide/q;->e:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {v0, v1, p0, p1, v2}, Lcom/bumptech/glide/m;-><init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/q;Ljava/lang/Class;Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public asBitmap()Lcom/bumptech/glide/m;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/m;"
        }
    .end annotation

    .line 1
    const-class v0, Landroid/graphics/Bitmap;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/q;->as(Ljava/lang/Class;)Lcom/bumptech/glide/m;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/bumptech/glide/q;->t:LC2/f;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/m;->apply(LC2/a;)Lcom/bumptech/glide/m;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public asDrawable()Lcom/bumptech/glide/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/m;"
        }
    .end annotation

    .line 1
    const-class v0, Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/q;->as(Ljava/lang/Class;)Lcom/bumptech/glide/m;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public asGif()Lcom/bumptech/glide/m;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/m;"
        }
    .end annotation

    .line 1
    const-class v0, Ly2/d;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/q;->as(Ljava/lang/Class;)Lcom/bumptech/glide/m;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/bumptech/glide/q;->u:LC2/f;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/m;->apply(LC2/a;)Lcom/bumptech/glide/m;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public final declared-synchronized b(LD2/k;)Z
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-interface {p1}, LD2/k;->getRequest()LC2/c;

    .line 3
    .line 4
    .line 5
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    const/4 v1, 0x1

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return v1

    .line 11
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/bumptech/glide/q;->j:Lcom/bumptech/glide/manager/s;

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Lcom/bumptech/glide/manager/s;->clearAndRemove(LC2/c;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/bumptech/glide/q;->n:Lcom/bumptech/glide/manager/G;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/manager/G;->untrack(LD2/k;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-interface {p1, v0}, LD2/k;->setRequest(LC2/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return v1

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    monitor-exit p0

    .line 33
    const/4 p1, 0x0

    .line 34
    return p1

    .line 35
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    throw p1
.end method

.method public clear(LD2/k;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LD2/k;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/q;->b(LD2/k;)Z

    move-result v0

    .line 5
    invoke-interface {p1}, LD2/k;->getRequest()LC2/c;

    move-result-object v1

    if-nez v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/bumptech/glide/q;->b:Lcom/bumptech/glide/c;

    .line 7
    iget-object v2, v0, Lcom/bumptech/glide/c;->p:Ljava/util/ArrayList;

    .line 8
    monitor-enter v2

    .line 9
    :try_start_0
    iget-object v0, v0, Lcom/bumptech/glide/c;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/q;

    .line 10
    invoke-virtual {v3, p1}, Lcom/bumptech/glide/q;->b(LD2/k;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 11
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 12
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    .line 13
    invoke-interface {p1, v0}, LD2/k;->setRequest(LC2/c;)V

    .line 14
    invoke-interface {v1}, LC2/c;->clear()V

    return-void

    .line 15
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public clear(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/bumptech/glide/o;

    .line 2
    invoke-direct {v0, p1}, LD2/f;-><init>(Landroid/view/View;)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/q;->clear(LD2/k;)V

    return-void
.end method

.method public load(Ljava/lang/Integer;)Lcom/bumptech/glide/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/bumptech/glide/m;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/q;->asDrawable()Lcom/bumptech/glide/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/m;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/m;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized onDestroy()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/q;->n:Lcom/bumptech/glide/manager/G;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/G;->onDestroy()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/bumptech/glide/q;->a()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/bumptech/glide/q;->j:Lcom/bumptech/glide/manager/s;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/s;->clearRequests()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/bumptech/glide/q;->f:Lcom/bumptech/glide/manager/k;

    .line 16
    .line 17
    invoke-interface {v0, p0}, Lcom/bumptech/glide/manager/k;->removeListener(Lcom/bumptech/glide/manager/l;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/bumptech/glide/q;->f:Lcom/bumptech/glide/manager/k;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/bumptech/glide/q;->q:Lcom/bumptech/glide/manager/c;

    .line 23
    .line 24
    invoke-interface {v0, v1}, Lcom/bumptech/glide/manager/k;->removeListener(Lcom/bumptech/glide/manager/l;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/bumptech/glide/q;->p:Lcom/bumptech/glide/n;

    .line 28
    .line 29
    invoke-static {v0}, LG2/t;->removeCallbacksOnUiThread(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/bumptech/glide/q;->b:Lcom/bumptech/glide/c;

    .line 33
    .line 34
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/c;->b(Lcom/bumptech/glide/q;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    monitor-exit p0

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    throw v0
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method public declared-synchronized onStart()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/bumptech/glide/q;->resumeRequests()V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/bumptech/glide/q;->n:Lcom/bumptech/glide/manager/G;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/G;->onStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    throw v0
.end method

.method public declared-synchronized onStop()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/q;->n:Lcom/bumptech/glide/manager/G;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/G;->onStop()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/bumptech/glide/q;->pauseRequests()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    throw v0
.end method

.method public onTrimMemory(I)V
    .locals 0

    return-void
.end method

.method public declared-synchronized pauseRequests()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/q;->j:Lcom/bumptech/glide/manager/s;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/s;->pauseRequests()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    throw v0
.end method

.method public declared-synchronized resumeRequests()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/q;->j:Lcom/bumptech/glide/manager/s;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/s;->resumeRequests()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    throw v0
.end method

.method public declared-synchronized setRequestOptions(LC2/f;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, LC2/a;->clone()LC2/a;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    check-cast p1, LC2/f;

    .line 7
    .line 8
    invoke-virtual {p1}, LC2/a;->autoClone()LC2/a;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, LC2/f;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/bumptech/glide/q;->s:LC2/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw p1
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, "{tracker="

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/bumptech/glide/q;->j:Lcom/bumptech/glide/manager/s;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, ", treeNode="

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/bumptech/glide/q;->m:Lcom/bumptech/glide/manager/r;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, "}"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    .line 44
    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    throw v0
.end method
