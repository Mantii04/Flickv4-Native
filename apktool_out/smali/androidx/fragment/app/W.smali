.class public final Landroidx/fragment/app/W;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM/E;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/i0;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/i0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/fragment/app/W;->a:Landroidx/fragment/app/i0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCreateMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/W;->a:Landroidx/fragment/app/i0;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/i0;->j(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onMenuClosed(Landroid/view/Menu;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/W;->a:Landroidx/fragment/app/i0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/fragment/app/i0;->p(Landroid/view/Menu;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onMenuItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/W;->a:Landroidx/fragment/app/i0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/fragment/app/i0;->o(Landroid/view/MenuItem;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public onPrepareMenu(Landroid/view/Menu;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/W;->a:Landroidx/fragment/app/i0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/fragment/app/i0;->s(Landroid/view/Menu;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method
