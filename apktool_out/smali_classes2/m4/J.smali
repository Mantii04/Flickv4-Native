.class public final Lm4/J;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final a:Lm4/D;

.field public final b:Lm4/H;

.field public c:Z

.field public d:I

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lm4/J;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lm4/D;Landroid/net/Uri;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm4/J;->a:Lm4/D;

    .line 5
    .line 6
    new-instance v0, Lm4/H;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p2, v0, Lm4/H;->a:Landroid/net/Uri;

    .line 12
    .line 13
    iput p3, v0, Lm4/H;->b:I

    .line 14
    .line 15
    iget-object p1, p1, Lm4/D;->j:Landroid/graphics/Bitmap$Config;

    .line 16
    .line 17
    iput-object p1, v0, Lm4/H;->i:Landroid/graphics/Bitmap$Config;

    .line 18
    .line 19
    iput-object v0, p0, Lm4/J;->b:Lm4/H;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public centerCrop()Lm4/J;
    .locals 2

    .line 1
    iget-object v0, p0, Lm4/J;->b:Lm4/H;

    .line 2
    .line 3
    const/16 v1, 0x11

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lm4/H;->centerCrop(I)Lm4/H;

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public error(I)Lm4/J;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lm4/J;->e:I

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    const-string v0, "Error image resource invalid."

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public fit()Lm4/J;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lm4/J;->c:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public into(Landroid/widget/ImageView;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lm4/J;->into(Landroid/widget/ImageView;Lm4/i;)V

    return-void
.end method

.method public into(Landroid/widget/ImageView;Lm4/i;)V
    .locals 11

    const/4 v0, 0x1

    .line 2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 3
    sget-object v1, Lm4/W;->a:Ljava/lang/StringBuilder;

    .line 4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_14

    if-eqz p1, :cond_13

    .line 5
    iget-object v1, p0, Lm4/J;->b:Lm4/H;

    .line 6
    iget-object v2, v1, Lm4/H;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    .line 7
    iget-object v5, p0, Lm4/J;->a:Lm4/D;

    if-nez v2, :cond_2

    iget v2, v1, Lm4/H;->b:I

    if-eqz v2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v5, p1}, Lm4/D;->cancelRequest(Landroid/widget/ImageView;)V

    .line 9
    iget p2, p0, Lm4/J;->d:I

    if-eqz p2, :cond_1

    .line 10
    iget-object v0, v5, Lm4/D;->c:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 11
    :cond_1
    invoke-static {p1, v3}, Lm4/E;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 12
    :cond_2
    :goto_0
    iget-boolean v2, p0, Lm4/J;->c:Z

    if-eqz v2, :cond_8

    .line 13
    iget v2, v1, Lm4/H;->c:I

    if-nez v2, :cond_7

    .line 14
    iget v2, v1, Lm4/H;->d:I

    if-nez v2, :cond_7

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    if-eqz v2, :cond_4

    if-nez v4, :cond_3

    goto :goto_1

    .line 17
    :cond_3
    invoke-virtual {v1, v2, v4}, Lm4/H;->resize(II)Lm4/H;

    goto :goto_2

    .line 18
    :cond_4
    :goto_1
    iget v0, p0, Lm4/J;->d:I

    if-eqz v0, :cond_5

    .line 19
    iget-object v1, v5, Lm4/D;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 20
    :cond_5
    invoke-static {p1, v3}, Lm4/E;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 21
    new-instance v0, Lm4/l;

    invoke-direct {v0, p0, p1, p2}, Lm4/l;-><init>(Lm4/J;Landroid/widget/ImageView;Lm4/i;)V

    .line 22
    iget-object p2, v5, Lm4/D;->h:Ljava/util/WeakHashMap;

    .line 23
    invoke-virtual {p2, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 24
    invoke-virtual {v5, p1}, Lm4/D;->a(Ljava/lang/Object;)V

    .line 25
    :cond_6
    invoke-virtual {p2, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 26
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Fit cannot be used with resize."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_8
    :goto_2
    sget-object v2, Lm4/J;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 28
    invoke-virtual {v1}, Lm4/H;->build()Lm4/I;

    move-result-object v1

    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    iget-object v2, v5, Lm4/D;->a:Lm4/C;

    invoke-virtual {v2, v1}, Lm4/C;->transformRequest(Lm4/I;)Lm4/I;

    move-result-object v7

    if-eqz v7, :cond_12

    .line 31
    sget-object v1, Lm4/W;->a:Ljava/lang/StringBuilder;

    .line 32
    iget-object v2, v7, Lm4/I;->a:Landroid/net/Uri;

    const/16 v4, 0x32

    if-eqz v2, :cond_9

    .line 33
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 34
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 36
    :cond_9
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 37
    iget v2, v7, Lm4/I;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_3
    const/16 v2, 0xa

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v7}, Lm4/I;->hasSize()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 40
    const-string v4, "resize:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v7, Lm4/I;->d:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x78

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v4, v7, Lm4/I;->e:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    :cond_a
    iget-boolean v4, v7, Lm4/I;->f:Z

    if-eqz v4, :cond_b

    .line 43
    const-string v4, "centerCrop:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v7, Lm4/I;->g:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_b
    const/4 v4, 0x0

    .line 44
    iget-object v6, v7, Lm4/I;->c:Ljava/util/List;

    if-eqz v6, :cond_c

    .line 45
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    move v9, v4

    :goto_4
    if-ge v9, v8, :cond_c

    .line 46
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lm4/S;

    check-cast v10, LT4/d;

    invoke-virtual {v10}, LT4/d;->key()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr v9, v0

    goto :goto_4

    .line 48
    :cond_c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 49
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 50
    iget-object v1, v5, Lm4/D;->e:Lm4/v;

    invoke-virtual {v1, v9}, Lm4/v;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 51
    iget-object v2, v5, Lm4/D;->f:Lm4/P;

    if-eqz v1, :cond_d

    .line 52
    iget-object v0, v2, Lm4/P;->b:Lm4/O;

    .line 53
    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_5

    .line 54
    :cond_d
    iget-object v2, v2, Lm4/P;->b:Lm4/O;

    .line 55
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_5
    if-eqz v1, :cond_10

    .line 56
    invoke-virtual {v5, p1}, Lm4/D;->cancelRequest(Landroid/widget/ImageView;)V

    .line 57
    sget-object v0, Lcom/squareup/picasso/Picasso$LoadedFrom;->b:Lcom/squareup/picasso/Picasso$LoadedFrom;

    sget v2, Lm4/E;->e:I

    .line 58
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 59
    instance-of v3, v2, Landroid/graphics/drawable/Animatable;

    if-eqz v3, :cond_e

    .line 60
    move-object v3, v2

    check-cast v3, Landroid/graphics/drawable/Animatable;

    invoke-interface {v3}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 61
    :cond_e
    new-instance v3, Lm4/E;

    iget-object v4, v5, Lm4/D;->c:Landroid/content/Context;

    invoke-direct {v3, v4, v1, v2, v0}, Lm4/E;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Lcom/squareup/picasso/Picasso$LoadedFrom;)V

    .line 62
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p2, :cond_f

    .line 63
    invoke-interface {p2}, Lm4/i;->onSuccess()V

    :cond_f
    return-void

    .line 64
    :cond_10
    iget v0, p0, Lm4/J;->d:I

    if-eqz v0, :cond_11

    .line 65
    iget-object v1, v5, Lm4/D;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 66
    :cond_11
    invoke-static {p1, v3}, Lm4/E;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 67
    new-instance v4, Lm4/s;

    iget v8, p0, Lm4/J;->e:I

    move-object v6, p1

    move-object v10, p2

    invoke-direct/range {v4 .. v10}, Lm4/s;-><init>(Lm4/D;Landroid/widget/ImageView;Lm4/I;ILjava/lang/String;Lm4/i;)V

    .line 68
    invoke-virtual {v5, v4}, Lm4/D;->c(Lm4/s;)V

    return-void

    .line 69
    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Request transformer "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " returned null for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Target must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Method call should happen from the main thread."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onlyScaleDown()Lm4/J;
    .locals 1

    .line 1
    iget-object v0, p0, Lm4/J;->b:Lm4/H;

    .line 2
    .line 3
    invoke-virtual {v0}, Lm4/H;->onlyScaleDown()Lm4/H;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public placeholder(I)Lm4/J;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lm4/J;->d:I

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    const-string v0, "Placeholder image resource invalid."

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public resize(II)Lm4/J;
    .locals 1

    .line 1
    iget-object v0, p0, Lm4/J;->b:Lm4/H;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lm4/H;->resize(II)Lm4/H;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public transform(Lm4/S;)Lm4/J;
    .locals 1

    .line 1
    iget-object v0, p0, Lm4/J;->b:Lm4/H;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lm4/H;->transform(Lm4/S;)Lm4/H;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
