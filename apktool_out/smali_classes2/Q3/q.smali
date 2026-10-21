.class public abstract LQ3/q;
.super LQ3/r;
.source "SourceFile"


# instance fields
.field public a:[Ljava/lang/Object;

.field public b:I

.field public c:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "initialCapacity"

    .line 5
    .line 6
    invoke-static {p1, v0}, LV3/r;->b(ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-array p1, p1, [Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p1, p0, LQ3/q;->a:[Ljava/lang/Object;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput p1, p0, LQ3/q;->b:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)LQ3/q;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "LQ3/q;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, LQ3/q;->b(I)V

    .line 3
    iget-object v0, p0, LQ3/q;->a:[Ljava/lang/Object;

    iget v1, p0, LQ3/q;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, LQ3/q;->b:I

    aput-object p1, v0, v1

    return-object p0
.end method

.method public varargs add([Ljava/lang/Object;)LQ3/r;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "LQ3/r;"
        }
    .end annotation

    .line 4
    array-length v0, p1

    .line 5
    invoke-static {v0, p1}, LQ3/h0;->a(I[Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0, v0}, LQ3/q;->b(I)V

    .line 7
    iget-object v1, p0, LQ3/q;->a:[Ljava/lang/Object;

    iget v2, p0, LQ3/q;->b:I

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget p1, p0, LQ3/q;->b:I

    add-int/2addr p1, v0

    iput p1, p0, LQ3/q;->b:I

    return-object p0
.end method

.method public addAll(Ljava/lang/Iterable;)LQ3/r;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;)",
            "LQ3/r;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/util/Collection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Ljava/util/Collection;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {p0, v1}, LQ3/q;->b(I)V

    .line 13
    .line 14
    .line 15
    instance-of v1, v0, Lcom/google/common/collect/ImmutableCollection;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    check-cast v0, Lcom/google/common/collect/ImmutableCollection;

    .line 20
    .line 21
    iget-object p1, p0, LQ3/q;->a:[Ljava/lang/Object;

    .line 22
    .line 23
    iget v1, p0, LQ3/q;->b:I

    .line 24
    .line 25
    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/ImmutableCollection;->a(I[Ljava/lang/Object;)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iput p1, p0, LQ3/q;->b:I

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_0
    invoke-super {p0, p1}, LQ3/r;->addAll(Ljava/lang/Iterable;)LQ3/r;

    .line 33
    .line 34
    .line 35
    return-object p0
.end method

.method public final b(I)V
    .locals 3

    .line 1
    iget-object v0, p0, LQ3/q;->a:[Ljava/lang/Object;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    iget v2, p0, LQ3/q;->b:I

    .line 5
    .line 6
    add-int/2addr v2, p1

    .line 7
    invoke-static {v1, v2}, LQ3/r;->a(II)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    array-length v0, v0

    .line 12
    if-gt p1, v0, :cond_1

    .line 13
    .line 14
    iget-boolean v0, p0, LQ3/q;->c:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void

    .line 20
    :cond_1
    :goto_0
    iget-object v0, p0, LQ3/q;->a:[Ljava/lang/Object;

    .line 21
    .line 22
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, LQ3/q;->a:[Ljava/lang/Object;

    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, LQ3/q;->c:Z

    .line 30
    .line 31
    return-void
.end method
