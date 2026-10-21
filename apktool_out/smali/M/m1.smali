.class public final LM/m1;
.super LM/n1;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/WindowInsetsController;

.field public final b:LM/T;

.field public c:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/view/WindowInsetsController;LM/T;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lp/q;

    .line 5
    .line 6
    invoke-direct {v0}, Lp/q;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, LM/m1;->a:Landroid/view/WindowInsetsController;

    .line 10
    .line 11
    iput-object p2, p0, LM/m1;->b:LM/T;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .line 1
    and-int/lit8 v0, p1, 0x8

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, LM/m1;->b:LM/T;

    .line 6
    .line 7
    invoke-virtual {v0}, LM/T;->show()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, LM/m1;->a:Landroid/view/WindowInsetsController;

    .line 11
    .line 12
    and-int/lit8 p1, p1, -0x9

    .line 13
    .line 14
    invoke-static {v0, p1}, LL1/g;->u(Landroid/view/WindowInsetsController;I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setAppearanceLightNavigationBars(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, LM/m1;->c:Landroid/view/Window;

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v1}, LM/m1;->setSystemUiFlag(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, LM/m1;->a:Landroid/view/WindowInsetsController;

    .line 13
    .line 14
    invoke-static {p1}, LM/l1;->z(Landroid/view/WindowInsetsController;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0, v1}, LM/m1;->unsetSystemUiFlag(I)V

    .line 21
    .line 22
    .line 23
    :cond_2
    iget-object p1, p0, LM/m1;->a:Landroid/view/WindowInsetsController;

    .line 24
    .line 25
    invoke-static {p1}, LM/l1;->B(Landroid/view/WindowInsetsController;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public setAppearanceLightStatusBars(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, LM/m1;->c:Landroid/view/Window;

    .line 2
    .line 3
    const/16 v1, 0x2000

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v1}, LM/m1;->setSystemUiFlag(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, LM/m1;->a:Landroid/view/WindowInsetsController;

    .line 13
    .line 14
    invoke-static {p1}, LM/l1;->t(Landroid/view/WindowInsetsController;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0, v1}, LM/m1;->unsetSystemUiFlag(I)V

    .line 21
    .line 22
    .line 23
    :cond_2
    iget-object p1, p0, LM/m1;->a:Landroid/view/WindowInsetsController;

    .line 24
    .line 25
    invoke-static {p1}, LM/l1;->x(Landroid/view/WindowInsetsController;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public setSystemUiFlag(I)V
    .locals 2

    .line 1
    iget-object v0, p0, LM/m1;->c:Landroid/view/Window;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    or-int/2addr p1, v1

    .line 12
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public unsetSystemUiFlag(I)V
    .locals 2

    .line 1
    iget-object v0, p0, LM/m1;->c:Landroid/view/Window;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    not-int p1, p1

    .line 12
    and-int/2addr p1, v1

    .line 13
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
