.class public final Lx3/p;
.super LM/b;
.source "SourceFile"


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Z

.field public final synthetic f:Lx3/q;


# direct methods
.method public constructor <init>(Lx3/q;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx3/p;->f:Lx3/q;

    .line 2
    .line 3
    iput p2, p0, Lx3/p;->d:I

    .line 4
    .line 5
    iput-boolean p3, p0, Lx3/p;->e:Z

    .line 6
    .line 7
    invoke-direct {p0}, LM/b;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;LN/n;)V
    .locals 8

    .line 1
    invoke-super {p0, p1, p2}, LM/b;->onInitializeAccessibilityNodeInfo(Landroid/view/View;LN/n;)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lx3/p;->d:I

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v0

    .line 8
    :goto_0
    iget-object v3, p0, Lx3/p;->f:Lx3/q;

    .line 9
    .line 10
    if-ge v1, v0, :cond_2

    .line 11
    .line 12
    iget-object v3, v3, Lx3/q;->g:Lx3/A;

    .line 13
    .line 14
    iget-object v4, v3, Lx3/A;->m:Lx3/q;

    .line 15
    .line 16
    invoke-virtual {v4, v1}, Lx3/q;->getItemViewType(I)I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    const/4 v5, 0x2

    .line 21
    if-eq v4, v5, :cond_0

    .line 22
    .line 23
    iget-object v3, v3, Lx3/A;->m:Lx3/q;

    .line 24
    .line 25
    invoke-virtual {v3, v1}, Lx3/q;->getItemViewType(I)I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const/4 v4, 0x3

    .line 30
    if-ne v3, v4, :cond_1

    .line 31
    .line 32
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 33
    .line 34
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    const/4 v4, 0x1

    .line 45
    const/4 v5, 0x1

    .line 46
    const/4 v3, 0x1

    .line 47
    iget-boolean v6, p0, Lx3/p;->e:Z

    .line 48
    .line 49
    invoke-static/range {v2 .. v7}, LN/m;->obtain(IIIIZZ)LN/m;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p2, p1}, LN/n;->setCollectionItemInfo(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method
