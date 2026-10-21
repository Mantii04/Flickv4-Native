.class public final Lkotlin/text/MatcherMatchResult$groups$1;
.super Lkotlin/collections/AbstractCollection;
.source "SourceFile"


# instance fields
.field public final synthetic b:LP5/i;


# direct methods
.method public constructor <init>(LP5/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkotlin/text/MatcherMatchResult$groups$1;->b:LP5/i;

    .line 2
    .line 3
    invoke-direct {p0}, Lkotlin/collections/AbstractCollection;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge contains(LP5/f;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lkotlin/collections/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, p1, LP5/f;

    :goto_0
    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, LP5/f;

    invoke-virtual {p0, p1}, Lkotlin/text/MatcherMatchResult$groups$1;->contains(LP5/f;)Z

    move-result p1

    return p1
.end method

.method public get(I)LP5/f;
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/text/MatcherMatchResult$groups$1;->b:LP5/i;

    .line 2
    .line 3
    invoke-static {v0}, LP5/i;->access$getMatchResult(LP5/i;)Ljava/util/regex/MatchResult;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1, p1}, LP5/k;->access$range(Ljava/util/regex/MatchResult;I)LM5/e;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, LM5/e;->getStart()Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-ltz v2, :cond_0

    .line 20
    .line 21
    new-instance v2, LP5/f;

    .line 22
    .line 23
    invoke-static {v0}, LP5/i;->access$getMatchResult(LP5/i;)Ljava/util/regex/MatchResult;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0, p1}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v0, "group(...)"

    .line 32
    .line 33
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {v2, p1, v1}, LP5/f;-><init>(Ljava/lang/String;LM5/e;)V

    .line 37
    .line 38
    .line 39
    return-object v2

    .line 40
    :cond_0
    const/4 p1, 0x0

    .line 41
    return-object p1
.end method

.method public getSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/text/MatcherMatchResult$groups$1;->b:LP5/i;

    .line 2
    .line 3
    invoke-static {v0}, LP5/i;->access$getMatchResult(LP5/i;)Ljava/util/regex/MatchResult;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/regex/MatchResult;->groupCount()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    add-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "LP5/f;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lv5/p;->getIndices(Ljava/util/Collection;)LM5/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lv5/u;->asSequence(Ljava/lang/Iterable;)LO5/d;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lkotlin/text/MatcherMatchResult$groups$1$iterator$1;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lkotlin/text/MatcherMatchResult$groups$1$iterator$1;-><init>(Lkotlin/text/MatcherMatchResult$groups$1;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, LO5/l;->map(LO5/d;LH5/l;)LO5/d;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, LO5/d;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method
