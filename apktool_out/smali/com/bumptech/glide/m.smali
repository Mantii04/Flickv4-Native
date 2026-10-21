.class public final Lcom/bumptech/glide/m;
.super LC2/a;
.source "SourceFile"


# instance fields
.field public final C:Landroid/content/Context;

.field public final D:Lcom/bumptech/glide/q;

.field public final E:Ljava/lang/Class;

.field public final F:Lcom/bumptech/glide/h;

.field public G:Lcom/bumptech/glide/r;

.field public H:Ljava/lang/Object;

.field public I:Ljava/util/ArrayList;

.field public J:Lcom/bumptech/glide/m;

.field public K:Lcom/bumptech/glide/m;

.field public final L:Z

.field public M:Z

.field public N:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LC2/f;

    .line 2
    .line 3
    invoke-direct {v0}, LC2/f;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Ln2/u;->b:Ln2/r;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, LC2/a;->diskCacheStrategy(Ln2/u;)LC2/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, LC2/f;

    .line 13
    .line 14
    sget-object v1, Lcom/bumptech/glide/Priority;->j:Lcom/bumptech/glide/Priority;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, LC2/a;->priority(Lcom/bumptech/glide/Priority;)LC2/a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, LC2/f;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {v0, v1}, LC2/a;->skipMemoryCache(Z)LC2/a;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, LC2/f;

    .line 28
    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/q;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/c;",
            "Lcom/bumptech/glide/q;",
            "Ljava/lang/Class<",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, LC2/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/bumptech/glide/m;->L:Z

    .line 6
    .line 7
    iput-object p2, p0, Lcom/bumptech/glide/m;->D:Lcom/bumptech/glide/q;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/bumptech/glide/m;->E:Ljava/lang/Class;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/bumptech/glide/m;->C:Landroid/content/Context;

    .line 12
    .line 13
    iget-object p4, p2, Lcom/bumptech/glide/q;->b:Lcom/bumptech/glide/c;

    .line 14
    .line 15
    iget-object p4, p4, Lcom/bumptech/glide/c;->f:Lcom/bumptech/glide/h;

    .line 16
    .line 17
    invoke-virtual {p4, p3}, Lcom/bumptech/glide/h;->getDefaultTransitionOptions(Ljava/lang/Class;)Lcom/bumptech/glide/r;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    iput-object p3, p0, Lcom/bumptech/glide/m;->G:Lcom/bumptech/glide/r;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/bumptech/glide/c;->f:Lcom/bumptech/glide/h;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/bumptech/glide/m;->F:Lcom/bumptech/glide/h;

    .line 26
    .line 27
    iget-object p1, p2, Lcom/bumptech/glide/q;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result p3

    .line 37
    if-eqz p3, :cond_1

    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    if-nez p3, :cond_0

    .line 44
    .line 45
    const/4 p3, 0x0

    .line 46
    invoke-virtual {p0, p3}, Lcom/bumptech/glide/m;->addListener(LC2/e;)Lcom/bumptech/glide/m;

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    .line 51
    .line 52
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_1
    monitor-enter p2

    .line 57
    :try_start_0
    iget-object p1, p2, Lcom/bumptech/glide/q;->s:LC2/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    monitor-exit p2

    .line 60
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/m;->apply(LC2/a;)Lcom/bumptech/glide/m;

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    throw p1
.end method


# virtual methods
.method public addListener(LC2/e;)Lcom/bumptech/glide/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LC2/e;",
            ")",
            "Lcom/bumptech/glide/m;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, LC2/a;->isAutoCloneEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/bumptech/glide/m;->clone()Lcom/bumptech/glide/m;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/m;->addListener(LC2/e;)Lcom/bumptech/glide/m;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    if-eqz p1, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Lcom/bumptech/glide/m;->I:Ljava/util/ArrayList;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/bumptech/glide/m;->I:Ljava/util/ArrayList;

    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/m;->I:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    :cond_2
    invoke-virtual {p0}, LC2/a;->selfOrThrowIfLocked()LC2/a;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Lcom/bumptech/glide/m;

    .line 39
    .line 40
    return-object p1
.end method

.method public bridge synthetic apply(LC2/a;)LC2/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/m;->apply(LC2/a;)Lcom/bumptech/glide/m;

    move-result-object p1

    return-object p1
.end method

.method public apply(LC2/a;)Lcom/bumptech/glide/m;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LC2/a;",
            ")",
            "Lcom/bumptech/glide/m;"
        }
    .end annotation

    .line 2
    invoke-static {p1}, LG2/r;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-super {p0, p1}, LC2/a;->apply(LC2/a;)LC2/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/m;

    return-object p1
.end method

.method public bridge synthetic clone()LC2/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/m;->clone()Lcom/bumptech/glide/m;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/bumptech/glide/m;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/m;"
        }
    .end annotation

    .line 3
    invoke-super {p0}, LC2/a;->clone()LC2/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/m;

    .line 4
    iget-object v1, v0, Lcom/bumptech/glide/m;->G:Lcom/bumptech/glide/r;

    invoke-virtual {v1}, Lcom/bumptech/glide/r;->clone()Lcom/bumptech/glide/r;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/m;->G:Lcom/bumptech/glide/r;

    .line 5
    iget-object v1, v0, Lcom/bumptech/glide/m;->I:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/bumptech/glide/m;->I:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/bumptech/glide/m;->I:Ljava/util/ArrayList;

    .line 7
    :cond_0
    iget-object v1, v0, Lcom/bumptech/glide/m;->J:Lcom/bumptech/glide/m;

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v1}, Lcom/bumptech/glide/m;->clone()Lcom/bumptech/glide/m;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/m;->J:Lcom/bumptech/glide/m;

    .line 9
    :cond_1
    iget-object v1, v0, Lcom/bumptech/glide/m;->K:Lcom/bumptech/glide/m;

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {v1}, Lcom/bumptech/glide/m;->clone()Lcom/bumptech/glide/m;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/m;->K:Lcom/bumptech/glide/m;

    :cond_2
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/m;->clone()Lcom/bumptech/glide/m;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/bumptech/glide/m;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/bumptech/glide/m;

    .line 6
    .line 7
    invoke-super {p0, p1}, LC2/a;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p1, Lcom/bumptech/glide/m;->E:Ljava/lang/Class;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/bumptech/glide/m;->E:Ljava/lang/Class;

    .line 16
    .line 17
    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/bumptech/glide/m;->G:Lcom/bumptech/glide/r;

    .line 24
    .line 25
    iget-object v1, p1, Lcom/bumptech/glide/m;->G:Lcom/bumptech/glide/r;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/r;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lcom/bumptech/glide/m;->H:Ljava/lang/Object;

    .line 34
    .line 35
    iget-object v1, p1, Lcom/bumptech/glide/m;->H:Ljava/lang/Object;

    .line 36
    .line 37
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    iget-object v0, p0, Lcom/bumptech/glide/m;->I:Ljava/util/ArrayList;

    .line 44
    .line 45
    iget-object v1, p1, Lcom/bumptech/glide/m;->I:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    iget-object v0, p0, Lcom/bumptech/glide/m;->J:Lcom/bumptech/glide/m;

    .line 54
    .line 55
    iget-object v1, p1, Lcom/bumptech/glide/m;->J:Lcom/bumptech/glide/m;

    .line 56
    .line 57
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_0

    .line 62
    .line 63
    iget-object v0, p0, Lcom/bumptech/glide/m;->K:Lcom/bumptech/glide/m;

    .line 64
    .line 65
    iget-object v1, p1, Lcom/bumptech/glide/m;->K:Lcom/bumptech/glide/m;

    .line 66
    .line 67
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_0

    .line 72
    .line 73
    iget-boolean v0, p0, Lcom/bumptech/glide/m;->L:Z

    .line 74
    .line 75
    iget-boolean v1, p1, Lcom/bumptech/glide/m;->L:Z

    .line 76
    .line 77
    if-ne v0, v1, :cond_0

    .line 78
    .line 79
    iget-boolean v0, p0, Lcom/bumptech/glide/m;->M:Z

    .line 80
    .line 81
    iget-boolean p1, p1, Lcom/bumptech/glide/m;->M:Z

    .line 82
    .line 83
    if-ne v0, p1, :cond_0

    .line 84
    .line 85
    const/4 p1, 0x1

    .line 86
    return p1

    .line 87
    :cond_0
    const/4 p1, 0x0

    .line 88
    return p1
.end method

.method public final h(Ljava/lang/Object;LD2/k;LC2/d;Lcom/bumptech/glide/r;Lcom/bumptech/glide/Priority;IILC2/a;Ljava/util/concurrent/Executor;)LC2/c;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v1, p4

    .line 6
    .line 7
    iget-object v3, v0, Lcom/bumptech/glide/m;->K:Lcom/bumptech/glide/m;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    new-instance v3, LC2/b;

    .line 12
    .line 13
    move-object/from16 v4, p3

    .line 14
    .line 15
    invoke-direct {v3, v2, v4}, LC2/b;-><init>(Ljava/lang/Object;LC2/d;)V

    .line 16
    .line 17
    .line 18
    move-object v13, v3

    .line 19
    move-object/from16 v17, v13

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object/from16 v4, p3

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    move-object/from16 v17, v3

    .line 26
    .line 27
    move-object v13, v4

    .line 28
    :goto_0
    iget-object v3, v0, Lcom/bumptech/glide/m;->J:Lcom/bumptech/glide/m;

    .line 29
    .line 30
    iget-object v4, v0, Lcom/bumptech/glide/m;->F:Lcom/bumptech/glide/h;

    .line 31
    .line 32
    if-eqz v3, :cond_8

    .line 33
    .line 34
    iget-boolean v5, v0, Lcom/bumptech/glide/m;->N:Z

    .line 35
    .line 36
    if-nez v5, :cond_7

    .line 37
    .line 38
    iget-object v5, v3, Lcom/bumptech/glide/m;->G:Lcom/bumptech/glide/r;

    .line 39
    .line 40
    iget-boolean v6, v3, Lcom/bumptech/glide/m;->L:Z

    .line 41
    .line 42
    if-eqz v6, :cond_1

    .line 43
    .line 44
    move-object/from16 v18, v1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    move-object/from16 v18, v5

    .line 48
    .line 49
    :goto_1
    invoke-virtual {v3}, LC2/a;->isPrioritySet()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    const/4 v5, 0x1

    .line 54
    if-eqz v3, :cond_2

    .line 55
    .line 56
    iget-object v3, v0, Lcom/bumptech/glide/m;->J:Lcom/bumptech/glide/m;

    .line 57
    .line 58
    invoke-virtual {v3}, LC2/a;->getPriority()Lcom/bumptech/glide/Priority;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    :goto_2
    move-object/from16 v19, v3

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_2
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Enum;->ordinal()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_5

    .line 70
    .line 71
    if-eq v3, v5, :cond_5

    .line 72
    .line 73
    const/4 v6, 0x2

    .line 74
    if-eq v3, v6, :cond_4

    .line 75
    .line 76
    const/4 v6, 0x3

    .line 77
    if-ne v3, v6, :cond_3

    .line 78
    .line 79
    sget-object v3, Lcom/bumptech/glide/Priority;->f:Lcom/bumptech/glide/Priority;

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 83
    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v3, "unknown priority: "

    .line 87
    .line 88
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, LC2/a;->getPriority()Lcom/bumptech/glide/Priority;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw v1

    .line 106
    :cond_4
    sget-object v3, Lcom/bumptech/glide/Priority;->e:Lcom/bumptech/glide/Priority;

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_5
    sget-object v3, Lcom/bumptech/glide/Priority;->b:Lcom/bumptech/glide/Priority;

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :goto_3
    iget-object v3, v0, Lcom/bumptech/glide/m;->J:Lcom/bumptech/glide/m;

    .line 113
    .line 114
    invoke-virtual {v3}, LC2/a;->getOverrideWidth()I

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    iget-object v6, v0, Lcom/bumptech/glide/m;->J:Lcom/bumptech/glide/m;

    .line 119
    .line 120
    invoke-virtual {v6}, LC2/a;->getOverrideHeight()I

    .line 121
    .line 122
    .line 123
    move-result v6

    .line 124
    invoke-static/range {p6 .. p7}, LG2/t;->isValidDimensions(II)Z

    .line 125
    .line 126
    .line 127
    move-result v7

    .line 128
    if-eqz v7, :cond_6

    .line 129
    .line 130
    iget-object v7, v0, Lcom/bumptech/glide/m;->J:Lcom/bumptech/glide/m;

    .line 131
    .line 132
    invoke-virtual {v7}, LC2/a;->isValidOverride()Z

    .line 133
    .line 134
    .line 135
    move-result v7

    .line 136
    if-nez v7, :cond_6

    .line 137
    .line 138
    invoke-virtual/range {p8 .. p8}, LC2/a;->getOverrideWidth()I

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    invoke-virtual/range {p8 .. p8}, LC2/a;->getOverrideHeight()I

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    :cond_6
    move/from16 v20, v3

    .line 147
    .line 148
    move/from16 v21, v6

    .line 149
    .line 150
    new-instance v3, LC2/h;

    .line 151
    .line 152
    invoke-direct {v3, v2, v13}, LC2/h;-><init>(Ljava/lang/Object;LC2/d;)V

    .line 153
    .line 154
    .line 155
    move-object v2, v4

    .line 156
    iget-object v4, v0, Lcom/bumptech/glide/m;->H:Ljava/lang/Object;

    .line 157
    .line 158
    iget-object v12, v0, Lcom/bumptech/glide/m;->I:Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-virtual {v2}, Lcom/bumptech/glide/h;->getEngine()Lcom/bumptech/glide/load/engine/b;

    .line 161
    .line 162
    .line 163
    move-result-object v14

    .line 164
    iget-object v15, v1, Lcom/bumptech/glide/r;->b:LE2/e;

    .line 165
    .line 166
    move v1, v5

    .line 167
    iget-object v5, v0, Lcom/bumptech/glide/m;->E:Ljava/lang/Class;

    .line 168
    .line 169
    const/4 v11, 0x0

    .line 170
    move v6, v1

    .line 171
    iget-object v1, v0, Lcom/bumptech/glide/m;->C:Landroid/content/Context;

    .line 172
    .line 173
    move-object/from16 v10, p2

    .line 174
    .line 175
    move-object/from16 v9, p5

    .line 176
    .line 177
    move/from16 v7, p6

    .line 178
    .line 179
    move/from16 v8, p7

    .line 180
    .line 181
    move-object/from16 v6, p8

    .line 182
    .line 183
    move-object/from16 v16, p9

    .line 184
    .line 185
    move-object v13, v3

    .line 186
    move-object/from16 v3, p1

    .line 187
    .line 188
    invoke-static/range {v1 .. v16}, Lcom/bumptech/glide/request/a;->obtain(Landroid/content/Context;Lcom/bumptech/glide/h;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;LC2/a;IILcom/bumptech/glide/Priority;LD2/k;LC2/e;Ljava/util/List;LC2/d;Lcom/bumptech/glide/load/engine/b;LE2/e;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/a;

    .line 189
    .line 190
    .line 191
    move-result-object v11

    .line 192
    const/4 v6, 0x1

    .line 193
    iput-boolean v6, v0, Lcom/bumptech/glide/m;->N:Z

    .line 194
    .line 195
    iget-object v1, v0, Lcom/bumptech/glide/m;->J:Lcom/bumptech/glide/m;

    .line 196
    .line 197
    move-object v9, v1

    .line 198
    move-object/from16 v2, p1

    .line 199
    .line 200
    move-object/from16 v3, p2

    .line 201
    .line 202
    move-object/from16 v10, p9

    .line 203
    .line 204
    move-object v4, v13

    .line 205
    move-object/from16 v5, v18

    .line 206
    .line 207
    move-object/from16 v6, v19

    .line 208
    .line 209
    move/from16 v7, v20

    .line 210
    .line 211
    move/from16 v8, v21

    .line 212
    .line 213
    invoke-virtual/range {v1 .. v10}, Lcom/bumptech/glide/m;->h(Ljava/lang/Object;LD2/k;LC2/d;Lcom/bumptech/glide/r;Lcom/bumptech/glide/Priority;IILC2/a;Ljava/util/concurrent/Executor;)LC2/c;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    const/4 v2, 0x0

    .line 218
    iput-boolean v2, v0, Lcom/bumptech/glide/m;->N:Z

    .line 219
    .line 220
    invoke-virtual {v13, v11, v1}, LC2/h;->setRequests(LC2/c;LC2/c;)V

    .line 221
    .line 222
    .line 223
    goto :goto_4

    .line 224
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 225
    .line 226
    const-string v2, "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"

    .line 227
    .line 228
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    throw v1

    .line 232
    :cond_8
    move-object v2, v4

    .line 233
    iget-object v4, v0, Lcom/bumptech/glide/m;->H:Ljava/lang/Object;

    .line 234
    .line 235
    iget-object v12, v0, Lcom/bumptech/glide/m;->I:Ljava/util/ArrayList;

    .line 236
    .line 237
    invoke-virtual {v2}, Lcom/bumptech/glide/h;->getEngine()Lcom/bumptech/glide/load/engine/b;

    .line 238
    .line 239
    .line 240
    move-result-object v14

    .line 241
    iget-object v15, v1, Lcom/bumptech/glide/r;->b:LE2/e;

    .line 242
    .line 243
    iget-object v5, v0, Lcom/bumptech/glide/m;->E:Ljava/lang/Class;

    .line 244
    .line 245
    const/4 v11, 0x0

    .line 246
    iget-object v1, v0, Lcom/bumptech/glide/m;->C:Landroid/content/Context;

    .line 247
    .line 248
    move-object/from16 v3, p1

    .line 249
    .line 250
    move-object/from16 v10, p2

    .line 251
    .line 252
    move-object/from16 v9, p5

    .line 253
    .line 254
    move/from16 v7, p6

    .line 255
    .line 256
    move/from16 v8, p7

    .line 257
    .line 258
    move-object/from16 v6, p8

    .line 259
    .line 260
    move-object/from16 v16, p9

    .line 261
    .line 262
    invoke-static/range {v1 .. v16}, Lcom/bumptech/glide/request/a;->obtain(Landroid/content/Context;Lcom/bumptech/glide/h;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;LC2/a;IILcom/bumptech/glide/Priority;LD2/k;LC2/e;Ljava/util/List;LC2/d;Lcom/bumptech/glide/load/engine/b;LE2/e;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/a;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    move-object v13, v1

    .line 267
    :goto_4
    if-nez v17, :cond_9

    .line 268
    .line 269
    return-object v13

    .line 270
    :cond_9
    iget-object v1, v0, Lcom/bumptech/glide/m;->K:Lcom/bumptech/glide/m;

    .line 271
    .line 272
    invoke-virtual {v1}, LC2/a;->getOverrideWidth()I

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    iget-object v2, v0, Lcom/bumptech/glide/m;->K:Lcom/bumptech/glide/m;

    .line 277
    .line 278
    invoke-virtual {v2}, LC2/a;->getOverrideHeight()I

    .line 279
    .line 280
    .line 281
    move-result v2

    .line 282
    invoke-static/range {p6 .. p7}, LG2/t;->isValidDimensions(II)Z

    .line 283
    .line 284
    .line 285
    move-result v3

    .line 286
    if-eqz v3, :cond_a

    .line 287
    .line 288
    iget-object v3, v0, Lcom/bumptech/glide/m;->K:Lcom/bumptech/glide/m;

    .line 289
    .line 290
    invoke-virtual {v3}, LC2/a;->isValidOverride()Z

    .line 291
    .line 292
    .line 293
    move-result v3

    .line 294
    if-nez v3, :cond_a

    .line 295
    .line 296
    invoke-virtual/range {p8 .. p8}, LC2/a;->getOverrideWidth()I

    .line 297
    .line 298
    .line 299
    move-result v1

    .line 300
    invoke-virtual/range {p8 .. p8}, LC2/a;->getOverrideHeight()I

    .line 301
    .line 302
    .line 303
    move-result v2

    .line 304
    :cond_a
    move v7, v1

    .line 305
    move v8, v2

    .line 306
    iget-object v1, v0, Lcom/bumptech/glide/m;->K:Lcom/bumptech/glide/m;

    .line 307
    .line 308
    iget-object v5, v1, Lcom/bumptech/glide/m;->G:Lcom/bumptech/glide/r;

    .line 309
    .line 310
    invoke-virtual {v1}, LC2/a;->getPriority()Lcom/bumptech/glide/Priority;

    .line 311
    .line 312
    .line 313
    move-result-object v6

    .line 314
    iget-object v9, v0, Lcom/bumptech/glide/m;->K:Lcom/bumptech/glide/m;

    .line 315
    .line 316
    move-object/from16 v2, p1

    .line 317
    .line 318
    move-object/from16 v3, p2

    .line 319
    .line 320
    move-object/from16 v10, p9

    .line 321
    .line 322
    move-object/from16 v4, v17

    .line 323
    .line 324
    invoke-virtual/range {v1 .. v10}, Lcom/bumptech/glide/m;->h(Ljava/lang/Object;LD2/k;LC2/d;Lcom/bumptech/glide/r;Lcom/bumptech/glide/Priority;IILC2/a;Ljava/util/concurrent/Executor;)LC2/c;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    invoke-virtual {v4, v13, v1}, LC2/b;->setRequests(LC2/c;LC2/c;)V

    .line 329
    .line 330
    .line 331
    return-object v4
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-super {p0}, LC2/a;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/bumptech/glide/m;->E:Ljava/lang/Class;

    .line 6
    .line 7
    invoke-static {v1, v0}, LG2/t;->hashCode(Ljava/lang/Object;I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/bumptech/glide/m;->G:Lcom/bumptech/glide/r;

    .line 12
    .line 13
    invoke-static {v1, v0}, LG2/t;->hashCode(Ljava/lang/Object;I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/bumptech/glide/m;->H:Ljava/lang/Object;

    .line 18
    .line 19
    invoke-static {v1, v0}, LG2/t;->hashCode(Ljava/lang/Object;I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object v1, p0, Lcom/bumptech/glide/m;->I:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-static {v1, v0}, LG2/t;->hashCode(Ljava/lang/Object;I)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-object v1, p0, Lcom/bumptech/glide/m;->J:Lcom/bumptech/glide/m;

    .line 30
    .line 31
    invoke-static {v1, v0}, LG2/t;->hashCode(Ljava/lang/Object;I)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iget-object v1, p0, Lcom/bumptech/glide/m;->K:Lcom/bumptech/glide/m;

    .line 36
    .line 37
    invoke-static {v1, v0}, LG2/t;->hashCode(Ljava/lang/Object;I)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-static {v1, v0}, LG2/t;->hashCode(Ljava/lang/Object;I)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iget-boolean v1, p0, Lcom/bumptech/glide/m;->L:Z

    .line 47
    .line 48
    invoke-static {v1, v0}, LG2/t;->hashCode(ZI)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iget-boolean v1, p0, Lcom/bumptech/glide/m;->M:Z

    .line 53
    .line 54
    invoke-static {v1, v0}, LG2/t;->hashCode(ZI)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    return v0
.end method

.method public final i(LD2/k;LC2/a;Ljava/util/concurrent/Executor;)V
    .locals 11

    .line 1
    invoke-static {p1}, LG2/r;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/bumptech/glide/m;->M:Z

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    new-instance v2, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v5, p0, Lcom/bumptech/glide/m;->G:Lcom/bumptech/glide/r;

    .line 14
    .line 15
    invoke-virtual {p2}, LC2/a;->getPriority()Lcom/bumptech/glide/Priority;

    .line 16
    .line 17
    .line 18
    move-result-object v6

    .line 19
    invoke-virtual {p2}, LC2/a;->getOverrideWidth()I

    .line 20
    .line 21
    .line 22
    move-result v7

    .line 23
    invoke-virtual {p2}, LC2/a;->getOverrideHeight()I

    .line 24
    .line 25
    .line 26
    move-result v8

    .line 27
    const/4 v4, 0x0

    .line 28
    move-object v1, p0

    .line 29
    move-object v3, p1

    .line 30
    move-object v9, p2

    .line 31
    move-object v10, p3

    .line 32
    invoke-virtual/range {v1 .. v10}, Lcom/bumptech/glide/m;->h(Ljava/lang/Object;LD2/k;LC2/d;Lcom/bumptech/glide/r;Lcom/bumptech/glide/Priority;IILC2/a;Ljava/util/concurrent/Executor;)LC2/c;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-interface {v3}, LD2/k;->getRequest()LC2/c;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-interface {p1, p2}, LC2/c;->isEquivalentTo(LC2/c;)Z

    .line 41
    .line 42
    .line 43
    move-result p3

    .line 44
    if-eqz p3, :cond_2

    .line 45
    .line 46
    invoke-virtual {v9}, LC2/a;->isMemoryCacheable()Z

    .line 47
    .line 48
    .line 49
    move-result p3

    .line 50
    if-nez p3, :cond_0

    .line 51
    .line 52
    invoke-interface {p2}, LC2/c;->isComplete()Z

    .line 53
    .line 54
    .line 55
    move-result p3

    .line 56
    if-eqz p3, :cond_0

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    invoke-static {p2}, LG2/r;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, LC2/c;

    .line 64
    .line 65
    invoke-interface {p1}, LC2/c;->isRunning()Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-nez p1, :cond_1

    .line 70
    .line 71
    invoke-interface {p2}, LC2/c;->begin()V

    .line 72
    .line 73
    .line 74
    :cond_1
    return-void

    .line 75
    :cond_2
    :goto_0
    iget-object p2, v1, Lcom/bumptech/glide/m;->D:Lcom/bumptech/glide/q;

    .line 76
    .line 77
    invoke-virtual {p2, v3}, Lcom/bumptech/glide/q;->clear(LD2/k;)V

    .line 78
    .line 79
    .line 80
    invoke-interface {v3, p1}, LD2/k;->setRequest(LC2/c;)V

    .line 81
    .line 82
    .line 83
    iget-object p2, v1, Lcom/bumptech/glide/m;->D:Lcom/bumptech/glide/q;

    .line 84
    .line 85
    monitor-enter p2

    .line 86
    :try_start_0
    iget-object p3, p2, Lcom/bumptech/glide/q;->n:Lcom/bumptech/glide/manager/G;

    .line 87
    .line 88
    invoke-virtual {p3, v3}, Lcom/bumptech/glide/manager/G;->track(LD2/k;)V

    .line 89
    .line 90
    .line 91
    iget-object p3, p2, Lcom/bumptech/glide/q;->j:Lcom/bumptech/glide/manager/s;

    .line 92
    .line 93
    invoke-virtual {p3, p1}, Lcom/bumptech/glide/manager/s;->runRequest(LC2/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .line 95
    .line 96
    monitor-exit p2

    .line 97
    return-void

    .line 98
    :catchall_0
    move-exception v0

    .line 99
    move-object p1, v0

    .line 100
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    throw p1

    .line 102
    :cond_3
    move-object v1, p0

    .line 103
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 104
    .line 105
    const-string p2, "You must call #load() before calling #into()"

    .line 106
    .line 107
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw p1
.end method

.method public into(LD2/k;)LD2/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "LD2/k;",
            ">(TY;)TY;"
        }
    .end annotation

    .line 1
    invoke-static {}, LG2/i;->mainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1, p0, v0}, Lcom/bumptech/glide/m;->i(LD2/k;LC2/a;Ljava/util/concurrent/Executor;)V

    return-object p1
.end method

.method public into(Landroid/widget/ImageView;)LD2/n;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "LD2/n;"
        }
    .end annotation

    .line 3
    invoke-static {}, LG2/t;->assertMainThread()V

    .line 4
    invoke-static {p1}, LG2/r;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, LC2/a;->isTransformationSet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p0}, LC2/a;->isTransformationAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    sget-object v0, Lcom/bumptech/glide/l;->a:[I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 9
    :pswitch_0
    invoke-virtual {p0}, Lcom/bumptech/glide/m;->clone()LC2/a;

    move-result-object v0

    invoke-virtual {v0}, LC2/a;->optionalCenterInside()LC2/a;

    move-result-object v0

    goto :goto_1

    .line 10
    :pswitch_1
    invoke-virtual {p0}, Lcom/bumptech/glide/m;->clone()LC2/a;

    move-result-object v0

    invoke-virtual {v0}, LC2/a;->optionalFitCenter()LC2/a;

    move-result-object v0

    goto :goto_1

    .line 11
    :pswitch_2
    invoke-virtual {p0}, Lcom/bumptech/glide/m;->clone()LC2/a;

    move-result-object v0

    invoke-virtual {v0}, LC2/a;->optionalCenterInside()LC2/a;

    move-result-object v0

    goto :goto_1

    .line 12
    :pswitch_3
    invoke-virtual {p0}, Lcom/bumptech/glide/m;->clone()LC2/a;

    move-result-object v0

    invoke-virtual {v0}, LC2/a;->optionalCenterCrop()LC2/a;

    move-result-object v0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v0, p0

    .line 13
    :goto_1
    iget-object v1, p0, Lcom/bumptech/glide/m;->F:Lcom/bumptech/glide/h;

    iget-object v2, p0, Lcom/bumptech/glide/m;->E:Ljava/lang/Class;

    .line 14
    invoke-virtual {v1, p1, v2}, Lcom/bumptech/glide/h;->buildImageViewTarget(Landroid/widget/ImageView;Ljava/lang/Class;)LD2/n;

    move-result-object p1

    .line 15
    invoke-static {}, LG2/i;->mainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 16
    invoke-virtual {p0, p1, v0, v1}, Lcom/bumptech/glide/m;->i(LD2/k;LC2/a;Ljava/util/concurrent/Executor;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j(Ljava/lang/Object;)Lcom/bumptech/glide/m;
    .locals 1

    .line 1
    invoke-virtual {p0}, LC2/a;->isAutoCloneEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/bumptech/glide/m;->clone()Lcom/bumptech/glide/m;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/m;->j(Ljava/lang/Object;)Lcom/bumptech/glide/m;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/m;->H:Ljava/lang/Object;

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/bumptech/glide/m;->M:Z

    .line 20
    .line 21
    invoke-virtual {p0}, LC2/a;->selfOrThrowIfLocked()LC2/a;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lcom/bumptech/glide/m;

    .line 26
    .line 27
    return-object p1
.end method

.method public load(Ljava/lang/Integer;)Lcom/bumptech/glide/m;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/bumptech/glide/m;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/m;->j(Ljava/lang/Object;)Lcom/bumptech/glide/m;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/bumptech/glide/m;->C:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {p1, v1}, LC2/a;->theme(Landroid/content/res/Resources$Theme;)LC2/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/m;

    .line 4
    invoke-static {v0}, LF2/a;->obtain(Landroid/content/Context;)Ll2/m;

    move-result-object v0

    invoke-virtual {p1, v0}, LC2/a;->signature(Ll2/m;)LC2/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/m;

    return-object p1
.end method

.method public load(Ljava/lang/Object;)Lcom/bumptech/glide/m;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bumptech/glide/m;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/m;->j(Ljava/lang/Object;)Lcom/bumptech/glide/m;

    move-result-object p1

    return-object p1
.end method
