.class public final Landroidx/leanback/widget/L0;
.super Landroidx/leanback/widget/A0;
.source "SourceFile"


# instance fields
.field public final b:Landroidx/leanback/widget/M0;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/I0;Landroidx/leanback/widget/M0;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/leanback/widget/A0;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p2, Landroidx/leanback/widget/A0;->a:Landroid/view/View;

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroidx/leanback/widget/I0;->addRowView(Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p2, Landroidx/leanback/widget/M0;->c:Landroidx/leanback/widget/J0;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, v0, Landroidx/leanback/widget/A0;->a:Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroidx/leanback/widget/I0;->addHeaderView(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iput-object p2, p0, Landroidx/leanback/widget/L0;->b:Landroidx/leanback/widget/M0;

    .line 19
    .line 20
    iput-object p0, p2, Landroidx/leanback/widget/M0;->b:Landroidx/leanback/widget/L0;

    .line 21
    .line 22
    return-void
.end method
