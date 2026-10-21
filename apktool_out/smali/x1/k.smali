.class public final Lx1/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx1/w;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx1/k;->a:Landroid/view/View;

    .line 5
    .line 6
    iput-object p2, p0, Lx1/k;->b:Ljava/util/ArrayList;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroidx/transition/e;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onTransitionEnd(Landroidx/transition/e;)V
    .locals 4

    .line 2
    invoke-virtual {p1, p0}, Landroidx/transition/e;->removeListener(Lx1/w;)Landroidx/transition/e;

    .line 3
    iget-object p1, p0, Lx1/k;->a:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lx1/k;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 5
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final synthetic onTransitionEnd(Landroidx/transition/e;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lx1/v;->a(Lx1/w;Landroidx/transition/e;Z)V

    return-void
.end method

.method public onTransitionPause(Landroidx/transition/e;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onTransitionResume(Landroidx/transition/e;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onTransitionStart(Landroidx/transition/e;)V
    .locals 0

    .line 2
    invoke-virtual {p1, p0}, Landroidx/transition/e;->removeListener(Lx1/w;)Landroidx/transition/e;

    .line 3
    invoke-virtual {p1, p0}, Landroidx/transition/e;->addListener(Lx1/w;)Landroidx/transition/e;

    return-void
.end method

.method public final synthetic onTransitionStart(Landroidx/transition/e;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lx1/v;->b(Lx1/w;Landroidx/transition/e;Z)V

    return-void
.end method
