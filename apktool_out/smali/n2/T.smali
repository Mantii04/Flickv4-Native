.class public final Ln2/T;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln2/j;
.implements Ln2/i;


# instance fields
.field public final b:Ln2/k;

.field public final e:Lcom/bumptech/glide/load/engine/a;

.field public volatile f:I

.field public volatile j:Ln2/f;

.field public volatile m:Ljava/lang/Object;

.field public volatile n:Lr2/U;

.field public volatile p:Ln2/g;


# direct methods
.method public constructor <init>(Ln2/k;Lcom/bumptech/glide/load/engine/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ln2/T;->b:Ln2/k;

    .line 5
    .line 6
    iput-object p2, p0, Ln2/T;->e:Lcom/bumptech/glide/load/engine/a;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 13

    .line 1
    const-string v0, "SourceGenerator"

    .line 2
    .line 3
    const-string v1, "Attempt to write: "

    .line 4
    .line 5
    const-string v2, "Finished encoding source to cache, key: "

    .line 6
    .line 7
    invoke-static {}, LG2/m;->getLogTime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v3

    .line 11
    const/4 v5, 0x0

    .line 12
    :try_start_0
    iget-object v6, p0, Ln2/T;->b:Ln2/k;

    .line 13
    .line 14
    iget-object v6, v6, Ln2/k;->c:Lcom/bumptech/glide/h;

    .line 15
    .line 16
    invoke-virtual {v6}, Lcom/bumptech/glide/h;->getRegistry()Lcom/bumptech/glide/j;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    invoke-virtual {v6, p1}, Lcom/bumptech/glide/j;->getRewinder(Ljava/lang/Object;)Lcom/bumptech/glide/load/data/g;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    invoke-interface {v6}, Lcom/bumptech/glide/load/data/g;->rewindAndGet()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v7

    .line 28
    iget-object v8, p0, Ln2/T;->b:Ln2/k;

    .line 29
    .line 30
    iget-object v8, v8, Ln2/k;->c:Lcom/bumptech/glide/h;

    .line 31
    .line 32
    invoke-virtual {v8}, Lcom/bumptech/glide/h;->getRegistry()Lcom/bumptech/glide/j;

    .line 33
    .line 34
    .line 35
    move-result-object v8

    .line 36
    invoke-virtual {v8, v7}, Lcom/bumptech/glide/j;->getSourceEncoder(Ljava/lang/Object;)Ll2/a;

    .line 37
    .line 38
    .line 39
    move-result-object v8

    .line 40
    new-instance v9, Ln2/h;

    .line 41
    .line 42
    iget-object v10, p0, Ln2/T;->b:Ln2/k;

    .line 43
    .line 44
    iget-object v10, v10, Ln2/k;->i:Ll2/q;

    .line 45
    .line 46
    invoke-direct {v9, v8, v7, v10}, Ln2/h;-><init>(Ll2/a;Ljava/lang/Object;Ll2/q;)V

    .line 47
    .line 48
    .line 49
    new-instance v7, Ln2/g;

    .line 50
    .line 51
    iget-object v10, p0, Ln2/T;->n:Lr2/U;

    .line 52
    .line 53
    iget-object v10, v10, Lr2/U;->a:Ll2/m;

    .line 54
    .line 55
    iget-object v11, p0, Ln2/T;->b:Ln2/k;

    .line 56
    .line 57
    iget-object v12, v11, Ln2/k;->n:Ll2/m;

    .line 58
    .line 59
    invoke-direct {v7, v10, v12}, Ln2/g;-><init>(Ll2/m;Ll2/m;)V

    .line 60
    .line 61
    .line 62
    iget-object v10, v11, Ln2/k;->h:Ln2/z;

    .line 63
    .line 64
    invoke-virtual {v10}, Ln2/z;->getDiskCache()Lp2/c;

    .line 65
    .line 66
    .line 67
    move-result-object v10

    .line 68
    invoke-interface {v10, v7, v9}, Lp2/c;->put(Ll2/m;Lp2/b;)V

    .line 69
    .line 70
    .line 71
    const/4 v9, 0x2

    .line 72
    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 73
    .line 74
    .line 75
    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    const-string v11, ", data: "

    .line 77
    .line 78
    if-eqz v9, :cond_0

    .line 79
    .line 80
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v2, ", encoder: "

    .line 95
    .line 96
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v2, ", duration: "

    .line 103
    .line 104
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-static {v3, v4}, LG2/m;->getElapsedMillis(J)D

    .line 108
    .line 109
    .line 110
    move-result-wide v2

    .line 111
    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :catchall_0
    move-exception v0

    .line 123
    move-object p1, v0

    .line 124
    goto :goto_1

    .line 125
    :cond_0
    :goto_0
    invoke-interface {v10, v7}, Lp2/c;->get(Ll2/m;)Ljava/io/File;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    const/4 v3, 0x1

    .line 130
    if-eqz v2, :cond_1

    .line 131
    .line 132
    iput-object v7, p0, Ln2/T;->p:Ln2/g;

    .line 133
    .line 134
    new-instance p1, Ln2/f;

    .line 135
    .line 136
    iget-object v0, p0, Ln2/T;->n:Lr2/U;

    .line 137
    .line 138
    iget-object v0, v0, Lr2/U;->a:Ll2/m;

    .line 139
    .line 140
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    iget-object v1, p0, Ln2/T;->b:Ln2/k;

    .line 145
    .line 146
    invoke-direct {p1, v0, v1, p0}, Ln2/f;-><init>(Ljava/util/List;Ln2/k;Ln2/i;)V

    .line 147
    .line 148
    .line 149
    iput-object p1, p0, Ln2/T;->j:Ln2/f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    .line 151
    iget-object p1, p0, Ln2/T;->n:Lr2/U;

    .line 152
    .line 153
    iget-object p1, p1, Lr2/U;->c:Lcom/bumptech/glide/load/data/e;

    .line 154
    .line 155
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/e;->cleanup()V

    .line 156
    .line 157
    .line 158
    return v3

    .line 159
    :cond_1
    const/4 v2, 0x3

    .line 160
    :try_start_2
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    if-eqz v2, :cond_2

    .line 165
    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    iget-object v1, p0, Ln2/T;->p:Ln2/g;

    .line 172
    .line 173
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string p1, " to the disk cache failed, maybe the disk cache is disabled? Trying to decode the data directly..."

    .line 183
    .line 184
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 192
    .line 193
    .line 194
    :cond_2
    move-object p1, v6

    .line 195
    :try_start_3
    iget-object v6, p0, Ln2/T;->e:Lcom/bumptech/glide/load/engine/a;

    .line 196
    .line 197
    iget-object v0, p0, Ln2/T;->n:Lr2/U;

    .line 198
    .line 199
    iget-object v7, v0, Lr2/U;->a:Ll2/m;

    .line 200
    .line 201
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/g;->rewindAndGet()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v8

    .line 205
    iget-object p1, p0, Ln2/T;->n:Lr2/U;

    .line 206
    .line 207
    iget-object v9, p1, Lr2/U;->c:Lcom/bumptech/glide/load/data/e;

    .line 208
    .line 209
    iget-object p1, p0, Ln2/T;->n:Lr2/U;

    .line 210
    .line 211
    iget-object p1, p1, Lr2/U;->c:Lcom/bumptech/glide/load/data/e;

    .line 212
    .line 213
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/e;->getDataSource()Lcom/bumptech/glide/load/DataSource;

    .line 214
    .line 215
    .line 216
    move-result-object v10

    .line 217
    iget-object p1, p0, Ln2/T;->n:Lr2/U;

    .line 218
    .line 219
    iget-object v11, p1, Lr2/U;->a:Ll2/m;

    .line 220
    .line 221
    invoke-interface/range {v6 .. v11}, Ln2/i;->onDataFetcherReady(Ll2/m;Ljava/lang/Object;Lcom/bumptech/glide/load/data/e;Lcom/bumptech/glide/load/DataSource;Ll2/m;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 222
    .line 223
    .line 224
    return v5

    .line 225
    :catchall_1
    move-exception v0

    .line 226
    move-object p1, v0

    .line 227
    move v5, v3

    .line 228
    :goto_1
    if-nez v5, :cond_3

    .line 229
    .line 230
    iget-object v0, p0, Ln2/T;->n:Lr2/U;

    .line 231
    .line 232
    iget-object v0, v0, Lr2/U;->c:Lcom/bumptech/glide/load/data/e;

    .line 233
    .line 234
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/e;->cleanup()V

    .line 235
    .line 236
    .line 237
    :cond_3
    throw p1
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Ln2/T;->n:Lr2/U;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lr2/U;->c:Lcom/bumptech/glide/load/data/e;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/e;->cancel()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onDataFetcherFailed(Ll2/m;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/e;Lcom/bumptech/glide/load/DataSource;)V
    .locals 1
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
    iget-object p4, p0, Ln2/T;->e:Lcom/bumptech/glide/load/engine/a;

    .line 2
    .line 3
    iget-object v0, p0, Ln2/T;->n:Lr2/U;

    .line 4
    .line 5
    iget-object v0, v0, Lr2/U;->c:Lcom/bumptech/glide/load/data/e;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/e;->getDataSource()Lcom/bumptech/glide/load/DataSource;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {p4, p1, p2, p3, v0}, Ln2/i;->onDataFetcherFailed(Ll2/m;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/e;Lcom/bumptech/glide/load/DataSource;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onDataFetcherReady(Ll2/m;Ljava/lang/Object;Lcom/bumptech/glide/load/data/e;Lcom/bumptech/glide/load/DataSource;Ll2/m;)V
    .locals 6
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
    iget-object v0, p0, Ln2/T;->e:Lcom/bumptech/glide/load/engine/a;

    .line 2
    .line 3
    iget-object p4, p0, Ln2/T;->n:Lr2/U;

    .line 4
    .line 5
    iget-object p4, p4, Lr2/U;->c:Lcom/bumptech/glide/load/data/e;

    .line 6
    .line 7
    invoke-interface {p4}, Lcom/bumptech/glide/load/data/e;->getDataSource()Lcom/bumptech/glide/load/DataSource;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    move-object v5, p1

    .line 12
    move-object v1, p1

    .line 13
    move-object v2, p2

    .line 14
    move-object v3, p3

    .line 15
    invoke-interface/range {v0 .. v5}, Ln2/i;->onDataFetcherReady(Ll2/m;Ljava/lang/Object;Lcom/bumptech/glide/load/data/e;Lcom/bumptech/glide/load/DataSource;Ll2/m;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public reschedule()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public startNext()Z
    .locals 6

    .line 1
    iget-object v0, p0, Ln2/T;->m:Ljava/lang/Object;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Ln2/T;->m:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object v1, p0, Ln2/T;->m:Ljava/lang/Object;

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p0, v0}, Ln2/T;->a(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    const-string v3, "SourceGenerator"

    .line 20
    .line 21
    const/4 v4, 0x3

    .line 22
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_0

    .line 27
    .line 28
    const-string v4, "Failed to properly rewind or write data to cache"

    .line 29
    .line 30
    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Ln2/T;->j:Ln2/f;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    iget-object v0, p0, Ln2/T;->j:Ln2/f;

    .line 38
    .line 39
    invoke-virtual {v0}, Ln2/f;->startNext()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    :goto_0
    return v2

    .line 46
    :cond_1
    iput-object v1, p0, Ln2/T;->j:Ln2/f;

    .line 47
    .line 48
    iput-object v1, p0, Ln2/T;->n:Lr2/U;

    .line 49
    .line 50
    const/4 v0, 0x0

    .line 51
    :cond_2
    :goto_1
    if-nez v0, :cond_4

    .line 52
    .line 53
    iget v1, p0, Ln2/T;->f:I

    .line 54
    .line 55
    iget-object v3, p0, Ln2/T;->b:Ln2/k;

    .line 56
    .line 57
    invoke-virtual {v3}, Ln2/k;->b()Ljava/util/ArrayList;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-ge v1, v3, :cond_4

    .line 66
    .line 67
    iget-object v1, p0, Ln2/T;->b:Ln2/k;

    .line 68
    .line 69
    invoke-virtual {v1}, Ln2/k;->b()Ljava/util/ArrayList;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iget v3, p0, Ln2/T;->f:I

    .line 74
    .line 75
    add-int/lit8 v4, v3, 0x1

    .line 76
    .line 77
    iput v4, p0, Ln2/T;->f:I

    .line 78
    .line 79
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Lr2/U;

    .line 84
    .line 85
    iput-object v1, p0, Ln2/T;->n:Lr2/U;

    .line 86
    .line 87
    iget-object v1, p0, Ln2/T;->n:Lr2/U;

    .line 88
    .line 89
    if-eqz v1, :cond_2

    .line 90
    .line 91
    iget-object v1, p0, Ln2/T;->b:Ln2/k;

    .line 92
    .line 93
    iget-object v1, v1, Ln2/k;->p:Ln2/u;

    .line 94
    .line 95
    iget-object v3, p0, Ln2/T;->n:Lr2/U;

    .line 96
    .line 97
    iget-object v3, v3, Lr2/U;->c:Lcom/bumptech/glide/load/data/e;

    .line 98
    .line 99
    invoke-interface {v3}, Lcom/bumptech/glide/load/data/e;->getDataSource()Lcom/bumptech/glide/load/DataSource;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-virtual {v1, v3}, Ln2/u;->isDataCacheable(Lcom/bumptech/glide/load/DataSource;)Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-nez v1, :cond_3

    .line 108
    .line 109
    iget-object v1, p0, Ln2/T;->b:Ln2/k;

    .line 110
    .line 111
    iget-object v3, p0, Ln2/T;->n:Lr2/U;

    .line 112
    .line 113
    iget-object v3, v3, Lr2/U;->c:Lcom/bumptech/glide/load/data/e;

    .line 114
    .line 115
    invoke-interface {v3}, Lcom/bumptech/glide/load/data/e;->getDataClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    iget-object v4, v1, Ln2/k;->c:Lcom/bumptech/glide/h;

    .line 120
    .line 121
    invoke-virtual {v4}, Lcom/bumptech/glide/h;->getRegistry()Lcom/bumptech/glide/j;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    iget-object v5, v1, Ln2/k;->g:Ljava/lang/Class;

    .line 126
    .line 127
    iget-object v1, v1, Ln2/k;->k:Ljava/lang/Class;

    .line 128
    .line 129
    invoke-virtual {v4, v3, v5, v1}, Lcom/bumptech/glide/j;->getLoadPath(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ln2/J;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    if-eqz v1, :cond_2

    .line 134
    .line 135
    :cond_3
    iget-object v0, p0, Ln2/T;->n:Lr2/U;

    .line 136
    .line 137
    iget-object v1, p0, Ln2/T;->n:Lr2/U;

    .line 138
    .line 139
    iget-object v1, v1, Lr2/U;->c:Lcom/bumptech/glide/load/data/e;

    .line 140
    .line 141
    iget-object v3, p0, Ln2/T;->b:Ln2/k;

    .line 142
    .line 143
    iget-object v3, v3, Ln2/k;->o:Lcom/bumptech/glide/Priority;

    .line 144
    .line 145
    new-instance v4, Ln2/S;

    .line 146
    .line 147
    invoke-direct {v4, p0, v0}, Ln2/S;-><init>(Ln2/T;Lr2/U;)V

    .line 148
    .line 149
    .line 150
    invoke-interface {v1, v3, v4}, Lcom/bumptech/glide/load/data/e;->loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/d;)V

    .line 151
    .line 152
    .line 153
    move v0, v2

    .line 154
    goto :goto_1

    .line 155
    :cond_4
    return v0
.end method
