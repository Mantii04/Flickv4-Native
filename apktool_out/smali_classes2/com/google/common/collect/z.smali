.class public Lcom/google/common/collect/z;
.super LQ3/q;
.source "SourceFile"


# instance fields
.field public d:[Ljava/lang/Object;

.field public e:I


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
    invoke-virtual {p0, p1}, Lcom/google/common/collect/z;->add(Ljava/lang/Object;)Lcom/google/common/collect/z;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/Object;)Lcom/google/common/collect/z;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/z;"
        }
    .end annotation

    .line 2
    invoke-static {p1}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/z;->d:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget v0, p0, LQ3/q;->b:I

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->e(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/z;->d:[Ljava/lang/Object;

    array-length v2, v1

    if-gt v0, v2, :cond_2

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/google/common/collect/z;->d:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 7
    invoke-static {v1}, La/c;->d(I)I

    move-result v2

    :goto_0
    and-int/2addr v2, v0

    .line 8
    iget-object v3, p0, Lcom/google/common/collect/z;->d:[Ljava/lang/Object;

    aget-object v4, v3, v2

    if-nez v4, :cond_0

    .line 9
    aput-object p1, v3, v2

    .line 10
    iget v0, p0, Lcom/google/common/collect/z;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/collect/z;->e:I

    .line 11
    invoke-virtual {p0, p1}, LQ3/q;->add(Ljava/lang/Object;)LQ3/q;

    return-object p0

    .line 12
    :cond_0
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/google/common/collect/z;->d:[Ljava/lang/Object;

    .line 14
    invoke-virtual {p0, p1}, LQ3/q;->add(Ljava/lang/Object;)LQ3/q;

    return-object p0
.end method

.method public varargs add([Ljava/lang/Object;)Lcom/google/common/collect/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/z;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/google/common/collect/z;->d:[Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 16
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 17
    invoke-virtual {p0, v2}, Lcom/google/common/collect/z;->add(Ljava/lang/Object;)Lcom/google/common/collect/z;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0

    .line 18
    :cond_1
    invoke-virtual {p0, p1}, LQ3/q;->add([Ljava/lang/Object;)LQ3/r;

    return-object p0
.end method

.method public addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/common/collect/z;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/common/collect/z;->d:[Ljava/lang/Object;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0, v0}, Lcom/google/common/collect/z;->add(Ljava/lang/Object;)Lcom/google/common/collect/z;

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-object p0

    .line 27
    :cond_1
    invoke-virtual {p0, p1}, LQ3/q;->addAll(Ljava/lang/Iterable;)LQ3/r;

    .line 28
    .line 29
    .line 30
    return-object p0
.end method

.method public build()Lcom/google/common/collect/ImmutableSet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget v0, p0, LQ3/q;->b:I

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_2

    .line 7
    .line 8
    iget-object v2, p0, Lcom/google/common/collect/z;->d:[Ljava/lang/Object;

    .line 9
    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->e(I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v2, p0, Lcom/google/common/collect/z;->d:[Ljava/lang/Object;

    .line 17
    .line 18
    array-length v2, v2

    .line 19
    if-ne v0, v2, :cond_1

    .line 20
    .line 21
    iget v0, p0, LQ3/q;->b:I

    .line 22
    .line 23
    iget-object v2, p0, LQ3/q;->a:[Ljava/lang/Object;

    .line 24
    .line 25
    array-length v3, v2

    .line 26
    shr-int/lit8 v4, v3, 0x1

    .line 27
    .line 28
    shr-int/lit8 v3, v3, 0x2

    .line 29
    .line 30
    add-int/2addr v4, v3

    .line 31
    if-ge v0, v4, :cond_0

    .line 32
    .line 33
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    :cond_0
    move-object v4, v2

    .line 38
    new-instance v3, Lcom/google/common/collect/RegularImmutableSet;

    .line 39
    .line 40
    iget v5, p0, Lcom/google/common/collect/z;->e:I

    .line 41
    .line 42
    iget-object v6, p0, Lcom/google/common/collect/z;->d:[Ljava/lang/Object;

    .line 43
    .line 44
    array-length v0, v6

    .line 45
    add-int/lit8 v7, v0, -0x1

    .line 46
    .line 47
    iget v8, p0, LQ3/q;->b:I

    .line 48
    .line 49
    invoke-direct/range {v3 .. v8}, Lcom/google/common/collect/RegularImmutableSet;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget v0, p0, LQ3/q;->b:I

    .line 54
    .line 55
    iget-object v2, p0, LQ3/q;->a:[Ljava/lang/Object;

    .line 56
    .line 57
    invoke-static {v0, v2}, Lcom/google/common/collect/ImmutableSet;->f(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    iput v0, p0, LQ3/q;->b:I

    .line 66
    .line 67
    :goto_0
    iput-boolean v1, p0, LQ3/q;->c:Z

    .line 68
    .line 69
    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/google/common/collect/z;->d:[Ljava/lang/Object;

    .line 71
    .line 72
    return-object v3

    .line 73
    :cond_2
    iget-object v0, p0, LQ3/q;->a:[Ljava/lang/Object;

    .line 74
    .line 75
    const/4 v1, 0x0

    .line 76
    aget-object v0, v0, v1

    .line 77
    .line 78
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    return-object v0

    .line 86
    :cond_3
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    return-object v0
.end method
