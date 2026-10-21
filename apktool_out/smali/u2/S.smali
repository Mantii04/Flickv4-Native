.class public final Lu2/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll2/r;


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
.method public decode(Landroid/graphics/Bitmap;IILl2/q;)Ln2/M;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "II",
            "Ll2/q;",
            ")",
            "Ln2/M;"
        }
    .end annotation

    .line 2
    new-instance p2, Lu2/Q;

    invoke-direct {p2, p1}, Lu2/Q;-><init>(Landroid/graphics/Bitmap;)V

    return-object p2
.end method

.method public bridge synthetic decode(Ljava/lang/Object;IILl2/q;)Ln2/M;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, p3, p4}, Lu2/S;->decode(Landroid/graphics/Bitmap;IILl2/q;)Ln2/M;

    move-result-object p1

    return-object p1
.end method

.method public handles(Landroid/graphics/Bitmap;Ll2/q;)Z
    .locals 0

    .line 2
    const/4 p1, 0x1

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
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lu2/S;->handles(Landroid/graphics/Bitmap;Ll2/q;)Z

    move-result p1

    return p1
.end method
