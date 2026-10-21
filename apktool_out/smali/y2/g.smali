.class public final Ly2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll2/t;


# instance fields
.field public final b:Ll2/t;


# direct methods
.method public constructor <init>(Ll2/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll2/t;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, LG2/r;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Ll2/t;

    .line 9
    .line 10
    iput-object p1, p0, Ly2/g;->b:Ll2/t;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Ly2/g;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ly2/g;

    .line 6
    .line 7
    iget-object v0, p0, Ly2/g;->b:Ll2/t;

    .line 8
    .line 9
    iget-object p1, p1, Ly2/g;->b:Ll2/t;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Ly2/g;->b:Ll2/t;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public transform(Landroid/content/Context;Ln2/M;II)Ln2/M;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ln2/M;",
            "II)",
            "Ln2/M;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ln2/M;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ly2/d;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/bumptech/glide/c;->get(Landroid/content/Context;)Lcom/bumptech/glide/c;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/bumptech/glide/c;->getBitmapPool()Lo2/d;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0}, Ly2/d;->getFirstFrame()Landroid/graphics/Bitmap;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v3, Lu2/e;

    .line 20
    .line 21
    invoke-direct {v3, v2, v1}, Lu2/e;-><init>(Landroid/graphics/Bitmap;Lo2/d;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Ly2/g;->b:Ll2/t;

    .line 25
    .line 26
    invoke-interface {v1, p1, v3, p3, p4}, Ll2/t;->transform(Landroid/content/Context;Ln2/M;II)Ln2/M;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    if-nez p3, :cond_0

    .line 35
    .line 36
    invoke-interface {v3}, Ln2/M;->recycle()V

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-interface {p1}, Ln2/M;->get()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Landroid/graphics/Bitmap;

    .line 44
    .line 45
    invoke-virtual {v0, v1, p1}, Ly2/d;->setFrameTransformation(Ll2/t;Landroid/graphics/Bitmap;)V

    .line 46
    .line 47
    .line 48
    return-object p2
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ly2/g;->b:Ll2/t;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ll2/m;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
