.class public final synthetic LM/A0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, LM/A0;->b:I

    iput-object p2, p0, LM/A0;->e:Ljava/lang/Object;

    iput-object p3, p0, LM/A0;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    iget-object v0, p0, LM/A0;->f:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v1, p0, LM/A0;->e:Ljava/lang/Object;

    .line 4
    .line 5
    iget v2, p0, LM/A0;->b:I

    .line 6
    .line 7
    packed-switch v2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget v2, Lcom/google/android/material/appbar/AppBarLayout;->I:I

    .line 11
    .line 12
    check-cast v1, Lcom/google/android/material/appbar/AppBarLayout;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Ljava/lang/Float;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    check-cast v0, LG3/j;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, LG3/j;->setElevation(F)V

    .line 27
    .line 28
    .line 29
    iget-object v2, v1, Lcom/google/android/material/appbar/AppBarLayout;->E:Landroid/graphics/drawable/Drawable;

    .line 30
    .line 31
    instance-of v3, v2, LG3/j;

    .line 32
    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    check-cast v2, LG3/j;

    .line 36
    .line 37
    invoke-virtual {v2, p1}, LG3/j;->setElevation(F)V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object p1, v1, Lcom/google/android/material/appbar/AppBarLayout;->A:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_1

    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-nez p1, :cond_2

    .line 58
    .line 59
    invoke-virtual {v0}, LG3/j;->getResolvedTintColor()I

    .line 60
    .line 61
    .line 62
    const/4 p1, 0x0

    .line 63
    throw p1

    .line 64
    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    .line 65
    .line 66
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 67
    .line 68
    .line 69
    throw p1

    .line 70
    :pswitch_0
    check-cast v1, LM/F0;

    .line 71
    .line 72
    check-cast v1, Le/v0;

    .line 73
    .line 74
    check-cast v0, Landroid/view/View;

    .line 75
    .line 76
    invoke-virtual {v1, v0}, Le/v0;->onAnimationUpdate(Landroid/view/View;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    nop

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
