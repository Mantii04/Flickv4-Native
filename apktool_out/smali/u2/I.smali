.class public final Lu2/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll2/r;


# instance fields
.field public final a:Lu2/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lu2/d;

    .line 5
    .line 6
    invoke-direct {v0}, Lu2/d;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lu2/I;->a:Lu2/d;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public decode(Ljava/io/InputStream;IILl2/q;)Ln2/M;
    .locals 1
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
    invoke-static {p1}, LG2/c;->fromStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/common/a;->g(Ljava/nio/ByteBuffer;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lu2/I;->a:Lu2/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lu2/d;->decode(Landroid/graphics/ImageDecoder$Source;IILl2/q;)Ln2/M;

    move-result-object p1

    return-object p1
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

    invoke-virtual {p0, p1, p2, p3, p4}, Lu2/I;->decode(Ljava/io/InputStream;IILl2/q;)Ln2/M;

    move-result-object p1

    return-object p1
.end method

.method public handles(Ljava/io/InputStream;Ll2/q;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2}, Lu2/I;->handles(Ljava/io/InputStream;Ll2/q;)Z

    move-result p1

    return p1
.end method
