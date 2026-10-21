.class public abstract Landroidx/core/view/ViewGroupKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final getChildren(Landroid/view/ViewGroup;)LO5/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "LO5/d;"
        }
    .end annotation

    .line 1
    new-instance v0, LM/w0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, LM/w0;-><init>(Landroid/view/ViewGroup;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final getDescendants(Landroid/view/ViewGroup;)LO5/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "LO5/d;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/core/view/a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/core/view/a;-><init>(Landroid/view/ViewGroup;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final iterator(Landroid/view/ViewGroup;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/Iterator<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, LM/x0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, LM/x0;-><init>(Landroid/view/ViewGroup;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
