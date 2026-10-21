.class public final LM/o1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LM/n1;


# direct methods
.method public constructor <init>(Landroid/view/Window;Landroid/view/View;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, LM/T;

    invoke-direct {v0, p2}, LM/T;-><init>(Landroid/view/View;)V

    .line 5
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt p2, v1, :cond_0

    .line 6
    new-instance p2, LM/m1;

    .line 7
    invoke-static {p1}, LL1/g;->o(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    move-result-object v1

    invoke-direct {p2, v1, v0}, LM/m1;-><init>(Landroid/view/WindowInsetsController;LM/T;)V

    .line 8
    iput-object p1, p2, LM/m1;->c:Landroid/view/Window;

    .line 9
    iput-object p2, p0, LM/o1;->a:LM/n1;

    return-void

    :cond_0
    const/16 v1, 0x1a

    if-lt p2, v1, :cond_1

    .line 10
    new-instance p2, LM/k1;

    .line 11
    invoke-direct {p2, p1, v0}, LM/i1;-><init>(Landroid/view/Window;LM/T;)V

    .line 12
    iput-object p2, p0, LM/o1;->a:LM/n1;

    return-void

    .line 13
    :cond_1
    new-instance p2, LM/j1;

    .line 14
    invoke-direct {p2, p1, v0}, LM/i1;-><init>(Landroid/view/Window;LM/T;)V

    .line 15
    iput-object p2, p0, LM/o1;->a:LM/n1;

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsetsController;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LM/m1;

    new-instance v1, LM/T;

    invoke-direct {v1, p1}, LM/T;-><init>(Landroid/view/WindowInsetsController;)V

    invoke-direct {v0, p1, v1}, LM/m1;-><init>(Landroid/view/WindowInsetsController;LM/T;)V

    iput-object v0, p0, LM/o1;->a:LM/n1;

    return-void
.end method

.method public static toWindowInsetsControllerCompat(Landroid/view/WindowInsetsController;)LM/o1;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, LM/o1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, LM/o1;-><init>(Landroid/view/WindowInsetsController;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public setAppearanceLightNavigationBars(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, LM/o1;->a:LM/n1;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LM/n1;->setAppearanceLightNavigationBars(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setAppearanceLightStatusBars(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, LM/o1;->a:LM/n1;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LM/n1;->setAppearanceLightStatusBars(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public show(I)V
    .locals 1

    .line 1
    iget-object v0, p0, LM/o1;->a:LM/n1;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LM/n1;->a(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
