.class public final Landroidx/leanback/widget/Y;
.super Landroidx/leanback/widget/q0;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/leanback/widget/d0;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/d0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/leanback/widget/Y;->a:Landroidx/leanback/widget/d0;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/leanback/widget/q0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/Y;->a:Landroidx/leanback/widget/d0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lm1/V;->notifyDataSetChanged()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/Y;->a:Landroidx/leanback/widget/d0;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lm1/V;->notifyItemRangeChanged(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/Y;->a:Landroidx/leanback/widget/d0;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lm1/V;->notifyItemRangeInserted(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/Y;->a:Landroidx/leanback/widget/d0;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lm1/V;->notifyItemRangeRemoved(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
