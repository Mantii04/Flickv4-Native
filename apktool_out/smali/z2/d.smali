.class public final Lz2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz2/e;


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
.method public transcode(Ln2/M;Ll2/q;)Ln2/M;
    .locals 0
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
    move-result-object p1

    .line 5
    check-cast p1, Ly2/d;

    .line 6
    .line 7
    invoke-virtual {p1}, Ly2/d;->getBuffer()Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    new-instance p2, Lv2/c;

    .line 12
    .line 13
    invoke-static {p1}, LG2/c;->toBytes(Ljava/nio/ByteBuffer;)[B

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-direct {p2, p1}, Lv2/c;-><init>([B)V

    .line 18
    .line 19
    .line 20
    return-object p2
.end method
