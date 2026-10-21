.class public final Lm4/t;
.super Landroid/util/LruCache;
.source "SourceFile"


# virtual methods
.method public bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lm4/u;

    invoke-virtual {p0, p1, p2}, Lm4/t;->sizeOf(Ljava/lang/String;Lm4/u;)I

    move-result p1

    return p1
.end method

.method public sizeOf(Ljava/lang/String;Lm4/u;)I
    .locals 0

    .line 2
    iget p1, p2, Lm4/u;->b:I

    return p1
.end method
