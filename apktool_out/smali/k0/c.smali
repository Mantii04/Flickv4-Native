.class public final Lk0/c;
.super Lm1/V;
.source "SourceFile"


# instance fields
.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:Lk0/f;

.field public final synthetic h:Lk0/e;


# direct methods
.method public constructor <init>(Lk0/e;III)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/c;->h:Lk0/e;

    .line 2
    .line 3
    invoke-direct {p0}, Lm1/V;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lk0/c;->d:I

    .line 7
    .line 8
    iput p4, p0, Lk0/c;->e:I

    .line 9
    .line 10
    iput p3, p0, Lk0/c;->f:I

    .line 11
    .line 12
    iget-object p1, p1, Lk0/e;->f:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lk0/f;

    .line 19
    .line 20
    iput-object p1, p0, Lk0/c;->g:Lk0/f;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lk0/c;->g:Lk0/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lk0/f;->getCount()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public onBindViewHolder(Lk0/d;I)V
    .locals 4

    .line 2
    iget-object v0, p1, Lk0/d;->u:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lk0/c;->g:Lk0/f;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lk0/f;->getMinValue()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v1, v2}, Lk0/f;->getLabelFor(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lk0/c;->h:Lk0/e;

    iget-object v1, v0, Lk0/e;->e:Ljava/util/ArrayList;

    .line 5
    iget v2, p0, Lk0/c;->e:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {v1}, Landroidx/leanback/widget/t;->getSelectedPosition()I

    move-result v1

    const/4 v3, 0x0

    if-ne v1, p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    move p2, v3

    .line 6
    :goto_0
    iget-object p1, p1, Lm1/B0;->a:Landroid/view/View;

    invoke-virtual {v0, p1, p2, v2, v3}, Lk0/e;->b(Landroid/view/View;ZIZ)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lm1/B0;I)V
    .locals 0

    .line 1
    check-cast p1, Lk0/d;

    invoke-virtual {p0, p1, p2}, Lk0/c;->onBindViewHolder(Lk0/d;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lk0/d;
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 3
    iget v0, p0, Lk0/c;->d:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    iget p2, p0, Lk0/c;->f:I

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    goto :goto_0

    .line 6
    :cond_0
    move-object p2, p1

    check-cast p2, Landroid/widget/TextView;

    .line 7
    :goto_0
    new-instance v0, Lk0/d;

    invoke-direct {v0, p1, p2}, Lk0/d;-><init>(Landroid/view/View;Landroid/widget/TextView;)V

    return-object v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lm1/B0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/c;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lk0/d;

    move-result-object p1

    return-object p1
.end method

.method public onViewAttachedToWindow(Lk0/d;)V
    .locals 1

    .line 2
    iget-object p1, p1, Lm1/B0;->a:Landroid/view/View;

    iget-object v0, p0, Lk0/c;->h:Lk0/e;

    invoke-virtual {v0}, Landroid/view/View;->isActivated()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method public bridge synthetic onViewAttachedToWindow(Lm1/B0;)V
    .locals 0

    .line 1
    check-cast p1, Lk0/d;

    invoke-virtual {p0, p1}, Lk0/c;->onViewAttachedToWindow(Lk0/d;)V

    return-void
.end method
