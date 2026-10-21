.class public final Landroidx/leanback/widget/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm1/q0;


# instance fields
.field public final synthetic a:Landroidx/leanback/widget/t;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/t;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/leanback/widget/l;->a:Landroidx/leanback/widget/t;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onViewRecycled(Lm1/B0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/l;->a:Landroidx/leanback/widget/t;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/leanback/widget/t;->T0:Landroidx/leanback/widget/GridLayoutManager;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lm1/B0;->getAbsoluteAdapterPosition()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, -0x1

    .line 13
    if-eq v1, v2, :cond_2

    .line 14
    .line 15
    iget-object v0, v0, Landroidx/leanback/widget/GridLayoutManager;->d0:LG2/b;

    .line 16
    .line 17
    iget v2, v0, LG2/b;->a:I

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    if-eq v2, v3, :cond_1

    .line 21
    .line 22
    const/4 v3, 0x2

    .line 23
    if-eq v2, v3, :cond_0

    .line 24
    .line 25
    const/4 v3, 0x3

    .line 26
    if-eq v2, v3, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v2, v0, LG2/b;->c:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v2, Lp/p;

    .line 32
    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    new-instance v2, Landroid/util/SparseArray;

    .line 40
    .line 41
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 42
    .line 43
    .line 44
    iget-object p1, p1, Lm1/B0;->a:Landroid/view/View;

    .line 45
    .line 46
    invoke-virtual {p1, v2}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, v0, LG2/b;->c:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p1, Lp/p;

    .line 52
    .line 53
    invoke-virtual {p1, v1, v2}, Lp/p;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    iget-object p1, v0, LG2/b;->c:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p1, Lp/p;

    .line 60
    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    invoke-virtual {p1}, Lp/p;->size()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_2

    .line 68
    .line 69
    iget-object p1, v0, LG2/b;->c:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast p1, Lp/p;

    .line 72
    .line 73
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {p1, v0}, Lp/p;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    :cond_2
    :goto_0
    return-void
.end method
