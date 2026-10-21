.class public final Ll2/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll2/m;


# instance fields
.field public final b:LG2/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, LG2/d;

    .line 5
    .line 6
    invoke-direct {v0}, LG2/d;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ll2/q;->b:LG2/d;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Ll2/q;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ll2/q;

    .line 6
    .line 7
    iget-object v0, p0, Ll2/q;->b:LG2/d;

    .line 8
    .line 9
    iget-object p1, p1, Ll2/q;->b:LG2/d;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lp/q;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method public get(Ll2/p;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll2/p;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ll2/q;->b:LG2/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lp/g;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lp/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-virtual {p1}, Ll2/p;->getDefaultValue()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Ll2/q;->b:LG2/d;

    .line 2
    .line 3
    invoke-virtual {v0}, LG2/d;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public putAll(Ll2/q;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ll2/q;->b:LG2/d;

    .line 2
    .line 3
    iget-object p1, p1, Ll2/q;->b:LG2/d;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, LG2/d;->putAll(Lp/q;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public remove(Ll2/p;)Ll2/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll2/p;",
            ")",
            "Ll2/q;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ll2/q;->b:LG2/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lp/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public set(Ll2/p;Ljava/lang/Object;)Ll2/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll2/p;",
            "TT;)",
            "Ll2/q;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ll2/q;->b:LG2/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, LG2/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Options{values="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Ll2/q;->b:LG2/d;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x7d

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Ll2/q;->b:LG2/d;

    .line 3
    .line 4
    invoke-virtual {v1}, Lp/q;->size()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-ge v0, v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Lp/q;->keyAt(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Ll2/p;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Lp/q;->valueAt(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v2, v1, p1}, Ll2/p;->update(Ljava/lang/Object;Ljava/security/MessageDigest;)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method
