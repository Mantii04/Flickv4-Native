.class public final LA4/w;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:LA4/x;


# direct methods
.method public constructor <init>(LA4/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, LA4/w;->a:LA4/x;

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
    iget-object p1, p0, LA4/w;->a:LA4/x;

    .line 2
    .line 3
    iget-object p1, p1, LA4/x;->b:Lflix/com/vision/activities/leanback/SlideshowActivity;

    .line 4
    .line 5
    sget v0, Lflix/com/vision/activities/leanback/SlideshowActivity;->v:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p1, v0}, Lflix/com/vision/activities/leanback/SlideshowActivity;->f(Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
