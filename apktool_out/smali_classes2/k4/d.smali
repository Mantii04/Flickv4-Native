.class public final Lk4/d;
.super Lm1/V;
.source "SourceFile"

# interfaces
.implements Lk4/h;


# instance fields
.field public d:I

.field public final e:Lcom/skydoves/powerspinner/PowerSpinnerView;

.field public f:Lk4/f;

.field public final g:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/skydoves/powerspinner/PowerSpinnerView;)V
    .locals 1

    .line 1
    const-string v0, "powerSpinnerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lm1/V;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSelectedIndex()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput v0, p0, Lk4/d;->d:I

    .line 14
    .line 15
    iput-object p1, p0, Lk4/d;->e:Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 16
    .line 17
    new-instance p1, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lk4/d;->g:Ljava/util/ArrayList;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lk4/d;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lk4/d;->g:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getOnSpinnerItemSelectedListener()Lk4/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk4/f;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk4/d;->f:Lk4/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSpinnerView()Lcom/skydoves/powerspinner/PowerSpinnerView;
    .locals 1

    .line 1
    iget-object v0, p0, Lk4/d;->e:Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 2
    .line 3
    return-object v0
.end method

.method public notifyItemSelected(I)V
    .locals 6

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {p0}, Lk4/d;->getIndex()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, p1}, Lk4/d;->setIndex(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lk4/d;->getSpinnerView()Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget-object v3, p0, Lk4/d;->g:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    check-cast v4, Ljava/lang/CharSequence;

    .line 23
    .line 24
    invoke-virtual {v2, p1, v4}, Lcom/skydoves/powerspinner/PowerSpinnerView;->notifyItemSelected(ILjava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lk4/d;->getOnSpinnerItemSelectedListener()Lk4/f;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-eqz v2, :cond_3

    .line 32
    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const/4 v5, 0x0

    .line 38
    if-eq v1, v0, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move-object v4, v5

    .line 42
    :goto_0
    if-eqz v4, :cond_2

    .line 43
    .line 44
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    move-object v5, v0

    .line 49
    check-cast v5, Ljava/lang/CharSequence;

    .line 50
    .line 51
    :cond_2
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v2, Lk4/n;

    .line 56
    .line 57
    invoke-virtual {v2, v1, v5, p1, v0}, Lk4/n;->onItemSelected(ILjava/lang/Object;ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    :goto_1
    return-void
.end method

.method public onBindViewHolder(Lk4/b;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lk4/d;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lk4/d;->getSpinnerView()Lcom/skydoves/powerspinner/PowerSpinnerView;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lk4/b;->bind(Ljava/lang/CharSequence;Lcom/skydoves/powerspinner/PowerSpinnerView;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lm1/B0;I)V
    .locals 0

    .line 1
    check-cast p1, Lk4/b;

    invoke-virtual {p0, p1, p2}, Lk4/d;->onBindViewHolder(Lk4/b;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lk4/b;
    .locals 1

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    .line 3
    invoke-static {p2, p1, v0}, Ll4/a;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ll4/a;

    move-result-object p1

    const-string p2, "ItemDefaultPowerSpinnerL\u2026nt,\n        false\n      )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance p2, Lk4/b;

    invoke-direct {p2, p1}, Lk4/b;-><init>(Ll4/a;)V

    .line 5
    invoke-virtual {p1}, Ll4/a;->getRoot()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p1

    new-instance v0, Lk4/c;

    invoke-direct {v0, p2, p0}, Lk4/c;-><init>(Lk4/b;Lk4/d;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lm1/B0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk4/d;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lk4/b;

    move-result-object p1

    return-object p1
.end method

.method public setIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lk4/d;->d:I

    .line 2
    .line 3
    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "itemList"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lk4/d;->g:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9
    .line 10
    .line 11
    check-cast p1, Ljava/util/Collection;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 14
    .line 15
    .line 16
    const/4 p1, -0x1

    .line 17
    invoke-virtual {p0, p1}, Lk4/d;->setIndex(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lm1/V;->notifyDataSetChanged()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public setOnSpinnerItemSelectedListener(Lk4/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk4/f;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lk4/d;->f:Lk4/f;

    .line 2
    .line 3
    return-void
.end method
