.class public final Lcom/bumptech/glide/load/engine/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp2/l;
.implements Ln2/F;


# static fields
.field public static final h:Z


# instance fields
.field public final a:LC/k;

.field public final b:LJ3/b;

.field public final c:Lp2/m;

.field public final d:Ln2/y;

.field public final e:Ln2/Q;

.field public final f:Ln2/w;

.field public final g:Ln2/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "Engine"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/bumptech/glide/load/engine/b;->h:Z

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Lp2/m;Lp2/a;Lq2/h;Lq2/h;Lq2/h;Lq2/h;Z)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/b;->c:Lp2/m;

    .line 5
    .line 6
    new-instance v0, Ln2/z;

    .line 7
    .line 8
    invoke-direct {v0, p2}, Ln2/z;-><init>(Lp2/a;)V

    .line 9
    .line 10
    .line 11
    new-instance p2, Ln2/e;

    .line 12
    .line 13
    invoke-direct {p2, p7}, Ln2/e;-><init>(Z)V

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/b;->g:Ln2/e;

    .line 17
    .line 18
    monitor-enter p0

    .line 19
    :try_start_0
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :try_start_1
    iput-object p0, p2, Ln2/e;->e:Lcom/bumptech/glide/load/engine/b;

    .line 21
    .line 22
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 23
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24
    new-instance p2, LJ3/b;

    .line 25
    .line 26
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/b;->b:LJ3/b;

    .line 30
    .line 31
    new-instance p2, LC/k;

    .line 32
    .line 33
    const/16 p7, 0xa

    .line 34
    .line 35
    invoke-direct {p2, p7}, LC/k;-><init>(I)V

    .line 36
    .line 37
    .line 38
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/b;->a:LC/k;

    .line 39
    .line 40
    new-instance v1, Ln2/y;

    .line 41
    .line 42
    move-object v7, p0

    .line 43
    move-object v6, p0

    .line 44
    move-object v2, p3

    .line 45
    move-object v3, p4

    .line 46
    move-object v4, p5

    .line 47
    move-object v5, p6

    .line 48
    invoke-direct/range {v1 .. v7}, Ln2/y;-><init>(Lq2/h;Lq2/h;Lq2/h;Lq2/h;Lcom/bumptech/glide/load/engine/b;Lcom/bumptech/glide/load/engine/b;)V

    .line 49
    .line 50
    .line 51
    iput-object v1, v6, Lcom/bumptech/glide/load/engine/b;->d:Ln2/y;

    .line 52
    .line 53
    new-instance p2, Ln2/w;

    .line 54
    .line 55
    invoke-direct {p2, v0}, Ln2/w;-><init>(Ln2/z;)V

    .line 56
    .line 57
    .line 58
    iput-object p2, v6, Lcom/bumptech/glide/load/engine/b;->f:Ln2/w;

    .line 59
    .line 60
    new-instance p2, Ln2/Q;

    .line 61
    .line 62
    invoke-direct {p2}, Ln2/Q;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object p2, v6, Lcom/bumptech/glide/load/engine/b;->e:Ln2/Q;

    .line 66
    .line 67
    check-cast p1, Lp2/k;

    .line 68
    .line 69
    invoke-virtual {p1, p0}, Lp2/k;->setResourceRemovedListener(Lp2/l;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :catchall_0
    move-exception v0

    .line 74
    move-object v6, p0

    .line 75
    :goto_0
    move-object p1, v0

    .line 76
    goto :goto_2

    .line 77
    :catchall_1
    move-exception v0

    .line 78
    move-object v6, p0

    .line 79
    :goto_1
    move-object p1, v0

    .line 80
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 81
    :try_start_4
    throw p1

    .line 82
    :catchall_2
    move-exception v0

    .line 83
    goto :goto_0

    .line 84
    :catchall_3
    move-exception v0

    .line 85
    goto :goto_1

    .line 86
    :goto_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 87
    throw p1
.end method

.method public static b(Ljava/lang/String;JLn2/E;)V
    .locals 1

    .line 1
    const-string v0, " in "

    .line 2
    .line 3
    invoke-static {p0, v0}, LA/i;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p1, p2}, LG2/m;->getElapsedMillis(J)D

    .line 8
    .line 9
    .line 10
    move-result-wide p1

    .line 11
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, "ms, key: "

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string p1, "Engine"

    .line 27
    .line 28
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final a(Ln2/E;ZJ)Ln2/G;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    move-object v6, p0

    .line 5
    goto/16 :goto_3

    .line 6
    .line 7
    :cond_0
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/b;->g:Ln2/e;

    .line 8
    .line 9
    monitor-enter p2

    .line 10
    :try_start_0
    iget-object v1, p2, Ln2/e;->c:Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Ln2/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    monitor-exit p2

    .line 21
    move-object v2, v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ln2/G;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    :try_start_2
    invoke-virtual {p2, v1}, Ln2/e;->b(Ln2/d;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    move-object p1, v0

    .line 37
    move-object v6, p0

    .line 38
    goto :goto_5

    .line 39
    :cond_2
    :goto_0
    monitor-exit p2

    .line 40
    :goto_1
    if-eqz v2, :cond_3

    .line 41
    .line 42
    invoke-virtual {v2}, Ln2/G;->a()V

    .line 43
    .line 44
    .line 45
    :cond_3
    if-eqz v2, :cond_5

    .line 46
    .line 47
    sget-boolean p2, Lcom/bumptech/glide/load/engine/b;->h:Z

    .line 48
    .line 49
    if-eqz p2, :cond_4

    .line 50
    .line 51
    const-string p2, "Loaded resource from active resources"

    .line 52
    .line 53
    invoke-static {p2, p3, p4, p1}, Lcom/bumptech/glide/load/engine/b;->b(Ljava/lang/String;JLn2/E;)V

    .line 54
    .line 55
    .line 56
    :cond_4
    return-object v2

    .line 57
    :cond_5
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/b;->c:Lp2/m;

    .line 58
    .line 59
    check-cast p2, Lp2/k;

    .line 60
    .line 61
    invoke-virtual {p2, p1}, Lp2/k;->remove(Ll2/m;)Ln2/M;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    if-nez v2, :cond_6

    .line 66
    .line 67
    move-object v6, p0

    .line 68
    move-object v5, p1

    .line 69
    move-object v2, v0

    .line 70
    goto :goto_2

    .line 71
    :cond_6
    instance-of p2, v2, Ln2/G;

    .line 72
    .line 73
    if-eqz p2, :cond_7

    .line 74
    .line 75
    check-cast v2, Ln2/G;

    .line 76
    .line 77
    move-object v6, p0

    .line 78
    move-object v5, p1

    .line 79
    goto :goto_2

    .line 80
    :cond_7
    new-instance v1, Ln2/G;

    .line 81
    .line 82
    const/4 v3, 0x1

    .line 83
    const/4 v4, 0x1

    .line 84
    move-object v6, p0

    .line 85
    move-object v5, p1

    .line 86
    invoke-direct/range {v1 .. v6}, Ln2/G;-><init>(Ln2/M;ZZLl2/m;Ln2/F;)V

    .line 87
    .line 88
    .line 89
    move-object v2, v1

    .line 90
    :goto_2
    if-eqz v2, :cond_8

    .line 91
    .line 92
    invoke-virtual {v2}, Ln2/G;->a()V

    .line 93
    .line 94
    .line 95
    iget-object p1, v6, Lcom/bumptech/glide/load/engine/b;->g:Ln2/e;

    .line 96
    .line 97
    invoke-virtual {p1, v5, v2}, Ln2/e;->a(Ll2/m;Ln2/G;)V

    .line 98
    .line 99
    .line 100
    :cond_8
    if-eqz v2, :cond_a

    .line 101
    .line 102
    sget-boolean p1, Lcom/bumptech/glide/load/engine/b;->h:Z

    .line 103
    .line 104
    if-eqz p1, :cond_9

    .line 105
    .line 106
    const-string p1, "Loaded resource from cache"

    .line 107
    .line 108
    invoke-static {p1, p3, p4, v5}, Lcom/bumptech/glide/load/engine/b;->b(Ljava/lang/String;JLn2/E;)V

    .line 109
    .line 110
    .line 111
    :cond_9
    return-object v2

    .line 112
    :cond_a
    :goto_3
    return-object v0

    .line 113
    :catchall_1
    move-exception v0

    .line 114
    move-object v6, p0

    .line 115
    :goto_4
    move-object p1, v0

    .line 116
    :goto_5
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 117
    throw p1

    .line 118
    :catchall_2
    move-exception v0

    .line 119
    goto :goto_4
.end method

.method public final c(Lcom/bumptech/glide/h;Ljava/lang/Object;Ll2/m;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Ln2/u;Ljava/util/Map;ZZLl2/q;ZZZZLC2/g;Ljava/util/concurrent/Executor;Ln2/E;J)Ln2/A;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p13

    move/from16 v9, p17

    move-object/from16 v10, p18

    move-object/from16 v11, p19

    move-object/from16 v12, p20

    move-wide/from16 v13, p21

    .line 1
    iget-object v15, v1, Lcom/bumptech/glide/load/engine/b;->a:LC/k;

    if-eqz v9, :cond_0

    .line 2
    iget-object v15, v15, LC/k;->b:Ljava/lang/Object;

    :goto_0
    check-cast v15, Ljava/util/HashMap;

    goto :goto_1

    :cond_0
    iget-object v15, v15, LC/k;->a:Ljava/lang/Object;

    goto :goto_0

    .line 3
    :goto_1
    invoke-virtual {v15, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/bumptech/glide/load/engine/e;

    if-eqz v15, :cond_2

    .line 4
    invoke-virtual {v15, v10, v11}, Lcom/bumptech/glide/load/engine/e;->a(LC2/g;Ljava/util/concurrent/Executor;)V

    .line 5
    sget-boolean v0, Lcom/bumptech/glide/load/engine/b;->h:Z

    if-eqz v0, :cond_1

    .line 6
    const-string v0, "Added to existing load"

    invoke-static {v0, v13, v14, v12}, Lcom/bumptech/glide/load/engine/b;->b(Ljava/lang/String;JLn2/E;)V

    .line 7
    :cond_1
    new-instance v0, Ln2/A;

    invoke-direct {v0, v1, v10, v15}, Ln2/A;-><init>(Lcom/bumptech/glide/load/engine/b;LC2/g;Lcom/bumptech/glide/load/engine/e;)V

    return-object v0

    .line 8
    :cond_2
    iget-object v15, v1, Lcom/bumptech/glide/load/engine/b;->d:Ln2/y;

    .line 9
    iget-object v15, v15, Ln2/y;->g:LL/e;

    .line 10
    invoke-interface {v15}, LL/e;->acquire()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/bumptech/glide/load/engine/e;

    invoke-static {v15}, LG2/r;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/bumptech/glide/load/engine/e;

    .line 11
    monitor-enter v15

    .line 12
    :try_start_0
    iput-object v12, v15, Lcom/bumptech/glide/load/engine/e;->u:Ln2/E;

    move/from16 v13, p14

    .line 13
    iput-boolean v13, v15, Lcom/bumptech/glide/load/engine/e;->v:Z

    move/from16 v13, p15

    .line 14
    iput-boolean v13, v15, Lcom/bumptech/glide/load/engine/e;->w:Z

    move/from16 v13, p16

    .line 15
    iput-boolean v13, v15, Lcom/bumptech/glide/load/engine/e;->x:Z

    .line 16
    iput-boolean v9, v15, Lcom/bumptech/glide/load/engine/e;->y:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit v15

    .line 18
    iget-object v13, v1, Lcom/bumptech/glide/load/engine/b;->f:Ln2/w;

    .line 19
    iget-object v14, v13, Ln2/w;->b:LL/e;

    .line 20
    invoke-interface {v14}, LL/e;->acquire()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/bumptech/glide/load/engine/a;

    invoke-static {v14}, LG2/r;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/bumptech/glide/load/engine/a;

    .line 21
    iget v10, v13, Ln2/w;->c:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v13, Ln2/w;->c:I

    .line 22
    iget-object v11, v14, Lcom/bumptech/glide/load/engine/a;->b:Ln2/k;

    .line 23
    iput-object v0, v11, Ln2/k;->c:Lcom/bumptech/glide/h;

    .line 24
    iput-object v2, v11, Ln2/k;->d:Ljava/lang/Object;

    .line 25
    iput-object v3, v11, Ln2/k;->n:Ll2/m;

    .line 26
    iput v4, v11, Ln2/k;->e:I

    .line 27
    iput v5, v11, Ln2/k;->f:I

    .line 28
    iput-object v7, v11, Ln2/k;->p:Ln2/u;

    move-object/from16 v13, p6

    .line 29
    iput-object v13, v11, Ln2/k;->g:Ljava/lang/Class;

    .line 30
    iget-object v13, v14, Lcom/bumptech/glide/load/engine/a;->j:Ln2/z;

    iput-object v13, v11, Ln2/k;->h:Ln2/z;

    move-object/from16 v13, p7

    .line 31
    iput-object v13, v11, Ln2/k;->k:Ljava/lang/Class;

    .line 32
    iput-object v6, v11, Ln2/k;->o:Lcom/bumptech/glide/Priority;

    .line 33
    iput-object v8, v11, Ln2/k;->i:Ll2/q;

    move-object/from16 v13, p10

    .line 34
    iput-object v13, v11, Ln2/k;->j:Ljava/util/Map;

    move/from16 v13, p11

    .line 35
    iput-boolean v13, v11, Ln2/k;->q:Z

    move/from16 v13, p12

    .line 36
    iput-boolean v13, v11, Ln2/k;->r:Z

    .line 37
    iput-object v0, v14, Lcom/bumptech/glide/load/engine/a;->q:Lcom/bumptech/glide/h;

    .line 38
    iput-object v3, v14, Lcom/bumptech/glide/load/engine/a;->r:Ll2/m;

    .line 39
    iput-object v6, v14, Lcom/bumptech/glide/load/engine/a;->s:Lcom/bumptech/glide/Priority;

    .line 40
    iput-object v12, v14, Lcom/bumptech/glide/load/engine/a;->t:Ln2/E;

    .line 41
    iput v4, v14, Lcom/bumptech/glide/load/engine/a;->u:I

    .line 42
    iput v5, v14, Lcom/bumptech/glide/load/engine/a;->v:I

    .line 43
    iput-object v7, v14, Lcom/bumptech/glide/load/engine/a;->w:Ln2/u;

    .line 44
    iput-boolean v9, v14, Lcom/bumptech/glide/load/engine/a;->D:Z

    .line 45
    iput-object v8, v14, Lcom/bumptech/glide/load/engine/a;->x:Ll2/q;

    .line 46
    iput-object v15, v14, Lcom/bumptech/glide/load/engine/a;->y:Lcom/bumptech/glide/load/engine/e;

    .line 47
    iput v10, v14, Lcom/bumptech/glide/load/engine/a;->z:I

    .line 48
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->b:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    iput-object v0, v14, Lcom/bumptech/glide/load/engine/a;->B:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    .line 49
    iput-object v2, v14, Lcom/bumptech/glide/load/engine/a;->E:Ljava/lang/Object;

    .line 50
    iget-object v0, v1, Lcom/bumptech/glide/load/engine/b;->a:LC/k;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    iget-boolean v2, v15, Lcom/bumptech/glide/load/engine/e;->y:Z

    if-eqz v2, :cond_3

    .line 52
    iget-object v0, v0, LC/k;->b:Ljava/lang/Object;

    :goto_2
    check-cast v0, Ljava/util/HashMap;

    goto :goto_3

    :cond_3
    iget-object v0, v0, LC/k;->a:Ljava/lang/Object;

    goto :goto_2

    .line 53
    :goto_3
    invoke-virtual {v0, v12, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v10, p18

    move-object/from16 v11, p19

    .line 54
    invoke-virtual {v15, v10, v11}, Lcom/bumptech/glide/load/engine/e;->a(LC2/g;Ljava/util/concurrent/Executor;)V

    .line 55
    invoke-virtual {v15, v14}, Lcom/bumptech/glide/load/engine/e;->start(Lcom/bumptech/glide/load/engine/a;)V

    .line 56
    sget-boolean v0, Lcom/bumptech/glide/load/engine/b;->h:Z

    if-eqz v0, :cond_4

    .line 57
    const-string v0, "Started new load"

    move-wide/from16 v13, p21

    invoke-static {v0, v13, v14, v12}, Lcom/bumptech/glide/load/engine/b;->b(Ljava/lang/String;JLn2/E;)V

    .line 58
    :cond_4
    new-instance v0, Ln2/A;

    invoke-direct {v0, v1, v10, v15}, Ln2/A;-><init>(Lcom/bumptech/glide/load/engine/b;LC2/g;Lcom/bumptech/glide/load/engine/e;)V

    return-object v0

    :catchall_0
    move-exception v0

    .line 59
    :try_start_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public load(Lcom/bumptech/glide/h;Ljava/lang/Object;Ll2/m;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Ln2/u;Ljava/util/Map;ZZLl2/q;ZZZZLC2/g;Ljava/util/concurrent/Executor;)Ln2/A;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/h;",
            "Ljava/lang/Object;",
            "Ll2/m;",
            "II",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/Priority;",
            "Ln2/u;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ll2/t;",
            ">;ZZ",
            "Ll2/q;",
            "ZZZZ",
            "LC2/g;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ln2/A;"
        }
    .end annotation

    move-object/from16 v2, p0

    .line 1
    sget-boolean v0, Lcom/bumptech/glide/load/engine/b;->h:Z

    if-eqz v0, :cond_0

    invoke-static {}, LG2/m;->getLogTime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 2
    :goto_0
    iget-object v3, v2, Lcom/bumptech/glide/load/engine/b;->b:LJ3/b;

    .line 3
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v4, Ln2/E;

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v9, p10

    move-object/from16 v12, p13

    invoke-direct/range {v4 .. v12}, Ln2/E;-><init>(Ljava/lang/Object;Ll2/m;IILjava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Ll2/q;)V

    .line 5
    monitor-enter p0

    move/from16 v3, p14

    .line 6
    :try_start_0
    invoke-virtual {v2, v4, v3, v0, v1}, Lcom/bumptech/glide/load/engine/b;->a(Ln2/E;ZJ)Ln2/G;

    move-result-object v5

    if-nez v5, :cond_1

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move-object/from16 v15, p13

    move/from16 v17, p15

    move/from16 v18, p16

    move/from16 v19, p17

    move-object/from16 v20, p18

    move-object/from16 v21, p19

    move-wide/from16 v23, v0

    move/from16 v16, v3

    move-object/from16 v22, v4

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 7
    invoke-virtual/range {v2 .. v24}, Lcom/bumptech/glide/load/engine/b;->c(Lcom/bumptech/glide/h;Ljava/lang/Object;Ll2/m;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Ln2/u;Ljava/util/Map;ZZLl2/q;ZZZZLC2/g;Ljava/util/concurrent/Executor;Ln2/E;J)Ln2/A;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    move-object v0, v5

    .line 8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    sget-object v1, Lcom/bumptech/glide/load/DataSource;->m:Lcom/bumptech/glide/load/DataSource;

    const/4 v2, 0x0

    move-object/from16 v3, p18

    check-cast v3, Lcom/bumptech/glide/request/a;

    invoke-virtual {v3, v0, v1, v2}, Lcom/bumptech/glide/request/a;->onResourceReady(Ln2/M;Lcom/bumptech/glide/load/DataSource;Z)V

    const/4 v0, 0x0

    return-object v0

    .line 10
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized onEngineJobCancelled(Lcom/bumptech/glide/load/engine/e;Ll2/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/e;",
            "Ll2/m;",
            ")V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b;->a:LC/k;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-boolean v1, p1, Lcom/bumptech/glide/load/engine/e;->y:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v0, v0, LC/k;->b:Ljava/lang/Object;

    .line 12
    .line 13
    :goto_0
    check-cast v0, Ljava/util/HashMap;

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget-object v0, v0, LC/k;->a:Ljava/lang/Object;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :goto_1
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    :cond_1
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    throw p1
.end method

.method public declared-synchronized onEngineJobComplete(Lcom/bumptech/glide/load/engine/e;Ll2/m;Ln2/G;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/e;",
            "Ll2/m;",
            "Ln2/G;",
            ")V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p3, :cond_0

    .line 3
    .line 4
    :try_start_0
    iget-boolean v0, p3, Ln2/G;->b:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b;->g:Ln2/e;

    .line 9
    .line 10
    invoke-virtual {v0, p2, p3}, Ln2/e;->a(Ll2/m;Ln2/G;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    goto :goto_3

    .line 16
    :cond_0
    :goto_0
    iget-object p3, p0, Lcom/bumptech/glide/load/engine/b;->a:LC/k;

    .line 17
    .line 18
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    iget-boolean v0, p1, Lcom/bumptech/glide/load/engine/e;->y:Z

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object p3, p3, LC/k;->b:Ljava/lang/Object;

    .line 26
    .line 27
    :goto_1
    check-cast p3, Ljava/util/HashMap;

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_1
    iget-object p3, p3, LC/k;->a:Ljava/lang/Object;

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :goto_2
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    :cond_2
    monitor-exit p0

    .line 47
    return-void

    .line 48
    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw p1
.end method

.method public onResourceReleased(Ll2/m;Ln2/G;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll2/m;",
            "Ln2/G;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b;->g:Ln2/e;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, v0, Ln2/e;->c:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ln2/d;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    iput-object v2, v1, Ln2/d;->c:Ln2/M;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    :cond_0
    monitor-exit v0

    .line 21
    iget-boolean v0, p2, Ln2/G;->b:Z

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b;->c:Lp2/m;

    .line 26
    .line 27
    check-cast v0, Lp2/k;

    .line 28
    .line 29
    invoke-virtual {v0, p1, p2}, Lp2/k;->put(Ll2/m;Ln2/M;)Ln2/M;

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/b;->e:Ln2/Q;

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-virtual {p1, p2, v0}, Ln2/Q;->a(Ln2/M;Z)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    throw p1
.end method

.method public onResourceRemoved(Ln2/M;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln2/M;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b;->e:Ln2/Q;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, v1}, Ln2/Q;->a(Ln2/M;Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public release(Ln2/M;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln2/M;",
            ")V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ln2/G;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ln2/G;

    .line 6
    .line 7
    invoke-virtual {p1}, Ln2/G;->b()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string v0, "Cannot release anything but an EngineResource"

    .line 14
    .line 15
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p1
.end method
