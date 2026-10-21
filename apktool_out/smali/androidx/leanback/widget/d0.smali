.class public Landroidx/leanback/widget/d0;
.super Lm1/V;
.source "SourceFile"


# instance fields
.field public d:Landroidx/leanback/widget/r0;

.field public e:Landroidx/leanback/widget/c0;

.field public f:Landroidx/leanback/widget/D0;

.field public g:Landroidx/leanback/widget/z;

.field public h:Landroidx/leanback/widget/Z;

.field public i:Ljava/util/ArrayList;

.field public final j:Landroidx/leanback/widget/Y;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lm1/V;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/leanback/widget/d0;->i:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Landroidx/leanback/widget/Y;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Landroidx/leanback/widget/Y;-><init>(Landroidx/leanback/widget/d0;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/leanback/widget/d0;->j:Landroidx/leanback/widget/Y;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/d0;->setAdapter(Landroidx/leanback/widget/r0;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public getFacetProvider(I)Landroidx/leanback/widget/y;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/d0;->i:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroidx/leanback/widget/y;

    .line 8
    .line 9
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/d0;->d:Landroidx/leanback/widget/r0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/leanback/widget/r0;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/d0;->d:Landroidx/leanback/widget/r0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/r0;->getId(I)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/d0;->f:Landroidx/leanback/widget/D0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/d0;->d:Landroidx/leanback/widget/r0;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/leanback/widget/r0;->getPresenterSelector()Landroidx/leanback/widget/D0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :goto_0
    iget-object v1, p0, Landroidx/leanback/widget/d0;->d:Landroidx/leanback/widget/r0;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Landroidx/leanback/widget/r0;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/D0;->getPresenter(Ljava/lang/Object;)Landroidx/leanback/widget/C0;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object v0, p0, Landroidx/leanback/widget/d0;->i:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-gez v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Landroidx/leanback/widget/d0;->i:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Landroidx/leanback/widget/d0;->i:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-virtual {p0, p1, v0}, Landroidx/leanback/widget/d0;->onAddPresenter(Landroidx/leanback/widget/C0;I)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Landroidx/leanback/widget/d0;->h:Landroidx/leanback/widget/Z;

    .line 45
    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    invoke-virtual {v1, p1, v0}, Landroidx/leanback/widget/Z;->onAddPresenter(Landroidx/leanback/widget/C0;I)V

    .line 49
    .line 50
    .line 51
    :cond_1
    return v0
.end method

.method public getPresenterMapper()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/leanback/widget/C0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/d0;->i:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public onAddPresenter(Landroidx/leanback/widget/C0;I)V
    .locals 0

    return-void
.end method

.method public onAttachedToWindow(Landroidx/leanback/widget/b0;)V
    .locals 0

    return-void
.end method

.method public onBind(Landroidx/leanback/widget/b0;)V
    .locals 0

    return-void
.end method

.method public final onBindViewHolder(Lm1/B0;I)V
    .locals 2

    .line 1
    check-cast p1, Landroidx/leanback/widget/b0;

    .line 2
    iget-object v0, p0, Landroidx/leanback/widget/d0;->d:Landroidx/leanback/widget/r0;

    invoke-virtual {v0, p2}, Landroidx/leanback/widget/r0;->get(I)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p1, Landroidx/leanback/widget/b0;->w:Ljava/lang/Object;

    .line 3
    iget-object v0, p1, Landroidx/leanback/widget/b0;->u:Landroidx/leanback/widget/C0;

    iget-object v1, p1, Landroidx/leanback/widget/b0;->v:Landroidx/leanback/widget/A0;

    invoke-virtual {v0, v1, p2}, Landroidx/leanback/widget/C0;->onBindViewHolder(Landroidx/leanback/widget/A0;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/d0;->onBind(Landroidx/leanback/widget/b0;)V

    .line 5
    iget-object p2, p0, Landroidx/leanback/widget/d0;->h:Landroidx/leanback/widget/Z;

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p2, p1}, Landroidx/leanback/widget/Z;->onBind(Landroidx/leanback/widget/b0;)V

    :cond_0
    return-void
.end method

.method public final onBindViewHolder(Lm1/B0;ILjava/util/List;)V
    .locals 2

    .line 7
    check-cast p1, Landroidx/leanback/widget/b0;

    .line 8
    iget-object v0, p0, Landroidx/leanback/widget/d0;->d:Landroidx/leanback/widget/r0;

    invoke-virtual {v0, p2}, Landroidx/leanback/widget/r0;->get(I)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p1, Landroidx/leanback/widget/b0;->w:Ljava/lang/Object;

    .line 9
    iget-object v0, p1, Landroidx/leanback/widget/b0;->u:Landroidx/leanback/widget/C0;

    iget-object v1, p1, Landroidx/leanback/widget/b0;->v:Landroidx/leanback/widget/A0;

    invoke-virtual {v0, v1, p2, p3}, Landroidx/leanback/widget/C0;->onBindViewHolder(Landroidx/leanback/widget/A0;Ljava/lang/Object;Ljava/util/List;)V

    .line 10
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/d0;->onBind(Landroidx/leanback/widget/b0;)V

    .line 11
    iget-object p2, p0, Landroidx/leanback/widget/d0;->h:Landroidx/leanback/widget/Z;

    if-eqz p2, :cond_0

    .line 12
    invoke-virtual {p2, p1, p3}, Landroidx/leanback/widget/Z;->onBind(Landroidx/leanback/widget/b0;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroidx/leanback/widget/b0;)V
    .locals 0

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lm1/B0;
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/d0;->i:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Landroidx/leanback/widget/C0;

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/leanback/widget/d0;->e:Landroidx/leanback/widget/c0;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/c0;->createWrapper(Landroid/view/View;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p2, p1}, Landroidx/leanback/widget/C0;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/A0;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object v1, p0, Landroidx/leanback/widget/d0;->e:Landroidx/leanback/widget/c0;

    .line 22
    .line 23
    iget-object v2, p1, Landroidx/leanback/widget/A0;->a:Landroid/view/View;

    .line 24
    .line 25
    invoke-virtual {v1, v0, v2}, Landroidx/leanback/widget/c0;->wrap(Landroid/view/View;Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p2, p1}, Landroidx/leanback/widget/C0;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/A0;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object v0, p1, Landroidx/leanback/widget/A0;->a:Landroid/view/View;

    .line 34
    .line 35
    :goto_0
    new-instance v1, Landroidx/leanback/widget/b0;

    .line 36
    .line 37
    invoke-direct {v1, p2, v0, p1}, Landroidx/leanback/widget/b0;-><init>(Landroidx/leanback/widget/C0;Landroid/view/View;Landroidx/leanback/widget/A0;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/d0;->onCreate(Landroidx/leanback/widget/b0;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Landroidx/leanback/widget/d0;->h:Landroidx/leanback/widget/Z;

    .line 44
    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    invoke-virtual {p1, v1}, Landroidx/leanback/widget/Z;->onCreate(Landroidx/leanback/widget/b0;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    iget-object p1, v1, Landroidx/leanback/widget/b0;->v:Landroidx/leanback/widget/A0;

    .line 51
    .line 52
    iget-object p1, p1, Landroidx/leanback/widget/A0;->a:Landroid/view/View;

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    iget-object v2, p0, Landroidx/leanback/widget/d0;->g:Landroidx/leanback/widget/z;

    .line 59
    .line 60
    if-eqz v2, :cond_5

    .line 61
    .line 62
    instance-of v3, p2, Landroidx/leanback/widget/a0;

    .line 63
    .line 64
    const/4 v4, 0x0

    .line 65
    const/4 v5, 0x1

    .line 66
    if-eqz v3, :cond_3

    .line 67
    .line 68
    check-cast p2, Landroidx/leanback/widget/a0;

    .line 69
    .line 70
    iget-object p1, p0, Landroidx/leanback/widget/d0;->e:Landroidx/leanback/widget/c0;

    .line 71
    .line 72
    if-eqz p1, :cond_2

    .line 73
    .line 74
    move v4, v5

    .line 75
    :cond_2
    iput-boolean v4, p2, Landroidx/leanback/widget/a0;->e:Z

    .line 76
    .line 77
    iput-object v2, p2, Landroidx/leanback/widget/a0;->f:Landroidx/leanback/widget/z;

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    new-instance v3, Landroidx/leanback/widget/a0;

    .line 81
    .line 82
    iget-object v6, p0, Landroidx/leanback/widget/d0;->e:Landroidx/leanback/widget/c0;

    .line 83
    .line 84
    if-eqz v6, :cond_4

    .line 85
    .line 86
    move v4, v5

    .line 87
    :cond_4
    invoke-direct {v3, p2, v4, v2}, Landroidx/leanback/widget/a0;-><init>(Landroid/view/View$OnFocusChangeListener;ZLandroidx/leanback/widget/z;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v3}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 91
    .line 92
    .line 93
    :goto_1
    iget-object p1, p0, Landroidx/leanback/widget/d0;->g:Landroidx/leanback/widget/z;

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Landroidx/leanback/widget/z;->onInitializeView(Landroid/view/View;)V

    .line 96
    .line 97
    .line 98
    return-object v1

    .line 99
    :cond_5
    instance-of v0, p2, Landroidx/leanback/widget/a0;

    .line 100
    .line 101
    if-eqz v0, :cond_6

    .line 102
    .line 103
    check-cast p2, Landroidx/leanback/widget/a0;

    .line 104
    .line 105
    iget-object p2, p2, Landroidx/leanback/widget/a0;->b:Landroid/view/View$OnFocusChangeListener;

    .line 106
    .line 107
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 108
    .line 109
    .line 110
    :cond_6
    return-object v1
.end method

.method public onDetachedFromWindow(Landroidx/leanback/widget/b0;)V
    .locals 0

    return-void
.end method

.method public final onFailedToRecycleView(Lm1/B0;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/d0;->onViewRecycled(Lm1/B0;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    return p1
.end method

.method public onUnbind(Landroidx/leanback/widget/b0;)V
    .locals 0

    return-void
.end method

.method public final onViewAttachedToWindow(Lm1/B0;)V
    .locals 1

    .line 1
    check-cast p1, Landroidx/leanback/widget/b0;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/d0;->onAttachedToWindow(Landroidx/leanback/widget/b0;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/leanback/widget/d0;->h:Landroidx/leanback/widget/Z;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/Z;->onAttachedToWindow(Landroidx/leanback/widget/b0;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p1, Landroidx/leanback/widget/b0;->u:Landroidx/leanback/widget/C0;

    .line 14
    .line 15
    iget-object p1, p1, Landroidx/leanback/widget/b0;->v:Landroidx/leanback/widget/A0;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/C0;->onViewAttachedToWindow(Landroidx/leanback/widget/A0;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final onViewDetachedFromWindow(Lm1/B0;)V
    .locals 2

    .line 1
    check-cast p1, Landroidx/leanback/widget/b0;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/leanback/widget/b0;->u:Landroidx/leanback/widget/C0;

    .line 4
    .line 5
    iget-object v1, p1, Landroidx/leanback/widget/b0;->v:Landroidx/leanback/widget/A0;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/C0;->onViewDetachedFromWindow(Landroidx/leanback/widget/A0;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/d0;->onDetachedFromWindow(Landroidx/leanback/widget/b0;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Landroidx/leanback/widget/d0;->h:Landroidx/leanback/widget/Z;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/Z;->onDetachedFromWindow(Landroidx/leanback/widget/b0;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final onViewRecycled(Lm1/B0;)V
    .locals 2

    .line 1
    check-cast p1, Landroidx/leanback/widget/b0;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/leanback/widget/b0;->u:Landroidx/leanback/widget/C0;

    .line 4
    .line 5
    iget-object v1, p1, Landroidx/leanback/widget/b0;->v:Landroidx/leanback/widget/A0;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/C0;->onUnbindViewHolder(Landroidx/leanback/widget/A0;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/d0;->onUnbind(Landroidx/leanback/widget/b0;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Landroidx/leanback/widget/d0;->h:Landroidx/leanback/widget/Z;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/Z;->onUnbind(Landroidx/leanback/widget/b0;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    iput-object v0, p1, Landroidx/leanback/widget/b0;->w:Ljava/lang/Object;

    .line 22
    .line 23
    return-void
.end method

.method public setAdapter(Landroidx/leanback/widget/r0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/d0;->d:Landroidx/leanback/widget/r0;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Landroidx/leanback/widget/d0;->j:Landroidx/leanback/widget/Y;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/r0;->unregisterObserver(Landroidx/leanback/widget/q0;)V

    .line 11
    .line 12
    .line 13
    :cond_1
    iput-object p1, p0, Landroidx/leanback/widget/d0;->d:Landroidx/leanback/widget/r0;

    .line 14
    .line 15
    if-nez p1, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0}, Lm1/V;->notifyDataSetChanged()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_2
    invoke-virtual {p1, v1}, Landroidx/leanback/widget/r0;->registerObserver(Landroidx/leanback/widget/q0;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lm1/V;->hasStableIds()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iget-object v0, p0, Landroidx/leanback/widget/d0;->d:Landroidx/leanback/widget/r0;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/leanback/widget/r0;->hasStableIds()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eq p1, v0, :cond_3

    .line 35
    .line 36
    iget-object p1, p0, Landroidx/leanback/widget/d0;->d:Landroidx/leanback/widget/r0;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroidx/leanback/widget/r0;->hasStableIds()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-virtual {p0, p1}, Lm1/V;->setHasStableIds(Z)V

    .line 43
    .line 44
    .line 45
    :cond_3
    invoke-virtual {p0}, Lm1/V;->notifyDataSetChanged()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public setAdapterListener(Landroidx/leanback/widget/Z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/leanback/widget/d0;->h:Landroidx/leanback/widget/Z;

    .line 2
    .line 3
    return-void
.end method

.method public setPresenter(Landroidx/leanback/widget/D0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/leanback/widget/d0;->f:Landroidx/leanback/widget/D0;

    .line 2
    .line 3
    invoke-virtual {p0}, Lm1/V;->notifyDataSetChanged()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setPresenterMapper(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/leanback/widget/C0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/leanback/widget/d0;->i:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-void
.end method

.method public setWrapper(Landroidx/leanback/widget/c0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/leanback/widget/d0;->e:Landroidx/leanback/widget/c0;

    .line 2
    .line 3
    return-void
.end method
