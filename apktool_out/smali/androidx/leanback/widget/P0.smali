.class public final Landroidx/leanback/widget/P0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic b:Landroidx/leanback/widget/SearchBar;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/SearchBar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/leanback/widget/P0;->b:Landroidx/leanback/widget/SearchBar;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .line 1
    iget-object p1, p0, Landroidx/leanback/widget/P0;->b:Landroidx/leanback/widget/SearchBar;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget-object v0, p1, Landroidx/leanback/widget/SearchBar;->q:Landroid/os/Handler;

    .line 6
    .line 7
    new-instance v1, Landroidx/leanback/widget/X0;

    .line 8
    .line 9
    invoke-direct {v1, p1}, Landroidx/leanback/widget/X0;-><init>(Landroidx/leanback/widget/SearchBar;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p1, Landroidx/leanback/widget/SearchBar;->b:Landroidx/leanback/widget/SearchEditText;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    iget-object v2, p1, Landroidx/leanback/widget/SearchBar;->r:Landroid/view/inputmethod/InputMethodManager;

    .line 24
    .line 25
    invoke-virtual {v2, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-virtual {p1, p2}, Landroidx/leanback/widget/SearchBar;->b(Z)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
