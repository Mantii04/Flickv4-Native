.class public final Lu2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll2/r;


# instance fields
.field public final a:Lu2/x;


# direct methods
.method public constructor <init>(Lu2/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lu2/g;->a:Lu2/x;

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
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lu2/g;->decode(Ljava/nio/ByteBuffer;IILl2/q;)Ln2/M;

    move-result-object p1

    return-object p1
.end method

.method public decode(Ljava/nio/ByteBuffer;IILl2/q;)Ln2/M;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
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
    iget-object v0, p0, Lu2/g;->a:Lu2/x;

    invoke-virtual {v0, p1, p2, p3, p4}, Lu2/x;->decode(Ljava/nio/ByteBuffer;IILl2/q;)Ln2/M;

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
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2}, Lu2/g;->handles(Ljava/nio/ByteBuffer;Ll2/q;)Z

    move-result p1

    return p1
.end method

.method public handles(Ljava/nio/ByteBuffer;Ll2/q;)Z
    .locals 0

    .line 2
    iget-object p2, p0, Lu2/g;->a:Lu2/x;

    invoke-virtual {p2, p1}, Lu2/x;->handles(Ljava/nio/ByteBuffer;)Z

    move-result p1

    return p1
.end method
