.class public final Landroidx/leanback/widget/U0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic a:Landroidx/leanback/widget/SearchBar;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/SearchBar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/leanback/widget/U0;->a:Landroidx/leanback/widget/SearchBar;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/leanback/widget/U0;->a:Landroidx/leanback/widget/SearchBar;

    .line 2
    .line 3
    const/4 p3, 0x3

    .line 4
    const/4 p3, 0x2

    .line 5
    const/4 v0, 0x0

    .line 6
    if-ne p3, p2, :cond_0

    .line 7
    .line 8
    iget-object p2, p1, Landroidx/leanback/widget/SearchBar;->b:Landroidx/leanback/widget/SearchEditText;

    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    iget-object p3, p1, Landroidx/leanback/widget/SearchBar;->r:Landroid/view/inputmethod/InputMethodManager;

    .line 15
    .line 16
    invoke-virtual {p3, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 17
    .line 18
    .line 19
    iget-object p1, p1, Landroidx/leanback/widget/SearchBar;->q:Landroid/os/Handler;

    .line 20
    .line 21
    new-instance p2, Landroidx/leanback/widget/T0;

    .line 22
    .line 23
    invoke-direct {p2, p0}, Landroidx/leanback/widget/T0;-><init>(Landroidx/leanback/widget/U0;)V

    .line 24
    .line 25
    .line 26
    const-wide/16 v0, 0x1f4

    .line 27
    .line 28
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    return p1

    .line 33
    :cond_0
    return v0
.end method
