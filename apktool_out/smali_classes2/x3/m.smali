.class public final Lx3/m;
.super LM/b;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lcom/google/android/material/internal/NavigationMenuItemView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/internal/NavigationMenuItemView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx3/m;->d:Lcom/google/android/material/internal/NavigationMenuItemView;

    .line 2
    .line 3
    invoke-direct {p0}, LM/b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;LN/n;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, LM/b;->onInitializeAccessibilityNodeInfo(Landroid/view/View;LN/n;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lx3/m;->d:Lcom/google/android/material/internal/NavigationMenuItemView;

    .line 5
    .line 6
    iget-boolean p1, p1, Lcom/google/android/material/internal/NavigationMenuItemView;->G:Z

    .line 7
    .line 8
    invoke-virtual {p2, p1}, LN/n;->setCheckable(Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
