.class public final Landroidx/fragment/app/V;
.super Landroidx/activity/s;
.source "SourceFile"


# instance fields
.field public final synthetic d:Landroidx/fragment/app/i0;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/i0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/V;->d:Landroidx/fragment/app/i0;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Landroidx/activity/s;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/V;->d:Landroidx/fragment/app/i0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/i0;->w(Z)Z

    .line 5
    .line 6
    .line 7
    iget-object v1, v0, Landroidx/fragment/app/i0;->h:Landroidx/fragment/app/V;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/activity/s;->isEnabled()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/fragment/app/i0;->popBackStackImmediate()Z

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/i0;->g:Landroidx/activity/OnBackPressedDispatcher;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    .line 22
    .line 23
    .line 24
    return-void
.end method
