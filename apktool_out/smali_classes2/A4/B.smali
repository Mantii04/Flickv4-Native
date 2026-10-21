.class public final LA4/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm4/i;


# instance fields
.field public final synthetic a:Lflix/com/vision/models/Movie;

.field public final synthetic b:Lflix/com/vision/activities/leanback/SlideshowActivity;


# direct methods
.method public constructor <init>(Lflix/com/vision/activities/leanback/SlideshowActivity;Lflix/com/vision/models/Movie;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LA4/B;->b:Lflix/com/vision/activities/leanback/SlideshowActivity;

    .line 5
    .line 6
    iput-object p2, p0, LA4/B;->a:Lflix/com/vision/models/Movie;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object p1, p0, LA4/B;->b:Lflix/com/vision/activities/leanback/SlideshowActivity;

    .line 2
    .line 3
    iget-object v0, p1, Lflix/com/vision/activities/leanback/SlideshowActivity;->f:Landroid/widget/ImageView;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p1, Lflix/com/vision/activities/leanback/SlideshowActivity;->b:Landroid/widget/TextView;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p1, Lflix/com/vision/activities/leanback/SlideshowActivity;->b:Landroid/widget/TextView;

    .line 16
    .line 17
    iget-object v0, p0, LA4/B;->a:Lflix/com/vision/models/Movie;

    .line 18
    .line 19
    invoke-virtual {v0}, Lflix/com/vision/models/Movie;->getTitle()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public onSuccess()V
    .locals 5

    .line 1
    sget v0, Lflix/com/vision/activities/leanback/SlideshowActivity;->v:I

    .line 2
    .line 3
    iget-object v0, p0, LA4/B;->b:Lflix/com/vision/activities/leanback/SlideshowActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroid/os/Handler;

    .line 9
    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 15
    .line 16
    .line 17
    new-instance v2, LA4/t;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-direct {v2, v0, v3}, LA4/t;-><init>(Lflix/com/vision/activities/leanback/SlideshowActivity;I)V

    .line 21
    .line 22
    .line 23
    const-wide/16 v3, 0x7d0

    .line 24
    .line 25
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 26
    .line 27
    .line 28
    iget-object v1, v0, Lflix/com/vision/activities/leanback/SlideshowActivity;->b:Landroid/widget/TextView;

    .line 29
    .line 30
    const-string v2, ""

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, v0, Lflix/com/vision/activities/leanback/SlideshowActivity;->b:Landroid/widget/TextView;

    .line 36
    .line 37
    const/16 v1, 0x8

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
