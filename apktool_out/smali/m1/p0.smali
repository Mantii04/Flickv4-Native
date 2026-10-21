.class public final Lm1/p0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/List;

.field public e:I

.field public f:I

.field public g:Lm1/o0;

.field public final synthetic h:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lm1/p0;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lm1/p0;->a:Ljava/util/ArrayList;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lm1/p0;->b:Ljava/util/ArrayList;

    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lm1/p0;->c:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lm1/p0;->d:Ljava/util/List;

    .line 28
    .line 29
    const/4 p1, 0x2

    .line 30
    iput p1, p0, Lm1/p0;->e:I

    .line 31
    .line 32
    iput p1, p0, Lm1/p0;->f:I

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final a(Lm1/B0;Z)V
    .locals 5

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->i(Lm1/B0;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lm1/p0;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    .line 6
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->x0:Lm1/D0;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v1}, Lm1/D0;->getItemDelegate()LM/b;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    instance-of v3, v1, Lm1/C0;

    .line 16
    .line 17
    iget-object v4, p1, Lm1/B0;->a:Landroid/view/View;

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    check-cast v1, Lm1/C0;

    .line 22
    .line 23
    iget-object v1, v1, Lm1/C0;->e:Ljava/util/WeakHashMap;

    .line 24
    .line 25
    invoke-virtual {v1, v4}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, LM/b;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move-object v1, v2

    .line 33
    :goto_0
    invoke-static {v4, v1}, LM/p0;->setAccessibilityDelegate(Landroid/view/View;LM/b;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    if-eqz p2, :cond_6

    .line 37
    .line 38
    iget-object p2, v0, Landroidx/recyclerview/widget/RecyclerView;->x:Lm1/q0;

    .line 39
    .line 40
    if-eqz p2, :cond_2

    .line 41
    .line 42
    check-cast p2, Landroidx/leanback/widget/l;

    .line 43
    .line 44
    invoke-virtual {p2, p1}, Landroidx/leanback/widget/l;->onViewRecycled(Lm1/B0;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    iget-object p2, v0, Landroidx/recyclerview/widget/RecyclerView;->y:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    const/4 v3, 0x0

    .line 54
    :goto_1
    if-ge v3, v1, :cond_3

    .line 55
    .line 56
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    check-cast v4, Lm1/q0;

    .line 61
    .line 62
    check-cast v4, Landroidx/leanback/widget/l;

    .line 63
    .line 64
    invoke-virtual {v4, p1}, Landroidx/leanback/widget/l;->onViewRecycled(Lm1/B0;)V

    .line 65
    .line 66
    .line 67
    add-int/lit8 v3, v3, 0x1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    iget-object p2, v0, Landroidx/recyclerview/widget/RecyclerView;->v:Lm1/V;

    .line 71
    .line 72
    if-eqz p2, :cond_4

    .line 73
    .line 74
    invoke-virtual {p2, p1}, Lm1/V;->onViewRecycled(Lm1/B0;)V

    .line 75
    .line 76
    .line 77
    :cond_4
    iget-object p2, v0, Landroidx/recyclerview/widget/RecyclerView;->q0:Lm1/x0;

    .line 78
    .line 79
    if-eqz p2, :cond_5

    .line 80
    .line 81
    iget-object p2, v0, Landroidx/recyclerview/widget/RecyclerView;->p:Lm1/T0;

    .line 82
    .line 83
    invoke-virtual {p2, p1}, Lm1/T0;->d(Lm1/B0;)V

    .line 84
    .line 85
    .line 86
    :cond_5
    sget-boolean p2, Landroidx/recyclerview/widget/RecyclerView;->K0:Z

    .line 87
    .line 88
    if-eqz p2, :cond_6

    .line 89
    .line 90
    new-instance p2, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v0, "dispatchViewRecycled: "

    .line 93
    .line 94
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    const-string v0, "RecyclerView"

    .line 105
    .line 106
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    :cond_6
    iput-object v2, p1, Lm1/B0;->s:Lm1/V;

    .line 110
    .line 111
    iput-object v2, p1, Lm1/B0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 112
    .line 113
    invoke-virtual {p0}, Lm1/p0;->b()Lm1/o0;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-virtual {p2, p1}, Lm1/o0;->putRecycledView(Lm1/B0;)V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method public final b()Lm1/o0;
    .locals 1

    .line 1
    iget-object v0, p0, Lm1/p0;->g:Lm1/o0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lm1/o0;

    .line 6
    .line 7
    invoke-direct {v0}, Lm1/o0;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lm1/p0;->g:Lm1/o0;

    .line 11
    .line 12
    invoke-virtual {p0}, Lm1/p0;->c()V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lm1/p0;->g:Lm1/o0;

    .line 16
    .line 17
    return-object v0
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lm1/p0;->g:Lm1/o0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lm1/p0;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->v:Lm1/V;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lm1/p0;->g:Lm1/o0;

    .line 18
    .line 19
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->v:Lm1/V;

    .line 20
    .line 21
    iget-object v1, v1, Lm1/o0;->c:Ljava/util/Set;

    .line 22
    .line 23
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lm1/p0;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lm1/p0;->e()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public convertPreLayoutPositionToPostLayout(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lm1/p0;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    if-ltz p1, :cond_1

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->q0:Lm1/x0;

    .line 6
    .line 7
    invoke-virtual {v1}, Lm1/x0;->getItemCount()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ge p1, v1, :cond_1

    .line 12
    .line 13
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->q0:Lm1/x0;

    .line 14
    .line 15
    invoke-virtual {v1}, Lm1/x0;->isPreLayout()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    return p1

    .line 22
    :cond_0
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->m:Lm1/b;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, p1, v1}, Lm1/b;->f(II)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1

    .line 30
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    .line 31
    .line 32
    const-string v2, "invalid position "

    .line 33
    .line 34
    const-string v3, ". State item count is "

    .line 35
    .line 36
    invoke-static {p1, v2, v3}, LA/i;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->q0:Lm1/x0;

    .line 41
    .line 42
    invoke-virtual {v2}, Lm1/x0;->getItemCount()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v1
.end method

.method public final d(Lm1/V;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lm1/p0;->g:Lm1/o0;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, v0, Lm1/o0;->c:Ljava/util/Set;

    .line 6
    .line 7
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    if-nez p2, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    move p2, p1

    .line 20
    :goto_0
    iget-object v1, v0, Lm1/o0;->a:Landroid/util/SparseArray;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-ge p2, v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lm1/n0;

    .line 37
    .line 38
    iget-object v1, v1, Lm1/n0;->a:Ljava/util/ArrayList;

    .line 39
    .line 40
    move v2, p1

    .line 41
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-ge v2, v3, :cond_0

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Lm1/B0;

    .line 52
    .line 53
    iget-object v3, v3, Lm1/B0;->a:Landroid/view/View;

    .line 54
    .line 55
    invoke-static {v3}, LU/a;->callPoolingContainerOnRelease(Landroid/view/View;)V

    .line 56
    .line 57
    .line 58
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lm1/p0;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Lm1/p0;->f(I)V

    .line 12
    .line 13
    .line 14
    add-int/lit8 v1, v1, -0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 18
    .line 19
    .line 20
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->P0:Z

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Lm1/p0;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    .line 26
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->p0:Lm1/w;

    .line 27
    .line 28
    iget-object v1, v0, Lm1/w;->c:[I

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    const/4 v2, -0x1

    .line 33
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 34
    .line 35
    .line 36
    :cond_1
    const/4 v1, 0x0

    .line 37
    iput v1, v0, Lm1/w;->d:I

    .line 38
    .line 39
    :cond_2
    return-void
.end method

.method public final f(I)V
    .locals 5

    .line 1
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->K0:Z

    .line 2
    .line 3
    const-string v1, "RecyclerView"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "Recycling cached view at index "

    .line 10
    .line 11
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lm1/p0;->c:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lm1/B0;

    .line 31
    .line 32
    sget-boolean v3, Landroidx/recyclerview/widget/RecyclerView;->K0:Z

    .line 33
    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v4, "CachedViewHolder to be recycled: "

    .line 39
    .line 40
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    :cond_1
    const/4 v1, 0x1

    .line 54
    invoke-virtual {p0, v2, v1}, Lm1/p0;->a(Lm1/B0;Z)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final g(Lm1/B0;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Lm1/B0;->g()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p1, Lm1/B0;->a:Landroid/view/View;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    iget-object v4, p0, Lm1/p0;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    if-nez v0, :cond_14

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto/16 :goto_c

    .line 20
    .line 21
    :cond_0
    invoke-virtual {p1}, Lm1/B0;->h()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_13

    .line 26
    .line 27
    invoke-virtual {p1}, Lm1/B0;->l()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_12

    .line 32
    .line 33
    iget v0, p1, Lm1/B0;->j:I

    .line 34
    .line 35
    and-int/lit8 v0, v0, 0x10

    .line 36
    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    invoke-static {v1}, LM/p0;->hasTransientState(Landroid/view/View;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    move v0, v3

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move v0, v2

    .line 48
    :goto_0
    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView;->v:Lm1/V;

    .line 49
    .line 50
    if-eqz v5, :cond_2

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    invoke-virtual {v5, p1}, Lm1/V;->onFailedToRecycleView(Lm1/B0;)Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-eqz v5, :cond_2

    .line 59
    .line 60
    move v5, v3

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    move v5, v2

    .line 63
    :goto_1
    sget-boolean v6, Landroidx/recyclerview/widget/RecyclerView;->J0:Z

    .line 64
    .line 65
    iget-object v7, p0, Lm1/p0;->c:Ljava/util/ArrayList;

    .line 66
    .line 67
    if-eqz v6, :cond_4

    .line 68
    .line 69
    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    if-nez v6, :cond_3

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 77
    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string v2, "cached view received recycle internal? "

    .line 81
    .line 82
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-static {v4, v1}, Lb/c;->i(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw v0

    .line 96
    :cond_4
    :goto_2
    if-nez v5, :cond_7

    .line 97
    .line 98
    invoke-virtual {p1}, Lm1/B0;->isRecyclable()Z

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    if-eqz v5, :cond_5

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_5
    sget-boolean v3, Landroidx/recyclerview/widget/RecyclerView;->K0:Z

    .line 106
    .line 107
    if-eqz v3, :cond_6

    .line 108
    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string v5, "trying to recycle a non-recycleable holder. Hopefully, it will re-visit here. We are still removing it from animation lists"

    .line 112
    .line 113
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    const-string v5, "RecyclerView"

    .line 128
    .line 129
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    :cond_6
    move v3, v2

    .line 133
    goto/16 :goto_b

    .line 134
    .line 135
    :cond_7
    :goto_3
    iget v5, p0, Lm1/p0;->f:I

    .line 136
    .line 137
    if-lez v5, :cond_f

    .line 138
    .line 139
    iget v5, p1, Lm1/B0;->j:I

    .line 140
    .line 141
    and-int/lit16 v5, v5, 0x20e

    .line 142
    .line 143
    if-eqz v5, :cond_8

    .line 144
    .line 145
    goto :goto_8

    .line 146
    :cond_8
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    iget v6, p0, Lm1/p0;->f:I

    .line 151
    .line 152
    if-lt v5, v6, :cond_9

    .line 153
    .line 154
    if-lez v5, :cond_9

    .line 155
    .line 156
    invoke-virtual {p0, v2}, Lm1/p0;->f(I)V

    .line 157
    .line 158
    .line 159
    add-int/lit8 v5, v5, -0x1

    .line 160
    .line 161
    :cond_9
    sget-boolean v6, Landroidx/recyclerview/widget/RecyclerView;->P0:Z

    .line 162
    .line 163
    if-eqz v6, :cond_e

    .line 164
    .line 165
    if-lez v5, :cond_e

    .line 166
    .line 167
    iget-object v6, v4, Landroidx/recyclerview/widget/RecyclerView;->p0:Lm1/w;

    .line 168
    .line 169
    iget v8, p1, Lm1/B0;->c:I

    .line 170
    .line 171
    iget-object v9, v6, Lm1/w;->c:[I

    .line 172
    .line 173
    if-eqz v9, :cond_b

    .line 174
    .line 175
    iget v9, v6, Lm1/w;->d:I

    .line 176
    .line 177
    mul-int/lit8 v9, v9, 0x2

    .line 178
    .line 179
    move v10, v2

    .line 180
    :goto_4
    if-ge v10, v9, :cond_b

    .line 181
    .line 182
    iget-object v11, v6, Lm1/w;->c:[I

    .line 183
    .line 184
    aget v11, v11, v10

    .line 185
    .line 186
    if-ne v11, v8, :cond_a

    .line 187
    .line 188
    goto :goto_7

    .line 189
    :cond_a
    add-int/lit8 v10, v10, 0x2

    .line 190
    .line 191
    goto :goto_4

    .line 192
    :cond_b
    add-int/lit8 v5, v5, -0x1

    .line 193
    .line 194
    :goto_5
    if-ltz v5, :cond_d

    .line 195
    .line 196
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v6

    .line 200
    check-cast v6, Lm1/B0;

    .line 201
    .line 202
    iget v6, v6, Lm1/B0;->c:I

    .line 203
    .line 204
    iget-object v8, v4, Landroidx/recyclerview/widget/RecyclerView;->p0:Lm1/w;

    .line 205
    .line 206
    iget-object v9, v8, Lm1/w;->c:[I

    .line 207
    .line 208
    if-eqz v9, :cond_d

    .line 209
    .line 210
    iget v9, v8, Lm1/w;->d:I

    .line 211
    .line 212
    mul-int/lit8 v9, v9, 0x2

    .line 213
    .line 214
    move v10, v2

    .line 215
    :goto_6
    if-ge v10, v9, :cond_d

    .line 216
    .line 217
    iget-object v11, v8, Lm1/w;->c:[I

    .line 218
    .line 219
    aget v11, v11, v10

    .line 220
    .line 221
    if-ne v11, v6, :cond_c

    .line 222
    .line 223
    add-int/lit8 v5, v5, -0x1

    .line 224
    .line 225
    goto :goto_5

    .line 226
    :cond_c
    add-int/lit8 v10, v10, 0x2

    .line 227
    .line 228
    goto :goto_6

    .line 229
    :cond_d
    add-int/2addr v5, v3

    .line 230
    :cond_e
    :goto_7
    invoke-virtual {v7, v5, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    move v5, v3

    .line 234
    goto :goto_9

    .line 235
    :cond_f
    :goto_8
    move v5, v2

    .line 236
    :goto_9
    if-nez v5, :cond_10

    .line 237
    .line 238
    invoke-virtual {p0, p1, v3}, Lm1/p0;->a(Lm1/B0;Z)V

    .line 239
    .line 240
    .line 241
    :goto_a
    move v2, v5

    .line 242
    goto :goto_b

    .line 243
    :cond_10
    move v3, v2

    .line 244
    goto :goto_a

    .line 245
    :goto_b
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->p:Lm1/T0;

    .line 246
    .line 247
    invoke-virtual {v4, p1}, Lm1/T0;->d(Lm1/B0;)V

    .line 248
    .line 249
    .line 250
    if-nez v2, :cond_11

    .line 251
    .line 252
    if-nez v3, :cond_11

    .line 253
    .line 254
    if-eqz v0, :cond_11

    .line 255
    .line 256
    invoke-static {v1}, LU/a;->callPoolingContainerOnRelease(Landroid/view/View;)V

    .line 257
    .line 258
    .line 259
    const/4 v0, 0x0

    .line 260
    iput-object v0, p1, Lm1/B0;->s:Lm1/V;

    .line 261
    .line 262
    iput-object v0, p1, Lm1/B0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 263
    .line 264
    :cond_11
    return-void

    .line 265
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 266
    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    const-string v1, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    .line 270
    .line 271
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-static {v4, v0}, Lb/c;->i(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    throw p1

    .line 282
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 283
    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    .line 285
    .line 286
    const-string v2, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    .line 287
    .line 288
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-static {v4, v1}, Lb/c;->i(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    throw v0

    .line 302
    :cond_14
    :goto_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 303
    .line 304
    new-instance v5, Ljava/lang/StringBuilder;

    .line 305
    .line 306
    const-string v6, "Scrapped or attached views may not be recycled. isScrap:"

    .line 307
    .line 308
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {p1}, Lm1/B0;->g()Z

    .line 312
    .line 313
    .line 314
    move-result p1

    .line 315
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    const-string p1, " isAttached:"

    .line 319
    .line 320
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 324
    .line 325
    .line 326
    move-result-object p1

    .line 327
    if-eqz p1, :cond_15

    .line 328
    .line 329
    move v2, v3

    .line 330
    :cond_15
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object p1

    .line 337
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object p1

    .line 344
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    throw v0
.end method

.method public getScrapList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lm1/B0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm1/p0;->d:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getViewForPosition(I)Landroid/view/View;
    .locals 2

    .line 1
    const-wide v0, 0x7fffffffffffffffL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, v0, v1}, Lm1/p0;->i(IJ)Lm1/B0;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object p1, p1, Lm1/B0;->a:Landroid/view/View;

    .line 11
    .line 12
    return-object p1
.end method

.method public final h(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->E(Landroid/view/View;)Lm1/B0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget v0, p1, Lm1/B0;->j:I

    .line 6
    .line 7
    and-int/lit8 v0, v0, 0xc

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    move v0, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v1

    .line 16
    :goto_0
    iget-object v3, p0, Lm1/p0;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    .line 18
    if-nez v0, :cond_3

    .line 19
    .line 20
    invoke-virtual {p1}, Lm1/B0;->i()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    iget-object v0, v3, Landroidx/recyclerview/widget/RecyclerView;->V:Lm1/b0;

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    invoke-virtual {p1}, Lm1/B0;->b()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {v0, p1, v4}, Lm1/b0;->canReuseUpdatedViewHolder(Lm1/B0;Ljava/util/List;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    iget-object v0, p0, Lm1/p0;->b:Ljava/util/ArrayList;

    .line 42
    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    new-instance v0, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lm1/p0;->b:Ljava/util/ArrayList;

    .line 51
    .line 52
    :cond_2
    iput-object p0, p1, Lm1/B0;->n:Lm1/p0;

    .line 53
    .line 54
    iput-boolean v2, p1, Lm1/B0;->o:Z

    .line 55
    .line 56
    iget-object v0, p0, Lm1/p0;->b:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lm1/B0;->e()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_5

    .line 67
    .line 68
    invoke-virtual {p1}, Lm1/B0;->f()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_5

    .line 73
    .line 74
    iget-object v0, v3, Landroidx/recyclerview/widget/RecyclerView;->v:Lm1/V;

    .line 75
    .line 76
    invoke-virtual {v0}, Lm1/V;->hasStableIds()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_4

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 84
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v1, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    .line 88
    .line 89
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-static {v3, v0}, Lb/c;->i(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p1

    .line 100
    :cond_5
    :goto_2
    iput-object p0, p1, Lm1/B0;->n:Lm1/p0;

    .line 101
    .line 102
    iput-boolean v1, p1, Lm1/B0;->o:Z

    .line 103
    .line 104
    iget-object v0, p0, Lm1/p0;->a:Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method public final i(IJ)Lm1/B0;
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lm1/p0;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    if-ltz v1, :cond_48

    .line 8
    .line 9
    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView;->q0:Lm1/x0;

    .line 10
    .line 11
    invoke-virtual {v3}, Lm1/x0;->getItemCount()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-ge v1, v3, :cond_48

    .line 16
    .line 17
    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView;->q0:Lm1/x0;

    .line 18
    .line 19
    invoke-virtual {v3}, Lm1/x0;->isPreLayout()Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    const/4 v6, 0x0

    .line 24
    const/16 v8, 0x20

    .line 25
    .line 26
    if-eqz v4, :cond_6

    .line 27
    .line 28
    iget-object v4, v0, Lm1/p0;->b:Ljava/util/ArrayList;

    .line 29
    .line 30
    if-eqz v4, :cond_4

    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-nez v4, :cond_0

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_0
    move v9, v6

    .line 40
    :goto_0
    if-ge v9, v4, :cond_2

    .line 41
    .line 42
    iget-object v10, v0, Lm1/p0;->b:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v10

    .line 48
    check-cast v10, Lm1/B0;

    .line 49
    .line 50
    invoke-virtual {v10}, Lm1/B0;->m()Z

    .line 51
    .line 52
    .line 53
    move-result v11

    .line 54
    if-nez v11, :cond_1

    .line 55
    .line 56
    invoke-virtual {v10}, Lm1/B0;->getLayoutPosition()I

    .line 57
    .line 58
    .line 59
    move-result v11

    .line 60
    if-ne v11, v1, :cond_1

    .line 61
    .line 62
    invoke-virtual {v10, v8}, Lm1/B0;->a(I)V

    .line 63
    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_1
    add-int/lit8 v9, v9, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    iget-object v9, v2, Landroidx/recyclerview/widget/RecyclerView;->v:Lm1/V;

    .line 70
    .line 71
    invoke-virtual {v9}, Lm1/V;->hasStableIds()Z

    .line 72
    .line 73
    .line 74
    move-result v9

    .line 75
    if-eqz v9, :cond_4

    .line 76
    .line 77
    iget-object v9, v2, Landroidx/recyclerview/widget/RecyclerView;->m:Lm1/b;

    .line 78
    .line 79
    invoke-virtual {v9, v1, v6}, Lm1/b;->f(II)I

    .line 80
    .line 81
    .line 82
    move-result v9

    .line 83
    if-lez v9, :cond_4

    .line 84
    .line 85
    iget-object v10, v2, Landroidx/recyclerview/widget/RecyclerView;->v:Lm1/V;

    .line 86
    .line 87
    invoke-virtual {v10}, Lm1/V;->getItemCount()I

    .line 88
    .line 89
    .line 90
    move-result v10

    .line 91
    if-ge v9, v10, :cond_4

    .line 92
    .line 93
    iget-object v10, v2, Landroidx/recyclerview/widget/RecyclerView;->v:Lm1/V;

    .line 94
    .line 95
    invoke-virtual {v10, v9}, Lm1/V;->getItemId(I)J

    .line 96
    .line 97
    .line 98
    move-result-wide v9

    .line 99
    move v11, v6

    .line 100
    :goto_1
    if-ge v11, v4, :cond_4

    .line 101
    .line 102
    iget-object v12, v0, Lm1/p0;->b:Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v12

    .line 108
    check-cast v12, Lm1/B0;

    .line 109
    .line 110
    invoke-virtual {v12}, Lm1/B0;->m()Z

    .line 111
    .line 112
    .line 113
    move-result v13

    .line 114
    if-nez v13, :cond_3

    .line 115
    .line 116
    invoke-virtual {v12}, Lm1/B0;->getItemId()J

    .line 117
    .line 118
    .line 119
    move-result-wide v13

    .line 120
    cmp-long v13, v13, v9

    .line 121
    .line 122
    if-nez v13, :cond_3

    .line 123
    .line 124
    invoke-virtual {v12, v8}, Lm1/B0;->a(I)V

    .line 125
    .line 126
    .line 127
    move-object v10, v12

    .line 128
    goto :goto_3

    .line 129
    :cond_3
    add-int/lit8 v11, v11, 0x1

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_4
    :goto_2
    const/4 v10, 0x0

    .line 133
    :goto_3
    if-eqz v10, :cond_5

    .line 134
    .line 135
    const/4 v4, 0x1

    .line 136
    goto :goto_4

    .line 137
    :cond_5
    move v4, v6

    .line 138
    goto :goto_4

    .line 139
    :cond_6
    move v4, v6

    .line 140
    const/4 v10, 0x0

    .line 141
    :goto_4
    iget-object v9, v0, Lm1/p0;->c:Ljava/util/ArrayList;

    .line 142
    .line 143
    iget-object v11, v0, Lm1/p0;->a:Ljava/util/ArrayList;

    .line 144
    .line 145
    const-string v12, "RecyclerView"

    .line 146
    .line 147
    if-nez v10, :cond_1d

    .line 148
    .line 149
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 150
    .line 151
    .line 152
    move-result v10

    .line 153
    move v13, v6

    .line 154
    :goto_5
    if-ge v13, v10, :cond_9

    .line 155
    .line 156
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v14

    .line 160
    check-cast v14, Lm1/B0;

    .line 161
    .line 162
    invoke-virtual {v14}, Lm1/B0;->m()Z

    .line 163
    .line 164
    .line 165
    move-result v15

    .line 166
    if-nez v15, :cond_8

    .line 167
    .line 168
    invoke-virtual {v14}, Lm1/B0;->getLayoutPosition()I

    .line 169
    .line 170
    .line 171
    move-result v15

    .line 172
    if-ne v15, v1, :cond_8

    .line 173
    .line 174
    invoke-virtual {v14}, Lm1/B0;->e()Z

    .line 175
    .line 176
    .line 177
    move-result v15

    .line 178
    if-nez v15, :cond_8

    .line 179
    .line 180
    iget-boolean v15, v3, Lm1/x0;->g:Z

    .line 181
    .line 182
    if-nez v15, :cond_7

    .line 183
    .line 184
    invoke-virtual {v14}, Lm1/B0;->f()Z

    .line 185
    .line 186
    .line 187
    move-result v15

    .line 188
    if-nez v15, :cond_8

    .line 189
    .line 190
    :cond_7
    invoke-virtual {v14, v8}, Lm1/B0;->a(I)V

    .line 191
    .line 192
    .line 193
    move-object v10, v14

    .line 194
    const/16 v17, 0x1

    .line 195
    .line 196
    goto/16 :goto_9

    .line 197
    .line 198
    :cond_8
    add-int/lit8 v13, v13, 0x1

    .line 199
    .line 200
    goto :goto_5

    .line 201
    :cond_9
    iget-object v10, v2, Landroidx/recyclerview/widget/RecyclerView;->n:Lm1/d;

    .line 202
    .line 203
    iget-object v13, v10, Lm1/d;->c:Ljava/util/ArrayList;

    .line 204
    .line 205
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 206
    .line 207
    .line 208
    move-result v14

    .line 209
    move v15, v6

    .line 210
    :goto_6
    if-ge v15, v14, :cond_b

    .line 211
    .line 212
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v16

    .line 216
    const/16 v17, 0x1

    .line 217
    .line 218
    move-object/from16 v7, v16

    .line 219
    .line 220
    check-cast v7, Landroid/view/View;

    .line 221
    .line 222
    iget-object v5, v10, Lm1/d;->a:Lm1/T;

    .line 223
    .line 224
    invoke-virtual {v5, v7}, Lm1/T;->getChildViewHolder(Landroid/view/View;)Lm1/B0;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    invoke-virtual {v5}, Lm1/B0;->getLayoutPosition()I

    .line 229
    .line 230
    .line 231
    move-result v8

    .line 232
    if-ne v8, v1, :cond_a

    .line 233
    .line 234
    invoke-virtual {v5}, Lm1/B0;->e()Z

    .line 235
    .line 236
    .line 237
    move-result v8

    .line 238
    if-nez v8, :cond_a

    .line 239
    .line 240
    invoke-virtual {v5}, Lm1/B0;->f()Z

    .line 241
    .line 242
    .line 243
    move-result v5

    .line 244
    if-nez v5, :cond_a

    .line 245
    .line 246
    goto :goto_7

    .line 247
    :cond_a
    add-int/lit8 v15, v15, 0x1

    .line 248
    .line 249
    const/16 v8, 0x20

    .line 250
    .line 251
    goto :goto_6

    .line 252
    :cond_b
    const/16 v17, 0x1

    .line 253
    .line 254
    const/4 v7, 0x0

    .line 255
    :goto_7
    if-eqz v7, :cond_f

    .line 256
    .line 257
    invoke-static {v7}, Landroidx/recyclerview/widget/RecyclerView;->E(Landroid/view/View;)Lm1/B0;

    .line 258
    .line 259
    .line 260
    move-result-object v5

    .line 261
    iget-object v8, v2, Landroidx/recyclerview/widget/RecyclerView;->n:Lm1/d;

    .line 262
    .line 263
    iget-object v10, v8, Lm1/d;->a:Lm1/T;

    .line 264
    .line 265
    invoke-virtual {v10, v7}, Lm1/T;->indexOfChild(Landroid/view/View;)I

    .line 266
    .line 267
    .line 268
    move-result v10

    .line 269
    if-ltz v10, :cond_e

    .line 270
    .line 271
    iget-object v13, v8, Lm1/d;->b:Lm1/c;

    .line 272
    .line 273
    invoke-virtual {v13, v10}, Lm1/c;->d(I)Z

    .line 274
    .line 275
    .line 276
    move-result v14

    .line 277
    if-eqz v14, :cond_d

    .line 278
    .line 279
    invoke-virtual {v13, v10}, Lm1/c;->a(I)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v8, v7}, Lm1/d;->g(Landroid/view/View;)V

    .line 283
    .line 284
    .line 285
    iget-object v8, v2, Landroidx/recyclerview/widget/RecyclerView;->n:Lm1/d;

    .line 286
    .line 287
    invoke-virtual {v8, v7}, Lm1/d;->f(Landroid/view/View;)I

    .line 288
    .line 289
    .line 290
    move-result v8

    .line 291
    const/4 v10, -0x1

    .line 292
    if-eq v8, v10, :cond_c

    .line 293
    .line 294
    iget-object v10, v2, Landroidx/recyclerview/widget/RecyclerView;->n:Lm1/d;

    .line 295
    .line 296
    invoke-virtual {v10, v8}, Lm1/d;->e(I)I

    .line 297
    .line 298
    .line 299
    move-result v8

    .line 300
    iget-object v13, v10, Lm1/d;->b:Lm1/c;

    .line 301
    .line 302
    invoke-virtual {v13, v8}, Lm1/c;->f(I)Z

    .line 303
    .line 304
    .line 305
    iget-object v10, v10, Lm1/d;->a:Lm1/T;

    .line 306
    .line 307
    invoke-virtual {v10, v8}, Lm1/T;->detachViewFromParent(I)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v0, v7}, Lm1/p0;->h(Landroid/view/View;)V

    .line 311
    .line 312
    .line 313
    const/16 v7, 0x2020

    .line 314
    .line 315
    invoke-virtual {v5, v7}, Lm1/B0;->a(I)V

    .line 316
    .line 317
    .line 318
    move-object v10, v5

    .line 319
    goto/16 :goto_9

    .line 320
    .line 321
    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 322
    .line 323
    new-instance v3, Ljava/lang/StringBuilder;

    .line 324
    .line 325
    const-string v4, "layout index should not be -1 after unhiding a view:"

    .line 326
    .line 327
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-static {v2, v3}, Lb/c;->i(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v2

    .line 337
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    throw v1

    .line 341
    :cond_d
    new-instance v1, Ljava/lang/RuntimeException;

    .line 342
    .line 343
    new-instance v2, Ljava/lang/StringBuilder;

    .line 344
    .line 345
    const-string v3, "trying to unhide a view that was not hidden"

    .line 346
    .line 347
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v2

    .line 357
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    throw v1

    .line 361
    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 362
    .line 363
    new-instance v2, Ljava/lang/StringBuilder;

    .line 364
    .line 365
    const-string v3, "view is not a child, cannot hide "

    .line 366
    .line 367
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v2

    .line 377
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    throw v1

    .line 381
    :cond_f
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 382
    .line 383
    .line 384
    move-result v5

    .line 385
    move v7, v6

    .line 386
    :goto_8
    if-ge v7, v5, :cond_12

    .line 387
    .line 388
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v8

    .line 392
    check-cast v8, Lm1/B0;

    .line 393
    .line 394
    invoke-virtual {v8}, Lm1/B0;->e()Z

    .line 395
    .line 396
    .line 397
    move-result v10

    .line 398
    if-nez v10, :cond_11

    .line 399
    .line 400
    invoke-virtual {v8}, Lm1/B0;->getLayoutPosition()I

    .line 401
    .line 402
    .line 403
    move-result v10

    .line 404
    if-ne v10, v1, :cond_11

    .line 405
    .line 406
    invoke-virtual {v8}, Lm1/B0;->c()Z

    .line 407
    .line 408
    .line 409
    move-result v10

    .line 410
    if-nez v10, :cond_11

    .line 411
    .line 412
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    sget-boolean v5, Landroidx/recyclerview/widget/RecyclerView;->K0:Z

    .line 416
    .line 417
    if-eqz v5, :cond_10

    .line 418
    .line 419
    new-instance v5, Ljava/lang/StringBuilder;

    .line 420
    .line 421
    const-string v7, "getScrapOrHiddenOrCachedHolderForPosition("

    .line 422
    .line 423
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    const-string v7, ") found match in cache: "

    .line 430
    .line 431
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v5

    .line 441
    invoke-static {v12, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    .line 443
    .line 444
    :cond_10
    move-object v10, v8

    .line 445
    goto :goto_9

    .line 446
    :cond_11
    add-int/lit8 v7, v7, 0x1

    .line 447
    .line 448
    goto :goto_8

    .line 449
    :cond_12
    const/4 v10, 0x0

    .line 450
    :goto_9
    if-eqz v10, :cond_1e

    .line 451
    .line 452
    invoke-virtual {v10}, Lm1/B0;->f()Z

    .line 453
    .line 454
    .line 455
    move-result v5

    .line 456
    if-eqz v5, :cond_15

    .line 457
    .line 458
    sget-boolean v5, Landroidx/recyclerview/widget/RecyclerView;->J0:Z

    .line 459
    .line 460
    if-eqz v5, :cond_14

    .line 461
    .line 462
    invoke-virtual {v3}, Lm1/x0;->isPreLayout()Z

    .line 463
    .line 464
    .line 465
    move-result v5

    .line 466
    if-eqz v5, :cond_13

    .line 467
    .line 468
    goto :goto_a

    .line 469
    :cond_13
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 470
    .line 471
    new-instance v3, Ljava/lang/StringBuilder;

    .line 472
    .line 473
    const-string v4, "should not receive a removed view unless it is pre layout"

    .line 474
    .line 475
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    invoke-static {v2, v3}, Lb/c;->i(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v2

    .line 482
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    throw v1

    .line 486
    :cond_14
    :goto_a
    invoke-virtual {v3}, Lm1/x0;->isPreLayout()Z

    .line 487
    .line 488
    .line 489
    move-result v5

    .line 490
    goto :goto_b

    .line 491
    :cond_15
    iget v5, v10, Lm1/B0;->c:I

    .line 492
    .line 493
    if-ltz v5, :cond_1c

    .line 494
    .line 495
    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView;->v:Lm1/V;

    .line 496
    .line 497
    invoke-virtual {v7}, Lm1/V;->getItemCount()I

    .line 498
    .line 499
    .line 500
    move-result v7

    .line 501
    if-ge v5, v7, :cond_1c

    .line 502
    .line 503
    invoke-virtual {v3}, Lm1/x0;->isPreLayout()Z

    .line 504
    .line 505
    .line 506
    move-result v5

    .line 507
    if-nez v5, :cond_17

    .line 508
    .line 509
    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView;->v:Lm1/V;

    .line 510
    .line 511
    iget v7, v10, Lm1/B0;->c:I

    .line 512
    .line 513
    invoke-virtual {v5, v7}, Lm1/V;->getItemViewType(I)I

    .line 514
    .line 515
    .line 516
    move-result v5

    .line 517
    invoke-virtual {v10}, Lm1/B0;->getItemViewType()I

    .line 518
    .line 519
    .line 520
    move-result v7

    .line 521
    if-eq v5, v7, :cond_17

    .line 522
    .line 523
    :cond_16
    move v5, v6

    .line 524
    goto :goto_b

    .line 525
    :cond_17
    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView;->v:Lm1/V;

    .line 526
    .line 527
    invoke-virtual {v5}, Lm1/V;->hasStableIds()Z

    .line 528
    .line 529
    .line 530
    move-result v5

    .line 531
    if-eqz v5, :cond_18

    .line 532
    .line 533
    invoke-virtual {v10}, Lm1/B0;->getItemId()J

    .line 534
    .line 535
    .line 536
    move-result-wide v7

    .line 537
    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView;->v:Lm1/V;

    .line 538
    .line 539
    iget v13, v10, Lm1/B0;->c:I

    .line 540
    .line 541
    invoke-virtual {v5, v13}, Lm1/V;->getItemId(I)J

    .line 542
    .line 543
    .line 544
    move-result-wide v13

    .line 545
    cmp-long v5, v7, v13

    .line 546
    .line 547
    if-nez v5, :cond_16

    .line 548
    .line 549
    :cond_18
    move/from16 v5, v17

    .line 550
    .line 551
    :goto_b
    if-nez v5, :cond_1b

    .line 552
    .line 553
    const/4 v5, 0x4

    .line 554
    invoke-virtual {v10, v5}, Lm1/B0;->a(I)V

    .line 555
    .line 556
    .line 557
    invoke-virtual {v10}, Lm1/B0;->g()Z

    .line 558
    .line 559
    .line 560
    move-result v5

    .line 561
    if-eqz v5, :cond_19

    .line 562
    .line 563
    iget-object v5, v10, Lm1/B0;->a:Landroid/view/View;

    .line 564
    .line 565
    invoke-virtual {v2, v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 566
    .line 567
    .line 568
    iget-object v5, v10, Lm1/B0;->n:Lm1/p0;

    .line 569
    .line 570
    invoke-virtual {v5, v10}, Lm1/p0;->j(Lm1/B0;)V

    .line 571
    .line 572
    .line 573
    goto :goto_c

    .line 574
    :cond_19
    invoke-virtual {v10}, Lm1/B0;->m()Z

    .line 575
    .line 576
    .line 577
    move-result v5

    .line 578
    if-eqz v5, :cond_1a

    .line 579
    .line 580
    iget v5, v10, Lm1/B0;->j:I

    .line 581
    .line 582
    and-int/lit8 v5, v5, -0x21

    .line 583
    .line 584
    iput v5, v10, Lm1/B0;->j:I

    .line 585
    .line 586
    :cond_1a
    :goto_c
    invoke-virtual {v0, v10}, Lm1/p0;->g(Lm1/B0;)V

    .line 587
    .line 588
    .line 589
    const/4 v10, 0x0

    .line 590
    goto :goto_d

    .line 591
    :cond_1b
    move/from16 v4, v17

    .line 592
    .line 593
    goto :goto_d

    .line 594
    :cond_1c
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    .line 595
    .line 596
    new-instance v3, Ljava/lang/StringBuilder;

    .line 597
    .line 598
    const-string v4, "Inconsistency detected. Invalid view holder adapter position"

    .line 599
    .line 600
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 601
    .line 602
    .line 603
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 604
    .line 605
    .line 606
    invoke-static {v2, v3}, Lb/c;->i(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object v2

    .line 610
    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 611
    .line 612
    .line 613
    throw v1

    .line 614
    :cond_1d
    const/16 v17, 0x1

    .line 615
    .line 616
    :cond_1e
    :goto_d
    const-wide/16 v18, 0x0

    .line 617
    .line 618
    const-wide v20, 0x7fffffffffffffffL

    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    if-nez v10, :cond_31

    .line 624
    .line 625
    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView;->m:Lm1/b;

    .line 626
    .line 627
    invoke-virtual {v5, v1, v6}, Lm1/b;->f(II)I

    .line 628
    .line 629
    .line 630
    move-result v5

    .line 631
    if-ltz v5, :cond_30

    .line 632
    .line 633
    iget-object v15, v2, Landroidx/recyclerview/widget/RecyclerView;->v:Lm1/V;

    .line 634
    .line 635
    invoke-virtual {v15}, Lm1/V;->getItemCount()I

    .line 636
    .line 637
    .line 638
    move-result v15

    .line 639
    if-ge v5, v15, :cond_30

    .line 640
    .line 641
    iget-object v15, v2, Landroidx/recyclerview/widget/RecyclerView;->v:Lm1/V;

    .line 642
    .line 643
    invoke-virtual {v15, v5}, Lm1/V;->getItemViewType(I)I

    .line 644
    .line 645
    .line 646
    move-result v15

    .line 647
    const-wide/16 v22, 0x3

    .line 648
    .line 649
    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView;->v:Lm1/V;

    .line 650
    .line 651
    invoke-virtual {v7}, Lm1/V;->hasStableIds()Z

    .line 652
    .line 653
    .line 654
    move-result v7

    .line 655
    if-eqz v7, :cond_27

    .line 656
    .line 657
    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView;->v:Lm1/V;

    .line 658
    .line 659
    invoke-virtual {v7, v5}, Lm1/V;->getItemId(I)J

    .line 660
    .line 661
    .line 662
    move-result-wide v7

    .line 663
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 664
    .line 665
    .line 666
    move-result v10

    .line 667
    add-int/lit8 v10, v10, -0x1

    .line 668
    .line 669
    :goto_e
    if-ltz v10, :cond_21

    .line 670
    .line 671
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 672
    .line 673
    .line 674
    move-result-object v24

    .line 675
    const-wide/16 v25, 0x4

    .line 676
    .line 677
    move-object/from16 v13, v24

    .line 678
    .line 679
    check-cast v13, Lm1/B0;

    .line 680
    .line 681
    invoke-virtual {v13}, Lm1/B0;->getItemId()J

    .line 682
    .line 683
    .line 684
    move-result-wide v27

    .line 685
    cmp-long v14, v27, v7

    .line 686
    .line 687
    if-nez v14, :cond_20

    .line 688
    .line 689
    invoke-virtual {v13}, Lm1/B0;->m()Z

    .line 690
    .line 691
    .line 692
    move-result v14

    .line 693
    if-nez v14, :cond_20

    .line 694
    .line 695
    invoke-virtual {v13}, Lm1/B0;->getItemViewType()I

    .line 696
    .line 697
    .line 698
    move-result v14

    .line 699
    if-ne v15, v14, :cond_1f

    .line 700
    .line 701
    const/16 v14, 0x20

    .line 702
    .line 703
    invoke-virtual {v13, v14}, Lm1/B0;->a(I)V

    .line 704
    .line 705
    .line 706
    invoke-virtual {v13}, Lm1/B0;->f()Z

    .line 707
    .line 708
    .line 709
    move-result v7

    .line 710
    if-eqz v7, :cond_25

    .line 711
    .line 712
    invoke-virtual {v3}, Lm1/x0;->isPreLayout()Z

    .line 713
    .line 714
    .line 715
    move-result v7

    .line 716
    if-nez v7, :cond_25

    .line 717
    .line 718
    iget v7, v13, Lm1/B0;->j:I

    .line 719
    .line 720
    and-int/lit8 v7, v7, -0xf

    .line 721
    .line 722
    or-int/lit8 v7, v7, 0x2

    .line 723
    .line 724
    iput v7, v13, Lm1/B0;->j:I

    .line 725
    .line 726
    goto :goto_10

    .line 727
    :cond_1f
    const/16 v14, 0x20

    .line 728
    .line 729
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 730
    .line 731
    .line 732
    iget-object v13, v13, Lm1/B0;->a:Landroid/view/View;

    .line 733
    .line 734
    invoke-virtual {v2, v13, v6}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 735
    .line 736
    .line 737
    invoke-static {v13}, Landroidx/recyclerview/widget/RecyclerView;->E(Landroid/view/View;)Lm1/B0;

    .line 738
    .line 739
    .line 740
    move-result-object v13

    .line 741
    const/4 v14, 0x0

    .line 742
    iput-object v14, v13, Lm1/B0;->n:Lm1/p0;

    .line 743
    .line 744
    iput-boolean v6, v13, Lm1/B0;->o:Z

    .line 745
    .line 746
    iget v14, v13, Lm1/B0;->j:I

    .line 747
    .line 748
    and-int/lit8 v14, v14, -0x21

    .line 749
    .line 750
    iput v14, v13, Lm1/B0;->j:I

    .line 751
    .line 752
    invoke-virtual {v0, v13}, Lm1/p0;->g(Lm1/B0;)V

    .line 753
    .line 754
    .line 755
    :cond_20
    add-int/lit8 v10, v10, -0x1

    .line 756
    .line 757
    goto :goto_e

    .line 758
    :cond_21
    const-wide/16 v25, 0x4

    .line 759
    .line 760
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 761
    .line 762
    .line 763
    move-result v10

    .line 764
    add-int/lit8 v10, v10, -0x1

    .line 765
    .line 766
    :goto_f
    if-ltz v10, :cond_23

    .line 767
    .line 768
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 769
    .line 770
    .line 771
    move-result-object v11

    .line 772
    check-cast v11, Lm1/B0;

    .line 773
    .line 774
    invoke-virtual {v11}, Lm1/B0;->getItemId()J

    .line 775
    .line 776
    .line 777
    move-result-wide v13

    .line 778
    cmp-long v13, v13, v7

    .line 779
    .line 780
    if-nez v13, :cond_24

    .line 781
    .line 782
    invoke-virtual {v11}, Lm1/B0;->c()Z

    .line 783
    .line 784
    .line 785
    move-result v13

    .line 786
    if-nez v13, :cond_24

    .line 787
    .line 788
    invoke-virtual {v11}, Lm1/B0;->getItemViewType()I

    .line 789
    .line 790
    .line 791
    move-result v7

    .line 792
    if-ne v15, v7, :cond_22

    .line 793
    .line 794
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 795
    .line 796
    .line 797
    move-object v13, v11

    .line 798
    goto :goto_10

    .line 799
    :cond_22
    invoke-virtual {v0, v10}, Lm1/p0;->f(I)V

    .line 800
    .line 801
    .line 802
    :cond_23
    const/4 v13, 0x0

    .line 803
    goto :goto_10

    .line 804
    :cond_24
    add-int/lit8 v10, v10, -0x1

    .line 805
    .line 806
    goto :goto_f

    .line 807
    :cond_25
    :goto_10
    if-eqz v13, :cond_26

    .line 808
    .line 809
    iput v5, v13, Lm1/B0;->c:I

    .line 810
    .line 811
    move-object v10, v13

    .line 812
    move/from16 v4, v17

    .line 813
    .line 814
    goto :goto_11

    .line 815
    :cond_26
    move-object v10, v13

    .line 816
    goto :goto_11

    .line 817
    :cond_27
    const-wide/16 v25, 0x4

    .line 818
    .line 819
    :goto_11
    if-nez v10, :cond_2a

    .line 820
    .line 821
    sget-boolean v5, Landroidx/recyclerview/widget/RecyclerView;->K0:Z

    .line 822
    .line 823
    if-eqz v5, :cond_28

    .line 824
    .line 825
    new-instance v5, Ljava/lang/StringBuilder;

    .line 826
    .line 827
    const-string v7, "tryGetViewHolderForPositionByDeadline("

    .line 828
    .line 829
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 830
    .line 831
    .line 832
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 833
    .line 834
    .line 835
    const-string v7, ") fetching from shared pool"

    .line 836
    .line 837
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    .line 839
    .line 840
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 841
    .line 842
    .line 843
    move-result-object v5

    .line 844
    invoke-static {v12, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    .line 846
    .line 847
    :cond_28
    invoke-virtual {v0}, Lm1/p0;->b()Lm1/o0;

    .line 848
    .line 849
    .line 850
    move-result-object v5

    .line 851
    invoke-virtual {v5, v15}, Lm1/o0;->getRecycledView(I)Lm1/B0;

    .line 852
    .line 853
    .line 854
    move-result-object v5

    .line 855
    if-eqz v5, :cond_29

    .line 856
    .line 857
    invoke-virtual {v5}, Lm1/B0;->k()V

    .line 858
    .line 859
    .line 860
    :cond_29
    move-object v10, v5

    .line 861
    :cond_2a
    if-nez v10, :cond_32

    .line 862
    .line 863
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 864
    .line 865
    .line 866
    move-result-wide v7

    .line 867
    cmp-long v5, p2, v20

    .line 868
    .line 869
    if-eqz v5, :cond_2d

    .line 870
    .line 871
    iget-object v5, v0, Lm1/p0;->g:Lm1/o0;

    .line 872
    .line 873
    invoke-virtual {v5, v15}, Lm1/o0;->a(I)Lm1/n0;

    .line 874
    .line 875
    .line 876
    move-result-object v5

    .line 877
    iget-wide v9, v5, Lm1/n0;->c:J

    .line 878
    .line 879
    cmp-long v5, v9, v18

    .line 880
    .line 881
    if-eqz v5, :cond_2c

    .line 882
    .line 883
    add-long/2addr v9, v7

    .line 884
    cmp-long v5, v9, p2

    .line 885
    .line 886
    if-gez v5, :cond_2b

    .line 887
    .line 888
    goto :goto_12

    .line 889
    :cond_2b
    move v5, v6

    .line 890
    goto :goto_13

    .line 891
    :cond_2c
    :goto_12
    move/from16 v5, v17

    .line 892
    .line 893
    :goto_13
    if-nez v5, :cond_2d

    .line 894
    .line 895
    const/16 v16, 0x0

    .line 896
    .line 897
    return-object v16

    .line 898
    :cond_2d
    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView;->v:Lm1/V;

    .line 899
    .line 900
    invoke-virtual {v5, v2, v15}, Lm1/V;->createViewHolder(Landroid/view/ViewGroup;I)Lm1/B0;

    .line 901
    .line 902
    .line 903
    move-result-object v10

    .line 904
    sget-boolean v5, Landroidx/recyclerview/widget/RecyclerView;->P0:Z

    .line 905
    .line 906
    if-eqz v5, :cond_2e

    .line 907
    .line 908
    iget-object v5, v10, Lm1/B0;->a:Landroid/view/View;

    .line 909
    .line 910
    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView;->A(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    .line 911
    .line 912
    .line 913
    move-result-object v5

    .line 914
    if-eqz v5, :cond_2e

    .line 915
    .line 916
    new-instance v9, Ljava/lang/ref/WeakReference;

    .line 917
    .line 918
    invoke-direct {v9, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 919
    .line 920
    .line 921
    iput-object v9, v10, Lm1/B0;->b:Ljava/lang/ref/WeakReference;

    .line 922
    .line 923
    :cond_2e
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 924
    .line 925
    .line 926
    move-result-wide v13

    .line 927
    iget-object v5, v0, Lm1/p0;->g:Lm1/o0;

    .line 928
    .line 929
    sub-long/2addr v13, v7

    .line 930
    invoke-virtual {v5, v15}, Lm1/o0;->a(I)Lm1/n0;

    .line 931
    .line 932
    .line 933
    move-result-object v5

    .line 934
    iget-wide v7, v5, Lm1/n0;->c:J

    .line 935
    .line 936
    cmp-long v9, v7, v18

    .line 937
    .line 938
    if-nez v9, :cond_2f

    .line 939
    .line 940
    goto :goto_14

    .line 941
    :cond_2f
    div-long v7, v7, v25

    .line 942
    .line 943
    mul-long v7, v7, v22

    .line 944
    .line 945
    div-long v13, v13, v25

    .line 946
    .line 947
    add-long/2addr v13, v7

    .line 948
    :goto_14
    iput-wide v13, v5, Lm1/n0;->c:J

    .line 949
    .line 950
    sget-boolean v5, Landroidx/recyclerview/widget/RecyclerView;->K0:Z

    .line 951
    .line 952
    if-eqz v5, :cond_32

    .line 953
    .line 954
    const-string v5, "tryGetViewHolderForPositionByDeadline created new ViewHolder"

    .line 955
    .line 956
    invoke-static {v12, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    .line 958
    .line 959
    goto :goto_15

    .line 960
    :cond_30
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    .line 961
    .line 962
    const-string v6, "Inconsistency detected. Invalid item position "

    .line 963
    .line 964
    const-string v7, "(offset:"

    .line 965
    .line 966
    const-string v8, ").state:"

    .line 967
    .line 968
    invoke-static {v1, v5, v6, v7, v8}, LA/i;->p(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 969
    .line 970
    .line 971
    move-result-object v1

    .line 972
    invoke-virtual {v3}, Lm1/x0;->getItemCount()I

    .line 973
    .line 974
    .line 975
    move-result v3

    .line 976
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 977
    .line 978
    .line 979
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    .line 980
    .line 981
    .line 982
    move-result-object v2

    .line 983
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 984
    .line 985
    .line 986
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 987
    .line 988
    .line 989
    move-result-object v1

    .line 990
    invoke-direct {v4, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 991
    .line 992
    .line 993
    throw v4

    .line 994
    :cond_31
    const-wide/16 v22, 0x3

    .line 995
    .line 996
    const-wide/16 v25, 0x4

    .line 997
    .line 998
    :cond_32
    :goto_15
    if-eqz v4, :cond_34

    .line 999
    .line 1000
    invoke-virtual {v3}, Lm1/x0;->isPreLayout()Z

    .line 1001
    .line 1002
    .line 1003
    move-result v5

    .line 1004
    if-nez v5, :cond_34

    .line 1005
    .line 1006
    iget v5, v10, Lm1/B0;->j:I

    .line 1007
    .line 1008
    and-int/lit16 v7, v5, 0x2000

    .line 1009
    .line 1010
    if-eqz v7, :cond_33

    .line 1011
    .line 1012
    move/from16 v7, v17

    .line 1013
    .line 1014
    goto :goto_16

    .line 1015
    :cond_33
    move v7, v6

    .line 1016
    :goto_16
    if-eqz v7, :cond_34

    .line 1017
    .line 1018
    and-int/lit16 v5, v5, -0x2001

    .line 1019
    .line 1020
    iput v5, v10, Lm1/B0;->j:I

    .line 1021
    .line 1022
    iget-boolean v5, v3, Lm1/x0;->j:Z

    .line 1023
    .line 1024
    if-eqz v5, :cond_34

    .line 1025
    .line 1026
    invoke-static {v10}, Lm1/b0;->a(Lm1/B0;)I

    .line 1027
    .line 1028
    .line 1029
    move-result v5

    .line 1030
    or-int/lit16 v5, v5, 0x1000

    .line 1031
    .line 1032
    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView;->V:Lm1/b0;

    .line 1033
    .line 1034
    invoke-virtual {v10}, Lm1/B0;->b()Ljava/util/List;

    .line 1035
    .line 1036
    .line 1037
    move-result-object v8

    .line 1038
    invoke-virtual {v7, v3, v10, v5, v8}, Lm1/b0;->recordPreLayoutInformation(Lm1/x0;Lm1/B0;ILjava/util/List;)Lm1/a0;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v5

    .line 1042
    invoke-virtual {v2, v10, v5}, Landroidx/recyclerview/widget/RecyclerView;->R(Lm1/B0;Lm1/a0;)V

    .line 1043
    .line 1044
    .line 1045
    :cond_34
    invoke-virtual {v3}, Lm1/x0;->isPreLayout()Z

    .line 1046
    .line 1047
    .line 1048
    move-result v5

    .line 1049
    if-eqz v5, :cond_35

    .line 1050
    .line 1051
    invoke-virtual {v10}, Lm1/B0;->d()Z

    .line 1052
    .line 1053
    .line 1054
    move-result v5

    .line 1055
    if-eqz v5, :cond_35

    .line 1056
    .line 1057
    iput v1, v10, Lm1/B0;->g:I

    .line 1058
    .line 1059
    goto :goto_18

    .line 1060
    :cond_35
    invoke-virtual {v10}, Lm1/B0;->d()Z

    .line 1061
    .line 1062
    .line 1063
    move-result v5

    .line 1064
    if-eqz v5, :cond_38

    .line 1065
    .line 1066
    iget v5, v10, Lm1/B0;->j:I

    .line 1067
    .line 1068
    and-int/lit8 v5, v5, 0x2

    .line 1069
    .line 1070
    if-eqz v5, :cond_36

    .line 1071
    .line 1072
    move/from16 v5, v17

    .line 1073
    .line 1074
    goto :goto_17

    .line 1075
    :cond_36
    move v5, v6

    .line 1076
    :goto_17
    if-nez v5, :cond_38

    .line 1077
    .line 1078
    invoke-virtual {v10}, Lm1/B0;->e()Z

    .line 1079
    .line 1080
    .line 1081
    move-result v5

    .line 1082
    if-eqz v5, :cond_37

    .line 1083
    .line 1084
    goto :goto_19

    .line 1085
    :cond_37
    :goto_18
    move v1, v6

    .line 1086
    move/from16 v5, v17

    .line 1087
    .line 1088
    goto/16 :goto_20

    .line 1089
    .line 1090
    :cond_38
    :goto_19
    sget-boolean v5, Landroidx/recyclerview/widget/RecyclerView;->J0:Z

    .line 1091
    .line 1092
    if-eqz v5, :cond_3a

    .line 1093
    .line 1094
    invoke-virtual {v10}, Lm1/B0;->f()Z

    .line 1095
    .line 1096
    .line 1097
    move-result v5

    .line 1098
    if-nez v5, :cond_39

    .line 1099
    .line 1100
    goto :goto_1a

    .line 1101
    :cond_39
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 1102
    .line 1103
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1104
    .line 1105
    const-string v4, "Removed holder should be bound and it should come here only in pre-layout. Holder: "

    .line 1106
    .line 1107
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1108
    .line 1109
    .line 1110
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1111
    .line 1112
    .line 1113
    invoke-static {v2, v3}, Lb/c;->i(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 1114
    .line 1115
    .line 1116
    move-result-object v2

    .line 1117
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1118
    .line 1119
    .line 1120
    throw v1

    .line 1121
    :cond_3a
    :goto_1a
    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView;->m:Lm1/b;

    .line 1122
    .line 1123
    invoke-virtual {v5, v1, v6}, Lm1/b;->f(II)I

    .line 1124
    .line 1125
    .line 1126
    move-result v5

    .line 1127
    const/4 v14, 0x0

    .line 1128
    iput-object v14, v10, Lm1/B0;->s:Lm1/V;

    .line 1129
    .line 1130
    iput-object v2, v10, Lm1/B0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 1131
    .line 1132
    invoke-virtual {v10}, Lm1/B0;->getItemViewType()I

    .line 1133
    .line 1134
    .line 1135
    move-result v7

    .line 1136
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 1137
    .line 1138
    .line 1139
    move-result-wide v8

    .line 1140
    cmp-long v11, p2, v20

    .line 1141
    .line 1142
    if-eqz v11, :cond_3b

    .line 1143
    .line 1144
    iget-object v11, v0, Lm1/p0;->g:Lm1/o0;

    .line 1145
    .line 1146
    invoke-virtual {v11, v7}, Lm1/o0;->a(I)Lm1/n0;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v7

    .line 1150
    iget-wide v11, v7, Lm1/n0;->d:J

    .line 1151
    .line 1152
    cmp-long v7, v11, v18

    .line 1153
    .line 1154
    if-eqz v7, :cond_3b

    .line 1155
    .line 1156
    add-long/2addr v11, v8

    .line 1157
    cmp-long v7, v11, p2

    .line 1158
    .line 1159
    if-gez v7, :cond_37

    .line 1160
    .line 1161
    :cond_3b
    invoke-virtual {v10}, Lm1/B0;->h()Z

    .line 1162
    .line 1163
    .line 1164
    move-result v7

    .line 1165
    iget-object v11, v10, Lm1/B0;->a:Landroid/view/View;

    .line 1166
    .line 1167
    if-eqz v7, :cond_3c

    .line 1168
    .line 1169
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 1170
    .line 1171
    .line 1172
    move-result v7

    .line 1173
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v12

    .line 1177
    invoke-static {v2, v11, v7, v12}, Landroidx/recyclerview/widget/RecyclerView;->d(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1178
    .line 1179
    .line 1180
    move/from16 v7, v17

    .line 1181
    .line 1182
    goto :goto_1b

    .line 1183
    :cond_3c
    move v7, v6

    .line 1184
    :goto_1b
    iget-object v12, v2, Landroidx/recyclerview/widget/RecyclerView;->v:Lm1/V;

    .line 1185
    .line 1186
    invoke-virtual {v12, v10, v5}, Lm1/V;->bindViewHolder(Lm1/B0;I)V

    .line 1187
    .line 1188
    .line 1189
    if-eqz v7, :cond_3d

    .line 1190
    .line 1191
    invoke-static {v2, v11}, Landroidx/recyclerview/widget/RecyclerView;->e(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V

    .line 1192
    .line 1193
    .line 1194
    :cond_3d
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 1195
    .line 1196
    .line 1197
    move-result-wide v12

    .line 1198
    iget-object v5, v0, Lm1/p0;->g:Lm1/o0;

    .line 1199
    .line 1200
    invoke-virtual {v10}, Lm1/B0;->getItemViewType()I

    .line 1201
    .line 1202
    .line 1203
    move-result v7

    .line 1204
    sub-long/2addr v12, v8

    .line 1205
    invoke-virtual {v5, v7}, Lm1/o0;->a(I)Lm1/n0;

    .line 1206
    .line 1207
    .line 1208
    move-result-object v5

    .line 1209
    iget-wide v7, v5, Lm1/n0;->d:J

    .line 1210
    .line 1211
    cmp-long v9, v7, v18

    .line 1212
    .line 1213
    if-nez v9, :cond_3e

    .line 1214
    .line 1215
    goto :goto_1c

    .line 1216
    :cond_3e
    div-long v7, v7, v25

    .line 1217
    .line 1218
    mul-long v7, v7, v22

    .line 1219
    .line 1220
    div-long v12, v12, v25

    .line 1221
    .line 1222
    add-long/2addr v12, v7

    .line 1223
    :goto_1c
    iput-wide v12, v5, Lm1/n0;->d:J

    .line 1224
    .line 1225
    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView;->L:Landroid/view/accessibility/AccessibilityManager;

    .line 1226
    .line 1227
    if-eqz v5, :cond_3f

    .line 1228
    .line 1229
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 1230
    .line 1231
    .line 1232
    move-result v5

    .line 1233
    if-eqz v5, :cond_3f

    .line 1234
    .line 1235
    move/from16 v5, v17

    .line 1236
    .line 1237
    goto :goto_1d

    .line 1238
    :cond_3f
    move v5, v6

    .line 1239
    :goto_1d
    if-eqz v5, :cond_43

    .line 1240
    .line 1241
    invoke-static {v11}, LM/p0;->getImportantForAccessibility(Landroid/view/View;)I

    .line 1242
    .line 1243
    .line 1244
    move-result v5

    .line 1245
    if-nez v5, :cond_40

    .line 1246
    .line 1247
    move/from16 v5, v17

    .line 1248
    .line 1249
    invoke-static {v11, v5}, LM/p0;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 1250
    .line 1251
    .line 1252
    goto :goto_1e

    .line 1253
    :cond_40
    move/from16 v5, v17

    .line 1254
    .line 1255
    :goto_1e
    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView;->x0:Lm1/D0;

    .line 1256
    .line 1257
    if-nez v7, :cond_41

    .line 1258
    .line 1259
    goto :goto_1f

    .line 1260
    :cond_41
    invoke-virtual {v7}, Lm1/D0;->getItemDelegate()LM/b;

    .line 1261
    .line 1262
    .line 1263
    move-result-object v7

    .line 1264
    instance-of v8, v7, Lm1/C0;

    .line 1265
    .line 1266
    if-eqz v8, :cond_42

    .line 1267
    .line 1268
    move-object v8, v7

    .line 1269
    check-cast v8, Lm1/C0;

    .line 1270
    .line 1271
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1272
    .line 1273
    .line 1274
    invoke-static {v11}, LM/p0;->getAccessibilityDelegate(Landroid/view/View;)LM/b;

    .line 1275
    .line 1276
    .line 1277
    move-result-object v9

    .line 1278
    if-eqz v9, :cond_42

    .line 1279
    .line 1280
    if-eq v9, v8, :cond_42

    .line 1281
    .line 1282
    iget-object v8, v8, Lm1/C0;->e:Ljava/util/WeakHashMap;

    .line 1283
    .line 1284
    invoke-virtual {v8, v11, v9}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    .line 1286
    .line 1287
    :cond_42
    invoke-static {v11, v7}, LM/p0;->setAccessibilityDelegate(Landroid/view/View;LM/b;)V

    .line 1288
    .line 1289
    .line 1290
    goto :goto_1f

    .line 1291
    :cond_43
    move/from16 v5, v17

    .line 1292
    .line 1293
    :goto_1f
    invoke-virtual {v3}, Lm1/x0;->isPreLayout()Z

    .line 1294
    .line 1295
    .line 1296
    move-result v3

    .line 1297
    if-eqz v3, :cond_44

    .line 1298
    .line 1299
    iput v1, v10, Lm1/B0;->g:I

    .line 1300
    .line 1301
    :cond_44
    move v1, v5

    .line 1302
    :goto_20
    iget-object v3, v10, Lm1/B0;->a:Landroid/view/View;

    .line 1303
    .line 1304
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1305
    .line 1306
    .line 1307
    move-result-object v3

    .line 1308
    iget-object v7, v10, Lm1/B0;->a:Landroid/view/View;

    .line 1309
    .line 1310
    if-nez v3, :cond_45

    .line 1311
    .line 1312
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1313
    .line 1314
    .line 1315
    move-result-object v2

    .line 1316
    check-cast v2, Lm1/j0;

    .line 1317
    .line 1318
    invoke-virtual {v7, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1319
    .line 1320
    .line 1321
    goto :goto_21

    .line 1322
    :cond_45
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 1323
    .line 1324
    .line 1325
    move-result v8

    .line 1326
    if-nez v8, :cond_46

    .line 1327
    .line 1328
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    .line 1329
    .line 1330
    .line 1331
    move-result-object v2

    .line 1332
    check-cast v2, Lm1/j0;

    .line 1333
    .line 1334
    invoke-virtual {v7, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1335
    .line 1336
    .line 1337
    goto :goto_21

    .line 1338
    :cond_46
    move-object v2, v3

    .line 1339
    check-cast v2, Lm1/j0;

    .line 1340
    .line 1341
    :goto_21
    iput-object v10, v2, Lm1/j0;->a:Lm1/B0;

    .line 1342
    .line 1343
    if-eqz v4, :cond_47

    .line 1344
    .line 1345
    if-eqz v1, :cond_47

    .line 1346
    .line 1347
    move v6, v5

    .line 1348
    :cond_47
    iput-boolean v6, v2, Lm1/j0;->d:Z

    .line 1349
    .line 1350
    return-object v10

    .line 1351
    :cond_48
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    .line 1352
    .line 1353
    const-string v4, "Invalid item position "

    .line 1354
    .line 1355
    const-string v5, "("

    .line 1356
    .line 1357
    const-string v6, "). Item count:"

    .line 1358
    .line 1359
    invoke-static {v1, v1, v4, v5, v6}, LA/i;->p(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1360
    .line 1361
    .line 1362
    move-result-object v1

    .line 1363
    iget-object v4, v2, Landroidx/recyclerview/widget/RecyclerView;->q0:Lm1/x0;

    .line 1364
    .line 1365
    invoke-virtual {v4}, Lm1/x0;->getItemCount()I

    .line 1366
    .line 1367
    .line 1368
    move-result v4

    .line 1369
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1370
    .line 1371
    .line 1372
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    .line 1373
    .line 1374
    .line 1375
    move-result-object v2

    .line 1376
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1377
    .line 1378
    .line 1379
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1380
    .line 1381
    .line 1382
    move-result-object v1

    .line 1383
    invoke-direct {v3, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 1384
    .line 1385
    .line 1386
    throw v3
.end method

.method public final j(Lm1/B0;)V
    .locals 1

    .line 1
    iget-boolean v0, p1, Lm1/B0;->o:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lm1/p0;->b:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lm1/p0;->a:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    :goto_0
    const/4 v0, 0x0

    .line 17
    iput-object v0, p1, Lm1/B0;->n:Lm1/p0;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p1, Lm1/B0;->o:Z

    .line 21
    .line 22
    iget v0, p1, Lm1/B0;->j:I

    .line 23
    .line 24
    and-int/lit8 v0, v0, -0x21

    .line 25
    .line 26
    iput v0, p1, Lm1/B0;->j:I

    .line 27
    .line 28
    return-void
.end method

.method public final k()V
    .locals 4

    .line 1
    iget-object v0, p0, Lm1/p0;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->w:Lm1/i0;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, v0, Lm1/i0;->j:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget v1, p0, Lm1/p0;->e:I

    .line 12
    .line 13
    add-int/2addr v1, v0

    .line 14
    iput v1, p0, Lm1/p0;->f:I

    .line 15
    .line 16
    iget-object v0, p0, Lm1/p0;->c:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    add-int/lit8 v1, v1, -0x1

    .line 23
    .line 24
    :goto_1
    if-ltz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    iget v3, p0, Lm1/p0;->f:I

    .line 31
    .line 32
    if-le v2, v3, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0, v1}, Lm1/p0;->f(I)V

    .line 35
    .line 36
    .line 37
    add-int/lit8 v1, v1, -0x1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    return-void
.end method

.method public recycleView(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->E(Landroid/view/View;)Lm1/B0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lm1/B0;->h()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lm1/p0;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v2, p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {v0}, Lm1/B0;->g()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    iget-object p1, v0, Lm1/B0;->n:Lm1/p0;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lm1/p0;->j(Lm1/B0;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {v0}, Lm1/B0;->m()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    iget p1, v0, Lm1/B0;->j:I

    .line 36
    .line 37
    and-int/lit8 p1, p1, -0x21

    .line 38
    .line 39
    iput p1, v0, Lm1/B0;->j:I

    .line 40
    .line 41
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lm1/p0;->g(Lm1/B0;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, v2, Landroidx/recyclerview/widget/RecyclerView;->V:Lm1/b0;

    .line 45
    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    invoke-virtual {v0}, Lm1/B0;->isRecyclable()Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-nez p1, :cond_3

    .line 53
    .line 54
    iget-object p1, v2, Landroidx/recyclerview/widget/RecyclerView;->V:Lm1/b0;

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Lm1/b0;->endAnimation(Lm1/B0;)V

    .line 57
    .line 58
    .line 59
    :cond_3
    return-void
.end method

.method public setViewCacheSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lm1/p0;->e:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lm1/p0;->k()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
