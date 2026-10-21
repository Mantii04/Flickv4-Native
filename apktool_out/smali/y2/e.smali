.class public final Ly2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll2/s;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic encode(Ljava/lang/Object;Ljava/io/File;Ll2/q;)Z
    .locals 0

    .line 1
    check-cast p1, Ln2/M;

    invoke-virtual {p0, p1, p2, p3}, Ly2/e;->encode(Ln2/M;Ljava/io/File;Ll2/q;)Z

    move-result p1

    return p1
.end method

.method public encode(Ln2/M;Ljava/io/File;Ll2/q;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln2/M;",
            "Ljava/io/File;",
            "Ll2/q;",
            ")Z"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Ln2/M;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly2/d;

    .line 3
    :try_start_0
    invoke-virtual {p1}, Ly2/d;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1, p2}, LG2/c;->toFile(Ljava/nio/ByteBuffer;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const/4 p2, 0x5

    .line 4
    const-string p3, "GifEncoder"

    invoke-static {p3, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    const-string p2, "Failed to encode GIF drawable data"

    invoke-static {p3, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getEncodeStrategy(Ll2/q;)Lcom/bumptech/glide/load/EncodeStrategy;
    .locals 0

    .line 1
    sget-object p1, Lcom/bumptech/glide/load/EncodeStrategy;->b:Lcom/bumptech/glide/load/EncodeStrategy;

    .line 2
    .line 3
    return-object p1
.end method
