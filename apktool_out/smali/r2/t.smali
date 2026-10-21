.class public final Lr2/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr2/V;


# instance fields
.field public final a:Lr2/p;


# direct methods
.method public constructor <init>(Lr2/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr2/p;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lr2/t;->a:Lr2/p;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public buildLoadData(Ljava/lang/Object;IILl2/q;)Lr2/U;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "II",
            "Ll2/q;",
            ")",
            "Lr2/U;"
        }
    .end annotation

    .line 1
    new-instance p2, Lr2/U;

    .line 2
    .line 3
    new-instance p3, LF2/d;

    .line 4
    .line 5
    invoke-direct {p3, p1}, LF2/d;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    new-instance p4, Lr2/q;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object v0, p0, Lr2/t;->a:Lr2/p;

    .line 15
    .line 16
    invoke-direct {p4, p1, v0}, Lr2/q;-><init>(Ljava/lang/String;Lr2/p;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p2, p3, p4}, Lr2/U;-><init>(Ll2/m;Lcom/bumptech/glide/load/data/e;)V

    .line 20
    .line 21
    .line 22
    return-object p2
.end method

.method public handles(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "data:image"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method
