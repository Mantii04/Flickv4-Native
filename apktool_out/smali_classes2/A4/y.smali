.class public final LA4/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm4/i;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lflix/com/vision/activities/leanback/SlideshowActivity;


# direct methods
.method public constructor <init>(Lflix/com/vision/activities/leanback/SlideshowActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LA4/y;->b:Lflix/com/vision/activities/leanback/SlideshowActivity;

    .line 5
    .line 6
    iput-boolean p2, p0, LA4/y;->a:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onSuccess()V
    .locals 5

    .line 1
    iget-boolean v0, p0, LA4/y;->a:Z

    .line 2
    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    iget-object v2, p0, LA4/y;->b:Lflix/com/vision/activities/leanback/SlideshowActivity;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v2, Lflix/com/vision/activities/leanback/SlideshowActivity;->e:Landroid/widget/ImageView;

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    new-array v1, v1, [F

    .line 13
    .line 14
    fill-array-data v1, :array_0

    .line 15
    .line 16
    .line 17
    const-string v3, "alpha"

    .line 18
    .line 19
    invoke-static {v0, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-wide/16 v3, 0x3e8

    .line 24
    .line 25
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 26
    .line 27
    .line 28
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 29
    .line 30
    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 34
    .line 35
    .line 36
    new-instance v1, LA4/z;

    .line 37
    .line 38
    invoke-direct {v1, v2}, LA4/z;-><init>(Lflix/com/vision/activities/leanback/SlideshowActivity;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    iget-object v0, v2, Lflix/com/vision/activities/leanback/SlideshowActivity;->e:Landroid/widget/ImageView;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 51
    .line 52
    .line 53
    invoke-static {v2}, Lflix/com/vision/activities/leanback/SlideshowActivity;->e(Lflix/com/vision/activities/leanback/SlideshowActivity;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
