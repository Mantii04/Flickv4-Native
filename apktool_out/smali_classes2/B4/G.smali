.class public final LB4/G;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lflix/com/vision/activities/player/SimpleVideoPlayer;


# direct methods
.method public constructor <init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, LB4/G;->a:Lflix/com/vision/activities/player/SimpleVideoPlayer;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, LB4/G;->a:Lflix/com/vision/activities/player/SimpleVideoPlayer;

    .line 2
    .line 3
    iget-object v0, p1, Lflix/com/vision/activities/player/SimpleVideoPlayer;->L:Landroid/widget/LinearLayout;

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p1, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 11
    .line 12
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->hideControls()V

    .line 13
    .line 14
    .line 15
    iget-object p1, p1, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 16
    .line 17
    invoke-virtual {p1}, Lflix/com/vision/bvp/BetterVideoPlayer;->hideToolbar()V

    .line 18
    .line 19
    .line 20
    return-void
.end method
