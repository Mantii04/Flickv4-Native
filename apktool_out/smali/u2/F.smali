.class public final Lu2/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu2/H;


# instance fields
.field public final a:Lcom/bumptech/glide/load/data/q;

.field public final b:Lo2/b;

.field public final c:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/io/InputStream;Lo2/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p3}, LG2/r;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lo2/b;

    .line 9
    .line 10
    iput-object v0, p0, Lu2/F;->b:Lo2/b;

    .line 11
    .line 12
    invoke-static {p1}, LG2/r;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Ljava/util/List;

    .line 17
    .line 18
    iput-object p1, p0, Lu2/F;->c:Ljava/util/List;

    .line 19
    .line 20
    new-instance p1, Lcom/bumptech/glide/load/data/q;

    .line 21
    .line 22
    invoke-direct {p1, p2, p3}, Lcom/bumptech/glide/load/data/q;-><init>(Ljava/io/InputStream;Lo2/b;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lu2/F;->a:Lcom/bumptech/glide/load/data/q;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public decodeBitmap(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu2/F;->a:Lcom/bumptech/glide/load/data/q;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/load/data/q;->rewindAndGet()Ljava/io/InputStream;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public getImageOrientation()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu2/F;->a:Lcom/bumptech/glide/load/data/q;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/load/data/q;->rewindAndGet()Ljava/io/InputStream;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lu2/F;->b:Lo2/b;

    .line 8
    .line 9
    iget-object v2, p0, Lu2/F;->c:Ljava/util/List;

    .line 10
    .line 11
    invoke-static {v2, v0, v1}, Ll2/l;->getOrientation(Ljava/util/List;Ljava/io/InputStream;Lo2/b;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public getImageType()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu2/F;->a:Lcom/bumptech/glide/load/data/q;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/load/data/q;->rewindAndGet()Ljava/io/InputStream;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lu2/F;->b:Lo2/b;

    .line 8
    .line 9
    iget-object v2, p0, Lu2/F;->c:Ljava/util/List;

    .line 10
    .line 11
    invoke-static {v2, v0, v1}, Ll2/l;->getType(Ljava/util/List;Ljava/io/InputStream;Lo2/b;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public stopGrowingBuffers()V
    .locals 1

    .line 1
    iget-object v0, p0, Lu2/F;->a:Lcom/bumptech/glide/load/data/q;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/load/data/q;->fixMarkLimits()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
