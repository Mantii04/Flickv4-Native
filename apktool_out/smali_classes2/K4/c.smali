.class public final synthetic LK4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/bvp/BetterVideoPlayer;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/bvp/BetterVideoPlayer;I)V
    .locals 0

    .line 1
    iput p2, p0, LK4/c;->b:I

    iput-object p1, p0, LK4/c;->e:Lflix/com/vision/bvp/BetterVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    iget-object v0, p0, LK4/c;->e:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 2
    .line 3
    iget v1, p0, LK4/c;->b:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget v1, Lflix/com/vision/bvp/BetterVideoPlayer;->s0:I

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/Integer;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iget-object v1, v0, Lflix/com/vision/bvp/BetterVideoPlayer;->m:Lflix/com/vision/bvp/subtitle/CaptionsView;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    iget-object v3, v0, Lflix/com/vision/bvp/BetterVideoPlayer;->m:Lflix/com/vision/bvp/subtitle/CaptionsView;

    .line 30
    .line 31
    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    iget-object v0, v0, Lflix/com/vision/bvp/BetterVideoPlayer;->m:Lflix/com/vision/bvp/subtitle/CaptionsView;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-virtual {v1, v2, v3, v0, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_0
    sget v1, Lflix/com/vision/bvp/BetterVideoPlayer;->s0:I

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Ljava/lang/Integer;

    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    iget-object v1, v0, Lflix/com/vision/bvp/BetterVideoPlayer;->m:Lflix/com/vision/bvp/subtitle/CaptionsView;

    .line 61
    .line 62
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    iget-object v3, v0, Lflix/com/vision/bvp/BetterVideoPlayer;->m:Lflix/com/vision/bvp/subtitle/CaptionsView;

    .line 67
    .line 68
    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    iget-object v0, v0, Lflix/com/vision/bvp/BetterVideoPlayer;->m:Lflix/com/vision/bvp/subtitle/CaptionsView;

    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    invoke-virtual {v1, v2, v3, v0, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    nop

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
