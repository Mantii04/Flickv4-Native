.class public final Ll2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll2/k;


# instance fields
.field public final synthetic a:Lcom/bumptech/glide/load/data/t;

.field public final synthetic b:Lo2/b;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/data/t;Lo2/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll2/f;->a:Lcom/bumptech/glide/load/data/t;

    .line 5
    .line 6
    iput-object p2, p0, Ll2/f;->b:Lo2/b;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getTypeAndRewind(Ll2/c;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ll2/f;->a:Lcom/bumptech/glide/load/data/t;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    new-instance v2, Lcom/bumptech/glide/load/resource/bitmap/a;

    .line 5
    .line 6
    new-instance v3, Ljava/io/FileInputStream;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/bumptech/glide/load/data/t;->rewindAndGet()Landroid/os/ParcelFileDescriptor;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 17
    .line 18
    .line 19
    iget-object v4, p0, Ll2/f;->b:Lo2/b;

    .line 20
    .line 21
    invoke-direct {v2, v3, v4}, Lcom/bumptech/glide/load/resource/bitmap/a;-><init>(Ljava/io/InputStream;Lo2/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    .line 23
    .line 24
    :try_start_1
    invoke-interface {p1, v2}, Ll2/c;->getType(Ljava/io/InputStream;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 25
    .line 26
    .line 27
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    invoke-virtual {v2}, Lcom/bumptech/glide/load/resource/bitmap/a;->release()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/bumptech/glide/load/data/t;->rewindAndGet()Landroid/os/ParcelFileDescriptor;

    .line 32
    .line 33
    .line 34
    return-object p1

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    move-object v1, v2

    .line 37
    goto :goto_0

    .line 38
    :catchall_1
    move-exception p1

    .line 39
    :goto_0
    if-eqz v1, :cond_0

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/bitmap/a;->release()V

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-virtual {v0}, Lcom/bumptech/glide/load/data/t;->rewindAndGet()Landroid/os/ParcelFileDescriptor;

    .line 45
    .line 46
    .line 47
    throw p1
.end method
