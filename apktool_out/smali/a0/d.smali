.class public final La0/d;
.super Landroidx/datastore/preferences/protobuf/D;
.source "SourceFile"


# virtual methods
.method public putPreferences(Ljava/lang/String;La0/j;)La0/d;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/D;->copyOnWrite()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/D;->e:Landroidx/datastore/preferences/protobuf/F;

    .line 11
    .line 12
    check-cast v0, La0/f;

    .line 13
    .line 14
    invoke-static {v0}, La0/f;->e(La0/f;)Landroidx/datastore/preferences/protobuf/MapFieldLite;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-object p0
.end method
