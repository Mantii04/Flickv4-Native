.class public final Lu2/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Ll2/p;

.field public static final g:Ll2/p;

.field public static final h:Ll2/p;

.field public static final i:Ll2/p;

.field public static final j:Ljava/util/Set;

.field public static final k:Lu2/v;

.field public static final l:Ljava/util/Queue;


# instance fields
.field public final a:Lo2/d;

.field public final b:Landroid/util/DisplayMetrics;

.field public final c:Lo2/b;

.field public final d:Ljava/util/List;

.field public final e:Lu2/D;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/DecodeFormat;->f:Lcom/bumptech/glide/load/DecodeFormat;

    .line 2
    .line 3
    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat"

    .line 4
    .line 5
    invoke-static {v1, v0}, Ll2/p;->memory(Ljava/lang/String;Ljava/lang/Object;)Ll2/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lu2/x;->f:Ll2/p;

    .line 10
    .line 11
    const-string v0, "com.bumptech.glide.load.resource.bitmap.Downsampler.PreferredColorSpace"

    .line 12
    .line 13
    invoke-static {v0}, Ll2/p;->memory(Ljava/lang/String;)Ll2/p;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lu2/x;->g:Ll2/p;

    .line 18
    .line 19
    sget-object v0, Lu2/u;->a:Lu2/s;

    .line 20
    .line 21
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 22
    .line 23
    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize"

    .line 24
    .line 25
    invoke-static {v1, v0}, Ll2/p;->memory(Ljava/lang/String;Ljava/lang/Object;)Ll2/p;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    sput-object v1, Lu2/x;->h:Ll2/p;

    .line 30
    .line 31
    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode"

    .line 32
    .line 33
    invoke-static {v1, v0}, Ll2/p;->memory(Ljava/lang/String;Ljava/lang/Object;)Ll2/p;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lu2/x;->i:Ll2/p;

    .line 38
    .line 39
    new-instance v0, Ljava/util/HashSet;

    .line 40
    .line 41
    const-string v1, "image/vnd.wap.wbmp"

    .line 42
    .line 43
    const-string v2, "image/x-ico"

    .line 44
    .line 45
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    sput-object v0, Lu2/x;->j:Ljava/util/Set;

    .line 61
    .line 62
    new-instance v0, Lu2/v;

    .line 63
    .line 64
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 65
    .line 66
    .line 67
    sput-object v0, Lu2/x;->k:Lu2/v;

    .line 68
    .line 69
    sget-object v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 70
    .line 71
    sget-object v1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 72
    .line 73
    sget-object v2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 74
    .line 75
    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 80
    .line 81
    .line 82
    const/4 v0, 0x0

    .line 83
    invoke-static {v0}, LG2/t;->createQueue(I)Ljava/util/Queue;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    sput-object v0, Lu2/x;->l:Ljava/util/Queue;

    .line 88
    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/util/DisplayMetrics;Lo2/d;Lo2/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ll2/c;",
            ">;",
            "Landroid/util/DisplayMetrics;",
            "Lo2/d;",
            "Lo2/b;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lu2/D;->getInstance()Lu2/D;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lu2/x;->e:Lu2/D;

    .line 9
    .line 10
    iput-object p1, p0, Lu2/x;->d:Ljava/util/List;

    .line 11
    .line 12
    invoke-static {p2}, LG2/r;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Landroid/util/DisplayMetrics;

    .line 17
    .line 18
    iput-object p1, p0, Lu2/x;->b:Landroid/util/DisplayMetrics;

    .line 19
    .line 20
    invoke-static {p3}, LG2/r;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lo2/d;

    .line 25
    .line 26
    iput-object p1, p0, Lu2/x;->a:Lo2/d;

    .line 27
    .line 28
    invoke-static {p4}, LG2/r;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lo2/b;

    .line 33
    .line 34
    iput-object p1, p0, Lu2/x;->c:Lo2/b;

    .line 35
    .line 36
    return-void
.end method

.method public static c(Lu2/H;Landroid/graphics/BitmapFactory$Options;Lu2/w;Lo2/d;)Landroid/graphics/Bitmap;
    .locals 9

    .line 1
    const-string v0, "Downsampler"

    .line 2
    .line 3
    iget-boolean v1, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-interface {p2}, Lu2/w;->onObtainBounds()V

    .line 8
    .line 9
    .line 10
    invoke-interface {p0}, Lu2/H;->stopGrowingBuffers()V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 14
    .line 15
    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 16
    .line 17
    iget-object v3, p1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {}, Lu2/P;->getBitmapDrawableLock()Ljava/util/concurrent/locks/Lock;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 24
    .line 25
    .line 26
    :try_start_0
    invoke-interface {p0, p1}, Lu2/H;->decodeBitmap(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 27
    .line 28
    .line 29
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :goto_0
    invoke-static {}, Lu2/P;->getBitmapDrawableLock()Ljava/util/concurrent/locks/Lock;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 35
    .line 36
    .line 37
    return-object p0

    .line 38
    :catch_0
    move-exception v4

    .line 39
    :try_start_1
    new-instance v5, Ljava/io/IOException;

    .line 40
    .line 41
    const-string v6, "Exception decoding bitmap, outWidth: "

    .line 42
    .line 43
    const-string v7, ", outHeight: "

    .line 44
    .line 45
    const-string v8, ", outMimeType: "

    .line 46
    .line 47
    invoke-static {v1, v2, v6, v7, v8}, LA/i;->p(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v2, ", inBitmap: "

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v2, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 60
    .line 61
    invoke-static {v2}, Lu2/x;->d(Landroid/graphics/Bitmap;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-direct {v5, v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    const/4 v1, 0x3

    .line 76
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_1

    .line 81
    .line 82
    const-string v1, "Failed to decode with inBitmap, trying again without Bitmap re-use"

    .line 83
    .line 84
    invoke-static {v0, v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    .line 86
    .line 87
    :cond_1
    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    .line 89
    if-eqz v0, :cond_2

    .line 90
    .line 91
    :try_start_2
    invoke-interface {p3, v0}, Lo2/d;->put(Landroid/graphics/Bitmap;)V

    .line 92
    .line 93
    .line 94
    const/4 v0, 0x0

    .line 95
    iput-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 96
    .line 97
    invoke-static {p0, p1, p2, p3}, Lu2/x;->c(Lu2/H;Landroid/graphics/BitmapFactory$Options;Lu2/w;Lo2/d;)Landroid/graphics/Bitmap;

    .line 98
    .line 99
    .line 100
    move-result-object p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    goto :goto_0

    .line 102
    :catch_1
    :try_start_3
    throw v5

    .line 103
    :cond_2
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    :catchall_0
    move-exception p0

    .line 105
    invoke-static {}, Lu2/P;->getBitmapDrawableLock()Ljava/util/concurrent/locks/Lock;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 110
    .line 111
    .line 112
    throw p0
.end method

.method public static d(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, " ("

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, ")"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v2, "["

    .line 31
    .line 32
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v2, "x"

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v2, "] "

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0
.end method

.method public static e(Landroid/graphics/BitmapFactory$Options;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lu2/x;->f(Landroid/graphics/BitmapFactory$Options;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lu2/x;->l:Ljava/util/Queue;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public static f(Landroid/graphics/BitmapFactory$Options;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 6
    .line 7
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    iput v2, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 11
    .line 12
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 13
    .line 14
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 15
    .line 16
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 17
    .line 18
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 19
    .line 20
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 21
    .line 22
    const/16 v4, 0x1a

    .line 23
    .line 24
    if-lt v3, v4, :cond_0

    .line 25
    .line 26
    invoke-static {p0}, Lt2/a;->j(Landroid/graphics/BitmapFactory$Options;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p0}, Lt2/a;->o(Landroid/graphics/BitmapFactory$Options;)V

    .line 30
    .line 31
    .line 32
    invoke-static {p0}, Lt2/a;->p(Landroid/graphics/BitmapFactory$Options;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 36
    .line 37
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 38
    .line 39
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 40
    .line 41
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 42
    .line 43
    iput-boolean v2, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final a(Lu2/H;IILl2/q;Lu2/w;)Lu2/e;
    .locals 13

    .line 1
    move-object/from16 v0, p4

    .line 2
    .line 3
    iget-object v2, p0, Lu2/x;->c:Lo2/b;

    .line 4
    .line 5
    const-class v3, [B

    .line 6
    .line 7
    check-cast v2, Lo2/l;

    .line 8
    .line 9
    const/high16 v4, 0x10000

    .line 10
    .line 11
    invoke-virtual {v2, v4, v3}, Lo2/l;->get(ILjava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    move-object v12, v2

    .line 16
    check-cast v12, [B

    .line 17
    .line 18
    const-class v2, Lu2/x;

    .line 19
    .line 20
    monitor-enter v2

    .line 21
    :try_start_0
    sget-object v3, Lu2/x;->l:Ljava/util/Queue;

    .line 22
    .line 23
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :try_start_1
    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Landroid/graphics/BitmapFactory$Options;

    .line 29
    .line 30
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 31
    if-nez v4, :cond_0

    .line 32
    .line 33
    :try_start_2
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    .line 34
    .line 35
    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-static {v4}, Lu2/x;->f(Landroid/graphics/BitmapFactory$Options;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    .line 40
    .line 41
    :cond_0
    move-object v3, v4

    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    goto/16 :goto_3

    .line 45
    .line 46
    :goto_0
    monitor-exit v2

    .line 47
    iput-object v12, v3, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 48
    .line 49
    sget-object v2, Lu2/x;->f:Ll2/p;

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Ll2/q;->get(Ll2/p;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    move-object v5, v2

    .line 56
    check-cast v5, Lcom/bumptech/glide/load/DecodeFormat;

    .line 57
    .line 58
    sget-object v2, Lu2/x;->g:Ll2/p;

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Ll2/q;->get(Ll2/p;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    move-object v6, v2

    .line 65
    check-cast v6, Lcom/bumptech/glide/load/PreferredColorSpace;

    .line 66
    .line 67
    sget-object v2, Lu2/u;->f:Ll2/p;

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ll2/q;->get(Ll2/p;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    move-object v4, v2

    .line 74
    check-cast v4, Lu2/u;

    .line 75
    .line 76
    sget-object v2, Lu2/x;->h:Ll2/p;

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Ll2/q;->get(Ll2/p;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    check-cast v2, Ljava/lang/Boolean;

    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 85
    .line 86
    .line 87
    move-result v10

    .line 88
    sget-object v2, Lu2/x;->i:Ll2/p;

    .line 89
    .line 90
    invoke-virtual {v0, v2}, Ll2/q;->get(Ll2/p;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    if-eqz v7, :cond_1

    .line 95
    .line 96
    invoke-virtual {v0, v2}, Ll2/q;->get(Ll2/p;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Ljava/lang/Boolean;

    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_1

    .line 107
    .line 108
    const/4 v0, 0x1

    .line 109
    :goto_1
    move-object v1, p0

    .line 110
    move-object v2, p1

    .line 111
    move v8, p2

    .line 112
    move/from16 v9, p3

    .line 113
    .line 114
    move-object/from16 v11, p5

    .line 115
    .line 116
    move v7, v0

    .line 117
    goto :goto_2

    .line 118
    :cond_1
    const/4 v0, 0x0

    .line 119
    goto :goto_1

    .line 120
    :goto_2
    :try_start_3
    invoke-virtual/range {v1 .. v11}, Lu2/x;->b(Lu2/H;Landroid/graphics/BitmapFactory$Options;Lu2/u;Lcom/bumptech/glide/load/DecodeFormat;Lcom/bumptech/glide/load/PreferredColorSpace;ZIIZLu2/w;)Landroid/graphics/Bitmap;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    iget-object v2, p0, Lu2/x;->a:Lo2/d;

    .line 125
    .line 126
    invoke-static {v0, v2}, Lu2/e;->obtain(Landroid/graphics/Bitmap;Lo2/d;)Lu2/e;

    .line 127
    .line 128
    .line 129
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 130
    invoke-static {v3}, Lu2/x;->e(Landroid/graphics/BitmapFactory$Options;)V

    .line 131
    .line 132
    .line 133
    iget-object v2, p0, Lu2/x;->c:Lo2/b;

    .line 134
    .line 135
    check-cast v2, Lo2/l;

    .line 136
    .line 137
    invoke-virtual {v2, v12}, Lo2/l;->put(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    return-object v0

    .line 141
    :catchall_1
    move-exception v0

    .line 142
    invoke-static {v3}, Lu2/x;->e(Landroid/graphics/BitmapFactory$Options;)V

    .line 143
    .line 144
    .line 145
    iget-object v2, p0, Lu2/x;->c:Lo2/b;

    .line 146
    .line 147
    check-cast v2, Lo2/l;

    .line 148
    .line 149
    invoke-virtual {v2, v12}, Lo2/l;->put(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    throw v0

    .line 153
    :catchall_2
    move-exception v0

    .line 154
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 155
    :try_start_5
    throw v0

    .line 156
    :goto_3
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 157
    throw v0
.end method

.method public final b(Lu2/H;Landroid/graphics/BitmapFactory$Options;Lu2/u;Lcom/bumptech/glide/load/DecodeFormat;Lcom/bumptech/glide/load/PreferredColorSpace;ZIIZLu2/w;)Landroid/graphics/Bitmap;
    .locals 40

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v0, p3

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p10

    .line 1
    invoke-static {}, LG2/m;->getLogTime()J

    move-result-wide v9

    const/4 v11, 0x1

    .line 2
    iput-boolean v11, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3
    iget-object v12, v1, Lu2/x;->a:Lo2/d;

    invoke-static {v2, v3, v8, v12}, Lu2/x;->c(Lu2/H;Landroid/graphics/BitmapFactory$Options;Lu2/w;Lo2/d;)Landroid/graphics/Bitmap;

    const/4 v13, 0x0

    .line 4
    iput-boolean v13, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 5
    iget v14, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v15, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    filled-new-array {v14, v15}, [I

    move-result-object v14

    .line 6
    aget v15, v14, v13

    .line 7
    aget v14, v14, v11

    .line 8
    iget-object v13, v3, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const/4 v11, -0x1

    if-eq v15, v11, :cond_1

    if-ne v14, v11, :cond_0

    goto :goto_1

    :cond_0
    move/from16 v11, p6

    :goto_0
    move-wide/from16 v16, v9

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v11, 0x0

    goto :goto_0

    .line 9
    :goto_2
    invoke-interface {v2}, Lu2/H;->getImageOrientation()I

    move-result v9

    .line 10
    invoke-static {v9}, Lu2/P;->getExifOrientationDegrees(I)I

    move-result v10

    move/from16 p6, v9

    .line 11
    invoke-static/range {p6 .. p6}, Lu2/P;->isExifOrientationRequired(I)Z

    move-result v9

    move-object/from16 v18, v13

    const/16 v13, 0x5a

    const/high16 v5, -0x80000000

    if-ne v6, v5, :cond_4

    if-eq v10, v13, :cond_3

    const/16 v13, 0x10e

    if-ne v10, v13, :cond_2

    goto :goto_3

    :cond_2
    move/from16 v21, v15

    goto :goto_4

    :cond_3
    const/16 v13, 0x10e

    :goto_3
    move/from16 v21, v14

    goto :goto_4

    :cond_4
    const/16 v13, 0x10e

    move/from16 v21, v6

    :goto_4
    if-ne v7, v5, :cond_7

    const/16 v5, 0x5a

    if-eq v10, v5, :cond_6

    if-ne v10, v13, :cond_5

    goto :goto_5

    :cond_5
    move v5, v14

    goto :goto_6

    :cond_6
    :goto_5
    move v5, v15

    goto :goto_6

    :cond_7
    move v5, v7

    .line 12
    :goto_6
    invoke-interface {v2}, Lu2/H;->getImageType()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v13

    .line 13
    const-string v7, ", target density: "

    const/high16 v22, 0x3f800000    # 1.0f

    const-string v6, ", density: "

    const-string v4, "x"

    move/from16 v23, v9

    const-string v9, "Downsampler"

    move/from16 v24, v11

    const-string v11, "]"

    if-lez v15, :cond_8

    if-gtz v14, :cond_9

    :cond_8
    move-object v0, v11

    move-object/from16 v27, v12

    move/from16 v1, v21

    move-object v11, v4

    move-object v4, v7

    const/4 v7, 0x3

    goto/16 :goto_15

    :cond_9
    const/16 v1, 0x5a

    if-eq v10, v1, :cond_b

    const/16 v1, 0x10e

    if-ne v10, v1, :cond_a

    goto :goto_8

    :cond_a
    move-object/from16 v20, v6

    move-object/from16 v19, v11

    move v6, v14

    move v11, v15

    :goto_7
    move/from16 v1, v21

    move-object/from16 v21, v7

    goto :goto_9

    :cond_b
    :goto_8
    move-object/from16 v20, v6

    move-object/from16 v19, v11

    move v11, v14

    move v6, v15

    goto :goto_7

    .line 14
    :goto_9
    invoke-virtual {v0, v11, v6, v1, v5}, Lu2/u;->getScaleFactor(IIII)F

    move-result v7

    const/16 v25, 0x0

    cmpg-float v25, v7, v25

    if-lez v25, :cond_1e

    move/from16 v25, v7

    .line 15
    invoke-virtual {v0, v11, v6, v1, v5}, Lu2/u;->getSampleSizeRounding(IIII)Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;

    move-result-object v7

    if-eqz v7, :cond_1d

    move/from16 v26, v10

    int-to-float v10, v11

    move/from16 v19, v10

    mul-float v10, v25, v19

    move/from16 v27, v11

    float-to-double v10, v10

    const-wide/high16 v28, 0x3fe0000000000000L    # 0.5

    add-double v10, v10, v28

    double-to-int v10, v10

    int-to-float v11, v6

    move/from16 v30, v6

    mul-float v6, v25, v11

    move/from16 v31, v10

    move/from16 v32, v11

    float-to-double v10, v6

    add-double v10, v10, v28

    double-to-int v6, v10

    .line 16
    div-int v11, v27, v31

    .line 17
    div-int v6, v30, v6

    .line 18
    sget-object v10, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;->b:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;

    if-ne v7, v10, :cond_c

    .line 19
    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_a

    .line 20
    :cond_c
    invoke-static {v11, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 21
    :goto_a
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    move/from16 v31, v6

    const/16 v6, 0x17

    if-gt v11, v6, :cond_d

    sget-object v6, Lu2/x;->j:Ljava/util/Set;

    move-object/from16 v33, v4

    iget-object v4, v3, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 22
    invoke-interface {v6, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const/4 v6, 0x1

    goto :goto_b

    :cond_d
    move-object/from16 v33, v4

    .line 23
    :cond_e
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v4

    const/4 v6, 0x1

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-ne v7, v10, :cond_f

    int-to-float v6, v4

    div-float v7, v22, v25

    cmpg-float v6, v6, v7

    if-gez v6, :cond_f

    shl-int/lit8 v4, v4, 0x1

    :cond_f
    move v6, v4

    .line 24
    :goto_b
    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 25
    sget-object v4, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne v13, v4, :cond_10

    const/16 v4, 0x8

    .line 26
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    div-float v10, v19, v4

    float-to-double v10, v10

    .line 27
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v7, v10

    div-float v11, v32, v4

    float-to-double v10, v11

    .line 28
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v4, v10

    .line 29
    div-int/lit8 v10, v6, 0x8

    if-lez v10, :cond_17

    .line 30
    div-int/2addr v7, v10

    .line 31
    div-int/2addr v4, v10

    goto/16 :goto_f

    .line 32
    :cond_10
    sget-object v4, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-eq v13, v4, :cond_16

    sget-object v4, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne v13, v4, :cond_11

    goto :goto_e

    .line 33
    :cond_11
    invoke-virtual {v13}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->isWebp()Z

    move-result v4

    if-eqz v4, :cond_13

    const/16 v4, 0x18

    if-lt v11, v4, :cond_12

    int-to-float v4, v6

    div-float v10, v19, v4

    .line 34
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    div-float v11, v32, v4

    .line 35
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v4

    goto :goto_f

    :cond_12
    int-to-float v4, v6

    div-float v10, v19, v4

    float-to-double v10, v10

    .line 36
    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v7, v10

    div-float v11, v32, v4

    float-to-double v10, v11

    .line 37
    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    :goto_c
    double-to-int v4, v10

    goto :goto_f

    .line 38
    :cond_13
    rem-int v11, v27, v6

    if-nez v11, :cond_14

    rem-int v4, v30, v6

    if-eqz v4, :cond_15

    :cond_14
    const/4 v4, 0x1

    goto :goto_d

    .line 39
    :cond_15
    div-int v7, v27, v6

    .line 40
    div-int v4, v30, v6

    goto :goto_f

    .line 41
    :goto_d
    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 42
    invoke-static {v2, v3, v8, v12}, Lu2/x;->c(Lu2/H;Landroid/graphics/BitmapFactory$Options;Lu2/w;Lo2/d;)Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    .line 43
    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 44
    iget v10, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v11, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    filled-new-array {v10, v11}, [I

    move-result-object v10

    .line 45
    aget v11, v10, v7

    .line 46
    aget v7, v10, v4

    move v4, v7

    move v7, v11

    goto :goto_f

    :cond_16
    :goto_e
    int-to-float v4, v6

    div-float v10, v19, v4

    float-to-double v10, v10

    .line 47
    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v7, v10

    div-float v11, v32, v4

    float-to-double v10, v11

    .line 48
    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    goto :goto_c

    .line 49
    :cond_17
    :goto_f
    invoke-virtual {v0, v7, v4, v1, v5}, Lu2/u;->getScaleFactor(IIII)F

    move-result v0

    float-to-double v10, v0

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v10, v30

    if-gtz v0, :cond_18

    move-wide/from16 v34, v10

    goto :goto_10

    :cond_18
    div-double v34, v30, v10

    :goto_10
    const-wide v36, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double v34, v34, v36

    move-object/from16 v27, v12

    .line 50
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-int v12, v12

    move-wide/from16 v34, v10

    int-to-double v10, v12

    mul-double v10, v10, v34

    add-double v10, v10, v28

    double-to-int v10, v10

    int-to-float v11, v10

    int-to-float v12, v12

    div-float/2addr v11, v12

    float-to-double v11, v11

    div-double v11, v34, v11

    move-wide/from16 v38, v11

    int-to-double v10, v10

    mul-double v11, v38, v10

    add-double v11, v11, v28

    double-to-int v10, v11

    .line 51
    iput v10, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-gtz v0, :cond_19

    move-wide/from16 v30, v34

    goto :goto_11

    :cond_19
    div-double v30, v30, v34

    :goto_11
    mul-double v30, v30, v36

    .line 52
    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v0, v10

    .line 53
    iput v0, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 54
    iget v10, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-lez v10, :cond_1a

    if-lez v0, :cond_1a

    if-eq v10, v0, :cond_1a

    const/4 v10, 0x1

    .line 55
    iput-boolean v10, v3, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    :goto_12
    const/4 v10, 0x2

    goto :goto_13

    :cond_1a
    const/4 v10, 0x0

    .line 56
    iput v10, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iput v10, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    goto :goto_12

    .line 57
    :goto_13
    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 58
    const-string v0, "Calculate scaling, source: ["

    const-string v10, "], degreesToRotate: "

    move-object/from16 v11, v33

    .line 59
    invoke-static {v15, v14, v0, v11, v10}, LA/i;->p(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v10, v26

    .line 60
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", target: ["

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "], power of two scaled: ["

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], exact scale factor: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", power of 2 sample size: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", adjusted scale factor: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v6, v34

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-object/from16 v4, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v6, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    :goto_14
    move-object/from16 v7, p0

    goto/16 :goto_16

    :cond_1c
    move-object/from16 v6, v20

    move-object/from16 v4, v21

    move-object/from16 v11, v33

    goto :goto_14

    .line 61
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot round with null rounding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    move-object v11, v4

    move v4, v7

    .line 62
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Cannot scale with factor: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", source: ["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "], target: ["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 63
    :goto_15
    invoke-static {v9, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 64
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "Unable to determine dimensions for: "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " with target ["

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 65
    :goto_16
    iget-object v0, v7, Lu2/x;->e:Lu2/D;

    move/from16 v12, v23

    move/from16 v10, v24

    invoke-virtual {v0, v1, v5, v10, v12}, Lu2/D;->isHardwareConfigAllowed(IIZZ)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 66
    invoke-static {}, Le/P;->i()Landroid/graphics/Bitmap$Config;

    move-result-object v10

    iput-object v10, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v10, 0x0

    .line 67
    iput-boolean v10, v3, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    goto :goto_17

    :cond_1f
    const/4 v10, 0x0

    :goto_17
    if-eqz v0, :cond_21

    :cond_20
    const/4 v10, 0x1

    goto :goto_1a

    .line 68
    :cond_21
    sget-object v0, Lcom/bumptech/glide/load/DecodeFormat;->b:Lcom/bumptech/glide/load/DecodeFormat;

    move-object/from16 v12, p4

    if-eq v12, v0, :cond_24

    .line 69
    :try_start_0
    invoke-interface {v2}, Lu2/H;->getImageType()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->hasAlpha()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_18

    :catch_0
    move-exception v0

    const/4 v13, 0x3

    .line 70
    invoke-static {v9, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_22

    .line 71
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v10, "Cannot determine whether the image has alpha or not from header, format "

    invoke-direct {v13, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_22
    const/4 v0, 0x0

    :goto_18
    if-eqz v0, :cond_23

    .line 72
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_19

    :cond_23
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_19
    iput-object v0, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 73
    sget-object v10, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v0, v10, :cond_20

    const/4 v10, 0x1

    .line 74
    iput-boolean v10, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    goto :goto_1a

    :cond_24
    const/4 v10, 0x1

    .line 75
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 76
    :goto_1a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ltz v15, :cond_25

    if-ltz v14, :cond_25

    if-eqz p9, :cond_25

    move v10, v1

    move-object v7, v11

    goto/16 :goto_1d

    .line 77
    :cond_25
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-lez v1, :cond_26

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-lez v5, :cond_26

    if-eq v1, v5, :cond_26

    move v5, v10

    goto :goto_1b

    :cond_26
    const/4 v5, 0x0

    :goto_1b
    if-eqz v5, :cond_27

    int-to-float v1, v1

    .line 78
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    int-to-float v5, v5

    div-float v22, v1, v5

    :cond_27
    move/from16 v1, v22

    .line 79
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-float v12, v15

    int-to-float v13, v5

    div-float/2addr v12, v13

    move-object/from16 v33, v11

    float-to-double v10, v12

    .line 80
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    int-to-float v11, v14

    div-float/2addr v11, v13

    float-to-double v11, v11

    .line 81
    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v11, v11

    int-to-float v10, v10

    mul-float/2addr v10, v1

    .line 82
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    int-to-float v11, v11

    mul-float/2addr v11, v1

    .line 83
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    const/4 v12, 0x2

    .line 84
    invoke-static {v9, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_28

    .line 85
    const-string v12, "Calculated target ["

    const-string v13, "] for source ["

    move-object/from16 v7, v33

    .line 86
    invoke-static {v10, v11, v12, v7, v13}, LA/i;->p(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 87
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "], sampleSize: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", targetDensity: "

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", density multiplier: "

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    :cond_28
    move-object/from16 v7, v33

    :goto_1c
    move v5, v11

    :goto_1d
    const/4 v1, 0x0

    const/16 v11, 0x1a

    if-lez v10, :cond_2c

    if-lez v5, :cond_2c

    if-lt v0, v11, :cond_2a

    .line 88
    iget-object v12, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {}, Le/P;->i()Landroid/graphics/Bitmap$Config;

    move-result-object v13

    if-ne v12, v13, :cond_29

    goto :goto_1f

    .line 89
    :cond_29
    invoke-static {v3}, Lt2/a;->a(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap$Config;

    move-result-object v12

    goto :goto_1e

    :cond_2a
    move-object v12, v1

    :goto_1e
    if-nez v12, :cond_2b

    .line 90
    iget-object v12, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    :cond_2b
    move-object/from16 v13, v27

    .line 91
    invoke-interface {v13, v10, v5, v12}, Lo2/d;->getDirty(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    goto :goto_20

    :cond_2c
    :goto_1f
    move-object/from16 v13, v27

    :goto_20
    if-eqz p5, :cond_30

    const/16 v5, 0x1c

    if-lt v0, v5, :cond_2f

    .line 92
    sget-object v0, Lcom/bumptech/glide/load/PreferredColorSpace;->b:Lcom/bumptech/glide/load/PreferredColorSpace;

    move-object/from16 v5, p5

    if-ne v5, v0, :cond_2d

    invoke-static {v3}, Lt2/a;->d(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/ColorSpace;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-static {v3}, Lt2/a;->d(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/ColorSpace;

    move-result-object v0

    .line 93
    invoke-static {v0}, Lt2/a;->l(Landroid/graphics/ColorSpace;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v11, 0x1

    goto :goto_21

    :cond_2d
    const/4 v11, 0x0

    :goto_21
    if-eqz v11, :cond_2e

    .line 94
    invoke-static {}, Lt2/a;->b()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    goto :goto_22

    :cond_2e
    invoke-static {}, Lt2/a;->n()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    :goto_22
    invoke-static {v0}, Lt2/a;->e(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-static {v3, v0}, Lt2/a;->k(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/ColorSpace;)V

    goto :goto_23

    :cond_2f
    if-lt v0, v11, :cond_30

    .line 95
    invoke-static {}, Lt2/a;->n()Landroid/graphics/ColorSpace$Named;

    invoke-static {}, Lt2/a;->c()Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-static {v3, v0}, Lt2/a;->k(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/ColorSpace;)V

    .line 96
    :cond_30
    :goto_23
    invoke-static {v2, v3, v8, v13}, Lu2/x;->c(Lu2/H;Landroid/graphics/BitmapFactory$Options;Lu2/w;Lo2/d;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 97
    invoke-interface {v8, v13, v0}, Lu2/w;->onDecodeComplete(Lo2/d;Landroid/graphics/Bitmap;)V

    const/4 v10, 0x2

    .line 98
    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Decoded "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-static {v0}, Lu2/x;->d(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from ["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v18

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " with inBitmap "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget-object v5, v3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static {v5}, Lu2/x;->d(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v5

    .line 102
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for ["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p7

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p8

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "], sample size: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", thread: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", duration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-static/range {v16 .. v17}, LG2/m;->getElapsedMillis(J)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-static {v9, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    move-object/from16 v7, p0

    if-eqz v0, :cond_32

    .line 106
    iget-object v1, v7, Lu2/x;->b:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    move/from16 v1, p6

    .line 107
    invoke-static {v13, v0, v1}, Lu2/P;->rotateImageExif(Lo2/d;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 109
    invoke-interface {v13, v0}, Lo2/d;->put(Landroid/graphics/Bitmap;)V

    :cond_32
    return-object v1
.end method

.method public decode(Landroid/os/ParcelFileDescriptor;IILl2/q;)Ln2/M;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "II",
            "Ll2/q;",
            ")",
            "Ln2/M;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    new-instance v1, Lu2/G;

    iget-object v0, p0, Lu2/x;->d:Ljava/util/List;

    iget-object v2, p0, Lu2/x;->c:Lo2/b;

    invoke-direct {v1, p1, v0, v2}, Lu2/G;-><init>(Landroid/os/ParcelFileDescriptor;Ljava/util/List;Lo2/b;)V

    sget-object v5, Lu2/x;->k:Lu2/v;

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lu2/x;->a(Lu2/H;IILl2/q;Lu2/w;)Lu2/e;

    move-result-object p1

    return-object p1
.end method

.method public decode(Ljava/io/InputStream;IILl2/q;Lu2/w;)Ln2/M;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II",
            "Ll2/q;",
            "Lu2/w;",
            ")",
            "Ln2/M;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v1, Lu2/F;

    iget-object v0, p0, Lu2/x;->d:Ljava/util/List;

    iget-object v2, p0, Lu2/x;->c:Lo2/b;

    invoke-direct {v1, v0, p1, v2}, Lu2/F;-><init>(Ljava/util/List;Ljava/io/InputStream;Lo2/b;)V

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lu2/x;->a(Lu2/H;IILl2/q;Lu2/w;)Lu2/e;

    move-result-object p1

    return-object p1
.end method

.method public decode(Ljava/nio/ByteBuffer;IILl2/q;)Ln2/M;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "II",
            "Ll2/q;",
            ")",
            "Ln2/M;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v1, Lu2/E;

    iget-object v0, p0, Lu2/x;->d:Ljava/util/List;

    iget-object v2, p0, Lu2/x;->c:Lo2/b;

    invoke-direct {v1, v0, p1, v2}, Lu2/E;-><init>(Ljava/util/List;Ljava/nio/ByteBuffer;Lo2/b;)V

    sget-object v5, Lu2/x;->k:Lu2/v;

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lu2/x;->a(Lu2/H;IILl2/q;Lu2/w;)Lu2/e;

    move-result-object p1

    return-object p1
.end method

.method public handles(Landroid/os/ParcelFileDescriptor;)Z
    .locals 0

    .line 3
    invoke-static {}, Lcom/bumptech/glide/load/data/t;->isSupported()Z

    move-result p1

    return p1
.end method

.method public handles(Ljava/io/InputStream;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    return p1
.end method

.method public handles(Ljava/nio/ByteBuffer;)Z
    .locals 0

    .line 2
    const/4 p1, 0x1

    return p1
.end method
