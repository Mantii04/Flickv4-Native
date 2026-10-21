.class public abstract Landroidx/leanback/widget/B;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static setupBrowseItemFocusHighlight(Landroidx/leanback/widget/d0;IZ)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Landroidx/leanback/widget/d0;->g:Landroidx/leanback/widget/z;

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance v0, Landroidx/leanback/widget/z;

    .line 10
    .line 11
    invoke-direct {v0, p1, p2}, Landroidx/leanback/widget/z;-><init>(IZ)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Landroidx/leanback/widget/d0;->g:Landroidx/leanback/widget/z;

    .line 15
    .line 16
    return-void
.end method
