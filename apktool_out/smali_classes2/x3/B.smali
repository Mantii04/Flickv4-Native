.class public final Lx3/B;
.super Lk/M;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lx3/l;Lk/s;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lk/M;-><init>(Landroid/content/Context;Lk/p;Lk/s;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onItemsChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lk/p;->onItemsChanged(Z)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lk/M;->getParentMenu()Landroid/view/Menu;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lk/p;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lk/p;->onItemsChanged(Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
