.class public final LB4/O;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lflix/com/vision/activities/player/WebPlayerActivity;


# direct methods
.method public constructor <init>(Lflix/com/vision/activities/player/WebPlayerActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, LB4/O;->a:Lflix/com/vision/activities/player/WebPlayerActivity;

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
    iget-object p1, p0, LB4/O;->a:Lflix/com/vision/activities/player/WebPlayerActivity;

    .line 2
    .line 3
    iget-object v0, p1, Lflix/com/vision/activities/player/WebPlayerActivity;->w:Landroid/widget/LinearLayout;

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p1, Lflix/com/vision/activities/player/WebPlayerActivity;->w:Landroid/widget/LinearLayout;

    .line 11
    .line 12
    const/high16 v0, 0x3f800000    # 1.0f

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
