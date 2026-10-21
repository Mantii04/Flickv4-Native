.class public abstract Lflix/com/vision/activities/base/a;
.super Le/v;
.source "SourceFile"


# instance fields
.field protected killed:Z

.field protected showAdWhenRaedy:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/v;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lflix/com/vision/activities/base/a;->killed:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lflix/com/vision/activities/base/a;->showAdWhenRaedy:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public Show()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/H;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lflix/com/vision/activities/base/a;->killed:Z

    .line 3
    .line 4
    invoke-super {p0}, Le/v;->onDestroy()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0}, Landroidx/fragment/app/H;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    :catch_0
    return-void
.end method
