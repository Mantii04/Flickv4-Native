.class public LM/W0;
.super LM/Y0;
.source "SourceFile"


# instance fields
.field public final c:Landroid/view/WindowInsets$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LM/Y0;-><init>()V

    .line 2
    invoke-static {}, LI3/v;->h()Landroid/view/WindowInsets$Builder;

    move-result-object v0

    iput-object v0, p0, LM/W0;->c:Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public constructor <init>(LM/h1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, LM/Y0;-><init>(LM/h1;)V

    .line 4
    invoke-virtual {p1}, LM/h1;->toWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-static {p1}, LI3/v;->i(Landroid/view/WindowInsets;)Landroid/view/WindowInsets$Builder;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, LI3/v;->h()Landroid/view/WindowInsets$Builder;

    move-result-object p1

    :goto_0
    iput-object p1, p0, LM/W0;->c:Landroid/view/WindowInsets$Builder;

    return-void
.end method


# virtual methods
.method public a()LM/h1;
    .locals 3

    .line 1
    invoke-virtual {p0}, LM/Y0;->applyInsetTypes()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LM/W0;->c:Landroid/view/WindowInsets$Builder;

    .line 5
    .line 6
    invoke-static {v0}, LI3/v;->j(Landroid/view/WindowInsets$Builder;)Landroid/view/WindowInsets;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, LM/h1;->toWindowInsetsCompat(Landroid/view/WindowInsets;)LM/h1;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, LM/Y0;->b:[LD/c;

    .line 15
    .line 16
    iget-object v2, v0, LM/h1;->a:LM/e1;

    .line 17
    .line 18
    invoke-virtual {v2, v1}, LM/e1;->setOverriddenInsets([LD/c;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public c(LD/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, LM/W0;->c:Landroid/view/WindowInsets$Builder;

    .line 2
    .line 3
    invoke-virtual {p1}, LD/c;->toPlatformInsets()Landroid/graphics/Insets;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {v0, p1}, LI3/v;->C(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public d(LD/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, LM/W0;->c:Landroid/view/WindowInsets$Builder;

    .line 2
    .line 3
    invoke-virtual {p1}, LD/c;->toPlatformInsets()Landroid/graphics/Insets;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {v0, p1}, LI3/v;->x(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public e(LD/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, LM/W0;->c:Landroid/view/WindowInsets$Builder;

    .line 2
    .line 3
    invoke-virtual {p1}, LD/c;->toPlatformInsets()Landroid/graphics/Insets;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {v0, p1}, LI3/v;->A(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public f(LD/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, LM/W0;->c:Landroid/view/WindowInsets$Builder;

    .line 2
    .line 3
    invoke-virtual {p1}, LD/c;->toPlatformInsets()Landroid/graphics/Insets;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {v0, p1}, LI3/v;->s(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public g(LD/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, LM/W0;->c:Landroid/view/WindowInsets$Builder;

    .line 2
    .line 3
    invoke-virtual {p1}, LD/c;->toPlatformInsets()Landroid/graphics/Insets;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {v0, p1}, LI3/v;->D(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
