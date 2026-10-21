.class public final Lcom/bumptech/glide/request/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC2/c;
.implements LD2/j;
.implements LC2/g;


# static fields
.field public static final D:Z


# instance fields
.field public A:I

.field public B:Z

.field public final C:Ljava/lang/RuntimeException;

.field public a:I

.field public final b:Ljava/lang/String;

.field public final c:LH2/k;

.field public final d:Ljava/lang/Object;

.field public final e:LC2/d;

.field public final f:Landroid/content/Context;

.field public final g:Lcom/bumptech/glide/h;

.field public final h:Ljava/lang/Object;

.field public final i:Ljava/lang/Class;

.field public final j:LC2/a;

.field public final k:I

.field public final l:I

.field public final m:Lcom/bumptech/glide/Priority;

.field public final n:LD2/k;

.field public final o:Ljava/util/List;

.field public final p:LE2/e;

.field public final q:Ljava/util/concurrent/Executor;

.field public r:Ln2/M;

.field public s:Ln2/A;

.field public t:J

.field public volatile u:Lcom/bumptech/glide/load/engine/b;

.field public v:Lcom/bumptech/glide/request/SingleRequest$Status;

.field public w:Landroid/graphics/drawable/Drawable;

.field public x:Landroid/graphics/drawable/Drawable;

.field public y:Landroid/graphics/drawable/Drawable;

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "GlideRequest"

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
    sput-boolean v0, Lcom/bumptech/glide/request/a;->D:Z

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/h;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;LC2/a;IILcom/bumptech/glide/Priority;LD2/k;Ljava/util/List;LC2/d;Lcom/bumptech/glide/load/engine/b;LE2/e;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lcom/bumptech/glide/request/a;->D:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    iput-object v0, p0, Lcom/bumptech/glide/request/a;->b:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {}, LH2/k;->newInstance()LH2/k;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/bumptech/glide/request/a;->c:LH2/k;

    .line 25
    .line 26
    iput-object p3, p0, Lcom/bumptech/glide/request/a;->d:Ljava/lang/Object;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/bumptech/glide/request/a;->f:Landroid/content/Context;

    .line 29
    .line 30
    iput-object p2, p0, Lcom/bumptech/glide/request/a;->g:Lcom/bumptech/glide/h;

    .line 31
    .line 32
    iput-object p4, p0, Lcom/bumptech/glide/request/a;->h:Ljava/lang/Object;

    .line 33
    .line 34
    iput-object p5, p0, Lcom/bumptech/glide/request/a;->i:Ljava/lang/Class;

    .line 35
    .line 36
    iput-object p6, p0, Lcom/bumptech/glide/request/a;->j:LC2/a;

    .line 37
    .line 38
    iput p7, p0, Lcom/bumptech/glide/request/a;->k:I

    .line 39
    .line 40
    iput p8, p0, Lcom/bumptech/glide/request/a;->l:I

    .line 41
    .line 42
    iput-object p9, p0, Lcom/bumptech/glide/request/a;->m:Lcom/bumptech/glide/Priority;

    .line 43
    .line 44
    iput-object p10, p0, Lcom/bumptech/glide/request/a;->n:LD2/k;

    .line 45
    .line 46
    iput-object p11, p0, Lcom/bumptech/glide/request/a;->o:Ljava/util/List;

    .line 47
    .line 48
    iput-object p12, p0, Lcom/bumptech/glide/request/a;->e:LC2/d;

    .line 49
    .line 50
    iput-object p13, p0, Lcom/bumptech/glide/request/a;->u:Lcom/bumptech/glide/load/engine/b;

    .line 51
    .line 52
    iput-object p14, p0, Lcom/bumptech/glide/request/a;->p:LE2/e;

    .line 53
    .line 54
    move-object/from16 p1, p15

    .line 55
    .line 56
    iput-object p1, p0, Lcom/bumptech/glide/request/a;->q:Ljava/util/concurrent/Executor;

    .line 57
    .line 58
    sget-object p1, Lcom/bumptech/glide/request/SingleRequest$Status;->b:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 59
    .line 60
    iput-object p1, p0, Lcom/bumptech/glide/request/a;->v:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 61
    .line 62
    iget-object p1, p0, Lcom/bumptech/glide/request/a;->C:Ljava/lang/RuntimeException;

    .line 63
    .line 64
    if-nez p1, :cond_1

    .line 65
    .line 66
    invoke-virtual {p2}, Lcom/bumptech/glide/h;->getExperiments()Lcom/bumptech/glide/i;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const-class p2, Lcom/bumptech/glide/f;

    .line 71
    .line 72
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/i;->isEnabled(Ljava/lang/Class;)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_1

    .line 77
    .line 78
    new-instance p1, Ljava/lang/RuntimeException;

    .line 79
    .line 80
    const-string p2, "Glide request origin trace"

    .line 81
    .line 82
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iput-object p1, p0, Lcom/bumptech/glide/request/a;->C:Ljava/lang/RuntimeException;

    .line 86
    .line 87
    :cond_1
    return-void
.end method

.method public static obtain(Landroid/content/Context;Lcom/bumptech/glide/h;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;LC2/a;IILcom/bumptech/glide/Priority;LD2/k;LC2/e;Ljava/util/List;LC2/d;Lcom/bumptech/glide/load/engine/b;LE2/e;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/a;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/h;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TR;>;",
            "LC2/a;",
            "II",
            "Lcom/bumptech/glide/Priority;",
            "LD2/k;",
            "LC2/e;",
            "Ljava/util/List<",
            "LC2/e;",
            ">;",
            "LC2/d;",
            "Lcom/bumptech/glide/load/engine/b;",
            "LE2/e;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/bumptech/glide/request/a;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/bumptech/glide/request/a;

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    move-object/from16 v3, p2

    .line 8
    .line 9
    move-object/from16 v4, p3

    .line 10
    .line 11
    move-object/from16 v5, p4

    .line 12
    .line 13
    move-object/from16 v6, p5

    .line 14
    .line 15
    move/from16 v7, p6

    .line 16
    .line 17
    move/from16 v8, p7

    .line 18
    .line 19
    move-object/from16 v9, p8

    .line 20
    .line 21
    move-object/from16 v10, p9

    .line 22
    .line 23
    move-object/from16 v11, p11

    .line 24
    .line 25
    move-object/from16 v12, p12

    .line 26
    .line 27
    move-object/from16 v13, p13

    .line 28
    .line 29
    move-object/from16 v14, p14

    .line 30
    .line 31
    move-object/from16 v15, p15

    .line 32
    .line 33
    invoke-direct/range {v0 .. v15}, Lcom/bumptech/glide/request/a;-><init>(Landroid/content/Context;Lcom/bumptech/glide/h;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;LC2/a;IILcom/bumptech/glide/Priority;LD2/k;Ljava/util/List;LC2/d;Lcom/bumptech/glide/load/engine/b;LE2/e;Ljava/util/concurrent/Executor;)V

    .line 34
    .line 35
    .line 36
    return-object v0
.end method


# virtual methods
.method public final a()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->y:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->j:LC2/a;

    .line 6
    .line 7
    invoke-virtual {v0}, LC2/a;->getFallbackDrawable()Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iput-object v1, p0, Lcom/bumptech/glide/request/a;->y:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, LC2/a;->getFallbackId()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-lez v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, LC2/a;->getFallbackId()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/a;->c(I)Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/bumptech/glide/request/a;->y:Landroid/graphics/drawable/Drawable;

    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->y:Landroid/graphics/drawable/Drawable;

    .line 32
    .line 33
    return-object v0
.end method

.method public final b()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->x:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->j:LC2/a;

    .line 6
    .line 7
    invoke-virtual {v0}, LC2/a;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iput-object v1, p0, Lcom/bumptech/glide/request/a;->x:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, LC2/a;->getPlaceholderId()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-lez v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, LC2/a;->getPlaceholderId()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/a;->c(I)Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/bumptech/glide/request/a;->x:Landroid/graphics/drawable/Drawable;

    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->x:Landroid/graphics/drawable/Drawable;

    .line 32
    .line 33
    return-object v0
.end method

.method public begin()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/bumptech/glide/request/a;->B:Z

    .line 5
    .line 6
    if-nez v1, :cond_e

    .line 7
    .line 8
    iget-object v1, p0, Lcom/bumptech/glide/request/a;->c:LH2/k;

    .line 9
    .line 10
    invoke-virtual {v1}, LH2/k;->throwIfRecycled()V

    .line 11
    .line 12
    .line 13
    invoke-static {}, LG2/m;->getLogTime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    iput-wide v1, p0, Lcom/bumptech/glide/request/a;->t:J

    .line 18
    .line 19
    iget-object v1, p0, Lcom/bumptech/glide/request/a;->h:Ljava/lang/Object;

    .line 20
    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    iget v1, p0, Lcom/bumptech/glide/request/a;->k:I

    .line 24
    .line 25
    iget v2, p0, Lcom/bumptech/glide/request/a;->l:I

    .line 26
    .line 27
    invoke-static {v1, v2}, LG2/t;->isValidDimensions(II)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    iget v1, p0, Lcom/bumptech/glide/request/a;->k:I

    .line 34
    .line 35
    iput v1, p0, Lcom/bumptech/glide/request/a;->z:I

    .line 36
    .line 37
    iget v1, p0, Lcom/bumptech/glide/request/a;->l:I

    .line 38
    .line 39
    iput v1, p0, Lcom/bumptech/glide/request/a;->A:I

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception v1

    .line 43
    goto/16 :goto_5

    .line 44
    .line 45
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->a()Landroid/graphics/drawable/Drawable;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-nez v1, :cond_1

    .line 50
    .line 51
    const/4 v1, 0x5

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    const/4 v1, 0x3

    .line 54
    :goto_1
    new-instance v2, Lcom/bumptech/glide/load/engine/GlideException;

    .line 55
    .line 56
    const-string v3, "Received null model"

    .line 57
    .line 58
    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v2, v1}, Lcom/bumptech/glide/request/a;->e(Lcom/bumptech/glide/load/engine/GlideException;I)V

    .line 62
    .line 63
    .line 64
    monitor-exit v0

    .line 65
    return-void

    .line 66
    :cond_2
    iget-object v1, p0, Lcom/bumptech/glide/request/a;->v:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 67
    .line 68
    sget-object v2, Lcom/bumptech/glide/request/SingleRequest$Status;->e:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 69
    .line 70
    if-eq v1, v2, :cond_d

    .line 71
    .line 72
    sget-object v2, Lcom/bumptech/glide/request/SingleRequest$Status;->j:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 73
    .line 74
    const/4 v3, 0x0

    .line 75
    if-ne v1, v2, :cond_3

    .line 76
    .line 77
    iget-object v1, p0, Lcom/bumptech/glide/request/a;->r:Ln2/M;

    .line 78
    .line 79
    sget-object v2, Lcom/bumptech/glide/load/DataSource;->m:Lcom/bumptech/glide/load/DataSource;

    .line 80
    .line 81
    invoke-virtual {p0, v1, v2, v3}, Lcom/bumptech/glide/request/a;->onResourceReady(Ln2/M;Lcom/bumptech/glide/load/DataSource;Z)V

    .line 82
    .line 83
    .line 84
    monitor-exit v0

    .line 85
    return-void

    .line 86
    :cond_3
    iget-object v1, p0, Lcom/bumptech/glide/request/a;->o:Ljava/util/List;

    .line 87
    .line 88
    if-nez v1, :cond_4

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_6

    .line 100
    .line 101
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    if-nez v2, :cond_5

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_5
    new-instance v1, Ljava/lang/ClassCastException;

    .line 109
    .line 110
    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    .line 111
    .line 112
    .line 113
    throw v1

    .line 114
    :cond_6
    :goto_3
    const-string v1, "GlideRequest"

    .line 115
    .line 116
    invoke-static {v1}, LH2/i;->beginSectionAsync(Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    iput v1, p0, Lcom/bumptech/glide/request/a;->a:I

    .line 121
    .line 122
    sget-object v1, Lcom/bumptech/glide/request/SingleRequest$Status;->f:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 123
    .line 124
    iput-object v1, p0, Lcom/bumptech/glide/request/a;->v:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 125
    .line 126
    iget v2, p0, Lcom/bumptech/glide/request/a;->k:I

    .line 127
    .line 128
    iget v4, p0, Lcom/bumptech/glide/request/a;->l:I

    .line 129
    .line 130
    invoke-static {v2, v4}, LG2/t;->isValidDimensions(II)Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-eqz v2, :cond_7

    .line 135
    .line 136
    iget v2, p0, Lcom/bumptech/glide/request/a;->k:I

    .line 137
    .line 138
    iget v4, p0, Lcom/bumptech/glide/request/a;->l:I

    .line 139
    .line 140
    invoke-virtual {p0, v2, v4}, Lcom/bumptech/glide/request/a;->onSizeReady(II)V

    .line 141
    .line 142
    .line 143
    goto :goto_4

    .line 144
    :cond_7
    iget-object v2, p0, Lcom/bumptech/glide/request/a;->n:LD2/k;

    .line 145
    .line 146
    invoke-interface {v2, p0}, LD2/k;->getSize(LD2/j;)V

    .line 147
    .line 148
    .line 149
    :goto_4
    iget-object v2, p0, Lcom/bumptech/glide/request/a;->v:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 150
    .line 151
    sget-object v4, Lcom/bumptech/glide/request/SingleRequest$Status;->e:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 152
    .line 153
    if-eq v2, v4, :cond_8

    .line 154
    .line 155
    if-ne v2, v1, :cond_b

    .line 156
    .line 157
    :cond_8
    iget-object v1, p0, Lcom/bumptech/glide/request/a;->e:LC2/d;

    .line 158
    .line 159
    if-eqz v1, :cond_9

    .line 160
    .line 161
    invoke-interface {v1, p0}, LC2/d;->canNotifyStatusChanged(LC2/c;)Z

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-eqz v1, :cond_a

    .line 166
    .line 167
    :cond_9
    const/4 v3, 0x1

    .line 168
    :cond_a
    if-eqz v3, :cond_b

    .line 169
    .line 170
    iget-object v1, p0, Lcom/bumptech/glide/request/a;->n:LD2/k;

    .line 171
    .line 172
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->b()Landroid/graphics/drawable/Drawable;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-interface {v1, v2}, LD2/k;->onLoadStarted(Landroid/graphics/drawable/Drawable;)V

    .line 177
    .line 178
    .line 179
    :cond_b
    sget-boolean v1, Lcom/bumptech/glide/request/a;->D:Z

    .line 180
    .line 181
    if-eqz v1, :cond_c

    .line 182
    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    const-string v2, "finished run method in "

    .line 189
    .line 190
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    iget-wide v2, p0, Lcom/bumptech/glide/request/a;->t:J

    .line 194
    .line 195
    invoke-static {v2, v3}, LG2/m;->getElapsedMillis(J)D

    .line 196
    .line 197
    .line 198
    move-result-wide v2

    .line 199
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/request/a;->d(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    :cond_c
    monitor-exit v0

    .line 210
    return-void

    .line 211
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 212
    .line 213
    const-string v2, "Cannot restart a running request"

    .line 214
    .line 215
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    throw v1

    .line 219
    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 220
    .line 221
    const-string v2, "You can\'t start or clear loads in RequestListener or Target callbacks. If you\'re trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead."

    .line 222
    .line 223
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    throw v1

    .line 227
    :goto_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    throw v1
.end method

.method public final c(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->j:LC2/a;

    .line 2
    .line 3
    invoke-virtual {v0}, LC2/a;->getTheme()Landroid/content/res/Resources$Theme;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/bumptech/glide/request/a;->f:Landroid/content/Context;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, LC2/a;->getTheme()Landroid/content/res/Resources$Theme;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    invoke-static {v2, p1, v0}, Lw2/e;->getDrawable(Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public clear()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/bumptech/glide/request/a;->B:Z

    .line 5
    .line 6
    if-nez v1, :cond_7

    .line 7
    .line 8
    iget-object v1, p0, Lcom/bumptech/glide/request/a;->c:LH2/k;

    .line 9
    .line 10
    invoke-virtual {v1}, LH2/k;->throwIfRecycled()V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/bumptech/glide/request/a;->v:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 14
    .line 15
    sget-object v2, Lcom/bumptech/glide/request/SingleRequest$Status;->n:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 16
    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    .line 19
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-boolean v1, p0, Lcom/bumptech/glide/request/a;->B:Z

    .line 24
    .line 25
    if-nez v1, :cond_6

    .line 26
    .line 27
    iget-object v1, p0, Lcom/bumptech/glide/request/a;->c:LH2/k;

    .line 28
    .line 29
    invoke-virtual {v1}, LH2/k;->throwIfRecycled()V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/bumptech/glide/request/a;->n:LD2/k;

    .line 33
    .line 34
    invoke-interface {v1, p0}, LD2/k;->removeCallback(LD2/j;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/bumptech/glide/request/a;->s:Ln2/A;

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    invoke-virtual {v1}, Ln2/A;->cancel()V

    .line 43
    .line 44
    .line 45
    iput-object v3, p0, Lcom/bumptech/glide/request/a;->s:Ln2/A;

    .line 46
    .line 47
    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/request/a;->r:Ln2/M;

    .line 48
    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    iput-object v3, p0, Lcom/bumptech/glide/request/a;->r:Ln2/M;

    .line 52
    .line 53
    move-object v3, v1

    .line 54
    :cond_2
    iget-object v1, p0, Lcom/bumptech/glide/request/a;->e:LC2/d;

    .line 55
    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    invoke-interface {v1, p0}, LC2/d;->canNotifyCleared(LC2/c;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_4

    .line 63
    .line 64
    :cond_3
    iget-object v1, p0, Lcom/bumptech/glide/request/a;->n:LD2/k;

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->b()Landroid/graphics/drawable/Drawable;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-interface {v1, v4}, LD2/k;->onLoadCleared(Landroid/graphics/drawable/Drawable;)V

    .line 71
    .line 72
    .line 73
    :cond_4
    const-string v1, "GlideRequest"

    .line 74
    .line 75
    iget v4, p0, Lcom/bumptech/glide/request/a;->a:I

    .line 76
    .line 77
    invoke-static {v1, v4}, LH2/i;->endSectionAsync(Ljava/lang/String;I)V

    .line 78
    .line 79
    .line 80
    iput-object v2, p0, Lcom/bumptech/glide/request/a;->v:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 81
    .line 82
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    if-eqz v3, :cond_5

    .line 84
    .line 85
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->u:Lcom/bumptech/glide/load/engine/b;

    .line 86
    .line 87
    invoke-virtual {v0, v3}, Lcom/bumptech/glide/load/engine/b;->release(Ln2/M;)V

    .line 88
    .line 89
    .line 90
    :cond_5
    return-void

    .line 91
    :cond_6
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 92
    .line 93
    const-string v2, "You can\'t start or clear loads in RequestListener or Target callbacks. If you\'re trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead."

    .line 94
    .line 95
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw v1

    .line 99
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 100
    .line 101
    const-string v2, "You can\'t start or clear loads in RequestListener or Target callbacks. If you\'re trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead."

    .line 102
    .line 103
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw v1

    .line 107
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    throw v1
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, " this: "

    .line 2
    .line 3
    invoke-static {p1, v0}, LA/i;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->b:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v0, "GlideRequest"

    .line 17
    .line 18
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final e(Lcom/bumptech/glide/load/engine/GlideException;I)V
    .locals 4

    .line 1
    const-string v0, "Load failed for ["

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/request/a;->c:LH2/k;

    .line 4
    .line 5
    invoke-virtual {v1}, LH2/k;->throwIfRecycled()V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/bumptech/glide/request/a;->d:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v1

    .line 11
    :try_start_0
    iget-object v2, p0, Lcom/bumptech/glide/request/a;->C:Ljava/lang/RuntimeException;

    .line 12
    .line 13
    invoke-virtual {p1, v2}, Lcom/bumptech/glide/load/engine/GlideException;->setOrigin(Ljava/lang/Exception;)V

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lcom/bumptech/glide/request/a;->g:Lcom/bumptech/glide/h;

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/bumptech/glide/h;->getLogLevel()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-gt v2, p2, :cond_0

    .line 23
    .line 24
    const-string p2, "Glide"

    .line 25
    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->h:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, "] with dimensions ["

    .line 37
    .line 38
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget v0, p0, Lcom/bumptech/glide/request/a;->z:I

    .line 42
    .line 43
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v0, "x"

    .line 47
    .line 48
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget v0, p0, Lcom/bumptech/glide/request/a;->A:I

    .line 52
    .line 53
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v0, "]"

    .line 57
    .line 58
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    .line 67
    .line 68
    const/4 p2, 0x4

    .line 69
    if-gt v2, p2, :cond_0

    .line 70
    .line 71
    const-string p2, "Glide"

    .line 72
    .line 73
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/load/engine/GlideException;->logRootCauses(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catchall_0
    move-exception p1

    .line 78
    goto :goto_3

    .line 79
    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 80
    iput-object p1, p0, Lcom/bumptech/glide/request/a;->s:Ln2/A;

    .line 81
    .line 82
    sget-object p2, Lcom/bumptech/glide/request/SingleRequest$Status;->m:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 83
    .line 84
    iput-object p2, p0, Lcom/bumptech/glide/request/a;->v:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 85
    .line 86
    iget-object p2, p0, Lcom/bumptech/glide/request/a;->e:LC2/d;

    .line 87
    .line 88
    if-eqz p2, :cond_1

    .line 89
    .line 90
    invoke-interface {p2, p0}, LC2/d;->onRequestFailed(LC2/c;)V

    .line 91
    .line 92
    .line 93
    :cond_1
    const/4 p2, 0x1

    .line 94
    iput-boolean p2, p0, Lcom/bumptech/glide/request/a;->B:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .line 96
    const/4 p2, 0x0

    .line 97
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->o:Ljava/util/List;

    .line 98
    .line 99
    if-eqz v0, :cond_5

    .line 100
    .line 101
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-nez v2, :cond_2

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    if-nez v0, :cond_4

    .line 117
    .line 118
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->e:LC2/d;

    .line 119
    .line 120
    if-eqz v0, :cond_3

    .line 121
    .line 122
    invoke-interface {v0}, LC2/d;->getRoot()LC2/d;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-interface {v0}, LC2/d;->isAnyResourceSet()Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    :cond_3
    throw p1

    .line 131
    :catchall_1
    move-exception p1

    .line 132
    goto :goto_2

    .line 133
    :cond_4
    new-instance p1, Ljava/lang/ClassCastException;

    .line 134
    .line 135
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 136
    .line 137
    .line 138
    throw p1

    .line 139
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 140
    .line 141
    .line 142
    :try_start_2
    iput-boolean p2, p0, Lcom/bumptech/glide/request/a;->B:Z

    .line 143
    .line 144
    const-string p1, "GlideRequest"

    .line 145
    .line 146
    iget p2, p0, Lcom/bumptech/glide/request/a;->a:I

    .line 147
    .line 148
    invoke-static {p1, p2}, LH2/i;->endSectionAsync(Ljava/lang/String;I)V

    .line 149
    .line 150
    .line 151
    monitor-exit v1

    .line 152
    return-void

    .line 153
    :goto_2
    iput-boolean p2, p0, Lcom/bumptech/glide/request/a;->B:Z

    .line 154
    .line 155
    throw p1

    .line 156
    :goto_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 157
    throw p1
.end method

.method public final f(Ln2/M;Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lcom/bumptech/glide/request/a;->e:LC2/d;

    .line 4
    .line 5
    if-eqz v2, :cond_1

    .line 6
    .line 7
    invoke-interface {v2}, LC2/d;->getRoot()LC2/d;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-interface {v3}, LC2/d;->isAnyResourceSet()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v3, v1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    move v3, v0

    .line 21
    :goto_1
    sget-object v4, Lcom/bumptech/glide/request/SingleRequest$Status;->j:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 22
    .line 23
    iput-object v4, p0, Lcom/bumptech/glide/request/a;->v:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/bumptech/glide/request/a;->r:Ln2/M;

    .line 26
    .line 27
    iget-object p1, p0, Lcom/bumptech/glide/request/a;->g:Lcom/bumptech/glide/h;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/bumptech/glide/h;->getLogLevel()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const/4 v4, 0x3

    .line 34
    if-gt p1, v4, :cond_2

    .line 35
    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v4, "Finished loading "

    .line 39
    .line 40
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v4, " from "

    .line 55
    .line 56
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v4, " for "

    .line 63
    .line 64
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget-object v4, p0, Lcom/bumptech/glide/request/a;->h:Ljava/lang/Object;

    .line 68
    .line 69
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v4, " with size ["

    .line 73
    .line 74
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    iget v4, p0, Lcom/bumptech/glide/request/a;->z:I

    .line 78
    .line 79
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v4, "x"

    .line 83
    .line 84
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    iget v4, p0, Lcom/bumptech/glide/request/a;->A:I

    .line 88
    .line 89
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v4, "] in "

    .line 93
    .line 94
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget-wide v4, p0, Lcom/bumptech/glide/request/a;->t:J

    .line 98
    .line 99
    invoke-static {v4, v5}, LG2/m;->getElapsedMillis(J)D

    .line 100
    .line 101
    .line 102
    move-result-wide v4

    .line 103
    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v4, " ms"

    .line 107
    .line 108
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    const-string v4, "Glide"

    .line 116
    .line 117
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    :cond_2
    if-eqz v2, :cond_3

    .line 121
    .line 122
    invoke-interface {v2, p0}, LC2/d;->onRequestSuccess(LC2/c;)V

    .line 123
    .line 124
    .line 125
    :cond_3
    iput-boolean v0, p0, Lcom/bumptech/glide/request/a;->B:Z

    .line 126
    .line 127
    :try_start_0
    iget-object p1, p0, Lcom/bumptech/glide/request/a;->o:Ljava/util/List;

    .line 128
    .line 129
    if-eqz p1, :cond_6

    .line 130
    .line 131
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-nez v0, :cond_4

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    if-nez p1, :cond_5

    .line 147
    .line 148
    const/4 p1, 0x0

    .line 149
    throw p1

    .line 150
    :catchall_0
    move-exception p1

    .line 151
    goto :goto_3

    .line 152
    :cond_5
    new-instance p1, Ljava/lang/ClassCastException;

    .line 153
    .line 154
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 155
    .line 156
    .line 157
    throw p1

    .line 158
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/bumptech/glide/request/a;->p:LE2/e;

    .line 159
    .line 160
    check-cast p1, LE2/a;

    .line 161
    .line 162
    invoke-virtual {p1, p3, v3}, LE2/a;->build(Lcom/bumptech/glide/load/DataSource;Z)LE2/d;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    iget-object p3, p0, Lcom/bumptech/glide/request/a;->n:LD2/k;

    .line 167
    .line 168
    invoke-interface {p3, p2, p1}, LD2/k;->onResourceReady(Ljava/lang/Object;LE2/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    .line 170
    .line 171
    iput-boolean v1, p0, Lcom/bumptech/glide/request/a;->B:Z

    .line 172
    .line 173
    const-string p1, "GlideRequest"

    .line 174
    .line 175
    iget p2, p0, Lcom/bumptech/glide/request/a;->a:I

    .line 176
    .line 177
    invoke-static {p1, p2}, LH2/i;->endSectionAsync(Ljava/lang/String;I)V

    .line 178
    .line 179
    .line 180
    return-void

    .line 181
    :goto_3
    iput-boolean v1, p0, Lcom/bumptech/glide/request/a;->B:Z

    .line 182
    .line 183
    throw p1
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->e:LC2/d;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0, p0}, LC2/d;->canNotifyStatusChanged(LC2/c;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    return-void

    .line 13
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->h:Ljava/lang/Object;

    .line 14
    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->a()Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    goto :goto_1

    .line 22
    :cond_2
    const/4 v0, 0x0

    .line 23
    :goto_1
    if-nez v0, :cond_4

    .line 24
    .line 25
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->w:Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    if-nez v0, :cond_3

    .line 28
    .line 29
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->j:LC2/a;

    .line 30
    .line 31
    invoke-virtual {v0}, LC2/a;->getErrorPlaceholder()Landroid/graphics/drawable/Drawable;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iput-object v1, p0, Lcom/bumptech/glide/request/a;->w:Landroid/graphics/drawable/Drawable;

    .line 36
    .line 37
    if-nez v1, :cond_3

    .line 38
    .line 39
    invoke-virtual {v0}, LC2/a;->getErrorId()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-lez v1, :cond_3

    .line 44
    .line 45
    invoke-virtual {v0}, LC2/a;->getErrorId()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/a;->c(I)Landroid/graphics/drawable/Drawable;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Lcom/bumptech/glide/request/a;->w:Landroid/graphics/drawable/Drawable;

    .line 54
    .line 55
    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->w:Landroid/graphics/drawable/Drawable;

    .line 56
    .line 57
    :cond_4
    if-nez v0, :cond_5

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->b()Landroid/graphics/drawable/Drawable;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    :cond_5
    iget-object v1, p0, Lcom/bumptech/glide/request/a;->n:LD2/k;

    .line 64
    .line 65
    invoke-interface {v1, v0}, LD2/k;->onLoadFailed(Landroid/graphics/drawable/Drawable;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public getLock()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->c:LH2/k;

    .line 2
    .line 3
    invoke-virtual {v0}, LH2/k;->throwIfRecycled()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->d:Ljava/lang/Object;

    .line 7
    .line 8
    return-object v0
.end method

.method public isAnyResourceSet()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/request/a;->v:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 5
    .line 6
    sget-object v2, Lcom/bumptech/glide/request/SingleRequest$Status;->j:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    monitor-exit v0

    .line 14
    return v1

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw v1
.end method

.method public isCleared()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/request/a;->v:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 5
    .line 6
    sget-object v2, Lcom/bumptech/glide/request/SingleRequest$Status;->n:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    monitor-exit v0

    .line 14
    return v1

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw v1
.end method

.method public isComplete()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/request/a;->v:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 5
    .line 6
    sget-object v2, Lcom/bumptech/glide/request/SingleRequest$Status;->j:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    monitor-exit v0

    .line 14
    return v1

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw v1
.end method

.method public isEquivalentTo(LC2/c;)Z
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    instance-of v2, v0, Lcom/bumptech/glide/request/a;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    return v3

    .line 11
    :cond_0
    iget-object v2, v1, Lcom/bumptech/glide/request/a;->d:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v2

    .line 14
    :try_start_0
    iget v4, v1, Lcom/bumptech/glide/request/a;->k:I

    .line 15
    .line 16
    iget v5, v1, Lcom/bumptech/glide/request/a;->l:I

    .line 17
    .line 18
    iget-object v6, v1, Lcom/bumptech/glide/request/a;->h:Ljava/lang/Object;

    .line 19
    .line 20
    iget-object v7, v1, Lcom/bumptech/glide/request/a;->i:Ljava/lang/Class;

    .line 21
    .line 22
    iget-object v8, v1, Lcom/bumptech/glide/request/a;->j:LC2/a;

    .line 23
    .line 24
    iget-object v9, v1, Lcom/bumptech/glide/request/a;->m:Lcom/bumptech/glide/Priority;

    .line 25
    .line 26
    iget-object v10, v1, Lcom/bumptech/glide/request/a;->o:Ljava/util/List;

    .line 27
    .line 28
    if-eqz v10, :cond_1

    .line 29
    .line 30
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v10

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    goto :goto_3

    .line 37
    :cond_1
    move v10, v3

    .line 38
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    check-cast v0, Lcom/bumptech/glide/request/a;

    .line 40
    .line 41
    iget-object v11, v0, Lcom/bumptech/glide/request/a;->d:Ljava/lang/Object;

    .line 42
    .line 43
    monitor-enter v11

    .line 44
    :try_start_1
    iget v2, v0, Lcom/bumptech/glide/request/a;->k:I

    .line 45
    .line 46
    iget v12, v0, Lcom/bumptech/glide/request/a;->l:I

    .line 47
    .line 48
    iget-object v13, v0, Lcom/bumptech/glide/request/a;->h:Ljava/lang/Object;

    .line 49
    .line 50
    iget-object v14, v0, Lcom/bumptech/glide/request/a;->i:Ljava/lang/Class;

    .line 51
    .line 52
    iget-object v15, v0, Lcom/bumptech/glide/request/a;->j:LC2/a;

    .line 53
    .line 54
    move/from16 v16, v3

    .line 55
    .line 56
    iget-object v3, v0, Lcom/bumptech/glide/request/a;->m:Lcom/bumptech/glide/Priority;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/bumptech/glide/request/a;->o:Ljava/util/List;

    .line 59
    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    goto :goto_1

    .line 67
    :catchall_1
    move-exception v0

    .line 68
    goto :goto_2

    .line 69
    :cond_2
    move/from16 v0, v16

    .line 70
    .line 71
    :goto_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 72
    if-ne v4, v2, :cond_3

    .line 73
    .line 74
    if-ne v5, v12, :cond_3

    .line 75
    .line 76
    invoke-static {v6, v13}, LG2/t;->bothModelsNullEquivalentOrEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_3

    .line 81
    .line 82
    invoke-virtual {v7, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_3

    .line 87
    .line 88
    invoke-static {v8, v15}, LG2/t;->bothBaseRequestOptionsNullEquivalentOrEquals(LC2/a;LC2/a;)Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_3

    .line 93
    .line 94
    if-ne v9, v3, :cond_3

    .line 95
    .line 96
    if-ne v10, v0, :cond_3

    .line 97
    .line 98
    const/4 v0, 0x1

    .line 99
    return v0

    .line 100
    :cond_3
    return v16

    .line 101
    :goto_2
    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 102
    throw v0

    .line 103
    :goto_3
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    throw v0
.end method

.method public isRunning()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/request/a;->v:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 5
    .line 6
    sget-object v2, Lcom/bumptech/glide/request/SingleRequest$Status;->e:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 7
    .line 8
    if-eq v1, v2, :cond_1

    .line 9
    .line 10
    sget-object v2, Lcom/bumptech/glide/request/SingleRequest$Status;->f:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 11
    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    goto :goto_1

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    goto :goto_2

    .line 19
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 20
    :goto_1
    monitor-exit v0

    .line 21
    return v1

    .line 22
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1
.end method

.method public onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;)V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/bumptech/glide/request/a;->e(Lcom/bumptech/glide/load/engine/GlideException;I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public onResourceReady(Ln2/M;Lcom/bumptech/glide/load/DataSource;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln2/M;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)V"
        }
    .end annotation

    .line 1
    const-string p3, "Expected to receive an object of "

    .line 2
    .line 3
    const-string v0, "Expected to receive a Resource<R> with an object of "

    .line 4
    .line 5
    iget-object v1, p0, Lcom/bumptech/glide/request/a;->c:LH2/k;

    .line 6
    .line 7
    invoke-virtual {v1}, LH2/k;->throwIfRecycled()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    :try_start_0
    iget-object v2, p0, Lcom/bumptech/glide/request/a;->d:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 14
    :try_start_1
    iput-object v1, p0, Lcom/bumptech/glide/request/a;->s:Ln2/A;

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    new-instance p1, Lcom/bumptech/glide/load/engine/GlideException;

    .line 19
    .line 20
    new-instance p2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object p3, p0, Lcom/bumptech/glide/request/a;->i:Ljava/lang/Class;

    .line 26
    .line 27
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p3, " inside, but instead got null."

    .line 31
    .line 32
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-direct {p1, p2}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/a;->onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;)V

    .line 43
    .line 44
    .line 45
    monitor-exit v2

    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    goto/16 :goto_5

    .line 49
    .line 50
    :cond_0
    invoke-interface {p1}, Ln2/M;->get()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_4

    .line 55
    .line 56
    iget-object v3, p0, Lcom/bumptech/glide/request/a;->i:Ljava/lang/Class;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-nez v3, :cond_1

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_1
    iget-object p3, p0, Lcom/bumptech/glide/request/a;->e:LC2/d;

    .line 70
    .line 71
    if-eqz p3, :cond_3

    .line 72
    .line 73
    invoke-interface {p3, p0}, LC2/d;->canSetImage(LC2/c;)Z

    .line 74
    .line 75
    .line 76
    move-result p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    if-eqz p3, :cond_2

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    :try_start_2
    iput-object v1, p0, Lcom/bumptech/glide/request/a;->r:Ln2/M;

    .line 81
    .line 82
    sget-object p2, Lcom/bumptech/glide/request/SingleRequest$Status;->j:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 83
    .line 84
    iput-object p2, p0, Lcom/bumptech/glide/request/a;->v:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 85
    .line 86
    const-string p2, "GlideRequest"

    .line 87
    .line 88
    iget p3, p0, Lcom/bumptech/glide/request/a;->a:I

    .line 89
    .line 90
    invoke-static {p2, p3}, LH2/i;->endSectionAsync(Ljava/lang/String;I)V

    .line 91
    .line 92
    .line 93
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 94
    :goto_0
    iget-object p2, p0, Lcom/bumptech/glide/request/a;->u:Lcom/bumptech/glide/load/engine/b;

    .line 95
    .line 96
    invoke-virtual {p2, p1}, Lcom/bumptech/glide/load/engine/b;->release(Ln2/M;)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :catchall_1
    move-exception p2

    .line 101
    move-object v1, p1

    .line 102
    move-object p1, p2

    .line 103
    goto :goto_5

    .line 104
    :cond_3
    :goto_1
    :try_start_3
    invoke-virtual {p0, p1, v0, p2}, Lcom/bumptech/glide/request/a;->f(Ln2/M;Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;)V

    .line 105
    .line 106
    .line 107
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 108
    return-void

    .line 109
    :cond_4
    :goto_2
    :try_start_4
    iput-object v1, p0, Lcom/bumptech/glide/request/a;->r:Ln2/M;

    .line 110
    .line 111
    new-instance p2, Lcom/bumptech/glide/load/engine/GlideException;

    .line 112
    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-object p3, p0, Lcom/bumptech/glide/request/a;->i:Ljava/lang/Class;

    .line 119
    .line 120
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string p3, " but instead got "

    .line 124
    .line 125
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    if-eqz v0, :cond_5

    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    move-result-object p3

    .line 134
    goto :goto_3

    .line 135
    :cond_5
    const-string p3, ""

    .line 136
    .line 137
    :goto_3
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string p3, "{"

    .line 141
    .line 142
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string p3, "} inside Resource{"

    .line 149
    .line 150
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string p3, "}."

    .line 157
    .line 158
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    if-eqz v0, :cond_6

    .line 162
    .line 163
    const-string p3, ""

    .line 164
    .line 165
    goto :goto_4

    .line 166
    :cond_6
    const-string p3, " To indicate failure return a null Resource object, rather than a Resource object containing null data."

    .line 167
    .line 168
    :goto_4
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p3

    .line 175
    invoke-direct {p2, p3}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/request/a;->onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;)V

    .line 179
    .line 180
    .line 181
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 182
    goto :goto_0

    .line 183
    :goto_5
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 184
    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 185
    :catchall_2
    move-exception p1

    .line 186
    if-eqz v1, :cond_7

    .line 187
    .line 188
    iget-object p2, p0, Lcom/bumptech/glide/request/a;->u:Lcom/bumptech/glide/load/engine/b;

    .line 189
    .line 190
    invoke-virtual {p2, v1}, Lcom/bumptech/glide/load/engine/b;->release(Ln2/M;)V

    .line 191
    .line 192
    .line 193
    :cond_7
    throw p1
.end method

.method public onSizeReady(II)V
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "finished onSizeReady in "

    .line 8
    .line 9
    const-string v4, "finished setup for calling load in "

    .line 10
    .line 11
    const-string v5, "Got onSizeReady in "

    .line 12
    .line 13
    iget-object v6, v1, Lcom/bumptech/glide/request/a;->c:LH2/k;

    .line 14
    .line 15
    invoke-virtual {v6}, LH2/k;->throwIfRecycled()V

    .line 16
    .line 17
    .line 18
    iget-object v6, v1, Lcom/bumptech/glide/request/a;->d:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v6

    .line 21
    :try_start_0
    sget-boolean v22, Lcom/bumptech/glide/request/a;->D:Z

    .line 22
    .line 23
    if-eqz v22, :cond_0

    .line 24
    .line 25
    new-instance v7, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-wide v8, v1, Lcom/bumptech/glide/request/a;->t:J

    .line 31
    .line 32
    invoke-static {v8, v9}, LG2/m;->getElapsedMillis(J)D

    .line 33
    .line 34
    .line 35
    move-result-wide v8

    .line 36
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {v1, v5}, Lcom/bumptech/glide/request/a;->d(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    move-object v3, v1

    .line 49
    move-object v1, v6

    .line 50
    goto/16 :goto_4

    .line 51
    .line 52
    :cond_0
    :goto_0
    iget-object v5, v1, Lcom/bumptech/glide/request/a;->v:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 53
    .line 54
    sget-object v7, Lcom/bumptech/glide/request/SingleRequest$Status;->f:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 55
    .line 56
    if-eq v5, v7, :cond_1

    .line 57
    .line 58
    monitor-exit v6

    .line 59
    return-void

    .line 60
    :cond_1
    sget-object v5, Lcom/bumptech/glide/request/SingleRequest$Status;->e:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 61
    .line 62
    iput-object v5, v1, Lcom/bumptech/glide/request/a;->v:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 63
    .line 64
    iget-object v7, v1, Lcom/bumptech/glide/request/a;->j:LC2/a;

    .line 65
    .line 66
    invoke-virtual {v7}, LC2/a;->getSizeMultiplier()F

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    const/high16 v8, -0x80000000

    .line 71
    .line 72
    if-ne v0, v8, :cond_2

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    int-to-float v0, v0

    .line 76
    mul-float/2addr v0, v7

    .line 77
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    :goto_1
    iput v0, v1, Lcom/bumptech/glide/request/a;->z:I

    .line 82
    .line 83
    if-ne v2, v8, :cond_3

    .line 84
    .line 85
    move v0, v2

    .line 86
    goto :goto_2

    .line 87
    :cond_3
    int-to-float v0, v2

    .line 88
    mul-float/2addr v7, v0

    .line 89
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    :goto_2
    iput v0, v1, Lcom/bumptech/glide/request/a;->A:I

    .line 94
    .line 95
    if-eqz v22, :cond_4

    .line 96
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-wide v7, v1, Lcom/bumptech/glide/request/a;->t:J

    .line 103
    .line 104
    invoke-static {v7, v8}, LG2/m;->getElapsedMillis(J)D

    .line 105
    .line 106
    .line 107
    move-result-wide v7

    .line 108
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/request/a;->d(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :cond_4
    iget-object v2, v1, Lcom/bumptech/glide/request/a;->u:Lcom/bumptech/glide/load/engine/b;

    .line 119
    .line 120
    move-object v0, v3

    .line 121
    iget-object v3, v1, Lcom/bumptech/glide/request/a;->g:Lcom/bumptech/glide/h;

    .line 122
    .line 123
    iget-object v4, v1, Lcom/bumptech/glide/request/a;->h:Ljava/lang/Object;

    .line 124
    .line 125
    iget-object v7, v1, Lcom/bumptech/glide/request/a;->j:LC2/a;

    .line 126
    .line 127
    invoke-virtual {v7}, LC2/a;->getSignature()Ll2/m;

    .line 128
    .line 129
    .line 130
    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    move-object v8, v6

    .line 132
    :try_start_1
    iget v6, v1, Lcom/bumptech/glide/request/a;->z:I

    .line 133
    .line 134
    move-object v9, v5

    .line 135
    move-object v5, v7

    .line 136
    iget v7, v1, Lcom/bumptech/glide/request/a;->A:I

    .line 137
    .line 138
    iget-object v10, v1, Lcom/bumptech/glide/request/a;->j:LC2/a;

    .line 139
    .line 140
    invoke-virtual {v10}, LC2/a;->getResourceClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    move-result-object v10

    .line 144
    move-object v11, v9

    .line 145
    iget-object v9, v1, Lcom/bumptech/glide/request/a;->i:Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 146
    .line 147
    move-object v12, v8

    .line 148
    move-object v8, v10

    .line 149
    :try_start_2
    iget-object v10, v1, Lcom/bumptech/glide/request/a;->m:Lcom/bumptech/glide/Priority;

    .line 150
    .line 151
    iget-object v13, v1, Lcom/bumptech/glide/request/a;->j:LC2/a;

    .line 152
    .line 153
    invoke-virtual {v13}, LC2/a;->getDiskCacheStrategy()Ln2/u;

    .line 154
    .line 155
    .line 156
    move-result-object v13

    .line 157
    iget-object v14, v1, Lcom/bumptech/glide/request/a;->j:LC2/a;

    .line 158
    .line 159
    invoke-virtual {v14}, LC2/a;->getTransformations()Ljava/util/Map;

    .line 160
    .line 161
    .line 162
    move-result-object v14

    .line 163
    iget-object v15, v1, Lcom/bumptech/glide/request/a;->j:LC2/a;

    .line 164
    .line 165
    invoke-virtual {v15}, LC2/a;->isTransformationRequired()Z

    .line 166
    .line 167
    .line 168
    move-result v15

    .line 169
    move-object/from16 p1, v0

    .line 170
    .line 171
    iget-object v0, v1, Lcom/bumptech/glide/request/a;->j:LC2/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 172
    .line 173
    move-object/from16 v16, v12

    .line 174
    .line 175
    move-object v12, v14

    .line 176
    :try_start_3
    iget-boolean v14, v0, LC2/a;->A:Z

    .line 177
    .line 178
    invoke-virtual {v0}, LC2/a;->getOptions()Ll2/q;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    move-object/from16 p2, v0

    .line 183
    .line 184
    iget-object v0, v1, Lcom/bumptech/glide/request/a;->j:LC2/a;

    .line 185
    .line 186
    invoke-virtual {v0}, LC2/a;->isMemoryCacheable()Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    move/from16 v17, v0

    .line 191
    .line 192
    iget-object v0, v1, Lcom/bumptech/glide/request/a;->j:LC2/a;

    .line 193
    .line 194
    invoke-virtual {v0}, LC2/a;->getUseUnlimitedSourceGeneratorsPool()Z

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    move/from16 v18, v0

    .line 199
    .line 200
    iget-object v0, v1, Lcom/bumptech/glide/request/a;->j:LC2/a;

    .line 201
    .line 202
    invoke-virtual {v0}, LC2/a;->getUseAnimationPool()Z

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    move/from16 v19, v0

    .line 207
    .line 208
    iget-object v0, v1, Lcom/bumptech/glide/request/a;->j:LC2/a;

    .line 209
    .line 210
    invoke-virtual {v0}, LC2/a;->getOnlyRetrieveFromCache()Z

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    move/from16 v20, v0

    .line 215
    .line 216
    iget-object v0, v1, Lcom/bumptech/glide/request/a;->q:Ljava/util/concurrent/Executor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 217
    .line 218
    move/from16 v21, v20

    .line 219
    .line 220
    move-object/from16 v20, v1

    .line 221
    .line 222
    move-object/from16 v1, v16

    .line 223
    .line 224
    move/from16 v16, v17

    .line 225
    .line 226
    move/from16 v17, v18

    .line 227
    .line 228
    move/from16 v18, v19

    .line 229
    .line 230
    move/from16 v19, v21

    .line 231
    .line 232
    move-object/from16 v21, v0

    .line 233
    .line 234
    move-object v0, v11

    .line 235
    move-object v11, v13

    .line 236
    move v13, v15

    .line 237
    move-object/from16 v15, p2

    .line 238
    .line 239
    :try_start_4
    invoke-virtual/range {v2 .. v21}, Lcom/bumptech/glide/load/engine/b;->load(Lcom/bumptech/glide/h;Ljava/lang/Object;Ll2/m;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Ln2/u;Ljava/util/Map;ZZLl2/q;ZZZZLC2/g;Ljava/util/concurrent/Executor;)Ln2/A;

    .line 240
    .line 241
    .line 242
    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 243
    move-object/from16 v3, v20

    .line 244
    .line 245
    :try_start_5
    iput-object v2, v3, Lcom/bumptech/glide/request/a;->s:Ln2/A;

    .line 246
    .line 247
    iget-object v2, v3, Lcom/bumptech/glide/request/a;->v:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 248
    .line 249
    if-eq v2, v0, :cond_5

    .line 250
    .line 251
    const/4 v0, 0x0

    .line 252
    iput-object v0, v3, Lcom/bumptech/glide/request/a;->s:Ln2/A;

    .line 253
    .line 254
    goto :goto_3

    .line 255
    :catchall_1
    move-exception v0

    .line 256
    goto :goto_4

    .line 257
    :cond_5
    :goto_3
    if-eqz v22, :cond_6

    .line 258
    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    move-object/from16 v2, p1

    .line 262
    .line 263
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    iget-wide v4, v3, Lcom/bumptech/glide/request/a;->t:J

    .line 267
    .line 268
    invoke-static {v4, v5}, LG2/m;->getElapsedMillis(J)D

    .line 269
    .line 270
    .line 271
    move-result-wide v4

    .line 272
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    invoke-virtual {v3, v0}, Lcom/bumptech/glide/request/a;->d(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    :cond_6
    monitor-exit v1

    .line 283
    return-void

    .line 284
    :catchall_2
    move-exception v0

    .line 285
    move-object/from16 v3, v20

    .line 286
    .line 287
    goto :goto_4

    .line 288
    :catchall_3
    move-exception v0

    .line 289
    move-object v3, v1

    .line 290
    move-object/from16 v1, v16

    .line 291
    .line 292
    goto :goto_4

    .line 293
    :catchall_4
    move-exception v0

    .line 294
    move-object v3, v1

    .line 295
    move-object v1, v12

    .line 296
    goto :goto_4

    .line 297
    :catchall_5
    move-exception v0

    .line 298
    move-object v3, v1

    .line 299
    move-object v1, v8

    .line 300
    :goto_4
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 301
    throw v0
.end method

.method public pause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->isRunning()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->clear()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/a;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/request/a;->h:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/bumptech/glide/request/a;->i:Ljava/lang/Class;

    .line 7
    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v3, "[model="

    .line 22
    .line 23
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, ", transcodeClass="

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, "]"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    return-object v0

    .line 47
    :catchall_0
    move-exception v1

    .line 48
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw v1
.end method
