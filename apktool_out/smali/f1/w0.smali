.class public final Lf1/w0;
.super Lf1/F;
.source "SourceFile"

# interfaces
.implements Lf1/r0;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public c:Z

.field public d:I

.field public e:I

.field public f:Lf1/p0;

.field public g:I

.field public final synthetic h:Lf1/x0;


# direct methods
.method public constructor <init>(Lf1/x0;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf1/w0;->h:Lf1/x0;

    .line 2
    .line 3
    invoke-direct {p0}, Lf1/F;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lf1/w0;->d:I

    .line 8
    .line 9
    iput-object p2, p0, Lf1/w0;->a:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p3, p0, Lf1/w0;->b:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public attachConnection(Lf1/p0;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lf1/w0;->f:Lf1/p0;

    .line 2
    .line 3
    iget-object v0, p0, Lf1/w0;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lf1/w0;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p1, v0, v1}, Lf1/p0;->createRouteController(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lf1/w0;->g:I

    .line 12
    .line 13
    iget-boolean v1, p0, Lf1/w0;->c:Z

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lf1/p0;->selectRoute(I)V

    .line 18
    .line 19
    .line 20
    iget v0, p0, Lf1/w0;->d:I

    .line 21
    .line 22
    if-ltz v0, :cond_0

    .line 23
    .line 24
    iget v1, p0, Lf1/w0;->g:I

    .line 25
    .line 26
    invoke-virtual {p1, v1, v0}, Lf1/p0;->setVolume(II)V

    .line 27
    .line 28
    .line 29
    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lf1/w0;->d:I

    .line 31
    .line 32
    :cond_0
    iget v0, p0, Lf1/w0;->e:I

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget v1, p0, Lf1/w0;->g:I

    .line 37
    .line 38
    invoke-virtual {p1, v1, v0}, Lf1/p0;->updateVolume(II)V

    .line 39
    .line 40
    .line 41
    const/4 p1, 0x0

    .line 42
    iput p1, p0, Lf1/w0;->e:I

    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method public detachConnection()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/w0;->f:Lf1/p0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Lf1/w0;->g:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lf1/p0;->releaseRouteController(I)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lf1/w0;->f:Lf1/p0;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lf1/w0;->g:I

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public getControllerId()I
    .locals 1

    .line 1
    iget v0, p0, Lf1/w0;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public onRelease()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/w0;->h:Lf1/x0;

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

.method public onSelect()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lf1/w0;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lf1/w0;->f:Lf1/p0;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget v1, p0, Lf1/w0;->g:I

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
    iget-object v0, p0, Lf1/w0;->f:Lf1/p0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Lf1/w0;->g:I

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Lf1/p0;->setVolume(II)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iput p1, p0, Lf1/w0;->d:I

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lf1/w0;->e:I

    .line 15
    .line 16
    return-void
.end method

.method public onUnselect()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lf1/w0;->onUnselect(I)V

    return-void
.end method

.method public onUnselect(I)V
    .locals 2

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lf1/w0;->c:Z

    .line 3
    iget-object v0, p0, Lf1/w0;->f:Lf1/p0;

    if-eqz v0, :cond_0

    .line 4
    iget v1, p0, Lf1/w0;->g:I

    invoke-virtual {v0, v1, p1}, Lf1/p0;->unselectRoute(II)V

    :cond_0
    return-void
.end method

.method public onUpdateVolume(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/w0;->f:Lf1/p0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Lf1/w0;->g:I

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Lf1/p0;->updateVolume(II)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget v0, p0, Lf1/w0;->e:I

    .line 12
    .line 13
    add-int/2addr v0, p1

    .line 14
    iput v0, p0, Lf1/w0;->e:I

    .line 15
    .line 16
    return-void
.end method
