.class public final LQ3/s;
.super LQ3/q;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, v0}, LQ3/q;-><init>(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)LQ3/r;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LQ3/s;->add(Ljava/lang/Object;)LQ3/s;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/Object;)LQ3/s;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "LQ3/s;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, LQ3/q;->add(Ljava/lang/Object;)LQ3/q;

    return-object p0
.end method

.method public varargs add([Ljava/lang/Object;)LQ3/s;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "LQ3/s;"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, LQ3/q;->add([Ljava/lang/Object;)LQ3/r;

    return-object p0
.end method

.method public addAll(Ljava/lang/Iterable;)LQ3/s;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;)",
            "LQ3/s;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, LQ3/q;->addAll(Ljava/lang/Iterable;)LQ3/r;

    return-object p0
.end method

.method public addAll(Ljava/util/Iterator;)LQ3/s;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;)",
            "LQ3/s;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, LQ3/r;->addAll(Ljava/util/Iterator;)LQ3/r;

    return-object p0
.end method

.method public build()Lcom/google/common/collect/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LQ3/q;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, LQ3/q;->a:[Ljava/lang/Object;

    .line 5
    .line 6
    iget v1, p0, LQ3/q;->b:I

    .line 7
    .line 8
    invoke-static {v1, v0}, Lcom/google/common/collect/ImmutableList;->e(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method
