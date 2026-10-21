.class public abstract Landroidx/leanback/widget/G0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Landroid/util/SparseArray;


# direct methods
.method public static setClipToRoundedOutline(Landroid/view/View;ZI)V
    .locals 3

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    sget-object v0, Landroidx/leanback/widget/G0;->a:Landroid/util/SparseArray;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 10
    .line 11
    .line 12
    sput-object v0, Landroidx/leanback/widget/G0;->a:Landroid/util/SparseArray;

    .line 13
    .line 14
    :cond_0
    sget-object v0, Landroidx/leanback/widget/G0;->a:Landroid/util/SparseArray;

    .line 15
    .line 16
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/view/ViewOutlineProvider;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    new-instance v0, Landroidx/leanback/widget/F0;

    .line 25
    .line 26
    invoke-direct {v0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 27
    .line 28
    .line 29
    iput p2, v0, Landroidx/leanback/widget/F0;->a:I

    .line 30
    .line 31
    sget-object v1, Landroidx/leanback/widget/G0;->a:Landroid/util/SparseArray;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const/16 v2, 0x20

    .line 38
    .line 39
    if-ge v1, v2, :cond_1

    .line 40
    .line 41
    sget-object v1, Landroidx/leanback/widget/G0;->a:Landroid/util/SparseArray;

    .line 42
    .line 43
    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    sget-object p2, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    .line 51
    .line 52
    invoke-virtual {p0, p2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 56
    .line 57
    .line 58
    return-void
.end method
