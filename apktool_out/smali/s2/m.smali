.class public final Ls2/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr2/V;


# instance fields
.field public final a:Lr2/V;


# direct methods
.method public constructor <init>(Lr2/V;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr2/V;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ls2/m;->a:Lr2/V;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic buildLoadData(Ljava/lang/Object;IILl2/q;)Lr2/U;
    .locals 0

    .line 1
    check-cast p1, Ljava/net/URL;

    invoke-virtual {p0, p1, p2, p3, p4}, Ls2/m;->buildLoadData(Ljava/net/URL;IILl2/q;)Lr2/U;

    move-result-object p1

    return-object p1
.end method

.method public buildLoadData(Ljava/net/URL;IILl2/q;)Lr2/U;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "II",
            "Ll2/q;",
            ")",
            "Lr2/U;"
        }
    .end annotation

    .line 2
    new-instance v0, Lr2/I;

    invoke-direct {v0, p1}, Lr2/I;-><init>(Ljava/net/URL;)V

    iget-object p1, p0, Ls2/m;->a:Lr2/V;

    invoke-interface {p1, v0, p2, p3, p4}, Lr2/V;->buildLoadData(Ljava/lang/Object;IILl2/q;)Lr2/U;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic handles(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/net/URL;

    invoke-virtual {p0, p1}, Ls2/m;->handles(Ljava/net/URL;)Z

    move-result p1

    return p1
.end method

.method public handles(Ljava/net/URL;)Z
    .locals 0

    .line 2
    const/4 p1, 0x1

    return p1
.end method
