.class public abstract Landroidx/leanback/widget/r0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/leanback/widget/p0;

.field public b:Landroidx/leanback/widget/D0;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/C0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/leanback/widget/p0;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/database/Observable;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/leanback/widget/r0;->a:Landroidx/leanback/widget/p0;

    .line 10
    .line 11
    new-instance v0, Landroidx/leanback/widget/n1;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Landroidx/leanback/widget/n1;-><init>(Landroidx/leanback/widget/C0;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/r0;->setPresenterSelector(Landroidx/leanback/widget/D0;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public abstract get(I)Ljava/lang/Object;
.end method

.method public getId(I)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final getPresenterSelector()Landroidx/leanback/widget/D0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/r0;->b:Landroidx/leanback/widget/D0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final hasStableIds()Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "KotlinPropertyAccess"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final notifyChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/r0;->a:Landroidx/leanback/widget/p0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/leanback/widget/p0;->notifyChanged()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final notifyItemRangeChanged(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/r0;->a:Landroidx/leanback/widget/p0;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/leanback/widget/p0;->notifyItemRangeChanged(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final notifyItemRangeInserted(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/r0;->a:Landroidx/leanback/widget/p0;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/leanback/widget/p0;->notifyItemRangeInserted(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final notifyItemRangeRemoved(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/r0;->a:Landroidx/leanback/widget/p0;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/leanback/widget/p0;->notifyItemRangeRemoved(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onPresenterSelectorChanged()V
    .locals 0

    return-void
.end method

.method public final registerObserver(Landroidx/leanback/widget/q0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/r0;->a:Landroidx/leanback/widget/p0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/database/Observable;->registerObserver(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setPresenterSelector(Landroidx/leanback/widget/D0;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/leanback/widget/r0;->b:Landroidx/leanback/widget/D0;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move v3, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v3, v1

    .line 12
    :goto_0
    if-eqz v3, :cond_1

    .line 13
    .line 14
    if-eq v0, p1, :cond_1

    .line 15
    .line 16
    move v1, v2

    .line 17
    :cond_1
    iput-object p1, p0, Landroidx/leanback/widget/r0;->b:Landroidx/leanback/widget/D0;

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/leanback/widget/r0;->onPresenterSelectorChanged()V

    .line 22
    .line 23
    .line 24
    :cond_2
    if-eqz v3, :cond_3

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/leanback/widget/r0;->notifyChanged()V

    .line 27
    .line 28
    .line 29
    :cond_3
    return-void

    .line 30
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 31
    .line 32
    const-string v0, "Presenter selector must not be null"

    .line 33
    .line 34
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1
.end method

.method public abstract size()I
.end method

.method public final unregisterObserver(Landroidx/leanback/widget/q0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/r0;->a:Landroidx/leanback/widget/p0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/database/Observable;->unregisterObserver(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
