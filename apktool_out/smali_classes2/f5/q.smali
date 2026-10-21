.class public final Lf5/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll/m2;


# instance fields
.field public final synthetic b:Lflix/com/vision/tv/PlayerActivityLiveExtended;


# direct methods
.method public constructor <init>(Lflix/com/vision/tv/PlayerActivityLiveExtended;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf5/q;->b:Lflix/com/vision/tv/PlayerActivityLiveExtended;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget v1, Lflix/com/vision/R$id;->action_episodes:I

    .line 6
    .line 7
    iget-object v2, p0, Lf5/q;->b:Lflix/com/vision/tv/PlayerActivityLiveExtended;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    :try_start_0
    iget-object p1, v2, Lflix/com/vision/tv/PlayerActivityLiveExtended;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    .line 14
    iget v0, v2, Lflix/com/vision/tv/PlayerActivityLiveExtended;->v:I

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    :goto_0
    iget-object p1, v2, Lflix/com/vision/tv/PlayerActivityLiveExtended;->m:Landroid/widget/RelativeLayout;

    .line 25
    .line 26
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    iget-object p1, v2, Lflix/com/vision/tv/PlayerActivityLiveExtended;->m:Landroid/widget/RelativeLayout;

    .line 30
    .line 31
    iget-object v0, v2, Lflix/com/vision/tv/PlayerActivityLiveExtended;->q:Landroid/view/animation/Animation;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    sget v0, Lflix/com/vision/R$id;->action_close:I

    .line 42
    .line 43
    if-ne p1, v0, :cond_2

    .line 44
    .line 45
    iget-object p1, v2, Lflix/com/vision/tv/PlayerActivityLiveExtended;->m:Landroid/widget/RelativeLayout;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_1

    .line 52
    .line 53
    iget-object p1, v2, Lflix/com/vision/tv/PlayerActivityLiveExtended;->m:Landroid/widget/RelativeLayout;

    .line 54
    .line 55
    iget-object v0, v2, Lflix/com/vision/tv/PlayerActivityLiveExtended;->r:Landroid/view/animation/Animation;

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, v2, Lflix/com/vision/tv/PlayerActivityLiveExtended;->m:Landroid/widget/RelativeLayout;

    .line 61
    .line 62
    const/16 v0, 0x8

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    const/4 p1, 0x1

    .line 68
    return p1

    .line 69
    :cond_1
    invoke-virtual {v2}, Lflix/com/vision/tv/PlayerActivityLiveExtended;->e()V

    .line 70
    .line 71
    .line 72
    :cond_2
    :goto_1
    return v3
.end method
