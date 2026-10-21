.class public final Landroidx/leanback/widget/e0;
.super Landroidx/leanback/widget/c0;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/leanback/widget/m1;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/m1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/leanback/widget/c0;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/leanback/widget/e0;->a:Landroidx/leanback/widget/m1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public createWrapper(Landroid/view/View;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Landroidx/leanback/widget/e0;->a:Landroidx/leanback/widget/m1;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/m1;->createShadowOverlayContainer(Landroid/content/Context;)Landroidx/leanback/widget/j1;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public wrap(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/leanback/widget/j1;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroidx/leanback/widget/j1;->wrap(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
