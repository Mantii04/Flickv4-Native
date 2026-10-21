.class public final Lh5/a;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lflix/com/vision/utils/ArcNavigationView;


# direct methods
.method public constructor <init>(Lflix/com/vision/utils/ArcNavigationView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lh5/a;->a:Lflix/com/vision/utils/ArcNavigationView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lh5/a;->a:Lflix/com/vision/utils/ArcNavigationView;

    .line 2
    .line 3
    iget-object v0, p1, Lflix/com/vision/utils/ArcNavigationView;->M:Landroid/graphics/Path;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/Path;->isConvex()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p1, Lflix/com/vision/utils/ArcNavigationView;->M:Landroid/graphics/Path;

    .line 12
    .line 13
    invoke-virtual {p2, p1}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
