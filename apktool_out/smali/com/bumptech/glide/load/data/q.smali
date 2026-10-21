.class public final Lcom/bumptech/glide/load/data/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/data/g;


# instance fields
.field public final a:Lcom/bumptech/glide/load/resource/bitmap/a;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lo2/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/a;

    .line 5
    .line 6
    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/a;-><init>(Ljava/io/InputStream;Lo2/b;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bumptech/glide/load/data/q;->a:Lcom/bumptech/glide/load/resource/bitmap/a;

    .line 10
    .line 11
    const/high16 p1, 0x500000

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/resource/bitmap/a;->mark(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/data/q;->a:Lcom/bumptech/glide/load/resource/bitmap/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/a;->release()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public fixMarkLimits()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/data/q;->a:Lcom/bumptech/glide/load/resource/bitmap/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/a;->fixMarkLimit()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public rewindAndGet()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/data/q;->a:Lcom/bumptech/glide/load/resource/bitmap/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/a;->reset()V

    return-object v0
.end method

.method public bridge synthetic rewindAndGet()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/load/data/q;->rewindAndGet()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
