.class public final Lcom/bumptech/glide/load/engine/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln2/i;
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;
.implements LH2/f;


# instance fields
.field public A:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

.field public B:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

.field public C:J

.field public D:Z

.field public E:Ljava/lang/Object;

.field public F:Ljava/lang/Thread;

.field public G:Ll2/m;

.field public H:Ll2/m;

.field public I:Ljava/lang/Object;

.field public J:Lcom/bumptech/glide/load/DataSource;

.field public K:Lcom/bumptech/glide/load/data/e;

.field public volatile L:Ln2/j;

.field public volatile M:Z

.field public volatile N:Z

.field public O:Z

.field public final b:Ln2/k;

.field public final e:Ljava/util/ArrayList;

.field public final f:LH2/k;

.field public final j:Ln2/z;

.field public final m:LL/e;

.field public final n:Le/s0;

.field public final p:Ln2/m;

.field public q:Lcom/bumptech/glide/h;

.field public r:Ll2/m;

.field public s:Lcom/bumptech/glide/Priority;

.field public t:Ln2/E;

.field public u:I

.field public v:I

.field public w:Ln2/u;

.field public x:Ll2/q;

.field public y:Lcom/bumptech/glide/load/engine/e;

.field public z:I


# direct methods
.method public constructor <init>(Ln2/z;LL/e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ln2/k;

    .line 5
    .line 6
    invoke-direct {v0}, Ln2/k;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a;->b:Ln2/k;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a;->e:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-static {}, LH2/k;->newInstance()LH2/k;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a;->f:LH2/k;

    .line 23
    .line 24
    new-instance v0, Le/s0;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a;->n:Le/s0;

    .line 30
    .line 31
    new-instance v0, Ln2/m;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a;->p:Ln2/m;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/a;->j:Ln2/z;

    .line 39
    .line 40
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/a;->m:LL/e;

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;)Ln2/M;
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a;->b:Ln2/k;

    .line 6
    .line 7
    iget-object v2, v1, Ln2/k;->c:Lcom/bumptech/glide/h;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/bumptech/glide/h;->getRegistry()Lcom/bumptech/glide/j;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v3, v1, Ln2/k;->g:Ljava/lang/Class;

    .line 14
    .line 15
    iget-object v4, v1, Ln2/k;->k:Ljava/lang/Class;

    .line 16
    .line 17
    invoke-virtual {v2, v0, v3, v4}, Lcom/bumptech/glide/j;->getLoadPath(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ln2/J;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a;->x:Ll2/q;

    .line 22
    .line 23
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 24
    .line 25
    const/16 v3, 0x1a

    .line 26
    .line 27
    if-ge v2, v3, :cond_1

    .line 28
    .line 29
    :cond_0
    :goto_0
    move-object v7, v0

    .line 30
    goto :goto_3

    .line 31
    :cond_1
    sget-object v2, Lcom/bumptech/glide/load/DataSource;->j:Lcom/bumptech/glide/load/DataSource;

    .line 32
    .line 33
    if-eq p2, v2, :cond_3

    .line 34
    .line 35
    iget-boolean v1, v1, Ln2/k;->r:Z

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    const/4 v1, 0x0

    .line 41
    goto :goto_2

    .line 42
    :cond_3
    :goto_1
    const/4 v1, 0x1

    .line 43
    :goto_2
    sget-object v2, Lu2/x;->i:Ll2/p;

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ll2/q;->get(Ll2/p;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Ljava/lang/Boolean;

    .line 50
    .line 51
    if-eqz v3, :cond_4

    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_0

    .line 58
    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_4
    new-instance v0, Ll2/q;

    .line 63
    .line 64
    invoke-direct {v0}, Ll2/q;-><init>()V

    .line 65
    .line 66
    .line 67
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/a;->x:Ll2/q;

    .line 68
    .line 69
    invoke-virtual {v0, v3}, Ll2/q;->putAll(Ll2/q;)V

    .line 70
    .line 71
    .line 72
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v0, v2, v1}, Ll2/q;->set(Ll2/p;Ljava/lang/Object;)Ll2/q;

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :goto_3
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a;->q:Lcom/bumptech/glide/h;

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/bumptech/glide/h;->getRegistry()Lcom/bumptech/glide/j;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/j;->getRewinder(Ljava/lang/Object;)Lcom/bumptech/glide/load/data/g;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    :try_start_0
    iget v8, p0, Lcom/bumptech/glide/load/engine/a;->u:I

    .line 91
    .line 92
    iget v9, p0, Lcom/bumptech/glide/load/engine/a;->v:I

    .line 93
    .line 94
    new-instance v10, Ln2/l;

    .line 95
    .line 96
    invoke-direct {v10, p0, p2}, Ln2/l;-><init>(Lcom/bumptech/glide/load/engine/a;Lcom/bumptech/glide/load/DataSource;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual/range {v5 .. v10}, Ln2/J;->load(Lcom/bumptech/glide/load/data/g;Ll2/q;IILn2/n;)Ln2/M;

    .line 100
    .line 101
    .line 102
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    invoke-interface {v6}, Lcom/bumptech/glide/load/data/g;->cleanup()V

    .line 104
    .line 105
    .line 106
    return-object p1

    .line 107
    :catchall_0
    move-exception v0

    .line 108
    move-object p1, v0

    .line 109
    invoke-interface {v6}, Lcom/bumptech/glide/load/data/g;->cleanup()V

    .line 110
    .line 111
    .line 112
    throw p1
.end method

.method public cancel()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/a;->N:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a;->L:Ln2/j;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Ln2/j;->cancel()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public compareTo(Lcom/bumptech/glide/load/engine/a;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/a;",
            ")I"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a;->s:Lcom/bumptech/glide/Priority;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 3
    iget-object v1, p1, Lcom/bumptech/glide/load/engine/a;->s:Lcom/bumptech/glide/Priority;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 5
    iget v0, p0, Lcom/bumptech/glide/load/engine/a;->z:I

    iget p1, p1, Lcom/bumptech/glide/load/engine/a;->z:I

    sub-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/bumptech/glide/load/engine/a;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/engine/a;->compareTo(Lcom/bumptech/glide/load/engine/a;)I

    move-result p1

    return p1
.end method

.method public final d()V
    .locals 8

    .line 1
    const-string v0, "DecodeJob"

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
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v0, "Retrieved data"

    .line 11
    .line 12
    iget-wide v2, p0, Lcom/bumptech/glide/load/engine/a;->C:J

    .line 13
    .line 14
    new-instance v4, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v5, "data: "

    .line 17
    .line 18
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/a;->I:Ljava/lang/Object;

    .line 22
    .line 23
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v5, ", cache key: "

    .line 27
    .line 28
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/a;->G:Ll2/m;

    .line 32
    .line 33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v5, ", fetcher: "

    .line 37
    .line 38
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/a;->K:Lcom/bumptech/glide/load/data/e;

    .line 42
    .line 43
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {p0, v2, v3, v0, v4}, Lcom/bumptech/glide/load/engine/a;->g(JLjava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    const/4 v0, 0x0

    .line 54
    :try_start_0
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/a;->K:Lcom/bumptech/glide/load/data/e;

    .line 55
    .line 56
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/a;->I:Ljava/lang/Object;

    .line 57
    .line 58
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/a;->J:Lcom/bumptech/glide/load/DataSource;

    .line 59
    .line 60
    const-string v5, "Decoded result "

    .line 61
    .line 62
    if-nez v3, :cond_1

    .line 63
    .line 64
    invoke-interface {v2}, Lcom/bumptech/glide/load/data/e;->cleanup()V
    :try_end_0
    .catch Lcom/bumptech/glide/load/engine/GlideException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_1
    :try_start_1
    invoke-static {}, LG2/m;->getLogTime()J

    .line 69
    .line 70
    .line 71
    move-result-wide v6

    .line 72
    invoke-virtual {p0, v3, v4}, Lcom/bumptech/glide/load/engine/a;->b(Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;)Ln2/M;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    const-string v4, "DecodeJob"

    .line 77
    .line 78
    invoke-static {v4, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_2

    .line 83
    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {p0, v6, v7, v1, v0}, Lcom/bumptech/glide/load/engine/a;->g(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :catchall_0
    move-exception v1

    .line 101
    goto :goto_1

    .line 102
    :cond_2
    :goto_0
    :try_start_2
    invoke-interface {v2}, Lcom/bumptech/glide/load/data/e;->cleanup()V

    .line 103
    .line 104
    .line 105
    goto :goto_3

    .line 106
    :goto_1
    invoke-interface {v2}, Lcom/bumptech/glide/load/data/e;->cleanup()V

    .line 107
    .line 108
    .line 109
    throw v1
    :try_end_2
    .catch Lcom/bumptech/glide/load/engine/GlideException; {:try_start_2 .. :try_end_2} :catch_0

    .line 110
    :catch_0
    move-exception v1

    .line 111
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/a;->H:Ll2/m;

    .line 112
    .line 113
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/a;->J:Lcom/bumptech/glide/load/DataSource;

    .line 114
    .line 115
    iput-object v2, v1, Lcom/bumptech/glide/load/engine/GlideException;->e:Ll2/m;

    .line 116
    .line 117
    iput-object v3, v1, Lcom/bumptech/glide/load/engine/GlideException;->f:Lcom/bumptech/glide/load/DataSource;

    .line 118
    .line 119
    iput-object v0, v1, Lcom/bumptech/glide/load/engine/GlideException;->j:Ljava/lang/Class;

    .line 120
    .line 121
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/a;->e:Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    :goto_2
    move-object v3, v0

    .line 127
    :goto_3
    if-eqz v3, :cond_b

    .line 128
    .line 129
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a;->J:Lcom/bumptech/glide/load/DataSource;

    .line 130
    .line 131
    iget-boolean v2, p0, Lcom/bumptech/glide/load/engine/a;->O:Z

    .line 132
    .line 133
    const-string v4, "DecodeJob.notifyEncodeAndRelease"

    .line 134
    .line 135
    invoke-static {v4}, LH2/i;->beginSection(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    :try_start_3
    instance-of v4, v3, Ln2/I;

    .line 139
    .line 140
    if-eqz v4, :cond_3

    .line 141
    .line 142
    move-object v4, v3

    .line 143
    check-cast v4, Ln2/I;

    .line 144
    .line 145
    invoke-interface {v4}, Ln2/I;->initialize()V

    .line 146
    .line 147
    .line 148
    goto :goto_4

    .line 149
    :catchall_1
    move-exception v0

    .line 150
    goto/16 :goto_8

    .line 151
    .line 152
    :cond_3
    :goto_4
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/a;->n:Le/s0;

    .line 153
    .line 154
    iget-object v4, v4, Le/s0;->c:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast v4, Ln2/L;

    .line 157
    .line 158
    const/4 v5, 0x0

    .line 159
    const/4 v6, 0x1

    .line 160
    if-eqz v4, :cond_4

    .line 161
    .line 162
    move v4, v6

    .line 163
    goto :goto_5

    .line 164
    :cond_4
    move v4, v5

    .line 165
    :goto_5
    if-eqz v4, :cond_5

    .line 166
    .line 167
    sget-object v0, Ln2/L;->m:LL/e;

    .line 168
    .line 169
    invoke-interface {v0}, LL/e;->acquire()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    check-cast v0, Ln2/L;

    .line 174
    .line 175
    invoke-static {v0}, LG2/r;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    check-cast v0, Ln2/L;

    .line 180
    .line 181
    iput-boolean v5, v0, Ln2/L;->j:Z

    .line 182
    .line 183
    iput-boolean v6, v0, Ln2/L;->f:Z

    .line 184
    .line 185
    iput-object v3, v0, Ln2/L;->e:Ln2/M;

    .line 186
    .line 187
    move-object v3, v0

    .line 188
    :cond_5
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/a;->m()V

    .line 189
    .line 190
    .line 191
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/a;->y:Lcom/bumptech/glide/load/engine/e;

    .line 192
    .line 193
    invoke-virtual {v4, v3, v1, v2}, Lcom/bumptech/glide/load/engine/e;->onResourceReady(Ln2/M;Lcom/bumptech/glide/load/DataSource;Z)V

    .line 194
    .line 195
    .line 196
    sget-object v1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->m:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 197
    .line 198
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/a;->A:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 199
    .line 200
    :try_start_4
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a;->n:Le/s0;

    .line 201
    .line 202
    iget-object v2, v1, Le/s0;->c:Ljava/lang/Object;

    .line 203
    .line 204
    check-cast v2, Ln2/L;

    .line 205
    .line 206
    if-eqz v2, :cond_6

    .line 207
    .line 208
    move v5, v6

    .line 209
    :cond_6
    if-eqz v5, :cond_7

    .line 210
    .line 211
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/a;->j:Ln2/z;

    .line 212
    .line 213
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/a;->x:Ll2/q;

    .line 214
    .line 215
    invoke-virtual {v1, v2, v3}, Le/s0;->a(Ln2/z;Ll2/q;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 216
    .line 217
    .line 218
    goto :goto_6

    .line 219
    :catchall_2
    move-exception v1

    .line 220
    goto :goto_7

    .line 221
    :cond_7
    :goto_6
    if-eqz v0, :cond_8

    .line 222
    .line 223
    :try_start_5
    invoke-virtual {v0}, Ln2/L;->a()V

    .line 224
    .line 225
    .line 226
    :cond_8
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a;->p:Ln2/m;

    .line 227
    .line 228
    monitor-enter v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 229
    :try_start_6
    iput-boolean v6, v0, Ln2/m;->b:Z

    .line 230
    .line 231
    invoke-virtual {v0}, Ln2/m;->a()Z

    .line 232
    .line 233
    .line 234
    move-result v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 235
    :try_start_7
    monitor-exit v0

    .line 236
    if-eqz v1, :cond_9

    .line 237
    .line 238
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/a;->j()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 239
    .line 240
    .line 241
    :cond_9
    invoke-static {}, LH2/i;->endSection()V

    .line 242
    .line 243
    .line 244
    goto :goto_9

    .line 245
    :catchall_3
    move-exception v1

    .line 246
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 247
    :try_start_9
    throw v1

    .line 248
    :goto_7
    if-eqz v0, :cond_a

    .line 249
    .line 250
    invoke-virtual {v0}, Ln2/L;->a()V

    .line 251
    .line 252
    .line 253
    :cond_a
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 254
    :goto_8
    invoke-static {}, LH2/i;->endSection()V

    .line 255
    .line 256
    .line 257
    throw v0

    .line 258
    :cond_b
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/a;->k()V

    .line 259
    .line 260
    .line 261
    :goto_9
    return-void
.end method

.method public final e()Ln2/j;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a;->A:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/a;->b:Ln2/k;

    .line 9
    .line 10
    if-eq v0, v1, :cond_3

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x5

    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    return-object v0

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v2, "Unrecognized stage: "

    .line 28
    .line 29
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/a;->A:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0

    .line 45
    :cond_1
    new-instance v0, Ln2/T;

    .line 46
    .line 47
    invoke-direct {v0, v2, p0}, Ln2/T;-><init>(Ln2/k;Lcom/bumptech/glide/load/engine/a;)V

    .line 48
    .line 49
    .line 50
    return-object v0

    .line 51
    :cond_2
    new-instance v0, Ln2/f;

    .line 52
    .line 53
    invoke-virtual {v2}, Ln2/k;->a()Ljava/util/ArrayList;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-direct {v0, v1, v2, p0}, Ln2/f;-><init>(Ljava/util/List;Ln2/k;Ln2/i;)V

    .line 58
    .line 59
    .line 60
    return-object v0

    .line 61
    :cond_3
    new-instance v0, Ln2/N;

    .line 62
    .line 63
    invoke-direct {v0, v2, p0}, Ln2/N;-><init>(Ln2/k;Lcom/bumptech/glide/load/engine/a;)V

    .line 64
    .line 65
    .line 66
    return-object v0
.end method

.method public final f(Lcom/bumptech/glide/load/engine/DecodeJob$Stage;)Lcom/bumptech/glide/load/engine/DecodeJob$Stage;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_6

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_4

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    sget-object v2, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->n:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 12
    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x5

    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v2, "Unrecognized stage: "

    .line 27
    .line 28
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v0

    .line 42
    :cond_1
    :goto_0
    return-object v2

    .line 43
    :cond_2
    iget-boolean p1, p0, Lcom/bumptech/glide/load/engine/a;->D:Z

    .line 44
    .line 45
    if-eqz p1, :cond_3

    .line 46
    .line 47
    return-object v2

    .line 48
    :cond_3
    sget-object p1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->j:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 49
    .line 50
    return-object p1

    .line 51
    :cond_4
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/a;->w:Ln2/u;

    .line 52
    .line 53
    invoke-virtual {p1}, Ln2/u;->decodeCachedData()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->f:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 58
    .line 59
    if-eqz p1, :cond_5

    .line 60
    .line 61
    return-object v0

    .line 62
    :cond_5
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/engine/a;->f(Lcom/bumptech/glide/load/engine/DecodeJob$Stage;)Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    return-object p1

    .line 67
    :cond_6
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/a;->w:Ln2/u;

    .line 68
    .line 69
    invoke-virtual {p1}, Ln2/u;->decodeCachedResource()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->e:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 74
    .line 75
    if-eqz p1, :cond_7

    .line 76
    .line 77
    return-object v0

    .line 78
    :cond_7
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/engine/a;->f(Lcom/bumptech/glide/load/engine/DecodeJob$Stage;)Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    return-object p1
.end method

.method public final g(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, " in "

    .line 2
    .line 3
    invoke-static {p3, v0}, LA/i;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    invoke-static {p1, p2}, LG2/m;->getElapsedMillis(J)D

    .line 8
    .line 9
    .line 10
    move-result-wide p1

    .line 11
    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, ", load key: "

    .line 15
    .line 16
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/a;->t:Ln2/E;

    .line 20
    .line 21
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    if-eqz p4, :cond_0

    .line 25
    .line 26
    const-string p1, ", "

    .line 27
    .line 28
    invoke-virtual {p1, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-string p1, ""

    .line 34
    .line 35
    :goto_0
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p1, ", thread: "

    .line 39
    .line 40
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const-string p2, "DecodeJob"

    .line 59
    .line 60
    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public getVerifier()LH2/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a;->f:LH2/k;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/a;->m()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/bumptech/glide/load/engine/GlideException;

    .line 5
    .line 6
    const-string v1, "Failed to load resource"

    .line 7
    .line 8
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    .line 10
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/a;->e:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a;->y:Lcom/bumptech/glide/load/engine/e;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/load/engine/e;->onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a;->p:Ln2/m;

    .line 24
    .line 25
    monitor-enter v0

    .line 26
    const/4 v1, 0x1

    .line 27
    :try_start_0
    iput-boolean v1, v0, Ln2/m;->c:Z

    .line 28
    .line 29
    invoke-virtual {v0}, Ln2/m;->a()Z

    .line 30
    .line 31
    .line 32
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    monitor-exit v0

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/a;->j()V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void

    .line 40
    :catchall_0
    move-exception v1

    .line 41
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    throw v1
.end method

.method public final i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a;->p:Ln2/m;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, v0, Ln2/m;->a:Z

    .line 6
    .line 7
    invoke-virtual {v0}, Ln2/m;->a()Z

    .line 8
    .line 9
    .line 10
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit v0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/a;->j()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw v1
.end method

.method public final j()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a;->p:Ln2/m;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iput-boolean v1, v0, Ln2/m;->b:Z

    .line 6
    .line 7
    iput-boolean v1, v0, Ln2/m;->a:Z

    .line 8
    .line 9
    iput-boolean v1, v0, Ln2/m;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    monitor-exit v0

    .line 12
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a;->n:Le/s0;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    iput-object v2, v0, Le/s0;->a:Ljava/lang/Object;

    .line 16
    .line 17
    iput-object v2, v0, Le/s0;->b:Ljava/lang/Object;

    .line 18
    .line 19
    iput-object v2, v0, Le/s0;->c:Ljava/lang/Object;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a;->b:Ln2/k;

    .line 22
    .line 23
    iput-object v2, v0, Ln2/k;->c:Lcom/bumptech/glide/h;

    .line 24
    .line 25
    iput-object v2, v0, Ln2/k;->d:Ljava/lang/Object;

    .line 26
    .line 27
    iput-object v2, v0, Ln2/k;->n:Ll2/m;

    .line 28
    .line 29
    iput-object v2, v0, Ln2/k;->g:Ljava/lang/Class;

    .line 30
    .line 31
    iput-object v2, v0, Ln2/k;->k:Ljava/lang/Class;

    .line 32
    .line 33
    iput-object v2, v0, Ln2/k;->i:Ll2/q;

    .line 34
    .line 35
    iput-object v2, v0, Ln2/k;->o:Lcom/bumptech/glide/Priority;

    .line 36
    .line 37
    iput-object v2, v0, Ln2/k;->j:Ljava/util/Map;

    .line 38
    .line 39
    iput-object v2, v0, Ln2/k;->p:Ln2/u;

    .line 40
    .line 41
    iget-object v3, v0, Ln2/k;->a:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 44
    .line 45
    .line 46
    iput-boolean v1, v0, Ln2/k;->l:Z

    .line 47
    .line 48
    iget-object v3, v0, Ln2/k;->b:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 51
    .line 52
    .line 53
    iput-boolean v1, v0, Ln2/k;->m:Z

    .line 54
    .line 55
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/a;->M:Z

    .line 56
    .line 57
    iput-object v2, p0, Lcom/bumptech/glide/load/engine/a;->q:Lcom/bumptech/glide/h;

    .line 58
    .line 59
    iput-object v2, p0, Lcom/bumptech/glide/load/engine/a;->r:Ll2/m;

    .line 60
    .line 61
    iput-object v2, p0, Lcom/bumptech/glide/load/engine/a;->x:Ll2/q;

    .line 62
    .line 63
    iput-object v2, p0, Lcom/bumptech/glide/load/engine/a;->s:Lcom/bumptech/glide/Priority;

    .line 64
    .line 65
    iput-object v2, p0, Lcom/bumptech/glide/load/engine/a;->t:Ln2/E;

    .line 66
    .line 67
    iput-object v2, p0, Lcom/bumptech/glide/load/engine/a;->y:Lcom/bumptech/glide/load/engine/e;

    .line 68
    .line 69
    iput-object v2, p0, Lcom/bumptech/glide/load/engine/a;->A:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 70
    .line 71
    iput-object v2, p0, Lcom/bumptech/glide/load/engine/a;->L:Ln2/j;

    .line 72
    .line 73
    iput-object v2, p0, Lcom/bumptech/glide/load/engine/a;->F:Ljava/lang/Thread;

    .line 74
    .line 75
    iput-object v2, p0, Lcom/bumptech/glide/load/engine/a;->G:Ll2/m;

    .line 76
    .line 77
    iput-object v2, p0, Lcom/bumptech/glide/load/engine/a;->I:Ljava/lang/Object;

    .line 78
    .line 79
    iput-object v2, p0, Lcom/bumptech/glide/load/engine/a;->J:Lcom/bumptech/glide/load/DataSource;

    .line 80
    .line 81
    iput-object v2, p0, Lcom/bumptech/glide/load/engine/a;->K:Lcom/bumptech/glide/load/data/e;

    .line 82
    .line 83
    const-wide/16 v3, 0x0

    .line 84
    .line 85
    iput-wide v3, p0, Lcom/bumptech/glide/load/engine/a;->C:J

    .line 86
    .line 87
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/a;->N:Z

    .line 88
    .line 89
    iput-object v2, p0, Lcom/bumptech/glide/load/engine/a;->E:Ljava/lang/Object;

    .line 90
    .line 91
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a;->e:Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a;->m:LL/e;

    .line 97
    .line 98
    invoke-interface {v0, p0}, LL/e;->release(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :catchall_0
    move-exception v1

    .line 103
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    throw v1
.end method

.method public final k()V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a;->F:Ljava/lang/Thread;

    .line 6
    .line 7
    invoke-static {}, LG2/m;->getLogTime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iput-wide v0, p0, Lcom/bumptech/glide/load/engine/a;->C:J

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    :cond_0
    iget-boolean v1, p0, Lcom/bumptech/glide/load/engine/a;->N:Z

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a;->L:Ln2/j;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a;->L:Ln2/j;

    .line 23
    .line 24
    invoke-interface {v0}, Ln2/j;->startNext()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a;->A:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/load/engine/a;->f(Lcom/bumptech/glide/load/engine/DecodeJob$Stage;)Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/a;->A:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/a;->e()Ln2/j;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/a;->L:Ln2/j;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a;->A:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 45
    .line 46
    sget-object v2, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->j:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 47
    .line 48
    if-ne v1, v2, :cond_0

    .line 49
    .line 50
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->e:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    .line 51
    .line 52
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a;->B:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    .line 53
    .line 54
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a;->y:Lcom/bumptech/glide/load/engine/e;

    .line 55
    .line 56
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/engine/e;->reschedule(Lcom/bumptech/glide/load/engine/a;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a;->A:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 61
    .line 62
    sget-object v2, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->n:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 63
    .line 64
    if-eq v1, v2, :cond_2

    .line 65
    .line 66
    iget-boolean v1, p0, Lcom/bumptech/glide/load/engine/a;->N:Z

    .line 67
    .line 68
    if-eqz v1, :cond_3

    .line 69
    .line 70
    :cond_2
    if-nez v0, :cond_3

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/a;->h()V

    .line 73
    .line 74
    .line 75
    :cond_3
    return-void
.end method

.method public final l()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a;->B:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/a;->d()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v2, "Unrecognized run reason: "

    .line 24
    .line 25
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/a;->B:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0

    .line 41
    :cond_1
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/a;->k()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->b:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/engine/a;->f(Lcom/bumptech/glide/load/engine/DecodeJob$Stage;)Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a;->A:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/a;->e()Ln2/j;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a;->L:Ln2/j;

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/a;->k()V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final m()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a;->f:LH2/k;

    .line 2
    .line 3
    invoke-virtual {v0}, LH2/k;->throwIfRecycled()V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/a;->M:Z

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a;->e:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a;->e:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-static {v1, v0}, Lb/c;->h(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/Throwable;

    .line 28
    .line 29
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    const-string v2, "Already notified"

    .line 32
    .line 33
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    throw v1

    .line 37
    :cond_1
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/a;->M:Z

    .line 38
    .line 39
    return-void
.end method

.method public onDataFetcherFailed(Ll2/m;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/e;Lcom/bumptech/glide/load/DataSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll2/m;",
            "Ljava/lang/Exception;",
            "Lcom/bumptech/glide/load/data/e;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p3}, Lcom/bumptech/glide/load/data/e;->cleanup()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/bumptech/glide/load/engine/GlideException;

    .line 5
    .line 6
    const-string v1, "Fetching data failed"

    .line 7
    .line 8
    invoke-direct {v0, v1, p2}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p3}, Lcom/bumptech/glide/load/data/e;->getDataClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    iput-object p1, v0, Lcom/bumptech/glide/load/engine/GlideException;->e:Ll2/m;

    .line 16
    .line 17
    iput-object p4, v0, Lcom/bumptech/glide/load/engine/GlideException;->f:Lcom/bumptech/glide/load/DataSource;

    .line 18
    .line 19
    iput-object p2, v0, Lcom/bumptech/glide/load/engine/GlideException;->j:Ljava/lang/Class;

    .line 20
    .line 21
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/a;->e:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/a;->F:Ljava/lang/Thread;

    .line 31
    .line 32
    if-eq p1, p2, :cond_0

    .line 33
    .line 34
    sget-object p1, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->e:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/a;->B:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    .line 37
    .line 38
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/a;->y:Lcom/bumptech/glide/load/engine/e;

    .line 39
    .line 40
    invoke-virtual {p1, p0}, Lcom/bumptech/glide/load/engine/e;->reschedule(Lcom/bumptech/glide/load/engine/a;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/a;->k()V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public onDataFetcherReady(Ll2/m;Ljava/lang/Object;Lcom/bumptech/glide/load/data/e;Lcom/bumptech/glide/load/DataSource;Ll2/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll2/m;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/data/e;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Ll2/m;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/a;->G:Ll2/m;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/a;->I:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/a;->K:Lcom/bumptech/glide/load/data/e;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/bumptech/glide/load/engine/a;->J:Lcom/bumptech/glide/load/DataSource;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/bumptech/glide/load/engine/a;->H:Ll2/m;

    .line 10
    .line 11
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/a;->b:Ln2/k;

    .line 12
    .line 13
    invoke-virtual {p2}, Ln2/k;->a()Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const/4 p3, 0x0

    .line 18
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    if-eq p1, p2, :cond_0

    .line 23
    .line 24
    const/4 p3, 0x1

    .line 25
    :cond_0
    iput-boolean p3, p0, Lcom/bumptech/glide/load/engine/a;->O:Z

    .line 26
    .line 27
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/a;->F:Ljava/lang/Thread;

    .line 32
    .line 33
    if-eq p1, p2, :cond_1

    .line 34
    .line 35
    sget-object p1, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->f:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    .line 36
    .line 37
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/a;->B:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    .line 38
    .line 39
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/a;->y:Lcom/bumptech/glide/load/engine/e;

    .line 40
    .line 41
    invoke-virtual {p1, p0}, Lcom/bumptech/glide/load/engine/e;->reschedule(Lcom/bumptech/glide/load/engine/a;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    const-string p1, "DecodeJob.decodeFromRetrievedData"

    .line 46
    .line 47
    invoke-static {p1}, LH2/i;->beginSection(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :try_start_0
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/a;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    invoke-static {}, LH2/i;->endSection()V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    invoke-static {}, LH2/i;->endSection()V

    .line 59
    .line 60
    .line 61
    throw p1
.end method

.method public reschedule()V
    .locals 1

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->e:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a;->B:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a;->y:Lcom/bumptech/glide/load/engine/e;

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/engine/e;->reschedule(Lcom/bumptech/glide/load/engine/a;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public run()V
    .locals 5

    .line 1
    const-string v0, "DecodeJob"

    .line 2
    .line 3
    const-string v1, "DecodeJob threw unexpectedly, isCancelled: "

    .line 4
    .line 5
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/a;->B:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/a;->E:Ljava/lang/Object;

    .line 8
    .line 9
    const-string v4, "DecodeJob#run(reason=%s, model=%s)"

    .line 10
    .line 11
    invoke-static {v4, v2, v3}, LH2/i;->beginSectionFormat(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/a;->K:Lcom/bumptech/glide/load/data/e;

    .line 15
    .line 16
    :try_start_0
    iget-boolean v3, p0, Lcom/bumptech/glide/load/engine/a;->N:Z

    .line 17
    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/a;->h()V
    :try_end_0
    .catch Lcom/bumptech/glide/load/engine/CallbackException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-interface {v2}, Lcom/bumptech/glide/load/data/e;->cleanup()V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-static {}, LH2/i;->endSection()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception v3

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    goto :goto_2

    .line 36
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/a;->l()V
    :try_end_1
    .catch Lcom/bumptech/glide/load/engine/CallbackException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    .line 38
    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    invoke-interface {v2}, Lcom/bumptech/glide/load/data/e;->cleanup()V

    .line 42
    .line 43
    .line 44
    :cond_2
    invoke-static {}, LH2/i;->endSection()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :goto_0
    const/4 v4, 0x3

    .line 49
    :try_start_2
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_3

    .line 54
    .line 55
    new-instance v4, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-boolean v1, p0, Lcom/bumptech/glide/load/engine/a;->N:Z

    .line 61
    .line 62
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v1, ", stage: "

    .line 66
    .line 67
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a;->A:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 71
    .line 72
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-static {v0, v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :catchall_1
    move-exception v0

    .line 84
    goto :goto_3

    .line 85
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a;->A:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 86
    .line 87
    sget-object v1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->m:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 88
    .line 89
    if-eq v0, v1, :cond_4

    .line 90
    .line 91
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a;->e:Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/a;->h()V

    .line 97
    .line 98
    .line 99
    :cond_4
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/a;->N:Z

    .line 100
    .line 101
    if-nez v0, :cond_5

    .line 102
    .line 103
    throw v3

    .line 104
    :cond_5
    throw v3

    .line 105
    :goto_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 106
    :goto_3
    if-eqz v2, :cond_6

    .line 107
    .line 108
    invoke-interface {v2}, Lcom/bumptech/glide/load/data/e;->cleanup()V

    .line 109
    .line 110
    .line 111
    :cond_6
    invoke-static {}, LH2/i;->endSection()V

    .line 112
    .line 113
    .line 114
    throw v0
.end method
