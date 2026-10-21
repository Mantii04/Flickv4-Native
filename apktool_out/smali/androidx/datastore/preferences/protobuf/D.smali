.class public abstract Landroidx/datastore/preferences/protobuf/D;
.super Landroidx/datastore/preferences/protobuf/a;
.source "SourceFile"


# instance fields
.field public final b:Landroidx/datastore/preferences/protobuf/F;

.field public e:Landroidx/datastore/preferences/protobuf/F;

.field public f:Z


# direct methods
.method public constructor <init>(Landroidx/datastore/preferences/protobuf/F;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/preferences/protobuf/F;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/a;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/D;->b:Landroidx/datastore/preferences/protobuf/F;

    .line 5
    .line 6
    sget-object v0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$MethodToInvoke;->j:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$MethodToInvoke;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroidx/datastore/preferences/protobuf/F;->dynamicMethod(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Landroidx/datastore/preferences/protobuf/F;

    .line 13
    .line 14
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/D;->e:Landroidx/datastore/preferences/protobuf/F;

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Landroidx/datastore/preferences/protobuf/D;->f:Z

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final build()Landroidx/datastore/preferences/protobuf/F;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/protobuf/F;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/D;->buildPartial()Landroidx/datastore/preferences/protobuf/F;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/F;->isInitialized()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/a;->newUninitializedMessageException(Landroidx/datastore/preferences/protobuf/a0;)Landroidx/datastore/preferences/protobuf/UninitializedMessageException;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    throw v0
.end method

.method public buildPartial()Landroidx/datastore/preferences/protobuf/F;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/protobuf/F;"
        }
    .end annotation

    .line 2
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/D;->f:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/D;->e:Landroidx/datastore/preferences/protobuf/F;

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/D;->e:Landroidx/datastore/preferences/protobuf/F;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/F;->makeImmutable()V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/datastore/preferences/protobuf/D;->f:Z

    .line 6
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/D;->e:Landroidx/datastore/preferences/protobuf/F;

    return-object v0
.end method

.method public bridge synthetic buildPartial()Landroidx/datastore/preferences/protobuf/a0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/D;->buildPartial()Landroidx/datastore/preferences/protobuf/F;

    move-result-object v0

    return-object v0
.end method

.method public clone()Landroidx/datastore/preferences/protobuf/D;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/protobuf/D;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/D;->getDefaultInstanceForType()Landroidx/datastore/preferences/protobuf/F;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/F;->newBuilderForType()Landroidx/datastore/preferences/protobuf/D;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/D;->buildPartial()Landroidx/datastore/preferences/protobuf/F;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/D;->mergeFrom(Landroidx/datastore/preferences/protobuf/F;)Landroidx/datastore/preferences/protobuf/D;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/D;->clone()Landroidx/datastore/preferences/protobuf/D;

    move-result-object v0

    return-object v0
.end method

.method public copyOnWrite()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/D;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/D;->e:Landroidx/datastore/preferences/protobuf/F;

    .line 6
    .line 7
    sget-object v1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$MethodToInvoke;->j:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$MethodToInvoke;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/F;->dynamicMethod(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroidx/datastore/preferences/protobuf/F;

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/D;->e:Landroidx/datastore/preferences/protobuf/F;

    .line 16
    .line 17
    invoke-static {}, Landroidx/datastore/preferences/protobuf/h0;->getInstance()Landroidx/datastore/preferences/protobuf/h0;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2, v0}, Landroidx/datastore/preferences/protobuf/h0;->schemaFor(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/l0;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-interface {v2, v0, v1}, Landroidx/datastore/preferences/protobuf/l0;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/D;->e:Landroidx/datastore/preferences/protobuf/F;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Landroidx/datastore/preferences/protobuf/D;->f:Z

    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public getDefaultInstanceForType()Landroidx/datastore/preferences/protobuf/F;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/protobuf/F;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/D;->b:Landroidx/datastore/preferences/protobuf/F;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Landroidx/datastore/preferences/protobuf/a0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/D;->getDefaultInstanceForType()Landroidx/datastore/preferences/protobuf/F;

    move-result-object v0

    return-object v0
.end method

.method public internalMergeFrom(Landroidx/datastore/preferences/protobuf/F;)Landroidx/datastore/preferences/protobuf/D;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/preferences/protobuf/F;",
            ")",
            "Landroidx/datastore/preferences/protobuf/D;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/D;->mergeFrom(Landroidx/datastore/preferences/protobuf/F;)Landroidx/datastore/preferences/protobuf/D;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic internalMergeFrom(Landroidx/datastore/preferences/protobuf/b;)Landroidx/datastore/preferences/protobuf/a;
    .locals 0

    .line 1
    check-cast p1, Landroidx/datastore/preferences/protobuf/F;

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/D;->internalMergeFrom(Landroidx/datastore/preferences/protobuf/F;)Landroidx/datastore/preferences/protobuf/D;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Landroidx/datastore/preferences/protobuf/F;)Landroidx/datastore/preferences/protobuf/D;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/preferences/protobuf/F;",
            ")",
            "Landroidx/datastore/preferences/protobuf/D;"
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
    invoke-static {}, Landroidx/datastore/preferences/protobuf/h0;->getInstance()Landroidx/datastore/preferences/protobuf/h0;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1, v0}, Landroidx/datastore/preferences/protobuf/h0;->schemaFor(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/l0;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1, v0, p1}, Landroidx/datastore/preferences/protobuf/l0;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-object p0
.end method
