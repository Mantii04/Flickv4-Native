.class public abstract Landroidx/datastore/preferences/protobuf/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/a0;


# instance fields
.field protected memoizedHashCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/datastore/preferences/protobuf/b;->memoizedHashCode:I

    .line 6
    .line 7
    return-void
.end method

.method public static addAll(Ljava/lang/Iterable;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/util/List<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Landroidx/datastore/preferences/protobuf/a;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Landroidx/datastore/preferences/protobuf/l0;)I
    .locals 3

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Landroidx/datastore/preferences/protobuf/F;

    .line 3
    .line 4
    iget v1, v0, Landroidx/datastore/preferences/protobuf/F;->memoizedSerializedSize:I

    .line 5
    .line 6
    const/4 v2, -0x1

    .line 7
    if-ne v1, v2, :cond_0

    .line 8
    .line 9
    invoke-interface {p1, p0}, Landroidx/datastore/preferences/protobuf/l0;->getSerializedSize(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iput p1, v0, Landroidx/datastore/preferences/protobuf/F;->memoizedSerializedSize:I

    .line 14
    .line 15
    return p1

    .line 16
    :cond_0
    return v1
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Landroidx/datastore/preferences/protobuf/F;

    .line 3
    .line 4
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/F;->getSerializedSize()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    sget-object v2, Landroidx/datastore/preferences/protobuf/s;->b:Ljava/util/logging/Logger;

    .line 9
    .line 10
    const/16 v2, 0x1000

    .line 11
    .line 12
    if-le v1, v2, :cond_0

    .line 13
    .line 14
    move v1, v2

    .line 15
    :cond_0
    invoke-static {p1, v1}, Landroidx/datastore/preferences/protobuf/s;->newInstance(Ljava/io/OutputStream;I)Landroidx/datastore/preferences/protobuf/s;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/F;->writeTo(Landroidx/datastore/preferences/protobuf/s;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/s;->flush()V

    .line 23
    .line 24
    .line 25
    return-void
.end method
