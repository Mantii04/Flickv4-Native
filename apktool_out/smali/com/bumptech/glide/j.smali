.class public final Lcom/bumptech/glide/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr2/Z;

.field public final b:LB2/b;

.field public final c:LB2/g;

.field public final d:LB2/i;

.field public final e:Lcom/bumptech/glide/load/data/j;

.field public final f:Lz2/g;

.field public final g:LB2/c;

.field public final h:LB2/e;

.field public final i:LB2/d;

.field public final j:LL/e;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, LB2/e;

    .line 5
    .line 6
    invoke-direct {v0}, LB2/e;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bumptech/glide/j;->h:LB2/e;

    .line 10
    .line 11
    new-instance v0, LB2/d;

    .line 12
    .line 13
    invoke-direct {v0}, LB2/d;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/bumptech/glide/j;->i:LB2/d;

    .line 17
    .line 18
    invoke-static {}, LH2/h;->threadSafeList()LL/e;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/bumptech/glide/j;->j:LL/e;

    .line 23
    .line 24
    new-instance v1, Lr2/Z;

    .line 25
    .line 26
    invoke-direct {v1, v0}, Lr2/Z;-><init>(LL/e;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/bumptech/glide/j;->a:Lr2/Z;

    .line 30
    .line 31
    new-instance v0, LB2/b;

    .line 32
    .line 33
    invoke-direct {v0}, LB2/b;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/bumptech/glide/j;->b:LB2/b;

    .line 37
    .line 38
    new-instance v0, LB2/g;

    .line 39
    .line 40
    invoke-direct {v0}, LB2/g;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lcom/bumptech/glide/j;->c:LB2/g;

    .line 44
    .line 45
    new-instance v0, LB2/i;

    .line 46
    .line 47
    invoke-direct {v0}, LB2/i;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lcom/bumptech/glide/j;->d:LB2/i;

    .line 51
    .line 52
    new-instance v0, Lcom/bumptech/glide/load/data/j;

    .line 53
    .line 54
    invoke-direct {v0}, Lcom/bumptech/glide/load/data/j;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lcom/bumptech/glide/j;->e:Lcom/bumptech/glide/load/data/j;

    .line 58
    .line 59
    new-instance v0, Lz2/g;

    .line 60
    .line 61
    invoke-direct {v0}, Lz2/g;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lcom/bumptech/glide/j;->f:Lz2/g;

    .line 65
    .line 66
    new-instance v0, LB2/c;

    .line 67
    .line 68
    invoke-direct {v0}, LB2/c;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object v0, p0, Lcom/bumptech/glide/j;->g:LB2/c;

    .line 72
    .line 73
    const-string v0, "Bitmap"

    .line 74
    .line 75
    const-string v1, "BitmapDrawable"

    .line 76
    .line 77
    const-string v2, "Animation"

    .line 78
    .line 79
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/j;->setResourceDecoderBucketPriorityList(Ljava/util/List;)Lcom/bumptech/glide/j;

    .line 88
    .line 89
    .line 90
    return-void
.end method


# virtual methods
.method public append(Ljava/lang/Class;Ljava/lang/Class;Ll2/r;)Lcom/bumptech/glide/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Ll2/r;",
            ")",
            "Lcom/bumptech/glide/j;"
        }
    .end annotation

    .line 2
    const-string v0, "legacy_append"

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/bumptech/glide/j;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ll2/r;)Lcom/bumptech/glide/j;

    return-object p0
.end method

.method public append(Ljava/lang/Class;Ljava/lang/Class;Lr2/W;)Lcom/bumptech/glide/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lr2/W;",
            ")",
            "Lcom/bumptech/glide/j;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/bumptech/glide/j;->a:Lr2/Z;

    invoke-virtual {v0, p1, p2, p3}, Lr2/Z;->append(Ljava/lang/Class;Ljava/lang/Class;Lr2/W;)V

    return-object p0
.end method

.method public append(Ljava/lang/Class;Ll2/a;)Lcom/bumptech/glide/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ll2/a;",
            ")",
            "Lcom/bumptech/glide/j;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/j;->b:LB2/b;

    invoke-virtual {v0, p1, p2}, LB2/b;->append(Ljava/lang/Class;Ll2/a;)V

    return-object p0
.end method

.method public append(Ljava/lang/Class;Ll2/s;)Lcom/bumptech/glide/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Ll2/s;",
            ")",
            "Lcom/bumptech/glide/j;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/j;->d:LB2/i;

    invoke-virtual {v0, p1, p2}, LB2/i;->append(Ljava/lang/Class;Ll2/s;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ll2/r;)Lcom/bumptech/glide/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Ll2/r;",
            ")",
            "Lcom/bumptech/glide/j;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/bumptech/glide/j;->c:LB2/g;

    invoke-virtual {v0, p1, p4, p2, p3}, LB2/g;->append(Ljava/lang/String;Ll2/r;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public getImageHeaderParsers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ll2/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/j;->g:LB2/c;

    .line 2
    .line 3
    invoke-virtual {v0}, LB2/c;->getParsers()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    new-instance v0, Lcom/bumptech/glide/Registry$NoImageHeaderParserException;

    .line 15
    .line 16
    invoke-direct {v0}, Lcom/bumptech/glide/Registry$NoImageHeaderParserException;-><init>()V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method public getLoadPath(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ln2/J;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;)",
            "Ln2/J;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v8, p2

    .line 6
    .line 7
    move-object/from16 v9, p3

    .line 8
    .line 9
    iget-object v10, v0, Lcom/bumptech/glide/j;->i:LB2/d;

    .line 10
    .line 11
    invoke-virtual {v10, v2, v8, v9}, LB2/d;->get(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ln2/J;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v10, v1}, LB2/d;->isEmptyLoadPath(Ln2/J;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/4 v11, 0x0

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    return-object v11

    .line 23
    :cond_0
    if-nez v1, :cond_4

    .line 24
    .line 25
    new-instance v12, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object v13, v0, Lcom/bumptech/glide/j;->c:LB2/g;

    .line 31
    .line 32
    invoke-virtual {v13, v2, v8}, LB2/g;->getResourceClasses(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v14

    .line 40
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    move-object v3, v1

    .line 51
    check-cast v3, Ljava/lang/Class;

    .line 52
    .line 53
    iget-object v15, v0, Lcom/bumptech/glide/j;->f:Lz2/g;

    .line 54
    .line 55
    invoke-virtual {v15, v3, v9}, Lz2/g;->getTranscodeClasses(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v16

    .line 63
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_1

    .line 68
    .line 69
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    move-object v4, v1

    .line 74
    check-cast v4, Ljava/lang/Class;

    .line 75
    .line 76
    invoke-virtual {v13, v2, v3}, LB2/g;->getDecoders(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-virtual {v15, v3, v4}, Lz2/g;->get(Ljava/lang/Class;Ljava/lang/Class;)Lz2/e;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    new-instance v1, Ln2/o;

    .line 85
    .line 86
    iget-object v7, v0, Lcom/bumptech/glide/j;->j:LL/e;

    .line 87
    .line 88
    invoke-direct/range {v1 .. v7}, Ln2/o;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Lz2/e;LL/e;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-object/from16 v2, p1

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_1
    move-object/from16 v2, p1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_3

    .line 105
    .line 106
    move-object/from16 v2, p1

    .line 107
    .line 108
    move-object v3, v8

    .line 109
    move-object v4, v9

    .line 110
    goto :goto_2

    .line 111
    :cond_3
    new-instance v1, Ln2/J;

    .line 112
    .line 113
    iget-object v6, v0, Lcom/bumptech/glide/j;->j:LL/e;

    .line 114
    .line 115
    move-object/from16 v2, p1

    .line 116
    .line 117
    move-object v3, v8

    .line 118
    move-object v4, v9

    .line 119
    move-object v5, v12

    .line 120
    invoke-direct/range {v1 .. v6}, Ln2/J;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;LL/e;)V

    .line 121
    .line 122
    .line 123
    move-object v11, v1

    .line 124
    :goto_2
    invoke-virtual {v10, v2, v3, v4, v11}, LB2/d;->put(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ln2/J;)V

    .line 125
    .line 126
    .line 127
    return-object v11

    .line 128
    :cond_4
    return-object v1
.end method

.method public getModelLoaders(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            ">(TModel;)",
            "Ljava/util/List<",
            "Lr2/V;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/j;->a:Lr2/Z;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lr2/Z;->getModelLoaders(Ljava/lang/Object;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getRegisteredResourceClasses(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;)",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/j;->h:LB2/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, LB2/e;->get(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_3

    .line 8
    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/bumptech/glide/j;->a:Lr2/Z;

    .line 15
    .line 16
    invoke-virtual {v2, p1}, Lr2/Z;->getDataClasses(Ljava/lang/Class;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_2

    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Ljava/lang/Class;

    .line 35
    .line 36
    iget-object v4, p0, Lcom/bumptech/glide/j;->c:LB2/g;

    .line 37
    .line 38
    invoke-virtual {v4, v3, p2}, LB2/g;->getResourceClasses(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_0

    .line 51
    .line 52
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    check-cast v4, Ljava/lang/Class;

    .line 57
    .line 58
    iget-object v5, p0, Lcom/bumptech/glide/j;->f:Lz2/g;

    .line 59
    .line 60
    invoke-virtual {v5, v4, p3}, Lz2/g;->getTranscodeClasses(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-nez v5, :cond_1

    .line 69
    .line 70
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-nez v5, :cond_1

    .line 75
    .line 76
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v0, p1, p2, p3, v2}, LB2/e;->put(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;)V

    .line 85
    .line 86
    .line 87
    :cond_3
    return-object v1
.end method

.method public getResultEncoder(Ln2/M;)Ll2/s;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Ln2/M;",
            ")",
            "Ll2/s;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ln2/M;->getResourceClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/bumptech/glide/j;->d:LB2/i;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, LB2/i;->get(Ljava/lang/Class;)Ll2/s;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    new-instance v0, Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;

    .line 15
    .line 16
    invoke-interface {p1}, Ln2/M;->getResourceClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {v0, p1}, Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;-><init>(Ljava/lang/Class;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method public getRewinder(Ljava/lang/Object;)Lcom/bumptech/glide/load/data/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lcom/bumptech/glide/load/data/g;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/j;->e:Lcom/bumptech/glide/load/data/j;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/data/j;->build(Ljava/lang/Object;)Lcom/bumptech/glide/load/data/g;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getSourceEncoder(Ljava/lang/Object;)Ll2/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Ll2/a;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/Registry$NoSourceEncoderAvailableException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/bumptech/glide/j;->b:LB2/b;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, LB2/b;->getEncoder(Ljava/lang/Class;)Ll2/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    new-instance v0, Lcom/bumptech/glide/Registry$NoSourceEncoderAvailableException;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {v0, p1}, Lcom/bumptech/glide/Registry$NoSourceEncoderAvailableException;-><init>(Ljava/lang/Class;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method public isResourceEncoderAvailable(Ln2/M;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln2/M;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/j;->d:LB2/i;

    .line 2
    .line 3
    invoke-interface {p1}, Ln2/M;->getResourceClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, LB2/i;->get(Ljava/lang/Class;)Ll2/s;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    return p1
.end method

.method public register(Lcom/bumptech/glide/load/data/f;)Lcom/bumptech/glide/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/data/f;",
            ")",
            "Lcom/bumptech/glide/j;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/j;->e:Lcom/bumptech/glide/load/data/j;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/data/j;->register(Lcom/bumptech/glide/load/data/f;)V

    return-object p0
.end method

.method public register(Ljava/lang/Class;Ljava/lang/Class;Lz2/e;)Lcom/bumptech/glide/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;",
            "Lz2/e;",
            ")",
            "Lcom/bumptech/glide/j;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/j;->f:Lz2/g;

    invoke-virtual {v0, p1, p2, p3}, Lz2/g;->register(Ljava/lang/Class;Ljava/lang/Class;Lz2/e;)V

    return-object p0
.end method

.method public register(Ll2/c;)Lcom/bumptech/glide/j;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bumptech/glide/j;->g:LB2/c;

    invoke-virtual {v0, p1}, LB2/c;->add(Ll2/c;)V

    return-object p0
.end method

.method public final setResourceDecoderBucketPriorityList(Ljava/util/List;)Lcom/bumptech/glide/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/bumptech/glide/j;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    const-string v1, "legacy_prepend_all"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-string p1, "legacy_append"

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/bumptech/glide/j;->c:LB2/g;

    .line 41
    .line 42
    invoke-virtual {p1, v0}, LB2/g;->setBucketPriorityList(Ljava/util/List;)V

    .line 43
    .line 44
    .line 45
    return-object p0
.end method
