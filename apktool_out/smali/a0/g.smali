.class public final La0/g;
.super Landroidx/datastore/preferences/protobuf/D;
.source "SourceFile"


# virtual methods
.method public addAllStrings(Ljava/lang/Iterable;)La0/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "La0/g;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/D;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/D;->e:Landroidx/datastore/preferences/protobuf/F;

    .line 5
    .line 6
    check-cast v0, La0/h;

    .line 7
    .line 8
    invoke-static {v0, p1}, La0/h;->e(La0/h;Ljava/lang/Iterable;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method
