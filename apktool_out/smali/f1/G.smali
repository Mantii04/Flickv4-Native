.class public abstract Lf1/G;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lf1/E;

.field public final c:Lf1/D;

.field public d:Lf1/x;

.field public e:Lf1/w;

.field public f:Z

.field public g:Lf1/I;

.field public h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lf1/G;-><init>(Landroid/content/Context;Lf1/E;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lf1/E;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lf1/D;

    invoke-direct {v0, p0}, Lf1/D;-><init>(Lf1/G;)V

    iput-object v0, p0, Lf1/G;->c:Lf1/D;

    if-eqz p1, :cond_1

    .line 4
    iput-object p1, p0, Lf1/G;->a:Landroid/content/Context;

    if-nez p2, :cond_0

    .line 5
    new-instance p2, Lf1/E;

    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p2, v0}, Lf1/E;-><init>(Landroid/content/ComponentName;)V

    iput-object p2, p0, Lf1/G;->b:Lf1/E;

    return-void

    .line 6
    :cond_0
    iput-object p2, p0, Lf1/G;->b:Lf1/E;

    return-void

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/G;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDescriptor()Lf1/I;
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/G;->g:Lf1/I;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDiscoveryRequest()Lf1/w;
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/G;->e:Lf1/w;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMetadata()Lf1/E;
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/G;->b:Lf1/E;

    .line 2
    .line 3
    return-object v0
.end method

.method public onCreateDynamicGroupRouteController(Ljava/lang/String;)Lf1/C;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 6
    .line 7
    const-string v0, "initialMemberRouteId cannot be null."

    .line 8
    .line 9
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    throw p1
.end method

.method public abstract onCreateRouteController(Ljava/lang/String;)Lf1/F;
.end method

.method public onCreateRouteController(Ljava/lang/String;Ljava/lang/String;)Lf1/F;
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lf1/G;->onCreateRouteController(Ljava/lang/String;)Lf1/F;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "routeGroupId cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "routeId cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract onDiscoveryRequestChanged(Lf1/w;)V
.end method

.method public final setCallback(Lf1/x;)V
    .locals 0

    .line 1
    invoke-static {}, Lf1/X;->a()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf1/G;->d:Lf1/x;

    .line 5
    .line 6
    return-void
.end method

.method public final setDescriptor(Lf1/I;)V
    .locals 1

    .line 1
    invoke-static {}, Lf1/X;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lf1/G;->g:Lf1/I;

    .line 5
    .line 6
    if-eq v0, p1, :cond_0

    .line 7
    .line 8
    iput-object p1, p0, Lf1/G;->g:Lf1/I;

    .line 9
    .line 10
    iget-boolean p1, p0, Lf1/G;->h:Z

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lf1/G;->h:Z

    .line 16
    .line 17
    iget-object v0, p0, Lf1/G;->c:Lf1/D;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final setDiscoveryRequest(Lf1/w;)V
    .locals 1

    .line 1
    invoke-static {}, Lf1/X;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lf1/G;->e:Lf1/w;

    .line 5
    .line 6
    invoke-static {v0, p1}, LL/c;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iput-object p1, p0, Lf1/G;->e:Lf1/w;

    .line 14
    .line 15
    iget-boolean p1, p0, Lf1/G;->f:Z

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lf1/G;->f:Z

    .line 21
    .line 22
    iget-object p1, p0, Lf1/G;->c:Lf1/D;

    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
.end method
