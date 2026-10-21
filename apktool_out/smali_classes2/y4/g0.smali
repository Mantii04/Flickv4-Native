.class public final Ly4/g0;
.super Le/i;
.source "SourceFile"


# instance fields
.field public final synthetic g:Lflix/com/vision/activities/MainActivity;


# direct methods
.method public constructor <init>(Lflix/com/vision/activities/MainActivity;Lflix/com/vision/activities/MainActivity;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/widget/Toolbar;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Ly4/g0;->g:Lflix/com/vision/activities/MainActivity;

    .line 2
    .line 3
    move-object p1, p0

    .line 4
    invoke-direct/range {p1 .. p6}, Le/i;-><init>(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/widget/Toolbar;II)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Le/i;->onDrawerClosed(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object p1, p0, Ly4/g0;->g:Lflix/com/vision/activities/MainActivity;

    .line 5
    .line 6
    iget-object p1, p1, Lflix/com/vision/activities/MainActivity;->C:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Le/i;->onDrawerOpened(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object p1, p0, Ly4/g0;->g:Lflix/com/vision/activities/MainActivity;

    .line 5
    .line 6
    iget-object p1, p1, Lflix/com/vision/activities/MainActivity;->w:LA3/k;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    .line 15
    .line 16
    return-void
.end method
