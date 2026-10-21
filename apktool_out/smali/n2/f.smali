.class public final Ln2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln2/j;
.implements Lcom/bumptech/glide/load/data/d;


# instance fields
.field public final b:Ljava/util/List;

.field public final e:Ln2/k;

.field public final f:Ln2/i;

.field public j:I

.field public m:Ll2/m;

.field public n:Ljava/util/List;

.field public p:I

.field public volatile q:Lr2/U;

.field public r:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/util/List;Ln2/k;Ln2/i;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Ln2/f;->j:I

    .line 6
    .line 7
    iput-object p1, p0, Ln2/f;->b:Ljava/util/List;

    .line 8
    .line 9
    iput-object p2, p0, Ln2/f;->e:Ln2/k;

    .line 10
    .line 11
    iput-object p3, p0, Ln2/f;->f:Ln2/i;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Ln2/f;->q:Lr2/U;

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

.method public onDataReady(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Ln2/f;->f:Ln2/i;

    .line 2
    .line 3
    iget-object v1, p0, Ln2/f;->m:Ll2/m;

    .line 4
    .line 5
    iget-object v2, p0, Ln2/f;->q:Lr2/U;

    .line 6
    .line 7
    iget-object v3, v2, Lr2/U;->c:Lcom/bumptech/glide/load/data/e;

    .line 8
    .line 9
    sget-object v4, Lcom/bumptech/glide/load/DataSource;->f:Lcom/bumptech/glide/load/DataSource;

    .line 10
    .line 11
    iget-object v5, p0, Ln2/f;->m:Ll2/m;

    .line 12
    .line 13
    move-object v2, p1

    .line 14
    invoke-interface/range {v0 .. v5}, Ln2/i;->onDataFetcherReady(Ll2/m;Ljava/lang/Object;Lcom/bumptech/glide/load/data/e;Lcom/bumptech/glide/load/DataSource;Ll2/m;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onLoadFailed(Ljava/lang/Exception;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ln2/f;->f:Ln2/i;

    .line 2
    .line 3
    iget-object v1, p0, Ln2/f;->m:Ll2/m;

    .line 4
    .line 5
    iget-object v2, p0, Ln2/f;->q:Lr2/U;

    .line 6
    .line 7
    iget-object v2, v2, Lr2/U;->c:Lcom/bumptech/glide/load/data/e;

    .line 8
    .line 9
    sget-object v3, Lcom/bumptech/glide/load/DataSource;->f:Lcom/bumptech/glide/load/DataSource;

    .line 10
    .line 11
    invoke-interface {v0, v1, p1, v2, v3}, Ln2/i;->onDataFetcherFailed(Ll2/m;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/e;Lcom/bumptech/glide/load/DataSource;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public startNext()Z
    .locals 8

    .line 1
    const-string v0, "DataCacheGenerator.startNext"

    .line 2
    .line 3
    invoke-static {v0}, LH2/i;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Ln2/f;->n:Ljava/util/List;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v0, :cond_7

    .line 11
    .line 12
    iget v3, p0, Ln2/f;->p:I

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-ge v3, v0, :cond_1

    .line 19
    .line 20
    move v0, v2

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move v0, v1

    .line 23
    :goto_1
    if-nez v0, :cond_2

    .line 24
    .line 25
    goto/16 :goto_5

    .line 26
    .line 27
    :cond_2
    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Ln2/f;->q:Lr2/U;

    .line 29
    .line 30
    move v0, v1

    .line 31
    :cond_3
    :goto_2
    if-nez v0, :cond_6

    .line 32
    .line 33
    iget v3, p0, Ln2/f;->p:I

    .line 34
    .line 35
    iget-object v4, p0, Ln2/f;->n:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-ge v3, v4, :cond_4

    .line 42
    .line 43
    move v3, v2

    .line 44
    goto :goto_3

    .line 45
    :cond_4
    move v3, v1

    .line 46
    :goto_3
    if-eqz v3, :cond_6

    .line 47
    .line 48
    iget-object v3, p0, Ln2/f;->n:Ljava/util/List;

    .line 49
    .line 50
    iget v4, p0, Ln2/f;->p:I

    .line 51
    .line 52
    add-int/lit8 v5, v4, 0x1

    .line 53
    .line 54
    iput v5, p0, Ln2/f;->p:I

    .line 55
    .line 56
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Lr2/V;

    .line 61
    .line 62
    iget-object v4, p0, Ln2/f;->r:Ljava/io/File;

    .line 63
    .line 64
    iget-object v5, p0, Ln2/f;->e:Ln2/k;

    .line 65
    .line 66
    iget v6, v5, Ln2/k;->e:I

    .line 67
    .line 68
    iget v7, v5, Ln2/k;->f:I

    .line 69
    .line 70
    iget-object v5, v5, Ln2/k;->i:Ll2/q;

    .line 71
    .line 72
    invoke-interface {v3, v4, v6, v7, v5}, Lr2/V;->buildLoadData(Ljava/lang/Object;IILl2/q;)Lr2/U;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    iput-object v3, p0, Ln2/f;->q:Lr2/U;

    .line 77
    .line 78
    iget-object v3, p0, Ln2/f;->q:Lr2/U;

    .line 79
    .line 80
    if-eqz v3, :cond_3

    .line 81
    .line 82
    iget-object v3, p0, Ln2/f;->e:Ln2/k;

    .line 83
    .line 84
    iget-object v4, p0, Ln2/f;->q:Lr2/U;

    .line 85
    .line 86
    iget-object v4, v4, Lr2/U;->c:Lcom/bumptech/glide/load/data/e;

    .line 87
    .line 88
    invoke-interface {v4}, Lcom/bumptech/glide/load/data/e;->getDataClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    iget-object v5, v3, Ln2/k;->c:Lcom/bumptech/glide/h;

    .line 93
    .line 94
    invoke-virtual {v5}, Lcom/bumptech/glide/h;->getRegistry()Lcom/bumptech/glide/j;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    iget-object v6, v3, Ln2/k;->g:Ljava/lang/Class;

    .line 99
    .line 100
    iget-object v3, v3, Ln2/k;->k:Ljava/lang/Class;

    .line 101
    .line 102
    invoke-virtual {v5, v4, v6, v3}, Lcom/bumptech/glide/j;->getLoadPath(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ln2/J;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    if-eqz v3, :cond_5

    .line 107
    .line 108
    move v3, v2

    .line 109
    goto :goto_4

    .line 110
    :cond_5
    move v3, v1

    .line 111
    :goto_4
    if-eqz v3, :cond_3

    .line 112
    .line 113
    iget-object v0, p0, Ln2/f;->q:Lr2/U;

    .line 114
    .line 115
    iget-object v0, v0, Lr2/U;->c:Lcom/bumptech/glide/load/data/e;

    .line 116
    .line 117
    iget-object v3, p0, Ln2/f;->e:Ln2/k;

    .line 118
    .line 119
    iget-object v3, v3, Ln2/k;->o:Lcom/bumptech/glide/Priority;

    .line 120
    .line 121
    invoke-interface {v0, v3, p0}, Lcom/bumptech/glide/load/data/e;->loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    .line 123
    .line 124
    move v0, v2

    .line 125
    goto :goto_2

    .line 126
    :catchall_0
    move-exception v0

    .line 127
    goto :goto_6

    .line 128
    :cond_6
    invoke-static {}, LH2/i;->endSection()V

    .line 129
    .line 130
    .line 131
    return v0

    .line 132
    :cond_7
    :goto_5
    :try_start_1
    iget v0, p0, Ln2/f;->j:I

    .line 133
    .line 134
    add-int/2addr v0, v2

    .line 135
    iput v0, p0, Ln2/f;->j:I

    .line 136
    .line 137
    iget-object v2, p0, Ln2/f;->b:Ljava/util/List;

    .line 138
    .line 139
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 140
    .line 141
    .line 142
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    if-lt v0, v2, :cond_8

    .line 144
    .line 145
    invoke-static {}, LH2/i;->endSection()V

    .line 146
    .line 147
    .line 148
    return v1

    .line 149
    :cond_8
    :try_start_2
    iget-object v0, p0, Ln2/f;->b:Ljava/util/List;

    .line 150
    .line 151
    iget v2, p0, Ln2/f;->j:I

    .line 152
    .line 153
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    check-cast v0, Ll2/m;

    .line 158
    .line 159
    new-instance v2, Ln2/g;

    .line 160
    .line 161
    iget-object v3, p0, Ln2/f;->e:Ln2/k;

    .line 162
    .line 163
    iget-object v4, v3, Ln2/k;->n:Ll2/m;

    .line 164
    .line 165
    invoke-direct {v2, v0, v4}, Ln2/g;-><init>(Ll2/m;Ll2/m;)V

    .line 166
    .line 167
    .line 168
    iget-object v3, v3, Ln2/k;->h:Ln2/z;

    .line 169
    .line 170
    invoke-virtual {v3}, Ln2/z;->getDiskCache()Lp2/c;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    invoke-interface {v3, v2}, Lp2/c;->get(Ll2/m;)Ljava/io/File;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    iput-object v2, p0, Ln2/f;->r:Ljava/io/File;

    .line 179
    .line 180
    if-eqz v2, :cond_0

    .line 181
    .line 182
    iput-object v0, p0, Ln2/f;->m:Ll2/m;

    .line 183
    .line 184
    iget-object v0, p0, Ln2/f;->e:Ln2/k;

    .line 185
    .line 186
    iget-object v0, v0, Ln2/k;->c:Lcom/bumptech/glide/h;

    .line 187
    .line 188
    invoke-virtual {v0}, Lcom/bumptech/glide/h;->getRegistry()Lcom/bumptech/glide/j;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/j;->getModelLoaders(Ljava/lang/Object;)Ljava/util/List;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    iput-object v0, p0, Ln2/f;->n:Ljava/util/List;

    .line 197
    .line 198
    iput v1, p0, Ln2/f;->p:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 199
    .line 200
    goto/16 :goto_0

    .line 201
    .line 202
    :goto_6
    invoke-static {}, LH2/i;->endSection()V

    .line 203
    .line 204
    .line 205
    throw v0
.end method
