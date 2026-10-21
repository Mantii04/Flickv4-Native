.class public final Lx3/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lx3/A;


# direct methods
.method public constructor <init>(Lx3/A;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx3/n;->b:Lx3/A;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    check-cast p1, Lcom/google/android/material/internal/NavigationMenuItemView;

    .line 2
    .line 3
    iget-object v0, p0, Lx3/n;->b:Lx3/A;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lx3/A;->setUpdateSuspended(Z)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/google/android/material/internal/NavigationMenuItemView;->getItemData()Lk/s;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v2, v0, Lx3/A;->f:Lk/p;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-virtual {v2, p1, v0, v3}, Lk/p;->performItemAction(Landroid/view/MenuItem;Lk/E;I)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Lk/s;->isCheckable()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_0

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    iget-object v2, v0, Lx3/A;->m:Lx3/q;

    .line 31
    .line 32
    invoke-virtual {v2, p1}, Lx3/q;->setCheckedItem(Lk/s;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move v1, v3

    .line 37
    :goto_0
    invoke-virtual {v0, v3}, Lx3/A;->setUpdateSuspended(Z)V

    .line 38
    .line 39
    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    invoke-virtual {v0, v3}, Lx3/A;->updateMenuView(Z)V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method
