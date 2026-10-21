.class public final Lx2/a;
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
.method public decode(Ljava/io/File;IILl2/q;)Ln2/M;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "II",
            "Ll2/q;",
            ")",
            "Ln2/M;"
        }
    .end annotation

    .line 2
    new-instance p2, Lx2/b;

    invoke-direct {p2, p1}, Lx2/b;-><init>(Ljava/io/File;)V

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
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3, p4}, Lx2/a;->decode(Ljava/io/File;IILl2/q;)Ln2/M;

    move-result-object p1

    return-object p1
.end method

.method public handles(Ljava/io/File;Ll2/q;)Z
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
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lx2/a;->handles(Ljava/io/File;Ll2/q;)Z

    move-result p1

    return p1
.end method
