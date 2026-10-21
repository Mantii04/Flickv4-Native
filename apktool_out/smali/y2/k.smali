.class public final Ly2/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lk2/b;

.field public final b:Landroid/os/Handler;

.field public final c:Ljava/util/ArrayList;

.field public final d:Lcom/bumptech/glide/q;

.field public final e:Lo2/d;

.field public f:Z

.field public g:Z

.field public h:Lcom/bumptech/glide/m;

.field public i:Ly2/h;

.field public j:Z

.field public k:Ly2/h;

.field public l:Landroid/graphics/Bitmap;

.field public m:Ly2/h;

.field public n:I

.field public o:I

.field public p:I


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/c;Lk2/b;IILl2/t;Landroid/graphics/Bitmap;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/bumptech/glide/c;->getBitmapPool()Lo2/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/bumptech/glide/c;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Lcom/bumptech/glide/c;->with(Landroid/content/Context;)Lcom/bumptech/glide/q;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lcom/bumptech/glide/c;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Lcom/bumptech/glide/c;->with(Landroid/content/Context;)Lcom/bumptech/glide/q;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lcom/bumptech/glide/q;->asBitmap()Lcom/bumptech/glide/m;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    sget-object v2, Ln2/u;->a:Ln2/q;

    .line 26
    .line 27
    invoke-static {v2}, LC2/f;->diskCacheStrategyOf(Ln2/u;)LC2/f;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const/4 v3, 0x1

    .line 32
    invoke-virtual {v2, v3}, LC2/a;->useAnimationPool(Z)LC2/a;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, LC2/f;

    .line 37
    .line 38
    invoke-virtual {v2, v3}, LC2/a;->skipMemoryCache(Z)LC2/a;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, LC2/f;

    .line 43
    .line 44
    invoke-virtual {v2, p3, p4}, LC2/a;->override(II)LC2/a;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    invoke-virtual {p1, p3}, Lcom/bumptech/glide/m;->apply(LC2/a;)Lcom/bumptech/glide/m;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    .line 54
    .line 55
    new-instance p3, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object p3, p0, Ly2/k;->c:Ljava/util/ArrayList;

    .line 61
    .line 62
    iput-object v1, p0, Ly2/k;->d:Lcom/bumptech/glide/q;

    .line 63
    .line 64
    new-instance p3, Landroid/os/Handler;

    .line 65
    .line 66
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 67
    .line 68
    .line 69
    move-result-object p4

    .line 70
    new-instance v1, Ly2/j;

    .line 71
    .line 72
    invoke-direct {v1, p0}, Ly2/j;-><init>(Ly2/k;)V

    .line 73
    .line 74
    .line 75
    invoke-direct {p3, p4, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 76
    .line 77
    .line 78
    iput-object v0, p0, Ly2/k;->e:Lo2/d;

    .line 79
    .line 80
    iput-object p3, p0, Ly2/k;->b:Landroid/os/Handler;

    .line 81
    .line 82
    iput-object p1, p0, Ly2/k;->h:Lcom/bumptech/glide/m;

    .line 83
    .line 84
    iput-object p2, p0, Ly2/k;->a:Lk2/b;

    .line 85
    .line 86
    invoke-virtual {p0, p5, p6}, Ly2/k;->c(Ll2/t;Landroid/graphics/Bitmap;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Ly2/k;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-boolean v0, p0, Ly2/k;->g:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Ly2/k;->m:Ly2/h;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-object v1, p0, Ly2/k;->m:Ly2/h;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ly2/k;->b(Ly2/h;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Ly2/k;->g:Z

    .line 23
    .line 24
    iget-object v0, p0, Ly2/k;->a:Lk2/b;

    .line 25
    .line 26
    move-object v1, v0

    .line 27
    check-cast v1, Lk2/f;

    .line 28
    .line 29
    invoke-virtual {v1}, Lk2/f;->getNextDelay()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v3

    .line 37
    int-to-long v5, v2

    .line 38
    add-long/2addr v3, v5

    .line 39
    invoke-virtual {v1}, Lk2/f;->advance()V

    .line 40
    .line 41
    .line 42
    new-instance v2, Ly2/h;

    .line 43
    .line 44
    invoke-virtual {v1}, Lk2/f;->getCurrentFrameIndex()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    iget-object v5, p0, Ly2/k;->b:Landroid/os/Handler;

    .line 49
    .line 50
    invoke-direct {v2, v5, v1, v3, v4}, Ly2/h;-><init>(Landroid/os/Handler;IJ)V

    .line 51
    .line 52
    .line 53
    iput-object v2, p0, Ly2/k;->k:Ly2/h;

    .line 54
    .line 55
    iget-object v1, p0, Ly2/k;->h:Lcom/bumptech/glide/m;

    .line 56
    .line 57
    new-instance v2, LF2/d;

    .line 58
    .line 59
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 60
    .line 61
    .line 62
    move-result-wide v3

    .line 63
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-direct {v2, v3}, LF2/d;-><init>(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-static {v2}, LC2/f;->signatureOf(Ll2/m;)LC2/f;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/m;->apply(LC2/a;)Lcom/bumptech/glide/m;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/m;->load(Ljava/lang/Object;)Lcom/bumptech/glide/m;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iget-object v1, p0, Ly2/k;->k:Ly2/h;

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/m;->into(LD2/k;)LD2/k;

    .line 85
    .line 86
    .line 87
    :cond_2
    :goto_0
    return-void
.end method

.method public final b(Ly2/h;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ly2/k;->g:Z

    .line 3
    .line 4
    iget-boolean v0, p0, Ly2/k;->j:Z

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    iget-object v2, p0, Ly2/k;->b:Landroid/os/Handler;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-boolean v0, p0, Ly2/k;->f:Z

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    iput-object p1, p0, Ly2/k;->m:Ly2/h;

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    iget-object v0, p1, Ly2/h;->p:Landroid/graphics/Bitmap;

    .line 27
    .line 28
    if-eqz v0, :cond_4

    .line 29
    .line 30
    iget-object v0, p0, Ly2/k;->l:Landroid/graphics/Bitmap;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    iget-object v3, p0, Ly2/k;->e:Lo2/d;

    .line 35
    .line 36
    invoke-interface {v3, v0}, Lo2/d;->put(Landroid/graphics/Bitmap;)V

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Ly2/k;->l:Landroid/graphics/Bitmap;

    .line 41
    .line 42
    :cond_2
    iget-object v0, p0, Ly2/k;->i:Ly2/h;

    .line 43
    .line 44
    iput-object p1, p0, Ly2/k;->i:Ly2/h;

    .line 45
    .line 46
    iget-object p1, p0, Ly2/k;->c:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    add-int/lit8 v3, v3, -0x1

    .line 53
    .line 54
    :goto_0
    if-ltz v3, :cond_3

    .line 55
    .line 56
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    check-cast v4, Ly2/i;

    .line 61
    .line 62
    check-cast v4, Ly2/d;

    .line 63
    .line 64
    invoke-virtual {v4}, Ly2/d;->onFrameReady()V

    .line 65
    .line 66
    .line 67
    add-int/lit8 v3, v3, -0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    if-eqz v0, :cond_4

    .line 71
    .line 72
    invoke-virtual {v2, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 77
    .line 78
    .line 79
    :cond_4
    invoke-virtual {p0}, Ly2/k;->a()V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final c(Ll2/t;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    invoke-static {p1}, LG2/r;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ll2/t;

    .line 6
    .line 7
    invoke-static {p2}, LG2/r;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/graphics/Bitmap;

    .line 12
    .line 13
    iput-object v0, p0, Ly2/k;->l:Landroid/graphics/Bitmap;

    .line 14
    .line 15
    iget-object v0, p0, Ly2/k;->h:Lcom/bumptech/glide/m;

    .line 16
    .line 17
    new-instance v1, LC2/f;

    .line 18
    .line 19
    invoke-direct {v1}, LC2/f;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, LC2/a;->transform(Ll2/t;)LC2/a;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/m;->apply(LC2/a;)Lcom/bumptech/glide/m;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Ly2/k;->h:Lcom/bumptech/glide/m;

    .line 31
    .line 32
    invoke-static {p2}, LG2/t;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    iput p1, p0, Ly2/k;->n:I

    .line 37
    .line 38
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    iput p1, p0, Ly2/k;->o:I

    .line 43
    .line 44
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    iput p1, p0, Ly2/k;->p:I

    .line 49
    .line 50
    return-void
.end method
