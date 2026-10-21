.class public final Ly2/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll2/r;


# instance fields
.field public final a:Lo2/d;


# direct methods
.method public constructor <init>(Lo2/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly2/l;->a:Lo2/d;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Ljava/lang/Object;IILl2/q;)Ln2/M;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lk2/b;

    invoke-virtual {p0, p1, p2, p3, p4}, Ly2/l;->decode(Lk2/b;IILl2/q;)Ln2/M;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lk2/b;IILl2/q;)Ln2/M;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk2/b;",
            "II",
            "Ll2/q;",
            ")",
            "Ln2/M;"
        }
    .end annotation

    .line 2
    check-cast p1, Lk2/f;

    invoke-virtual {p1}, Lk2/f;->getNextFrame()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 3
    iget-object p2, p0, Ly2/l;->a:Lo2/d;

    invoke-static {p1, p2}, Lu2/e;->obtain(Landroid/graphics/Bitmap;Lo2/d;)Lu2/e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic handles(Ljava/lang/Object;Ll2/q;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lk2/b;

    invoke-virtual {p0, p1, p2}, Ly2/l;->handles(Lk2/b;Ll2/q;)Z

    move-result p1

    return p1
.end method

.method public handles(Lk2/b;Ll2/q;)Z
    .locals 0

    .line 2
    const/4 p1, 0x1

    return p1
.end method
