.class public final LK4/g;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lflix/com/vision/bvp/BetterVideoPlayer;


# direct methods
.method public constructor <init>(Lflix/com/vision/bvp/BetterVideoPlayer;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, LK4/g;->b:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 2
    .line 3
    iput-object p2, p0, LK4/g;->a:Landroid/view/View;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, LK4/g;->b:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 2
    .line 3
    iget p1, p1, Lflix/com/vision/bvp/BetterVideoPlayer;->M:I

    .line 4
    .line 5
    iget-object v0, p0, LK4/g;->a:Landroid/view/View;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
