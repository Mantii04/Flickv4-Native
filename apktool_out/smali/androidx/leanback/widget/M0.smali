.class public abstract Landroidx/leanback/widget/M0;
.super Landroidx/leanback/widget/A0;
.source "SourceFile"


# instance fields
.field public b:Landroidx/leanback/widget/L0;

.field public c:Landroidx/leanback/widget/J0;

.field public d:Landroidx/leanback/widget/H0;

.field public e:Ljava/lang/Object;

.field public f:I

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:F

.field public final k:Li0/a;

.field public l:Landroidx/leanback/widget/v;

.field public m:Landroidx/leanback/widget/u;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/leanback/widget/A0;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/leanback/widget/M0;->f:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Landroidx/leanback/widget/M0;->j:F

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1}, Li0/a;->createDefault(Landroid/content/Context;)Li0/a;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Landroidx/leanback/widget/M0;->k:Li0/a;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final getHeaderViewHolder()Landroidx/leanback/widget/J0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/M0;->c:Landroidx/leanback/widget/J0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOnItemViewClickedListener()Landroidx/leanback/widget/u;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/M0;->m:Landroidx/leanback/widget/u;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOnItemViewSelectedListener()Landroidx/leanback/widget/v;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/M0;->l:Landroidx/leanback/widget/v;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOnKeyListener()Landroid/view/View$OnKeyListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getRow()Landroidx/leanback/widget/H0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/M0;->d:Landroidx/leanback/widget/H0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRowObject()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/M0;->e:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isExpanded()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/leanback/widget/M0;->h:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isSelected()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/leanback/widget/M0;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public final setActivated(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p1, 0x2

    .line 6
    :goto_0
    iput p1, p0, Landroidx/leanback/widget/M0;->f:I

    .line 7
    .line 8
    return-void
.end method

.method public final setOnItemViewClickedListener(Landroidx/leanback/widget/u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/leanback/widget/M0;->m:Landroidx/leanback/widget/u;

    .line 2
    .line 3
    return-void
.end method

.method public final setOnItemViewSelectedListener(Landroidx/leanback/widget/v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/leanback/widget/M0;->l:Landroidx/leanback/widget/v;

    .line 2
    .line 3
    return-void
.end method

.method public final syncActivatedStatus(Landroid/view/View;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/leanback/widget/M0;->f:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1, v1}, Landroid/view/View;->setActivated(Z)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v1, 0x2

    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->setActivated(Z)V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method
