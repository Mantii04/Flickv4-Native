.class public final Ls0/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/common/collect/ImmutableList;

.field public final b:Ls0/l;

.field public final c:Ls0/n;

.field public final d:Ls0/r;


# direct methods
.method public constructor <init>(Ls0/j;Ljava/util/List;Ls0/l;Ls0/n;Ls0/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls0/j;",
            "Ljava/util/List<",
            "Ls0/i;",
            ">;",
            "Ls0/l;",
            "Ls0/n;",
            "Ls0/r;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :goto_0
    iput-object p1, p0, Ls0/s;->a:Lcom/google/common/collect/ImmutableList;

    .line 16
    .line 17
    iput-object p3, p0, Ls0/s;->b:Ls0/l;

    .line 18
    .line 19
    iput-object p4, p0, Ls0/s;->c:Ls0/n;

    .line 20
    .line 21
    iput-object p5, p0, Ls0/s;->d:Ls0/r;

    .line 22
    .line 23
    return-void
.end method
