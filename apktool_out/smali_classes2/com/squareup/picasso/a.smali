.class public final Lcom/squareup/picasso/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final B:Ljava/lang/Object;

.field public static final C:Lm4/c;

.field public static final D:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final E:Lm4/d;


# instance fields
.field public A:Lcom/squareup/picasso/Picasso$Priority;

.field public final b:I

.field public final e:Lm4/D;

.field public final f:Lm4/p;

.field public final j:Lm4/v;

.field public final m:Lm4/P;

.field public final n:Ljava/lang/String;

.field public final p:Lm4/I;

.field public q:I

.field public final r:Lm4/L;

.field public s:Lm4/s;

.field public t:Ljava/util/ArrayList;

.field public u:Landroid/graphics/Bitmap;

.field public v:Ljava/util/concurrent/Future;

.field public w:Lcom/squareup/picasso/Picasso$LoadedFrom;

.field public x:Ljava/lang/Exception;

.field public y:I

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/squareup/picasso/a;->B:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Lm4/c;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/squareup/picasso/a;->C:Lm4/c;

    .line 14
    .line 15
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/squareup/picasso/a;->D:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 21
    .line 22
    new-instance v0, Lm4/d;

    .line 23
    .line 24
    invoke-direct {v0}, Lm4/L;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/squareup/picasso/a;->E:Lm4/d;

    .line 28
    .line 29
    return-void
.end method

.method public constructor <init>(Lm4/D;Lm4/p;Lm4/v;Lm4/P;Lm4/s;Lm4/L;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/squareup/picasso/a;->D:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p0, Lcom/squareup/picasso/a;->b:I

    .line 11
    .line 12
    iput-object p1, p0, Lcom/squareup/picasso/a;->e:Lm4/D;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/squareup/picasso/a;->f:Lm4/p;

    .line 15
    .line 16
    iput-object p3, p0, Lcom/squareup/picasso/a;->j:Lm4/v;

    .line 17
    .line 18
    iput-object p4, p0, Lcom/squareup/picasso/a;->m:Lm4/P;

    .line 19
    .line 20
    iput-object p5, p0, Lcom/squareup/picasso/a;->s:Lm4/s;

    .line 21
    .line 22
    iget-object p1, p5, Lm4/s;->e:Ljava/lang/String;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/squareup/picasso/a;->n:Ljava/lang/String;

    .line 25
    .line 26
    iget-object p1, p5, Lm4/s;->b:Lm4/I;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/squareup/picasso/a;->p:Lm4/I;

    .line 29
    .line 30
    iget-object p1, p1, Lm4/I;->j:Lcom/squareup/picasso/Picasso$Priority;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/squareup/picasso/a;->A:Lcom/squareup/picasso/Picasso$Priority;

    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    iput p1, p0, Lcom/squareup/picasso/a;->q:I

    .line 36
    .line 37
    iput-object p6, p0, Lcom/squareup/picasso/a;->r:Lm4/L;

    .line 38
    .line 39
    invoke-virtual {p6}, Lm4/L;->c()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    iput p1, p0, Lcom/squareup/picasso/a;->z:I

    .line 44
    .line 45
    return-void
.end method

.method public static a(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_4

    .line 7
    .line 8
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lm4/S;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    :try_start_0
    move-object v4, v2

    .line 16
    check-cast v4, LT4/d;

    .line 17
    .line 18
    invoke-virtual {v4, p1}, LT4/d;->transform(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 19
    .line 20
    .line 21
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    const-string p1, "Transformation "

    .line 25
    .line 26
    invoke-static {p1}, Lb/c;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v4}, LT4/d;->key()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v0, " returned null after "

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v0, " previous transformation(s).\n\nTransformation list:\n"

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    .line 60
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lm4/S;

    .line 65
    .line 66
    check-cast v0, LT4/d;

    .line 67
    .line 68
    invoke-virtual {v0}, LT4/d;->key()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const/16 v0, 0xa

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_0
    sget-object p0, Lm4/D;->k:Lm4/y;

    .line 82
    .line 83
    new-instance v0, Lm4/f;

    .line 84
    .line 85
    invoke-direct {v0, p1}, Lm4/f;-><init>(Ljava/lang/StringBuilder;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 89
    .line 90
    .line 91
    return-object v3

    .line 92
    :cond_1
    if-ne v2, p1, :cond_2

    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    if-eqz v5, :cond_2

    .line 99
    .line 100
    sget-object p0, Lm4/D;->k:Lm4/y;

    .line 101
    .line 102
    new-instance p1, Lm4/g;

    .line 103
    .line 104
    invoke-direct {p1, v4}, Lm4/g;-><init>(LT4/d;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 108
    .line 109
    .line 110
    return-object v3

    .line 111
    :cond_2
    if-eq v2, p1, :cond_3

    .line 112
    .line 113
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    if-nez p1, :cond_3

    .line 118
    .line 119
    sget-object p0, Lm4/D;->k:Lm4/y;

    .line 120
    .line 121
    new-instance p1, Lm4/h;

    .line 122
    .line 123
    invoke-direct {p1, v4}, Lm4/h;-><init>(LT4/d;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 127
    .line 128
    .line 129
    return-object v3

    .line 130
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 131
    .line 132
    move-object p1, v2

    .line 133
    goto :goto_0

    .line 134
    :catch_0
    move-exception p0

    .line 135
    sget-object p1, Lm4/D;->k:Lm4/y;

    .line 136
    .line 137
    new-instance v0, Lm4/e;

    .line 138
    .line 139
    invoke-direct {v0, v2, p0}, Lm4/e;-><init>(Lm4/S;Ljava/lang/RuntimeException;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 143
    .line 144
    .line 145
    return-object v3

    .line 146
    :cond_4
    return-object p1
.end method

.method public static c(Le6/L;Lm4/I;)Landroid/graphics/Bitmap;
    .locals 12

    .line 1
    invoke-static {p0}, Le6/w;->buffer(Le6/L;)Le6/n;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    sget-object v2, Lm4/W;->b:Lokio/ByteString;

    .line 8
    .line 9
    invoke-interface {p0, v0, v1, v2}, Le6/n;->rangeEquals(JLokio/ByteString;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x1

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const-wide/16 v3, 0x8

    .line 18
    .line 19
    sget-object v0, Lm4/W;->c:Lokio/ByteString;

    .line 20
    .line 21
    invoke-interface {p0, v3, v4, v0}, Le6/n;->rangeEquals(JLokio/ByteString;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    move v0, v2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v0, v1

    .line 30
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Lm4/L;->b(Lm4/I;)Landroid/graphics/BitmapFactory$Options;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    if-eqz v7, :cond_1

    .line 38
    .line 39
    iget-boolean v3, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 40
    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    move v3, v2

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    move v3, v1

    .line 46
    :goto_1
    iget v4, p1, Lm4/I;->e:I

    .line 47
    .line 48
    move v5, v3

    .line 49
    iget v3, p1, Lm4/I;->d:I

    .line 50
    .line 51
    if-nez v0, :cond_4

    .line 52
    .line 53
    invoke-interface {p0}, Le6/n;->inputStream()Ljava/io/InputStream;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    const/4 v0, 0x0

    .line 58
    if-eqz v5, :cond_2

    .line 59
    .line 60
    new-instance v9, Lm4/w;

    .line 61
    .line 62
    invoke-direct {v9, p0}, Lm4/w;-><init>(Ljava/io/InputStream;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v9, v1}, Lm4/w;->allowMarksToExpire(Z)V

    .line 66
    .line 67
    .line 68
    const/16 p0, 0x400

    .line 69
    .line 70
    invoke-virtual {v9, p0}, Lm4/w;->savePosition(I)J

    .line 71
    .line 72
    .line 73
    move-result-wide v10

    .line 74
    invoke-static {v9, v0, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 75
    .line 76
    .line 77
    iget v5, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 78
    .line 79
    iget v6, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 80
    .line 81
    move-object v8, p1

    .line 82
    invoke-static/range {v3 .. v8}, Lm4/L;->a(IIIILandroid/graphics/BitmapFactory$Options;Lm4/I;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v9, v10, v11}, Lm4/w;->reset(J)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v9, v2}, Lm4/w;->allowMarksToExpire(Z)V

    .line 89
    .line 90
    .line 91
    move-object p0, v9

    .line 92
    :cond_2
    invoke-static {p0, v0, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    if-eqz p0, :cond_3

    .line 97
    .line 98
    return-object p0

    .line 99
    :cond_3
    new-instance p0, Ljava/io/IOException;

    .line 100
    .line 101
    const-string p1, "Failed to decode stream."

    .line 102
    .line 103
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p0

    .line 107
    :cond_4
    move-object v8, p1

    .line 108
    invoke-interface {p0}, Le6/n;->readByteArray()[B

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    if-eqz v5, :cond_5

    .line 113
    .line 114
    array-length p1, p0

    .line 115
    invoke-static {p0, v1, p1, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 116
    .line 117
    .line 118
    iget v5, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 119
    .line 120
    iget v6, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 121
    .line 122
    invoke-static/range {v3 .. v8}, Lm4/L;->a(IIIILandroid/graphics/BitmapFactory$Options;Lm4/I;)V

    .line 123
    .line 124
    .line 125
    :cond_5
    array-length p1, p0

    .line 126
    invoke-static {p0, v1, p1, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    return-object p0
.end method

.method public static f(IIIIZ)Z
    .locals 0

    .line 1
    if-eqz p4, :cond_2

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    if-gt p0, p2, :cond_2

    .line 6
    .line 7
    :cond_0
    if-eqz p3, :cond_1

    .line 8
    .line 9
    if-le p1, p3, :cond_1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 15
    return p0
.end method

.method public static g(Lm4/I;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    iget-boolean v4, v0, Lm4/I;->h:Z

    .line 14
    .line 15
    new-instance v5, Landroid/graphics/Matrix;

    .line 16
    .line 17
    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lm4/I;->a()Z

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    const/4 v7, 0x0

    .line 25
    if-nez v6, :cond_0

    .line 26
    .line 27
    if-eqz v1, :cond_14

    .line 28
    .line 29
    :cond_0
    iget v6, v0, Lm4/I;->e:I

    .line 30
    .line 31
    iget v8, v0, Lm4/I;->d:I

    .line 32
    .line 33
    const/4 v9, 0x5

    .line 34
    const/4 v10, 0x2

    .line 35
    if-eqz v1, :cond_5

    .line 36
    .line 37
    const/16 v11, 0x5a

    .line 38
    .line 39
    const/16 v12, 0x10e

    .line 40
    .line 41
    packed-switch v1, :pswitch_data_0

    .line 42
    .line 43
    .line 44
    move v13, v7

    .line 45
    goto :goto_0

    .line 46
    :pswitch_0
    move v13, v12

    .line 47
    goto :goto_0

    .line 48
    :pswitch_1
    move v13, v11

    .line 49
    goto :goto_0

    .line 50
    :pswitch_2
    const/16 v13, 0xb4

    .line 51
    .line 52
    :goto_0
    const/4 v14, 0x1

    .line 53
    if-eq v1, v10, :cond_1

    .line 54
    .line 55
    const/4 v15, 0x7

    .line 56
    if-eq v1, v15, :cond_1

    .line 57
    .line 58
    const/4 v15, 0x4

    .line 59
    if-eq v1, v15, :cond_1

    .line 60
    .line 61
    if-eq v1, v9, :cond_1

    .line 62
    .line 63
    move v1, v14

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    const/4 v1, -0x1

    .line 66
    :goto_1
    if-eqz v13, :cond_2

    .line 67
    .line 68
    int-to-float v15, v13

    .line 69
    invoke-virtual {v5, v15}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 70
    .line 71
    .line 72
    if-eq v13, v11, :cond_3

    .line 73
    .line 74
    if-ne v13, v12, :cond_2

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_2
    move/from16 v16, v8

    .line 78
    .line 79
    move v8, v6

    .line 80
    move/from16 v6, v16

    .line 81
    .line 82
    :cond_3
    :goto_2
    if-eq v1, v14, :cond_4

    .line 83
    .line 84
    int-to-float v1, v1

    .line 85
    const/high16 v11, 0x3f800000    # 1.0f

    .line 86
    .line 87
    invoke-virtual {v5, v1, v11}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 88
    .line 89
    .line 90
    :cond_4
    move/from16 v16, v8

    .line 91
    .line 92
    move v8, v6

    .line 93
    move/from16 v6, v16

    .line 94
    .line 95
    :cond_5
    iget-boolean v1, v0, Lm4/I;->f:Z

    .line 96
    .line 97
    if-eqz v1, :cond_f

    .line 98
    .line 99
    if-eqz v8, :cond_6

    .line 100
    .line 101
    int-to-float v1, v8

    .line 102
    int-to-float v11, v2

    .line 103
    :goto_3
    div-float/2addr v1, v11

    .line 104
    goto :goto_4

    .line 105
    :cond_6
    int-to-float v1, v6

    .line 106
    int-to-float v11, v3

    .line 107
    goto :goto_3

    .line 108
    :goto_4
    if-eqz v6, :cond_7

    .line 109
    .line 110
    int-to-float v11, v6

    .line 111
    int-to-float v12, v3

    .line 112
    :goto_5
    div-float/2addr v11, v12

    .line 113
    goto :goto_6

    .line 114
    :cond_7
    int-to-float v11, v8

    .line 115
    int-to-float v12, v2

    .line 116
    goto :goto_5

    .line 117
    :goto_6
    cmpl-float v12, v1, v11

    .line 118
    .line 119
    iget v0, v0, Lm4/I;->g:I

    .line 120
    .line 121
    if-lez v12, :cond_a

    .line 122
    .line 123
    int-to-float v9, v3

    .line 124
    div-float/2addr v11, v1

    .line 125
    mul-float/2addr v11, v9

    .line 126
    float-to-double v11, v11

    .line 127
    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    .line 128
    .line 129
    .line 130
    move-result-wide v11

    .line 131
    double-to-int v9, v11

    .line 132
    and-int/lit8 v11, v0, 0x30

    .line 133
    .line 134
    const/16 v12, 0x30

    .line 135
    .line 136
    if-ne v11, v12, :cond_8

    .line 137
    .line 138
    move v0, v7

    .line 139
    goto :goto_7

    .line 140
    :cond_8
    const/16 v11, 0x50

    .line 141
    .line 142
    and-int/2addr v0, v11

    .line 143
    if-ne v0, v11, :cond_9

    .line 144
    .line 145
    sub-int v0, v3, v9

    .line 146
    .line 147
    goto :goto_7

    .line 148
    :cond_9
    sub-int v0, v3, v9

    .line 149
    .line 150
    div-int/2addr v0, v10

    .line 151
    :goto_7
    int-to-float v10, v6

    .line 152
    int-to-float v11, v9

    .line 153
    div-float v11, v10, v11

    .line 154
    .line 155
    move v10, v9

    .line 156
    move v9, v0

    .line 157
    move v0, v2

    .line 158
    goto :goto_9

    .line 159
    :cond_a
    cmpg-float v12, v1, v11

    .line 160
    .line 161
    if-gez v12, :cond_d

    .line 162
    .line 163
    int-to-float v12, v2

    .line 164
    div-float/2addr v1, v11

    .line 165
    mul-float/2addr v1, v12

    .line 166
    float-to-double v12, v1

    .line 167
    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    .line 168
    .line 169
    .line 170
    move-result-wide v12

    .line 171
    double-to-int v1, v12

    .line 172
    and-int/lit8 v12, v0, 0x3

    .line 173
    .line 174
    const/4 v13, 0x3

    .line 175
    if-ne v12, v13, :cond_b

    .line 176
    .line 177
    move v0, v7

    .line 178
    goto :goto_8

    .line 179
    :cond_b
    and-int/2addr v0, v9

    .line 180
    if-ne v0, v9, :cond_c

    .line 181
    .line 182
    sub-int v0, v2, v1

    .line 183
    .line 184
    goto :goto_8

    .line 185
    :cond_c
    sub-int v0, v2, v1

    .line 186
    .line 187
    div-int/2addr v0, v10

    .line 188
    :goto_8
    int-to-float v9, v8

    .line 189
    int-to-float v10, v1

    .line 190
    div-float/2addr v9, v10

    .line 191
    move v10, v7

    .line 192
    move v7, v0

    .line 193
    move v0, v1

    .line 194
    move v1, v9

    .line 195
    move v9, v10

    .line 196
    move v10, v3

    .line 197
    goto :goto_9

    .line 198
    :cond_d
    move v0, v2

    .line 199
    move v10, v3

    .line 200
    move v9, v7

    .line 201
    move v1, v11

    .line 202
    :goto_9
    invoke-static {v2, v3, v8, v6, v4}, Lcom/squareup/picasso/a;->f(IIIIZ)Z

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    if-eqz v2, :cond_e

    .line 207
    .line 208
    invoke-virtual {v5, v1, v11}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 209
    .line 210
    .line 211
    :cond_e
    move v3, v0

    .line 212
    move v1, v7

    .line 213
    move v2, v9

    .line 214
    move v4, v10

    .line 215
    goto :goto_e

    .line 216
    :cond_f
    if-nez v8, :cond_10

    .line 217
    .line 218
    if-eqz v6, :cond_14

    .line 219
    .line 220
    :cond_10
    if-ne v8, v2, :cond_11

    .line 221
    .line 222
    if-eq v6, v3, :cond_14

    .line 223
    .line 224
    :cond_11
    if-eqz v8, :cond_12

    .line 225
    .line 226
    int-to-float v0, v8

    .line 227
    int-to-float v1, v2

    .line 228
    :goto_a
    div-float/2addr v0, v1

    .line 229
    goto :goto_b

    .line 230
    :cond_12
    int-to-float v0, v6

    .line 231
    int-to-float v1, v3

    .line 232
    goto :goto_a

    .line 233
    :goto_b
    if-eqz v6, :cond_13

    .line 234
    .line 235
    int-to-float v1, v6

    .line 236
    int-to-float v9, v3

    .line 237
    :goto_c
    div-float/2addr v1, v9

    .line 238
    goto :goto_d

    .line 239
    :cond_13
    int-to-float v1, v8

    .line 240
    int-to-float v9, v2

    .line 241
    goto :goto_c

    .line 242
    :goto_d
    invoke-static {v2, v3, v8, v6, v4}, Lcom/squareup/picasso/a;->f(IIIIZ)Z

    .line 243
    .line 244
    .line 245
    move-result v4

    .line 246
    if-eqz v4, :cond_14

    .line 247
    .line 248
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 249
    .line 250
    .line 251
    :cond_14
    move v4, v3

    .line 252
    move v1, v7

    .line 253
    move v3, v2

    .line 254
    move v2, v1

    .line 255
    :goto_e
    const/4 v6, 0x1

    .line 256
    move-object/from16 v0, p1

    .line 257
    .line 258
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    if-eq v1, v0, :cond_15

    .line 263
    .line 264
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 265
    .line 266
    .line 267
    return-object v1

    .line 268
    :cond_15
    return-object v0

    .line 269
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static h(Lm4/I;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lm4/I;->a:Landroid/net/Uri;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget p0, p0, Lm4/I;->b:I

    .line 15
    .line 16
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :goto_0
    sget-object v0, Lcom/squareup/picasso/a;->C:Lm4/c;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/16 v2, 0x8

    .line 33
    .line 34
    add-int/2addr v1, v2

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {v0, v2, v1, p0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/squareup/picasso/a;->s:Lm4/s;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/squareup/picasso/a;->t:Ljava/util/ArrayList;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/a;->v:Ljava/util/concurrent/Future;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    return v0

    .line 28
    :cond_1
    return v1
.end method

.method public final d(Lm4/s;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/squareup/picasso/a;->s:Lm4/s;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne v0, p1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/squareup/picasso/a;->s:Lm4/s;

    .line 9
    .line 10
    move v0, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/a;->t:Ljava/util/ArrayList;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    move v0, v2

    .line 22
    :goto_0
    if-eqz v0, :cond_7

    .line 23
    .line 24
    iget-object p1, p1, Lm4/s;->b:Lm4/I;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/squareup/picasso/a;->A:Lcom/squareup/picasso/Picasso$Priority;

    .line 27
    .line 28
    iget-object p1, p1, Lm4/I;->j:Lcom/squareup/picasso/Picasso$Priority;

    .line 29
    .line 30
    if-ne p1, v0, :cond_7

    .line 31
    .line 32
    sget-object p1, Lcom/squareup/picasso/Picasso$Priority;->b:Lcom/squareup/picasso/Picasso$Priority;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/squareup/picasso/a;->t:Ljava/util/ArrayList;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    move v1, v2

    .line 46
    :goto_1
    iget-object v0, p0, Lcom/squareup/picasso/a;->s:Lm4/s;

    .line 47
    .line 48
    if-nez v0, :cond_3

    .line 49
    .line 50
    if-eqz v1, :cond_6

    .line 51
    .line 52
    :cond_3
    if-eqz v0, :cond_4

    .line 53
    .line 54
    iget-object p1, v0, Lm4/s;->b:Lm4/I;

    .line 55
    .line 56
    iget-object p1, p1, Lm4/I;->j:Lcom/squareup/picasso/Picasso$Priority;

    .line 57
    .line 58
    :cond_4
    if-eqz v1, :cond_6

    .line 59
    .line 60
    iget-object v0, p0, Lcom/squareup/picasso/a;->t:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    :goto_2
    if-ge v2, v0, :cond_6

    .line 67
    .line 68
    iget-object v1, p0, Lcom/squareup/picasso/a;->t:Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Lm4/s;

    .line 75
    .line 76
    iget-object v1, v1, Lm4/s;->b:Lm4/I;

    .line 77
    .line 78
    iget-object v1, v1, Lm4/I;->j:Lcom/squareup/picasso/Picasso$Priority;

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-le v3, v4, :cond_5

    .line 89
    .line 90
    move-object p1, v1

    .line 91
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_6
    iput-object p1, p0, Lcom/squareup/picasso/a;->A:Lcom/squareup/picasso/Picasso$Priority;

    .line 95
    .line 96
    :cond_7
    iget-object p1, p0, Lcom/squareup/picasso/a;->e:Lm4/D;

    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public final e()Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/squareup/picasso/a;->j:Lm4/v;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/squareup/picasso/a;->n:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lm4/v;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Lcom/squareup/picasso/a;->m:Lm4/P;

    .line 13
    .line 14
    iget-object v2, v2, Lm4/P;->b:Lm4/O;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 17
    .line 18
    .line 19
    sget-object v1, Lcom/squareup/picasso/Picasso$LoadedFrom;->b:Lcom/squareup/picasso/Picasso$LoadedFrom;

    .line 20
    .line 21
    iput-object v1, p0, Lcom/squareup/picasso/a;->w:Lcom/squareup/picasso/Picasso$LoadedFrom;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/squareup/picasso/a;->e:Lm4/D;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_0
    iget v2, p0, Lcom/squareup/picasso/a;->z:I

    .line 30
    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    const/4 v2, 0x4

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget v2, p0, Lcom/squareup/picasso/a;->q:I

    .line 36
    .line 37
    :goto_0
    iput v2, p0, Lcom/squareup/picasso/a;->q:I

    .line 38
    .line 39
    iget-object v3, p0, Lcom/squareup/picasso/a;->r:Lm4/L;

    .line 40
    .line 41
    iget-object v4, p0, Lcom/squareup/picasso/a;->p:Lm4/I;

    .line 42
    .line 43
    invoke-virtual {v3, v4, v2}, Lm4/L;->load(Lm4/I;I)Lm4/K;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    invoke-virtual {v2}, Lm4/K;->getLoadedFrom()Lcom/squareup/picasso/Picasso$LoadedFrom;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Lcom/squareup/picasso/a;->w:Lcom/squareup/picasso/Picasso$LoadedFrom;

    .line 54
    .line 55
    iget v0, v2, Lm4/K;->d:I

    .line 56
    .line 57
    iput v0, p0, Lcom/squareup/picasso/a;->y:I

    .line 58
    .line 59
    invoke-virtual {v2}, Lm4/K;->getBitmap()Landroid/graphics/Bitmap;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-nez v0, :cond_2

    .line 64
    .line 65
    invoke-virtual {v2}, Lm4/K;->getSource()Le6/L;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    :try_start_0
    iget-object v2, p0, Lcom/squareup/picasso/a;->p:Lm4/I;

    .line 70
    .line 71
    invoke-static {v0, v2}, Lcom/squareup/picasso/a;->c(Le6/L;Lm4/I;)Landroid/graphics/Bitmap;

    .line 72
    .line 73
    .line 74
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :try_start_1
    invoke-interface {v0}, Le6/L;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 76
    .line 77
    .line 78
    :catch_0
    move-object v0, v2

    .line 79
    goto :goto_1

    .line 80
    :catchall_0
    move-exception v1

    .line 81
    :try_start_2
    invoke-interface {v0}, Le6/L;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 82
    .line 83
    .line 84
    :catch_1
    throw v1

    .line 85
    :cond_2
    :goto_1
    if-eqz v0, :cond_b

    .line 86
    .line 87
    iget-object v2, p0, Lcom/squareup/picasso/a;->e:Lm4/D;

    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    iget-object v2, p0, Lcom/squareup/picasso/a;->m:Lm4/P;

    .line 93
    .line 94
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    sget-object v3, Lm4/W;->a:Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-ltz v3, :cond_a

    .line 104
    .line 105
    iget-object v2, v2, Lm4/P;->b:Lm4/O;

    .line 106
    .line 107
    const/4 v4, 0x2

    .line 108
    invoke-virtual {v2, v4, v3, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 113
    .line 114
    .line 115
    iget-object v2, p0, Lcom/squareup/picasso/a;->p:Lm4/I;

    .line 116
    .line 117
    invoke-virtual {v2}, Lm4/I;->a()Z

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    if-nez v3, :cond_4

    .line 122
    .line 123
    iget-object v2, v2, Lm4/I;->c:Ljava/util/List;

    .line 124
    .line 125
    if-eqz v2, :cond_3

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_3
    iget v2, p0, Lcom/squareup/picasso/a;->y:I

    .line 129
    .line 130
    if-eqz v2, :cond_b

    .line 131
    .line 132
    :cond_4
    :goto_2
    sget-object v2, Lcom/squareup/picasso/a;->B:Ljava/lang/Object;

    .line 133
    .line 134
    monitor-enter v2

    .line 135
    :try_start_3
    iget-object v3, p0, Lcom/squareup/picasso/a;->p:Lm4/I;

    .line 136
    .line 137
    invoke-virtual {v3}, Lm4/I;->a()Z

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    if-nez v3, :cond_5

    .line 142
    .line 143
    iget v3, p0, Lcom/squareup/picasso/a;->y:I

    .line 144
    .line 145
    if-eqz v3, :cond_6

    .line 146
    .line 147
    goto :goto_3

    .line 148
    :catchall_1
    move-exception v0

    .line 149
    goto :goto_5

    .line 150
    :cond_5
    :goto_3
    iget-object v3, p0, Lcom/squareup/picasso/a;->p:Lm4/I;

    .line 151
    .line 152
    iget v4, p0, Lcom/squareup/picasso/a;->y:I

    .line 153
    .line 154
    invoke-static {v3, v0, v4}, Lcom/squareup/picasso/a;->g(Lm4/I;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    iget-object v3, p0, Lcom/squareup/picasso/a;->e:Lm4/D;

    .line 159
    .line 160
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    :cond_6
    iget-object v3, p0, Lcom/squareup/picasso/a;->p:Lm4/I;

    .line 164
    .line 165
    iget-object v3, v3, Lm4/I;->c:Ljava/util/List;

    .line 166
    .line 167
    if-eqz v3, :cond_7

    .line 168
    .line 169
    const/4 v4, 0x1

    .line 170
    goto :goto_4

    .line 171
    :cond_7
    move v4, v1

    .line 172
    :goto_4
    if-eqz v4, :cond_8

    .line 173
    .line 174
    invoke-static {v3, v0}, Lcom/squareup/picasso/a;->a(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    iget-object v3, p0, Lcom/squareup/picasso/a;->e:Lm4/D;

    .line 179
    .line 180
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    :cond_8
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 184
    if-eqz v0, :cond_b

    .line 185
    .line 186
    iget-object v2, p0, Lcom/squareup/picasso/a;->m:Lm4/P;

    .line 187
    .line 188
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    .line 192
    .line 193
    .line 194
    move-result v3

    .line 195
    if-ltz v3, :cond_9

    .line 196
    .line 197
    iget-object v2, v2, Lm4/P;->b:Lm4/O;

    .line 198
    .line 199
    const/4 v4, 0x3

    .line 200
    invoke-virtual {v2, v4, v3, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 205
    .line 206
    .line 207
    goto :goto_6

    .line 208
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 209
    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    const-string v3, "Negative size: "

    .line 213
    .line 214
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    throw v1

    .line 228
    :goto_5
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 229
    throw v0

    .line 230
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 231
    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    const-string v3, "Negative size: "

    .line 235
    .line 236
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    throw v1

    .line 250
    :cond_b
    :goto_6
    return-object v0
.end method

.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/squareup/picasso/a;->f:Lm4/p;

    .line 2
    .line 3
    const-string v1, "Picasso-Idle"

    .line 4
    .line 5
    const/4 v2, 0x6

    .line 6
    :try_start_0
    iget-object v3, p0, Lcom/squareup/picasso/a;->p:Lm4/I;

    .line 7
    .line 8
    invoke-static {v3}, Lcom/squareup/picasso/a;->h(Lm4/I;)V

    .line 9
    .line 10
    .line 11
    iget-object v3, p0, Lcom/squareup/picasso/a;->e:Lm4/D;

    .line 12
    .line 13
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/squareup/picasso/a;->e()Landroid/graphics/Bitmap;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    iput-object v3, p0, Lcom/squareup/picasso/a;->u:Landroid/graphics/Bitmap;

    .line 21
    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    iget-object v3, v0, Lm4/p;->h:Lcom/squareup/picasso/b;

    .line 25
    .line 26
    invoke-virtual {v3, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v0, p0}, Lm4/p;->b(Lcom/squareup/picasso/a;)V
    :try_end_0
    .catch Lcom/squareup/picasso/NetworkRequestHandler$ResponseException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    goto/16 :goto_7

    .line 47
    .line 48
    :catch_0
    move-exception v3

    .line 49
    goto :goto_1

    .line 50
    :catch_1
    move-exception v3

    .line 51
    goto :goto_3

    .line 52
    :catch_2
    move-exception v2

    .line 53
    goto :goto_4

    .line 54
    :catch_3
    move-exception v3

    .line 55
    goto :goto_5

    .line 56
    :goto_1
    :try_start_1
    iput-object v3, p0, Lcom/squareup/picasso/a;->x:Ljava/lang/Exception;

    .line 57
    .line 58
    iget-object v0, v0, Lm4/p;->h:Lcom/squareup/picasso/b;

    .line 59
    .line 60
    invoke-virtual {v0, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    .line 66
    .line 67
    :goto_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    goto :goto_6

    .line 75
    :goto_3
    :try_start_2
    new-instance v4, Ljava/io/StringWriter;

    .line 76
    .line 77
    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    .line 78
    .line 79
    .line 80
    iget-object v5, p0, Lcom/squareup/picasso/a;->m:Lm4/P;

    .line 81
    .line 82
    invoke-virtual {v5}, Lm4/P;->a()Lm4/Q;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    new-instance v6, Ljava/io/PrintWriter;

    .line 87
    .line 88
    invoke-direct {v6, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5, v6}, Lm4/Q;->dump(Ljava/io/PrintWriter;)V

    .line 92
    .line 93
    .line 94
    new-instance v5, Ljava/lang/RuntimeException;

    .line 95
    .line 96
    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-direct {v5, v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    .line 102
    .line 103
    iput-object v5, p0, Lcom/squareup/picasso/a;->x:Ljava/lang/Exception;

    .line 104
    .line 105
    iget-object v0, v0, Lm4/p;->h:Lcom/squareup/picasso/b;

    .line 106
    .line 107
    invoke-virtual {v0, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :goto_4
    iput-object v2, p0, Lcom/squareup/picasso/a;->x:Ljava/lang/Exception;

    .line 116
    .line 117
    iget-object v0, v0, Lm4/p;->h:Lcom/squareup/picasso/b;

    .line 118
    .line 119
    const/4 v2, 0x5

    .line 120
    invoke-virtual {v0, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    const-wide/16 v3, 0x1f4

    .line 125
    .line 126
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 127
    .line 128
    .line 129
    goto :goto_2

    .line 130
    :goto_5
    const/4 v4, 0x0

    .line 131
    invoke-static {v4}, Lcom/squareup/picasso/NetworkPolicy;->isOfflineOnly(I)Z

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    if-eqz v4, :cond_1

    .line 136
    .line 137
    iget v4, v3, Lcom/squareup/picasso/NetworkRequestHandler$ResponseException;->b:I

    .line 138
    .line 139
    const/16 v5, 0x1f8

    .line 140
    .line 141
    if-eq v4, v5, :cond_2

    .line 142
    .line 143
    :cond_1
    iput-object v3, p0, Lcom/squareup/picasso/a;->x:Ljava/lang/Exception;

    .line 144
    .line 145
    :cond_2
    iget-object v0, v0, Lm4/p;->h:Lcom/squareup/picasso/b;

    .line 146
    .line 147
    invoke-virtual {v0, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 152
    .line 153
    .line 154
    goto :goto_2

    .line 155
    :goto_6
    return-void

    .line 156
    :goto_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-virtual {v2, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    throw v0
.end method
