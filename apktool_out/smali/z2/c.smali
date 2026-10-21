.class public final Lz2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz2/e;


# instance fields
.field public final a:Lo2/d;

.field public final b:Lz2/e;

.field public final c:Lz2/e;


# direct methods
.method public constructor <init>(Lo2/d;Lz2/e;Lz2/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo2/d;",
            "Lz2/e;",
            "Lz2/e;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lz2/c;->a:Lo2/d;

    .line 5
    .line 6
    iput-object p2, p0, Lz2/c;->b:Lz2/e;

    .line 7
    .line 8
    iput-object p3, p0, Lz2/c;->c:Lz2/e;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public transcode(Ln2/M;Ll2/q;)Ln2/M;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln2/M;",
            "Ll2/q;",
            ")",
            "Ln2/M;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ln2/M;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lz2/c;->a:Lo2/d;

    .line 18
    .line 19
    invoke-static {p1, v0}, Lu2/e;->obtain(Landroid/graphics/Bitmap;Lo2/d;)Lu2/e;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object v0, p0, Lz2/c;->b:Lz2/e;

    .line 24
    .line 25
    invoke-interface {v0, p1, p2}, Lz2/e;->transcode(Ln2/M;Ll2/q;)Ln2/M;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    :cond_0
    instance-of v0, v0, Ly2/d;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lz2/c;->c:Lz2/e;

    .line 35
    .line 36
    invoke-interface {v0, p1, p2}, Lz2/e;->transcode(Ln2/M;Ll2/q;)Ln2/M;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1

    .line 41
    :cond_1
    const/4 p1, 0x0

    .line 42
    return-object p1
.end method
