.class public final Landroidx/leanback/app/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TimeAnimator$TimeListener;


# static fields
.field public static final h:Landroid/view/animation/DecelerateInterpolator;


# instance fields
.field public final a:Landroidx/leanback/widget/N0;

.field public final b:Landroidx/leanback/widget/A0;

.field public final c:Landroid/animation/TimeAnimator;

.field public final d:I

.field public final e:Landroid/view/animation/DecelerateInterpolator;

.field public f:F

.field public g:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 2
    .line 3
    const/high16 v1, 0x40000000    # 2.0f

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/leanback/app/g;->h:Landroid/view/animation/DecelerateInterpolator;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroidx/leanback/widget/b0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/animation/TimeAnimator;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/animation/TimeAnimator;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/leanback/app/g;->c:Landroid/animation/TimeAnimator;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/leanback/widget/b0;->getPresenter()Landroidx/leanback/widget/C0;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroidx/leanback/widget/N0;

    .line 16
    .line 17
    iput-object v1, p0, Landroidx/leanback/app/g;->a:Landroidx/leanback/widget/N0;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/leanback/widget/b0;->getViewHolder()Landroidx/leanback/widget/A0;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iput-object v1, p0, Landroidx/leanback/app/g;->b:Landroidx/leanback/widget/A0;

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p1, Lm1/B0;->a:Landroid/view/View;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    sget v0, Landroidx/leanback/R$integer;->lb_browse_rows_anim_duration:I

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iput p1, p0, Landroidx/leanback/app/g;->d:I

    .line 41
    .line 42
    sget-object p1, Landroidx/leanback/app/g;->h:Landroid/view/animation/DecelerateInterpolator;

    .line 43
    .line 44
    iput-object p1, p0, Landroidx/leanback/app/g;->e:Landroid/view/animation/DecelerateInterpolator;

    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/leanback/app/g;->c:Landroid/animation/TimeAnimator;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    .line 4
    .line 5
    .line 6
    move-result p4

    .line 7
    if-eqz p4, :cond_2

    .line 8
    .line 9
    iget p4, p0, Landroidx/leanback/app/g;->d:I

    .line 10
    .line 11
    int-to-long v0, p4

    .line 12
    cmp-long p5, p2, v0

    .line 13
    .line 14
    if-ltz p5, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/animation/Animator;->end()V

    .line 17
    .line 18
    .line 19
    const/high16 p1, 0x3f800000    # 1.0f

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    long-to-double p1, p2

    .line 23
    int-to-double p3, p4

    .line 24
    div-double/2addr p1, p3

    .line 25
    double-to-float p1, p1

    .line 26
    :goto_0
    iget-object p2, p0, Landroidx/leanback/app/g;->e:Landroid/view/animation/DecelerateInterpolator;

    .line 27
    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    invoke-virtual {p2, p1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    :cond_1
    iget p2, p0, Landroidx/leanback/app/g;->f:F

    .line 35
    .line 36
    iget p3, p0, Landroidx/leanback/app/g;->g:F

    .line 37
    .line 38
    mul-float/2addr p1, p3

    .line 39
    add-float/2addr p1, p2

    .line 40
    iget-object p2, p0, Landroidx/leanback/app/g;->a:Landroidx/leanback/widget/N0;

    .line 41
    .line 42
    iget-object p3, p0, Landroidx/leanback/app/g;->b:Landroidx/leanback/widget/A0;

    .line 43
    .line 44
    invoke-virtual {p2, p3, p1}, Landroidx/leanback/widget/N0;->setSelectLevel(Landroidx/leanback/widget/A0;F)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-void
.end method
