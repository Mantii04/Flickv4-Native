.class public final Lu2/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll2/r;


# instance fields
.field public final a:Lu2/x;

.field public final b:Lo2/b;


# direct methods
.method public constructor <init>(Lu2/x;Lo2/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lu2/N;->a:Lu2/x;

    .line 5
    .line 6
    iput-object p2, p0, Lu2/N;->b:Lo2/b;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public decode(Ljava/io/InputStream;IILl2/q;)Ln2/M;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
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

    .line 2
    instance-of v0, p1, Lcom/bumptech/glide/load/resource/bitmap/a;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/bumptech/glide/load/resource/bitmap/a;

    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/a;

    iget-object v1, p0, Lu2/N;->b:Lo2/b;

    invoke-direct {v0, p1, v1}, Lcom/bumptech/glide/load/resource/bitmap/a;-><init>(Ljava/io/InputStream;Lo2/b;)V

    const/4 p1, 0x1

    move v1, p1

    move-object p1, v0

    .line 5
    :goto_0
    invoke-static {p1}, LG2/f;->obtain(Ljava/io/InputStream;)LG2/f;

    move-result-object v2

    .line 6
    new-instance v4, LG2/p;

    invoke-direct {v4, v2}, LG2/p;-><init>(Ljava/io/InputStream;)V

    .line 7
    new-instance v8, Lu2/M;

    invoke-direct {v8, p1, v2}, Lu2/M;-><init>(Lcom/bumptech/glide/load/resource/bitmap/a;LG2/f;)V

    .line 8
    :try_start_0
    iget-object v3, p0, Lu2/N;->a:Lu2/x;

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v3 .. v8}, Lu2/x;->decode(Ljava/io/InputStream;IILl2/q;Lu2/w;)Ln2/M;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {v2}, LG2/f;->release()V

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/bitmap/a;->release()V

    :cond_1
    return-object p2

    :catchall_0
    move-exception v0

    move-object p2, v0

    .line 11
    invoke-virtual {v2}, LG2/f;->release()V

    if-eqz v1, :cond_2

    .line 12
    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/bitmap/a;->release()V

    .line 13
    :cond_2
    throw p2
.end method

.method public bridge synthetic decode(Ljava/lang/Object;IILl2/q;)Ln2/M;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3, p4}, Lu2/N;->decode(Ljava/io/InputStream;IILl2/q;)Ln2/M;

    move-result-object p1

    return-object p1
.end method

.method public handles(Ljava/io/InputStream;Ll2/q;)Z
    .locals 0

    .line 2
    iget-object p2, p0, Lu2/N;->a:Lu2/x;

    invoke-virtual {p2, p1}, Lu2/x;->handles(Ljava/io/InputStream;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic handles(Ljava/lang/Object;Ll2/q;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2}, Lu2/N;->handles(Ljava/io/InputStream;Ll2/q;)Z

    move-result p1

    return p1
.end method
