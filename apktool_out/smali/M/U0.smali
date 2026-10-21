.class public final LM/U0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LM/Y0;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 3
    new-instance v0, LM/X0;

    invoke-direct {v0}, LM/X0;-><init>()V

    iput-object v0, p0, LM/U0;->a:LM/Y0;

    return-void

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 4
    new-instance v0, LM/W0;

    invoke-direct {v0}, LM/W0;-><init>()V

    iput-object v0, p0, LM/U0;->a:LM/Y0;

    return-void

    .line 5
    :cond_1
    new-instance v0, LM/V0;

    invoke-direct {v0}, LM/V0;-><init>()V

    iput-object v0, p0, LM/U0;->a:LM/Y0;

    return-void
.end method

.method public constructor <init>(LM/h1;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 8
    new-instance v0, LM/X0;

    invoke-direct {v0, p1}, LM/X0;-><init>(LM/h1;)V

    iput-object v0, p0, LM/U0;->a:LM/Y0;

    return-void

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 9
    new-instance v0, LM/W0;

    invoke-direct {v0, p1}, LM/W0;-><init>(LM/h1;)V

    iput-object v0, p0, LM/U0;->a:LM/Y0;

    return-void

    .line 10
    :cond_1
    new-instance v0, LM/V0;

    invoke-direct {v0, p1}, LM/V0;-><init>(LM/h1;)V

    iput-object v0, p0, LM/U0;->a:LM/Y0;

    return-void
.end method


# virtual methods
.method public build()LM/h1;
    .locals 1

    .line 1
    iget-object v0, p0, LM/U0;->a:LM/Y0;

    .line 2
    .line 3
    invoke-virtual {v0}, LM/Y0;->a()LM/h1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public setInsets(ILD/c;)LM/U0;
    .locals 1

    .line 1
    iget-object v0, p0, LM/U0;->a:LM/Y0;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, LM/Y0;->b(ILD/c;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setStableInsets(LD/c;)LM/U0;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, LM/U0;->a:LM/Y0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LM/Y0;->d(LD/c;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setSystemWindowInsets(LD/c;)LM/U0;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, LM/U0;->a:LM/Y0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LM/Y0;->f(LD/c;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
