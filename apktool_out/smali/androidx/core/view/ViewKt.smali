.class public abstract Landroidx/core/view/ViewKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final getAllViews(Landroid/view/View;)LO5/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "LO5/d;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/core/view/ViewKt$allViews$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Landroidx/core/view/ViewKt$allViews$1;-><init>(Landroid/view/View;Ly5/c;)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, LO5/h;->sequence(LH5/p;)LO5/d;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
