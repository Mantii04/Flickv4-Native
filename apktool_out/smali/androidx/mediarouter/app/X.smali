.class public final Landroidx/mediarouter/app/X;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Landroidx/mediarouter/app/Y;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/Y;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/mediarouter/app/X;->b:Landroidx/mediarouter/app/Y;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/X;->b:Landroidx/mediarouter/app/Y;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/mediarouter/app/Y;->x:Landroidx/mediarouter/app/m0;

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/mediarouter/app/m0;->F:Lf1/U;

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    iget-object v1, v1, Landroidx/mediarouter/app/m0;->A:Landroidx/mediarouter/app/S;

    .line 11
    .line 12
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v1, v0, Landroidx/mediarouter/app/Y;->x:Landroidx/mediarouter/app/m0;

    .line 16
    .line 17
    iget-object v2, v0, Landroidx/mediarouter/app/Y;->u:Lf1/U;

    .line 18
    .line 19
    iput-object v2, v1, Landroidx/mediarouter/app/m0;->F:Lf1/U;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/View;->isActivated()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    xor-int/lit8 v2, p1, 0x1

    .line 26
    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object p1, v1, Landroidx/mediarouter/app/m0;->G:Ljava/util/HashMap;

    .line 32
    .line 33
    iget-object v4, v0, Landroidx/mediarouter/app/Y;->u:Lf1/U;

    .line 34
    .line 35
    invoke-virtual {v4}, Lf1/U;->getId()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Ljava/lang/Integer;

    .line 44
    .line 45
    const/4 v4, 0x1

    .line 46
    if-nez p1, :cond_2

    .line 47
    .line 48
    move p1, v4

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    :goto_0
    invoke-virtual {v0, v2}, Landroidx/mediarouter/app/Y;->o(Z)V

    .line 59
    .line 60
    .line 61
    iget-object v2, v0, Landroidx/mediarouter/app/Y;->w:Landroidx/mediarouter/app/MediaRouteVolumeSlider;

    .line 62
    .line 63
    invoke-virtual {v2, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 64
    .line 65
    .line 66
    iget-object v0, v0, Landroidx/mediarouter/app/Y;->u:Lf1/U;

    .line 67
    .line 68
    invoke-virtual {v0, p1}, Lf1/U;->requestSetVolume(I)V

    .line 69
    .line 70
    .line 71
    iget-object p1, v1, Landroidx/mediarouter/app/m0;->A:Landroidx/mediarouter/app/S;

    .line 72
    .line 73
    const-wide/16 v0, 0x1f4

    .line 74
    .line 75
    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 76
    .line 77
    .line 78
    return-void
.end method
