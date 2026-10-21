.class public final Landroidx/leanback/widget/l0;
.super Landroidx/leanback/widget/M0;
.source "SourceFile"


# instance fields
.field public final n:Landroidx/leanback/widget/HorizontalGridView;

.field public o:Landroidx/leanback/widget/j0;

.field public final p:I

.field public final q:I

.field public final r:I

.field public final s:I


# direct methods
.method public constructor <init>(Landroid/view/View;Landroidx/leanback/widget/HorizontalGridView;Landroidx/leanback/widget/m0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/leanback/widget/M0;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroidx/leanback/widget/Q;

    .line 5
    .line 6
    invoke-direct {p1}, Landroidx/leanback/widget/Q;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Landroidx/leanback/widget/l0;->n:Landroidx/leanback/widget/HorizontalGridView;

    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iput p1, p0, Landroidx/leanback/widget/l0;->p:I

    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iput p1, p0, Landroidx/leanback/widget/l0;->q:I

    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    iput p1, p0, Landroidx/leanback/widget/l0;->r:I

    .line 28
    .line 29
    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iput p1, p0, Landroidx/leanback/widget/l0;->s:I

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final getBridgeAdapter()Landroidx/leanback/widget/d0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/l0;->o:Landroidx/leanback/widget/j0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getGridView()Landroidx/leanback/widget/HorizontalGridView;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/l0;->n:Landroidx/leanback/widget/HorizontalGridView;

    .line 2
    .line 3
    return-object v0
.end method
