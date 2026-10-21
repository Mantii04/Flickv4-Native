.class public final Lr2/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr2/V;


# instance fields
.field public final a:Lr2/E;


# direct methods
.method public constructor <init>(Lr2/E;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr2/E;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lr2/H;->a:Lr2/E;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public buildLoadData(Ljava/io/File;IILl2/q;)Lr2/U;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "II",
            "Ll2/q;",
            ")",
            "Lr2/U;"
        }
    .end annotation

    .line 2
    new-instance p2, Lr2/U;

    new-instance p3, LF2/d;

    invoke-direct {p3, p1}, LF2/d;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lr2/D;

    iget-object v0, p0, Lr2/H;->a:Lr2/E;

    invoke-direct {p4, p1, v0}, Lr2/D;-><init>(Ljava/io/File;Lr2/E;)V

    invoke-direct {p2, p3, p4}, Lr2/U;-><init>(Ll2/m;Lcom/bumptech/glide/load/data/e;)V

    return-object p2
.end method

.method public bridge synthetic buildLoadData(Ljava/lang/Object;IILl2/q;)Lr2/U;
    .locals 0

    .line 1
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3, p4}, Lr2/H;->buildLoadData(Ljava/io/File;IILl2/q;)Lr2/U;

    move-result-object p1

    return-object p1
.end method

.method public handles(Ljava/io/File;)Z
    .locals 0

    .line 2
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic handles(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lr2/H;->handles(Ljava/io/File;)Z

    move-result p1

    return p1
.end method
