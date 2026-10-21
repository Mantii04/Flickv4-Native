.class public final Ly2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll2/r;


# static fields
.field public static final f:LJ3/b;

.field public static final g:LL0/f;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/List;

.field public final c:LL0/f;

.field public final d:LJ3/b;

.field public final e:Ly2/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LJ3/b;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ly2/a;->f:LJ3/b;

    .line 7
    .line 8
    new-instance v0, LL0/f;

    .line 9
    .line 10
    const/4 v1, 0x5

    .line 11
    invoke-direct {v0, v1}, LL0/f;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Ly2/a;->g:LL0/f;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lo2/d;Lo2/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ll2/c;",
            ">;",
            "Lo2/d;",
            "Lo2/b;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Ly2/a;->f:LJ3/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Ly2/a;->a:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p2, p0, Ly2/a;->b:Ljava/util/List;

    .line 13
    .line 14
    iput-object v0, p0, Ly2/a;->d:LJ3/b;

    .line 15
    .line 16
    new-instance p1, Ly2/b;

    .line 17
    .line 18
    invoke-direct {p1, p3, p4}, Ly2/b;-><init>(Lo2/d;Lo2/b;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Ly2/a;->e:Ly2/b;

    .line 22
    .line 23
    sget-object p1, Ly2/a;->g:LL0/f;

    .line 24
    .line 25
    iput-object p1, p0, Ly2/a;->c:LL0/f;

    .line 26
    .line 27
    return-void
.end method

.method public static b(Lk2/d;II)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lk2/d;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    div-int/2addr v0, p2

    .line 6
    invoke-virtual {p0}, Lk2/d;->getWidth()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    div-int/2addr v1, p1

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    :goto_0
    const/4 v1, 0x1

    .line 24
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const-string v2, "BufferGifDecoder"

    .line 29
    .line 30
    const/4 v3, 0x2

    .line 31
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    if-le v0, v1, :cond_1

    .line 38
    .line 39
    const-string v1, "Downsampling GIF, sampleSize: "

    .line 40
    .line 41
    const-string v3, ", target dimens: ["

    .line 42
    .line 43
    const-string v4, "x"

    .line 44
    .line 45
    invoke-static {v0, p1, v1, v3, v4}, LA/i;->p(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string p2, "], actual dimens: ["

    .line 53
    .line 54
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lk2/d;->getWidth()I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lk2/d;->getHeight()I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string p0, "]"

    .line 75
    .line 76
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    :cond_1
    return v0
.end method


# virtual methods
.method public final a(Ljava/nio/ByteBuffer;IILk2/e;Ll2/q;)Ly2/f;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "Decoded GIF from stream in "

    .line 4
    .line 5
    const-string v3, "BufferGifDecoder"

    .line 6
    .line 7
    invoke-static {}, LG2/m;->getLogTime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v4

    .line 11
    const/4 v6, 0x2

    .line 12
    :try_start_0
    invoke-virtual/range {p4 .. p4}, Lk2/e;->parseHeader()Lk2/d;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lk2/d;->getNumFrames()I

    .line 17
    .line 18
    .line 19
    move-result v7

    .line 20
    const/4 v8, 0x0

    .line 21
    if-lez v7, :cond_4

    .line 22
    .line 23
    invoke-virtual {v0}, Lk2/d;->getStatus()I

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    if-eqz v7, :cond_0

    .line 28
    .line 29
    goto/16 :goto_3

    .line 30
    .line 31
    :cond_0
    sget-object v7, Ly2/m;->a:Ll2/p;

    .line 32
    .line 33
    move-object/from16 v9, p5

    .line 34
    .line 35
    invoke-virtual {v9, v7}, Ll2/q;->get(Ll2/p;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    sget-object v9, Lcom/bumptech/glide/load/DecodeFormat;->e:Lcom/bumptech/glide/load/DecodeFormat;

    .line 40
    .line 41
    if-ne v7, v9, :cond_1

    .line 42
    .line 43
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 44
    .line 45
    :goto_0
    move/from16 v13, p2

    .line 46
    .line 47
    move/from16 v14, p3

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    goto/16 :goto_4

    .line 52
    .line 53
    :cond_1
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :goto_1
    invoke-static {v0, v13, v14}, Ly2/a;->b(Lk2/d;II)I

    .line 57
    .line 58
    .line 59
    move-result v9

    .line 60
    iget-object v10, v1, Ly2/a;->d:LJ3/b;

    .line 61
    .line 62
    iget-object v11, v1, Ly2/a;->e:Ly2/b;

    .line 63
    .line 64
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    new-instance v10, Lk2/f;

    .line 68
    .line 69
    move-object/from16 v12, p1

    .line 70
    .line 71
    invoke-direct {v10, v11, v0, v12, v9}, Lk2/f;-><init>(Lk2/a;Lk2/d;Ljava/nio/ByteBuffer;I)V

    .line 72
    .line 73
    .line 74
    invoke-interface {v10, v7}, Lk2/b;->setDefaultBitmapConfig(Landroid/graphics/Bitmap$Config;)V

    .line 75
    .line 76
    .line 77
    invoke-interface {v10}, Lk2/b;->advance()V

    .line 78
    .line 79
    .line 80
    invoke-interface {v10}, Lk2/b;->getNextFrame()Landroid/graphics/Bitmap;

    .line 81
    .line 82
    .line 83
    move-result-object v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    if-nez v15, :cond_2

    .line 85
    .line 86
    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_5

    .line 91
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :goto_2
    invoke-static {v4, v5}, LG2/m;->getElapsedMillis(J)D

    .line 98
    .line 99
    .line 100
    move-result-wide v4

    .line 101
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    return-object v8

    .line 112
    :cond_2
    :try_start_1
    invoke-static {}, Lt2/e;->get()Lt2/e;

    .line 113
    .line 114
    .line 115
    move-result-object v12

    .line 116
    new-instance v9, Ly2/d;

    .line 117
    .line 118
    move-object v11, v10

    .line 119
    iget-object v10, v1, Ly2/a;->a:Landroid/content/Context;

    .line 120
    .line 121
    invoke-direct/range {v9 .. v15}, Ly2/d;-><init>(Landroid/content/Context;Lk2/b;Ll2/t;IILandroid/graphics/Bitmap;)V

    .line 122
    .line 123
    .line 124
    new-instance v0, Ly2/f;

    .line 125
    .line 126
    invoke-direct {v0, v9}, Ly2/f;-><init>(Ly2/d;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    .line 128
    .line 129
    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    if-eqz v6, :cond_3

    .line 134
    .line 135
    new-instance v6, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-static {v4, v5}, LG2/m;->getElapsedMillis(J)D

    .line 141
    .line 142
    .line 143
    move-result-wide v4

    .line 144
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    :cond_3
    return-object v0

    .line 155
    :cond_4
    :goto_3
    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-eqz v0, :cond_5

    .line 160
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_5
    return-object v8

    .line 168
    :goto_4
    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 169
    .line 170
    .line 171
    move-result v6

    .line 172
    if-eqz v6, :cond_6

    .line 173
    .line 174
    new-instance v6, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-static {v4, v5}, LG2/m;->getElapsedMillis(J)D

    .line 180
    .line 181
    .line 182
    move-result-wide v4

    .line 183
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    :cond_6
    throw v0
.end method

.method public bridge synthetic decode(Ljava/lang/Object;IILl2/q;)Ln2/M;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2, p3, p4}, Ly2/a;->decode(Ljava/nio/ByteBuffer;IILl2/q;)Ly2/f;

    move-result-object p1

    return-object p1
.end method

.method public decode(Ljava/nio/ByteBuffer;IILl2/q;)Ly2/f;
    .locals 8

    .line 2
    iget-object v1, p0, Ly2/a;->c:LL0/f;

    .line 3
    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v0, v1, LL0/f;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk2/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_0

    .line 5
    :try_start_1
    new-instance v0, Lk2/e;

    invoke-direct {v0}, Lk2/e;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v2, p0

    goto :goto_2

    .line 6
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v0, p1}, Lk2/e;->setData(Ljava/nio/ByteBuffer;)Lk2/e;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v7, p4

    .line 7
    :try_start_3
    invoke-virtual/range {v2 .. v7}, Ly2/a;->a(Ljava/nio/ByteBuffer;IILk2/e;Ll2/q;)Ly2/f;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 8
    iget-object p2, v2, Ly2/a;->c:LL0/f;

    invoke-virtual {p2, v6}, LL0/f;->c(Lk2/e;)V

    return-object p1

    :catchall_1
    move-exception v0

    move-object p1, v0

    iget-object p2, v2, Ly2/a;->c:LL0/f;

    invoke-virtual {p2, v6}, LL0/f;->c(Lk2/e;)V

    .line 9
    throw p1

    :catchall_2
    move-exception v0

    move-object v2, p0

    :goto_1
    move-object p1, v0

    .line 10
    :goto_2
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw p1

    :catchall_3
    move-exception v0

    goto :goto_1
.end method

.method public bridge synthetic handles(Ljava/lang/Object;Ll2/q;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2}, Ly2/a;->handles(Ljava/nio/ByteBuffer;Ll2/q;)Z

    move-result p1

    return p1
.end method

.method public handles(Ljava/nio/ByteBuffer;Ll2/q;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Ly2/m;->b:Ll2/p;

    invoke-virtual {p2, v0}, Ll2/q;->get(Ll2/p;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Ly2/a;->b:Ljava/util/List;

    .line 3
    invoke-static {p2, p1}, Ll2/l;->getType(Ljava/util/List;Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p1

    sget-object p2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
