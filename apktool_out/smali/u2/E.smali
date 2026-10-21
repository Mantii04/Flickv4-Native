.class public final Lu2/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu2/H;


# instance fields
.field public final a:Ljava/nio/ByteBuffer;

.field public final b:Ljava/util/List;

.field public final c:Lo2/b;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/nio/ByteBuffer;Lo2/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lu2/E;->a:Ljava/nio/ByteBuffer;

    .line 5
    .line 6
    iput-object p1, p0, Lu2/E;->b:Ljava/util/List;

    .line 7
    .line 8
    iput-object p3, p0, Lu2/E;->c:Lo2/b;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public decodeBitmap(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    iget-object v0, p0, Lu2/E;->a:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-static {v0}, LG2/c;->rewind(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, LG2/c;->toStream(Ljava/nio/ByteBuffer;)Ljava/io/InputStream;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
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
    iget-object v0, p0, Lu2/E;->a:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-static {v0}, LG2/c;->rewind(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lu2/E;->c:Lo2/b;

    .line 8
    .line 9
    iget-object v2, p0, Lu2/E;->b:Ljava/util/List;

    .line 10
    .line 11
    invoke-static {v2, v0, v1}, Ll2/l;->getOrientation(Ljava/util/List;Ljava/nio/ByteBuffer;Lo2/b;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public getImageType()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu2/E;->a:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-static {v0}, LG2/c;->rewind(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lu2/E;->b:Ljava/util/List;

    .line 8
    .line 9
    invoke-static {v1, v0}, Ll2/l;->getType(Ljava/util/List;Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public stopGrowingBuffers()V
    .locals 0

    .line 1
    return-void
.end method
