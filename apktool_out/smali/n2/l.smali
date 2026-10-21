.class public final Ln2/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln2/n;


# instance fields
.field public final a:Lcom/bumptech/glide/load/DataSource;

.field public final synthetic b:Lcom/bumptech/glide/load/engine/a;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/a;Lcom/bumptech/glide/load/DataSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ln2/l;->b:Lcom/bumptech/glide/load/engine/a;

    .line 5
    .line 6
    iput-object p2, p0, Ln2/l;->a:Lcom/bumptech/glide/load/DataSource;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onResourceDecoded(Ln2/M;)Ln2/M;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln2/M;",
            ")",
            "Ln2/M;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln2/l;->b:Lcom/bumptech/glide/load/engine/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ln2/M;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v9

    .line 14
    sget-object v1, Lcom/bumptech/glide/load/DataSource;->j:Lcom/bumptech/glide/load/DataSource;

    .line 15
    .line 16
    iget-object v2, p0, Ln2/l;->a:Lcom/bumptech/glide/load/DataSource;

    .line 17
    .line 18
    iget-object v3, v0, Lcom/bumptech/glide/load/engine/a;->b:Ln2/k;

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    if-eq v2, v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v3, v9}, Ln2/k;->c(Ljava/lang/Class;)Ll2/t;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget-object v5, v0, Lcom/bumptech/glide/load/engine/a;->q:Lcom/bumptech/glide/h;

    .line 28
    .line 29
    iget v6, v0, Lcom/bumptech/glide/load/engine/a;->u:I

    .line 30
    .line 31
    iget v7, v0, Lcom/bumptech/glide/load/engine/a;->v:I

    .line 32
    .line 33
    invoke-interface {v1, v5, p1, v6, v7}, Ll2/t;->transform(Landroid/content/Context;Ln2/M;II)Ln2/M;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    move-object v8, v1

    .line 38
    move-object v1, v5

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move-object v1, p1

    .line 41
    move-object v8, v4

    .line 42
    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-nez v5, :cond_1

    .line 47
    .line 48
    invoke-interface {p1}, Ln2/M;->recycle()V

    .line 49
    .line 50
    .line 51
    :cond_1
    iget-object p1, v3, Ln2/k;->c:Lcom/bumptech/glide/h;

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/bumptech/glide/h;->getRegistry()Lcom/bumptech/glide/j;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/j;->isResourceEncoderAvailable(Ln2/M;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    iget-object p1, v3, Ln2/k;->c:Lcom/bumptech/glide/h;

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/bumptech/glide/h;->getRegistry()Lcom/bumptech/glide/j;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/j;->getResultEncoder(Ln2/M;)Ll2/s;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    iget-object p1, v0, Lcom/bumptech/glide/load/engine/a;->x:Ll2/q;

    .line 74
    .line 75
    invoke-interface {v4, p1}, Ll2/s;->getEncodeStrategy(Ll2/q;)Lcom/bumptech/glide/load/EncodeStrategy;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    :goto_1
    move-object v11, v4

    .line 80
    goto :goto_2

    .line 81
    :cond_2
    sget-object p1, Lcom/bumptech/glide/load/EncodeStrategy;->f:Lcom/bumptech/glide/load/EncodeStrategy;

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :goto_2
    iget-object v4, v0, Lcom/bumptech/glide/load/engine/a;->G:Ll2/m;

    .line 85
    .line 86
    invoke-virtual {v3}, Ln2/k;->b()Ljava/util/ArrayList;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    const/4 v12, 0x0

    .line 95
    move v7, v12

    .line 96
    :goto_3
    const/4 v13, 0x1

    .line 97
    if-ge v7, v6, :cond_4

    .line 98
    .line 99
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v10

    .line 103
    check-cast v10, Lr2/U;

    .line 104
    .line 105
    iget-object v10, v10, Lr2/U;->a:Ll2/m;

    .line 106
    .line 107
    invoke-interface {v10, v4}, Ll2/m;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v10

    .line 111
    if-eqz v10, :cond_3

    .line 112
    .line 113
    move v4, v13

    .line 114
    goto :goto_4

    .line 115
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_4
    move v4, v12

    .line 119
    :goto_4
    xor-int/2addr v4, v13

    .line 120
    iget-object v5, v0, Lcom/bumptech/glide/load/engine/a;->w:Ln2/u;

    .line 121
    .line 122
    invoke-virtual {v5, v4, v2, p1}, Ln2/u;->isResourceCacheable(ZLcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/EncodeStrategy;)Z

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    if-eqz v2, :cond_8

    .line 127
    .line 128
    if-eqz v11, :cond_7

    .line 129
    .line 130
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-eqz v2, :cond_6

    .line 135
    .line 136
    if-ne v2, v13, :cond_5

    .line 137
    .line 138
    new-instance v2, Ln2/O;

    .line 139
    .line 140
    iget-object p1, v3, Ln2/k;->c:Lcom/bumptech/glide/h;

    .line 141
    .line 142
    invoke-virtual {p1}, Lcom/bumptech/glide/h;->getArrayPool()Lo2/b;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    iget-object v4, v0, Lcom/bumptech/glide/load/engine/a;->G:Ll2/m;

    .line 147
    .line 148
    iget-object v5, v0, Lcom/bumptech/glide/load/engine/a;->r:Ll2/m;

    .line 149
    .line 150
    iget v6, v0, Lcom/bumptech/glide/load/engine/a;->u:I

    .line 151
    .line 152
    iget v7, v0, Lcom/bumptech/glide/load/engine/a;->v:I

    .line 153
    .line 154
    iget-object v10, v0, Lcom/bumptech/glide/load/engine/a;->x:Ll2/q;

    .line 155
    .line 156
    invoke-direct/range {v2 .. v10}, Ln2/O;-><init>(Lo2/b;Ll2/m;Ll2/m;IILl2/t;Ljava/lang/Class;Ll2/q;)V

    .line 157
    .line 158
    .line 159
    goto :goto_5

    .line 160
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 161
    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    const-string v2, "Unknown strategy: "

    .line 165
    .line 166
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    throw v0

    .line 180
    :cond_6
    new-instance v2, Ln2/g;

    .line 181
    .line 182
    iget-object p1, v0, Lcom/bumptech/glide/load/engine/a;->G:Ll2/m;

    .line 183
    .line 184
    iget-object v3, v0, Lcom/bumptech/glide/load/engine/a;->r:Ll2/m;

    .line 185
    .line 186
    invoke-direct {v2, p1, v3}, Ln2/g;-><init>(Ll2/m;Ll2/m;)V

    .line 187
    .line 188
    .line 189
    :goto_5
    sget-object p1, Ln2/L;->m:LL/e;

    .line 190
    .line 191
    invoke-interface {p1}, LL/e;->acquire()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    check-cast p1, Ln2/L;

    .line 196
    .line 197
    invoke-static {p1}, LG2/r;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    check-cast p1, Ln2/L;

    .line 202
    .line 203
    iput-boolean v12, p1, Ln2/L;->j:Z

    .line 204
    .line 205
    iput-boolean v13, p1, Ln2/L;->f:Z

    .line 206
    .line 207
    iput-object v1, p1, Ln2/L;->e:Ln2/M;

    .line 208
    .line 209
    iget-object v0, v0, Lcom/bumptech/glide/load/engine/a;->n:Le/s0;

    .line 210
    .line 211
    iput-object v2, v0, Le/s0;->a:Ljava/lang/Object;

    .line 212
    .line 213
    iput-object v11, v0, Le/s0;->b:Ljava/lang/Object;

    .line 214
    .line 215
    iput-object p1, v0, Le/s0;->c:Ljava/lang/Object;

    .line 216
    .line 217
    return-object p1

    .line 218
    :cond_7
    new-instance p1, Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;

    .line 219
    .line 220
    invoke-interface {v1}, Ln2/M;->get()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-direct {p1, v0}, Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;-><init>(Ljava/lang/Class;)V

    .line 229
    .line 230
    .line 231
    throw p1

    .line 232
    :cond_8
    return-object v1
.end method
