.class public final Landroidx/fragment/app/N;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/fragment/app/P;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/P;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/fragment/app/N;->a:Landroidx/fragment/app/P;

    .line 5
    .line 6
    return-void
.end method

.method public static createController(Landroidx/fragment/app/P;)Landroidx/fragment/app/N;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/P;",
            ")",
            "Landroidx/fragment/app/N;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/fragment/app/N;

    .line 2
    .line 3
    const-string v1, "callbacks == null"

    .line 4
    .line 5
    invoke-static {p0, v1}, LL/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/fragment/app/P;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Landroidx/fragment/app/N;-><init>(Landroidx/fragment/app/P;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public attachHost(Landroidx/fragment/app/C;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/N;->a:Landroidx/fragment/app/P;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/fragment/app/P;->j:Landroidx/fragment/app/j0;

    .line 4
    .line 5
    invoke-virtual {v1, v0, v0, p1}, Landroidx/fragment/app/i0;->b(Landroidx/fragment/app/P;Landroidx/fragment/app/L;Landroidx/fragment/app/C;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public dispatchActivityCreated()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/N;->a:Landroidx/fragment/app/P;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/fragment/app/P;->j:Landroidx/fragment/app/j0;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, v0, Landroidx/fragment/app/i0;->E:Z

    .line 7
    .line 8
    iput-boolean v1, v0, Landroidx/fragment/app/i0;->F:Z

    .line 9
    .line 10
    iget-object v2, v0, Landroidx/fragment/app/i0;->L:Landroidx/fragment/app/n0;

    .line 11
    .line 12
    iput-boolean v1, v2, Landroidx/fragment/app/n0;->i:Z

    .line 13
    .line 14
    const/4 v1, 0x4

    .line 15
    invoke-virtual {v0, v1}, Landroidx/fragment/app/i0;->t(I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public dispatchContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/N;->a:Landroidx/fragment/app/P;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/fragment/app/P;->j:Landroidx/fragment/app/j0;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/fragment/app/i0;->i(Landroid/view/MenuItem;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public dispatchCreate()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/N;->a:Landroidx/fragment/app/P;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/fragment/app/P;->j:Landroidx/fragment/app/j0;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, v0, Landroidx/fragment/app/i0;->E:Z

    .line 7
    .line 8
    iput-boolean v1, v0, Landroidx/fragment/app/i0;->F:Z

    .line 9
    .line 10
    iget-object v2, v0, Landroidx/fragment/app/i0;->L:Landroidx/fragment/app/n0;

    .line 11
    .line 12
    iput-boolean v1, v2, Landroidx/fragment/app/n0;->i:Z

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-virtual {v0, v1}, Landroidx/fragment/app/i0;->t(I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public dispatchDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/N;->a:Landroidx/fragment/app/P;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/fragment/app/P;->j:Landroidx/fragment/app/j0;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/i0;->k()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public dispatchPause()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/N;->a:Landroidx/fragment/app/P;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/fragment/app/P;->j:Landroidx/fragment/app/j0;

    .line 4
    .line 5
    const/4 v1, 0x5

    .line 6
    invoke-virtual {v0, v1}, Landroidx/fragment/app/i0;->t(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public dispatchResume()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/N;->a:Landroidx/fragment/app/P;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/fragment/app/P;->j:Landroidx/fragment/app/j0;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, v0, Landroidx/fragment/app/i0;->E:Z

    .line 7
    .line 8
    iput-boolean v1, v0, Landroidx/fragment/app/i0;->F:Z

    .line 9
    .line 10
    iget-object v2, v0, Landroidx/fragment/app/i0;->L:Landroidx/fragment/app/n0;

    .line 11
    .line 12
    iput-boolean v1, v2, Landroidx/fragment/app/n0;->i:Z

    .line 13
    .line 14
    const/4 v1, 0x7

    .line 15
    invoke-virtual {v0, v1}, Landroidx/fragment/app/i0;->t(I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public dispatchStart()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/N;->a:Landroidx/fragment/app/P;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/fragment/app/P;->j:Landroidx/fragment/app/j0;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, v0, Landroidx/fragment/app/i0;->E:Z

    .line 7
    .line 8
    iput-boolean v1, v0, Landroidx/fragment/app/i0;->F:Z

    .line 9
    .line 10
    iget-object v2, v0, Landroidx/fragment/app/i0;->L:Landroidx/fragment/app/n0;

    .line 11
    .line 12
    iput-boolean v1, v2, Landroidx/fragment/app/n0;->i:Z

    .line 13
    .line 14
    const/4 v1, 0x5

    .line 15
    invoke-virtual {v0, v1}, Landroidx/fragment/app/i0;->t(I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public dispatchStop()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/N;->a:Landroidx/fragment/app/P;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/fragment/app/P;->j:Landroidx/fragment/app/j0;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Landroidx/fragment/app/i0;->F:Z

    .line 7
    .line 8
    iget-object v2, v0, Landroidx/fragment/app/i0;->L:Landroidx/fragment/app/n0;

    .line 9
    .line 10
    iput-boolean v1, v2, Landroidx/fragment/app/n0;->i:Z

    .line 11
    .line 12
    const/4 v1, 0x4

    .line 13
    invoke-virtual {v0, v1}, Landroidx/fragment/app/i0;->t(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public execPendingActions()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/N;->a:Landroidx/fragment/app/P;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/fragment/app/P;->j:Landroidx/fragment/app/j0;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroidx/fragment/app/i0;->w(Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public getSupportFragmentManager()Landroidx/fragment/app/i0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/N;->a:Landroidx/fragment/app/P;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/fragment/app/P;->j:Landroidx/fragment/app/j0;

    .line 4
    .line 5
    return-object v0
.end method

.method public noteStateNotSaved()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/N;->a:Landroidx/fragment/app/P;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/fragment/app/P;->j:Landroidx/fragment/app/j0;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/i0;->F()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/N;->a:Landroidx/fragment/app/P;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/fragment/app/P;->j:Landroidx/fragment/app/j0;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/fragment/app/i0;->f:Landroidx/fragment/app/S;

    .line 6
    .line 7
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
