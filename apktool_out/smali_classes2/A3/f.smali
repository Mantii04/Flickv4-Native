.class public final LA3/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/n;


# instance fields
.field public final synthetic b:LA3/k;


# direct methods
.method public constructor <init>(LA3/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LA3/f;->b:LA3/k;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Lk/p;Landroid/view/MenuItem;)Z
    .locals 0

    .line 1
    iget-object p1, p0, LA3/f;->b:LA3/k;

    .line 2
    .line 3
    iget-object p1, p1, LA3/k;->s:LA3/h;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-interface {p1, p2}, LA3/h;->onNavigationItemSelected(Landroid/view/MenuItem;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    return p1
.end method

.method public onMenuModeChange(Lk/p;)V
    .locals 0

    .line 1
    return-void
.end method
