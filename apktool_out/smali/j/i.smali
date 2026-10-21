.class public final Lj/i;
.super Landroid/view/ActionMode;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lj/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lj/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj/i;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lj/i;->b:Lj/c;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 1
    iget-object v0, p0, Lj/i;->b:Lj/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lj/c;->finish()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/i;->b:Lj/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lj/c;->getCustomView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 3

    .line 1
    new-instance v0, Lk/H;

    .line 2
    .line 3
    iget-object v1, p0, Lj/i;->b:Lj/c;

    .line 4
    .line 5
    invoke-virtual {v1}, Lj/c;->getMenu()Landroid/view/Menu;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, LF/a;

    .line 10
    .line 11
    iget-object v2, p0, Lj/i;->a:Landroid/content/Context;

    .line 12
    .line 13
    invoke-direct {v0, v2, v1}, Lk/H;-><init>(Landroid/content/Context;LF/a;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/i;->b:Lj/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lj/c;->getMenuInflater()Landroid/view/MenuInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/i;->b:Lj/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lj/c;->getSubtitle()Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/i;->b:Lj/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lj/c;->getTag()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/i;->b:Lj/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lj/c;->getTitle()Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getTitleOptionalHint()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lj/i;->b:Lj/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lj/c;->getTitleOptionalHint()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public invalidate()V
    .locals 1

    .line 1
    iget-object v0, p0, Lj/i;->b:Lj/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lj/c;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public isTitleOptional()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lj/i;->b:Lj/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lj/c;->isTitleOptional()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj/i;->b:Lj/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lj/c;->setCustomView(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lj/i;->b:Lj/c;

    invoke-virtual {v0, p1}, Lj/c;->setSubtitle(I)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj/i;->b:Lj/c;

    invoke-virtual {v0, p1}, Lj/c;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj/i;->b:Lj/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lj/c;->setTag(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lj/i;->b:Lj/c;

    invoke-virtual {v0, p1}, Lj/c;->setTitle(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj/i;->b:Lj/c;

    invoke-virtual {v0, p1}, Lj/c;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj/i;->b:Lj/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lj/c;->setTitleOptionalHint(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
