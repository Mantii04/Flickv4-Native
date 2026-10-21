.class public final Ll/p2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final b:Lk/a;

.field public final synthetic e:Ll/r2;


# direct methods
.method public constructor <init>(Ll/r2;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll/p2;->e:Ll/r2;

    .line 5
    .line 6
    new-instance v0, Lk/a;

    .line 7
    .line 8
    iget-object v1, p1, Ll/r2;->a:Landroidx/appcompat/widget/Toolbar;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v6, p1, Ll/r2;->h:Ljava/lang/CharSequence;

    .line 15
    .line 16
    const v3, 0x102002c

    .line 17
    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v5, 0x0

    .line 22
    invoke-direct/range {v0 .. v6}, Lk/a;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Ll/p2;->b:Lk/a;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Ll/p2;->e:Ll/r2;

    .line 2
    .line 3
    iget-object v0, p1, Ll/r2;->k:Landroid/view/Window$Callback;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean p1, p1, Ll/r2;->l:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iget-object v1, p0, Ll/p2;->b:Lk/a;

    .line 13
    .line 14
    invoke-interface {v0, p1, v1}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
