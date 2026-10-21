.class public final Lu2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll2/s;


# instance fields
.field public final a:Lo2/d;

.field public final b:Ll2/s;


# direct methods
.method public constructor <init>(Lo2/d;Ll2/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo2/d;",
            "Ll2/s;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lu2/b;->a:Lo2/d;

    .line 5
    .line 6
    iput-object p2, p0, Lu2/b;->b:Ll2/s;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public bridge synthetic encode(Ljava/lang/Object;Ljava/io/File;Ll2/q;)Z
    .locals 0

    .line 1
    check-cast p1, Ln2/M;

    invoke-virtual {p0, p1, p2, p3}, Lu2/b;->encode(Ln2/M;Ljava/io/File;Ll2/q;)Z

    move-result p1

    return p1
.end method

.method public encode(Ln2/M;Ljava/io/File;Ll2/q;)Z
    .locals 2
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
    new-instance v0, Lu2/e;

    invoke-interface {p1}, Ln2/M;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v1, p0, Lu2/b;->a:Lo2/d;

    invoke-direct {v0, p1, v1}, Lu2/e;-><init>(Landroid/graphics/Bitmap;Lo2/d;)V

    iget-object p1, p0, Lu2/b;->b:Ll2/s;

    invoke-interface {p1, v0, p2, p3}, Ll2/a;->encode(Ljava/lang/Object;Ljava/io/File;Ll2/q;)Z

    move-result p1

    return p1
.end method

.method public getEncodeStrategy(Ll2/q;)Lcom/bumptech/glide/load/EncodeStrategy;
    .locals 1

    .line 1
    iget-object v0, p0, Lu2/b;->b:Ll2/s;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ll2/s;->getEncodeStrategy(Ll2/q;)Lcom/bumptech/glide/load/EncodeStrategy;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
