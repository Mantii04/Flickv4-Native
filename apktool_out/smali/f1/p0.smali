.class public final Lf1/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final a:Landroid/os/Messenger;

.field public final b:Lf1/t0;

.field public final c:Landroid/os/Messenger;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public final h:Landroid/util/SparseArray;

.field public final synthetic i:Lf1/x0;


# direct methods
.method public constructor <init>(Lf1/x0;Landroid/os/Messenger;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf1/p0;->i:Lf1/x0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput p1, p0, Lf1/p0;->d:I

    .line 8
    .line 9
    iput p1, p0, Lf1/p0;->e:I

    .line 10
    .line 11
    new-instance p1, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lf1/p0;->h:Landroid/util/SparseArray;

    .line 17
    .line 18
    iput-object p2, p0, Lf1/p0;->a:Landroid/os/Messenger;

    .line 19
    .line 20
    new-instance p1, Lf1/t0;

    .line 21
    .line 22
    invoke-direct {p1, p0}, Lf1/t0;-><init>(Lf1/p0;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lf1/p0;->b:Lf1/t0;

    .line 26
    .line 27
    new-instance p2, Landroid/os/Messenger;

    .line 28
    .line 29
    invoke-direct {p2, p1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 30
    .line 31
    .line 32
    iput-object p2, p0, Lf1/p0;->c:Landroid/os/Messenger;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final a(IIILandroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput p1, v0, Landroid/os/Message;->what:I

    .line 6
    .line 7
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 8
    .line 9
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 10
    .line 11
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-virtual {v0, p5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lf1/p0;->c:Landroid/os/Messenger;

    .line 17
    .line 18
    iput-object p2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 19
    .line 20
    :try_start_0
    iget-object p2, p0, Lf1/p0;->a:Landroid/os/Messenger;

    .line 21
    .line 22
    invoke-virtual {p2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    return p1

    .line 27
    :catch_0
    move-exception p2

    .line 28
    const/4 p3, 0x2

    .line 29
    if-eq p1, p3, :cond_0

    .line 30
    .line 31
    const-string p1, "MediaRouteProviderProxy"

    .line 32
    .line 33
    const-string p3, "Could not send message to service."

    .line 34
    .line 35
    invoke-static {p1, p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    :catch_1
    :cond_0
    const/4 p1, 0x0

    .line 39
    return p1
.end method

.method public addMemberRoute(ILjava/lang/String;)V
    .locals 6

    .line 1
    new-instance v5, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "memberRouteId"

    .line 7
    .line 8
    invoke-virtual {v5, v0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget v2, p0, Lf1/p0;->d:I

    .line 12
    .line 13
    add-int/lit8 p2, v2, 0x1

    .line 14
    .line 15
    iput p2, p0, Lf1/p0;->d:I

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    const/16 v1, 0xc

    .line 19
    .line 20
    move-object v0, p0

    .line 21
    move v3, p1

    .line 22
    invoke-virtual/range {v0 .. v5}, Lf1/p0;->a(IIILandroid/os/Bundle;Landroid/os/Bundle;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public binderDied()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/p0;->i:Lf1/x0;

    .line 2
    .line 3
    iget-object v0, v0, Lf1/x0;->j:Lf1/s0;

    .line 4
    .line 5
    new-instance v1, Lf1/o0;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lf1/o0;-><init>(Lf1/p0;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public createDynamicGroupRouteController(Ljava/lang/String;Lf1/O;)I
    .locals 6

    .line 1
    iget v3, p0, Lf1/p0;->e:I

    .line 2
    .line 3
    add-int/lit8 v0, v3, 0x1

    .line 4
    .line 5
    iput v0, p0, Lf1/p0;->e:I

    .line 6
    .line 7
    iget v2, p0, Lf1/p0;->d:I

    .line 8
    .line 9
    add-int/lit8 v0, v2, 0x1

    .line 10
    .line 11
    iput v0, p0, Lf1/p0;->d:I

    .line 12
    .line 13
    new-instance v5, Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v0, "memberRouteId"

    .line 19
    .line 20
    invoke-virtual {v5, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/16 v1, 0xb

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    move-object v0, p0

    .line 27
    invoke-virtual/range {v0 .. v5}, Lf1/p0;->a(IIILandroid/os/Bundle;Landroid/os/Bundle;)Z

    .line 28
    .line 29
    .line 30
    iget-object p1, v0, Lf1/p0;->h:Landroid/util/SparseArray;

    .line 31
    .line 32
    invoke-virtual {p1, v2, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return v3
.end method

.method public createRouteController(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    .line 1
    iget v3, p0, Lf1/p0;->e:I

    .line 2
    .line 3
    add-int/lit8 v0, v3, 0x1

    .line 4
    .line 5
    iput v0, p0, Lf1/p0;->e:I

    .line 6
    .line 7
    new-instance v5, Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v0, "routeId"

    .line 13
    .line 14
    invoke-virtual {v5, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string p1, "routeGroupId"

    .line 18
    .line 19
    invoke-virtual {v5, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget v2, p0, Lf1/p0;->d:I

    .line 23
    .line 24
    add-int/lit8 p1, v2, 0x1

    .line 25
    .line 26
    iput p1, p0, Lf1/p0;->d:I

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    const/4 v1, 0x3

    .line 30
    move-object v0, p0

    .line 31
    invoke-virtual/range {v0 .. v5}, Lf1/p0;->a(IIILandroid/os/Bundle;Landroid/os/Bundle;)Z

    .line 32
    .line 33
    .line 34
    return v3
.end method

.method public dispose()V
    .locals 6

    .line 1
    const/4 v2, 0x0

    .line 2
    const/4 v3, 0x0

    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v4, 0x0

    .line 5
    const/4 v5, 0x0

    .line 6
    move-object v0, p0

    .line 7
    invoke-virtual/range {v0 .. v5}, Lf1/p0;->a(IIILandroid/os/Bundle;Landroid/os/Bundle;)Z

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lf1/p0;->b:Lf1/t0;

    .line 11
    .line 12
    invoke-virtual {v1}, Lf1/t0;->dispose()V

    .line 13
    .line 14
    .line 15
    iget-object v1, v0, Lf1/p0;->a:Landroid/os/Messenger;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 22
    .line 23
    .line 24
    iget-object v1, v0, Lf1/p0;->i:Lf1/x0;

    .line 25
    .line 26
    iget-object v1, v1, Lf1/x0;->j:Lf1/s0;

    .line 27
    .line 28
    new-instance v2, Lf1/n0;

    .line 29
    .line 30
    invoke-direct {v2, p0}, Lf1/n0;-><init>(Lf1/p0;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public onControlRequestFailed(ILjava/lang/String;Landroid/os/Bundle;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/p0;->h:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lf1/O;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p2, p3}, Lf1/O;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    return p1

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    return p1
.end method

.method public onControlRequestSucceeded(ILandroid/os/Bundle;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/p0;->h:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lf1/O;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p2}, Lf1/O;->onResult(Landroid/os/Bundle;)V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    return p1

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    return p1
.end method

.method public onControllerReleasedByProvider(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lf1/p0;->i:Lf1/x0;

    .line 2
    .line 3
    iget-object v1, v0, Lf1/x0;->n:Lf1/p0;

    .line 4
    .line 5
    if-ne v1, p0, :cond_3

    .line 6
    .line 7
    iget-object v1, v0, Lf1/x0;->k:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Lf1/r0;

    .line 24
    .line 25
    invoke-interface {v3}, Lf1/r0;->getControllerId()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-ne v4, p1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v3, 0x0

    .line 33
    :goto_0
    iget-object p1, v0, Lf1/x0;->p:Lf1/q0;

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    instance-of v2, v3, Lf1/F;

    .line 38
    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    move-object v2, v3

    .line 42
    check-cast v2, Lf1/F;

    .line 43
    .line 44
    check-cast p1, LX4/a;

    .line 45
    .line 46
    iget-object v4, p1, LX4/a;->f:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v4, Lf1/B0;

    .line 49
    .line 50
    iget-object v4, v4, Lf1/B0;->b:Lf1/k;

    .line 51
    .line 52
    iget-object p1, p1, LX4/a;->e:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast p1, Lf1/x0;

    .line 55
    .line 56
    invoke-virtual {v4, p1, v2}, Lf1/k;->releaseProviderController(Lf1/x0;Lf1/F;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    invoke-interface {v3}, Lf1/r0;->detachConnection()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Lf1/x0;->e()V

    .line 66
    .line 67
    .line 68
    :cond_3
    return-void
.end method

.method public onDescriptorChanged(Landroid/os/Bundle;)Z
    .locals 2

    .line 1
    iget v0, p0, Lf1/p0;->f:I

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-static {p1}, Lf1/I;->fromBundle(Landroid/os/Bundle;)Lf1/I;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lf1/p0;->i:Lf1/x0;

    .line 10
    .line 11
    iget-object v1, v0, Lf1/x0;->n:Lf1/p0;

    .line 12
    .line 13
    if-ne v1, p0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lf1/G;->setDescriptor(Lf1/I;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    const/4 p1, 0x1

    .line 19
    return p1

    .line 20
    :cond_1
    const/4 p1, 0x0

    .line 21
    return p1
.end method

.method public onDynamicGroupRouteControllerCreated(ILandroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lf1/p0;->h:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lf1/O;

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    const-string v2, "routeId"

    .line 12
    .line 13
    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p2}, Lf1/O;->onResult(Landroid/os/Bundle;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    const-string p1, "DynamicGroupRouteController is created without valid route id."

    .line 27
    .line 28
    invoke-virtual {v1, p1, p2}, Lf1/O;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public onDynamicRouteDescriptorsChanged(ILandroid/os/Bundle;)Z
    .locals 13

    .line 1
    iget v0, p0, Lf1/p0;->f:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_6

    .line 5
    .line 6
    const-string v0, "groupRoute"

    .line 7
    .line 8
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/os/Bundle;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-static {v0}, Lf1/v;->fromBundle(Landroid/os/Bundle;)Lf1/v;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v0, v2

    .line 23
    :goto_0
    const-string v3, "dynamicRoutes"

    .line 24
    .line 25
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    new-instance v3, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    const/4 v5, 0x1

    .line 43
    if-eqz v4, :cond_2

    .line 44
    .line 45
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Landroid/os/Bundle;

    .line 50
    .line 51
    if-nez v4, :cond_1

    .line 52
    .line 53
    move-object v7, v2

    .line 54
    goto :goto_2

    .line 55
    :cond_1
    const-string v6, "mrDescriptor"

    .line 56
    .line 57
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    invoke-static {v6}, Lf1/v;->fromBundle(Landroid/os/Bundle;)Lf1/v;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    const-string v6, "selectionState"

    .line 66
    .line 67
    invoke-virtual {v4, v6, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 68
    .line 69
    .line 70
    move-result v9

    .line 71
    const-string v5, "isUnselectable"

    .line 72
    .line 73
    invoke-virtual {v4, v5, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 74
    .line 75
    .line 76
    move-result v10

    .line 77
    const-string v5, "isGroupable"

    .line 78
    .line 79
    invoke-virtual {v4, v5, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 80
    .line 81
    .line 82
    move-result v11

    .line 83
    const-string v5, "isTransferable"

    .line 84
    .line 85
    invoke-virtual {v4, v5, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 86
    .line 87
    .line 88
    move-result v12

    .line 89
    new-instance v7, Lf1/B;

    .line 90
    .line 91
    invoke-direct/range {v7 .. v12}, Lf1/B;-><init>(Lf1/v;IZZZ)V

    .line 92
    .line 93
    .line 94
    :goto_2
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_2
    iget-object p2, p0, Lf1/p0;->i:Lf1/x0;

    .line 99
    .line 100
    iget-object v1, p2, Lf1/x0;->n:Lf1/p0;

    .line 101
    .line 102
    if-ne v1, p0, :cond_5

    .line 103
    .line 104
    iget-object p2, p2, Lf1/x0;->k:Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_4

    .line 115
    .line 116
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    check-cast v1, Lf1/r0;

    .line 121
    .line 122
    invoke-interface {v1}, Lf1/r0;->getControllerId()I

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    if-ne v4, p1, :cond_3

    .line 127
    .line 128
    move-object v2, v1

    .line 129
    :cond_4
    instance-of p1, v2, Lf1/v0;

    .line 130
    .line 131
    if-eqz p1, :cond_5

    .line 132
    .line 133
    check-cast v2, Lf1/v0;

    .line 134
    .line 135
    invoke-virtual {v2, v0, v3}, Lf1/C;->notifyDynamicRoutesChanged(Lf1/v;Ljava/util/Collection;)V

    .line 136
    .line 137
    .line 138
    :cond_5
    return v5

    .line 139
    :cond_6
    return v1
.end method

.method public onGenericFailure(I)V
    .locals 2

    .line 1
    iget v0, p0, Lf1/p0;->g:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lf1/p0;->g:I

    .line 7
    .line 8
    iget-object v0, p0, Lf1/p0;->i:Lf1/x0;

    .line 9
    .line 10
    iget-object v1, v0, Lf1/x0;->n:Lf1/p0;

    .line 11
    .line 12
    if-ne v1, p0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lf1/x0;->d()V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lf1/p0;->h:Landroid/util/SparseArray;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lf1/O;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    invoke-virtual {v1, p1, p1}, Lf1/O;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public onRegistered(IILandroid/os/Bundle;)Z
    .locals 4

    .line 1
    iget v0, p0, Lf1/p0;->f:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_3

    .line 5
    .line 6
    iget v0, p0, Lf1/p0;->g:I

    .line 7
    .line 8
    if-ne p1, v0, :cond_3

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    if-lt p2, p1, :cond_3

    .line 12
    .line 13
    iput v1, p0, Lf1/p0;->g:I

    .line 14
    .line 15
    iput p2, p0, Lf1/p0;->f:I

    .line 16
    .line 17
    invoke-static {p3}, Lf1/I;->fromBundle(Landroid/os/Bundle;)Lf1/I;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    iget-object p3, p0, Lf1/p0;->i:Lf1/x0;

    .line 22
    .line 23
    iget-object v0, p3, Lf1/x0;->n:Lf1/p0;

    .line 24
    .line 25
    if-ne v0, p0, :cond_0

    .line 26
    .line 27
    invoke-virtual {p3, p2}, Lf1/G;->setDescriptor(Lf1/I;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object p2, p3, Lf1/x0;->n:Lf1/p0;

    .line 31
    .line 32
    if-ne p2, p0, :cond_2

    .line 33
    .line 34
    iput-boolean p1, p3, Lf1/x0;->o:Z

    .line 35
    .line 36
    iget-object p2, p3, Lf1/x0;->k:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    :goto_0
    if-ge v1, v0, :cond_1

    .line 43
    .line 44
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Lf1/r0;

    .line 49
    .line 50
    iget-object v3, p3, Lf1/x0;->n:Lf1/p0;

    .line 51
    .line 52
    invoke-interface {v2, v3}, Lf1/r0;->attachConnection(Lf1/p0;)V

    .line 53
    .line 54
    .line 55
    add-int/lit8 v1, v1, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p3}, Lf1/G;->getDiscoveryRequest()Lf1/w;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    if-eqz p2, :cond_2

    .line 63
    .line 64
    iget-object p3, p3, Lf1/x0;->n:Lf1/p0;

    .line 65
    .line 66
    invoke-virtual {p3, p2}, Lf1/p0;->setDiscoveryRequest(Lf1/w;)V

    .line 67
    .line 68
    .line 69
    :cond_2
    return p1

    .line 70
    :cond_3
    return v1
.end method

.method public register()Z
    .locals 6

    .line 1
    iget v2, p0, Lf1/p0;->d:I

    .line 2
    .line 3
    add-int/lit8 v0, v2, 0x1

    .line 4
    .line 5
    iput v0, p0, Lf1/p0;->d:I

    .line 6
    .line 7
    iput v2, p0, Lf1/p0;->g:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v3, 0x4

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    move-object v0, p0

    .line 14
    invoke-virtual/range {v0 .. v5}, Lf1/p0;->a(IIILandroid/os/Bundle;Landroid/os/Bundle;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    return v2

    .line 22
    :cond_0
    :try_start_0
    iget-object v1, v0, Lf1/p0;->a:Landroid/os/Messenger;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    return v1

    .line 33
    :catch_0
    invoke-virtual {p0}, Lf1/p0;->binderDied()V

    .line 34
    .line 35
    .line 36
    return v2
.end method

.method public releaseRouteController(I)V
    .locals 6

    .line 1
    iget v2, p0, Lf1/p0;->d:I

    .line 2
    .line 3
    add-int/lit8 v0, v2, 0x1

    .line 4
    .line 5
    iput v0, p0, Lf1/p0;->d:I

    .line 6
    .line 7
    const/4 v5, 0x0

    .line 8
    const/4 v1, 0x4

    .line 9
    const/4 v4, 0x0

    .line 10
    move-object v0, p0

    .line 11
    move v3, p1

    .line 12
    invoke-virtual/range {v0 .. v5}, Lf1/p0;->a(IIILandroid/os/Bundle;Landroid/os/Bundle;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public removeMemberRoute(ILjava/lang/String;)V
    .locals 6

    .line 1
    new-instance v5, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "memberRouteId"

    .line 7
    .line 8
    invoke-virtual {v5, v0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget v2, p0, Lf1/p0;->d:I

    .line 12
    .line 13
    add-int/lit8 p2, v2, 0x1

    .line 14
    .line 15
    iput p2, p0, Lf1/p0;->d:I

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    const/16 v1, 0xd

    .line 19
    .line 20
    move-object v0, p0

    .line 21
    move v3, p1

    .line 22
    invoke-virtual/range {v0 .. v5}, Lf1/p0;->a(IIILandroid/os/Bundle;Landroid/os/Bundle;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public selectRoute(I)V
    .locals 6

    .line 1
    iget v2, p0, Lf1/p0;->d:I

    .line 2
    .line 3
    add-int/lit8 v0, v2, 0x1

    .line 4
    .line 5
    iput v0, p0, Lf1/p0;->d:I

    .line 6
    .line 7
    const/4 v5, 0x0

    .line 8
    const/4 v1, 0x5

    .line 9
    const/4 v4, 0x0

    .line 10
    move-object v0, p0

    .line 11
    move v3, p1

    .line 12
    invoke-virtual/range {v0 .. v5}, Lf1/p0;->a(IIILandroid/os/Bundle;Landroid/os/Bundle;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setDiscoveryRequest(Lf1/w;)V
    .locals 6

    .line 1
    iget v2, p0, Lf1/p0;->d:I

    .line 2
    .line 3
    add-int/lit8 v0, v2, 0x1

    .line 4
    .line 5
    iput v0, p0, Lf1/p0;->d:I

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lf1/w;->asBundle()Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :goto_0
    move-object v4, p1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    goto :goto_0

    .line 17
    :goto_1
    const/16 v1, 0xa

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v5, 0x0

    .line 21
    move-object v0, p0

    .line 22
    invoke-virtual/range {v0 .. v5}, Lf1/p0;->a(IIILandroid/os/Bundle;Landroid/os/Bundle;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public setVolume(II)V
    .locals 6

    .line 1
    new-instance v5, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "volume"

    .line 7
    .line 8
    invoke-virtual {v5, v0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    iget v2, p0, Lf1/p0;->d:I

    .line 12
    .line 13
    add-int/lit8 p2, v2, 0x1

    .line 14
    .line 15
    iput p2, p0, Lf1/p0;->d:I

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v1, 0x7

    .line 19
    move-object v0, p0

    .line 20
    move v3, p1

    .line 21
    invoke-virtual/range {v0 .. v5}, Lf1/p0;->a(IIILandroid/os/Bundle;Landroid/os/Bundle;)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public unselectRoute(II)V
    .locals 6

    .line 1
    new-instance v5, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "unselectReason"

    .line 7
    .line 8
    invoke-virtual {v5, v0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    iget v2, p0, Lf1/p0;->d:I

    .line 12
    .line 13
    add-int/lit8 p2, v2, 0x1

    .line 14
    .line 15
    iput p2, p0, Lf1/p0;->d:I

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v1, 0x6

    .line 19
    move-object v0, p0

    .line 20
    move v3, p1

    .line 21
    invoke-virtual/range {v0 .. v5}, Lf1/p0;->a(IIILandroid/os/Bundle;Landroid/os/Bundle;)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public updateMemberRoutes(ILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v5, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    .line 10
    .line 11
    const-string p2, "memberRouteIds"

    .line 12
    .line 13
    invoke-virtual {v5, p2, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 14
    .line 15
    .line 16
    iget v2, p0, Lf1/p0;->d:I

    .line 17
    .line 18
    add-int/lit8 p2, v2, 0x1

    .line 19
    .line 20
    iput p2, p0, Lf1/p0;->d:I

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    const/16 v1, 0xe

    .line 24
    .line 25
    move-object v0, p0

    .line 26
    move v3, p1

    .line 27
    invoke-virtual/range {v0 .. v5}, Lf1/p0;->a(IIILandroid/os/Bundle;Landroid/os/Bundle;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public updateVolume(II)V
    .locals 6

    .line 1
    new-instance v5, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "volume"

    .line 7
    .line 8
    invoke-virtual {v5, v0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    iget v2, p0, Lf1/p0;->d:I

    .line 12
    .line 13
    add-int/lit8 p2, v2, 0x1

    .line 14
    .line 15
    iput p2, p0, Lf1/p0;->d:I

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    const/16 v1, 0x8

    .line 19
    .line 20
    move-object v0, p0

    .line 21
    move v3, p1

    .line 22
    invoke-virtual/range {v0 .. v5}, Lf1/p0;->a(IIILandroid/os/Bundle;Landroid/os/Bundle;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method
