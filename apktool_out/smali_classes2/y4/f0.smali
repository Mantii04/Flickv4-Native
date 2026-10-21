.class public final Ly4/f0;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lflix/com/vision/activities/MainActivity;


# direct methods
.method public constructor <init>(Lflix/com/vision/activities/MainActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ly4/f0;->a:Lflix/com/vision/activities/MainActivity;

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
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Ly4/f0;->a:Lflix/com/vision/activities/MainActivity;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p1, Lflix/com/vision/activities/MainActivity;->Q:Z

    .line 8
    .line 9
    return-void
.end method
