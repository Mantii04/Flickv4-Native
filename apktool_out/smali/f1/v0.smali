.class public final Lf1/v0;
.super Lf1/C;
.source "SourceFile"

# interfaces
.implements Lf1/r0;


# instance fields
.field public final f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Z

.field public j:I

.field public k:I

.field public l:Lf1/p0;

.field public m:I

.field public final synthetic n:Lf1/x0;


# direct methods
.method public constructor <init>(Lf1/x0;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf1/v0;->n:Lf1/x0;

    .line 2
    .line 3
    invoke-direct {p0}, Lf1/C;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lf1/v0;->j:I

    .line 8
    .line 9
    iput p1, p0, Lf1/v0;->m:I

    .line 10
    .line 11
    iput-object p2, p0, Lf1/v0;->f:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public attachConnection(Lf1/p0;)V
    .locals 2

    .line 1
    new-instance v0, Lf1/u0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lf1/u0;-><init>(Lf1/v0;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lf1/v0;->l:Lf1/p0;

    .line 7
    .line 8
    iget-object v1, p0, Lf1/v0;->f:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p1, v1, v0}, Lf1/p0;->createDynamicGroupRouteController(Ljava/lang/String;Lf1/O;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Lf1/v0;->m:I

    .line 15
    .line 16
    iget-boolean v1, p0, Lf1/v0;->i:Z

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lf1/p0;->selectRoute(I)V

    .line 21
    .line 22
    .line 23
    iget v0, p0, Lf1/v0;->j:I

    .line 24
    .line 25
    if-ltz v0, :cond_0

    .line 26
    .line 27
    iget v1, p0, Lf1/v0;->m:I

    .line 28
    .line 29
    invoke-virtual {p1, v1, v0}, Lf1/p0;->setVolume(II)V

    .line 30
    .line 31
    .line 32
    const/4 v0, -0x1

    .line 33
    iput v0, p0, Lf1/v0;->j:I

    .line 34
    .line 35
    :cond_0
    iget v0, p0, Lf1/v0;->k:I

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget v1, p0, Lf1/v0;->m:I

    .line 40
    .line 41
    invoke-virtual {p1, v1, v0}, Lf1/p0;->updateVolume(II)V

    .line 42
    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    iput p1, p0, Lf1/v0;->k:I

    .line 46
    .line 47
    :cond_1
    return-void
.end method

.method public detachConnection()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/v0;->l:Lf1/p0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Lf1/v0;->m:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lf1/p0;->releaseRouteController(I)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lf1/v0;->l:Lf1/p0;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lf1/v0;->m:I

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public getControllerId()I
    .locals 1

    .line 1
    iget v0, p0, Lf1/v0;->m:I

    .line 2
    .line 3
    return v0
.end method

.method public getGroupableSelectionTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/v0;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTransferableSectionTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/v0;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public onAddMemberRoute(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/v0;->l:Lf1/p0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Lf1/v0;->m:I

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Lf1/p0;->addMemberRoute(ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onRelease()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/v0;->n:Lf1/x0;

    .line 2
    .line 3
    iget-object v1, v0, Lf1/x0;->k:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    invoke-interface {p0}, Lf1/r0;->detachConnection()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lf1/x0;->e()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onRemoveMemberRoute(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/v0;->l:Lf1/p0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Lf1/v0;->m:I

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Lf1/p0;->removeMemberRoute(ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onSelect()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lf1/v0;->i:Z

    .line 3
    .line 4
    iget-object v0, p0, Lf1/v0;->l:Lf1/p0;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget v1, p0, Lf1/v0;->m:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lf1/p0;->selectRoute(I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public onSetVolume(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/v0;->l:Lf1/p0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Lf1/v0;->m:I

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Lf1/p0;->setVolume(II)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iput p1, p0, Lf1/v0;->j:I

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lf1/v0;->k:I

    .line 15
    .line 16
    return-void
.end method

.method public onUnselect()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lf1/v0;->onUnselect(I)V

    return-void
.end method

.method public onUnselect(I)V
    .locals 2

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lf1/v0;->i:Z

    .line 3
    iget-object v0, p0, Lf1/v0;->l:Lf1/p0;

    if-eqz v0, :cond_0

    .line 4
    iget v1, p0, Lf1/v0;->m:I

    invoke-virtual {v0, v1, p1}, Lf1/p0;->unselectRoute(II)V

    :cond_0
    return-void
.end method

.method public onUpdateMemberRoutes(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf1/v0;->l:Lf1/p0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Lf1/v0;->m:I

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Lf1/p0;->updateMemberRoutes(ILjava/util/List;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onUpdateVolume(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/v0;->l:Lf1/p0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Lf1/v0;->m:I

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Lf1/p0;->updateVolume(II)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget v0, p0, Lf1/v0;->k:I

    .line 12
    .line 13
    add-int/2addr v0, p1

    .line 14
    iput v0, p0, Lf1/v0;->k:I

    .line 15
    .line 16
    return-void
.end method
