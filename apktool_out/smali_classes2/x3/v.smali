.class public final Lx3/v;
.super Lm1/D0;
.source "SourceFile"


# instance fields
.field public final synthetic f:Lx3/A;


# direct methods
.method public constructor <init>(Lx3/A;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx3/v;->f:Lx3/A;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lm1/D0;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;LN/n;)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2}, Lm1/D0;->onInitializeAccessibilityNodeInfo(Landroid/view/View;LN/n;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lx3/v;->f:Lx3/A;

    .line 5
    .line 6
    iget-object p1, p1, Lx3/A;->m:Lx3/q;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    move v1, v0

    .line 10
    move v2, v1

    .line 11
    :goto_0
    iget-object v3, p1, Lx3/q;->g:Lx3/A;

    .line 12
    .line 13
    iget-object v4, v3, Lx3/A;->m:Lx3/q;

    .line 14
    .line 15
    invoke-virtual {v4}, Lx3/q;->getItemCount()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    const/4 v5, 0x1

    .line 20
    if-ge v1, v4, :cond_2

    .line 21
    .line 22
    iget-object v3, v3, Lx3/A;->m:Lx3/q;

    .line 23
    .line 24
    invoke-virtual {v3, v1}, Lx3/q;->getItemViewType(I)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    if-ne v3, v5, :cond_1

    .line 31
    .line 32
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-static {v2, v5, v0}, LN/l;->obtain(IIZ)LN/l;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p2, p1}, LN/n;->setCollectionInfo(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
