.class public final Landroidx/mediarouter/app/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final b:Landroidx/mediarouter/app/A;

.field public final synthetic e:Landroidx/mediarouter/app/D;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/D;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/mediarouter/app/B;->e:Landroidx/mediarouter/app/D;

    .line 5
    .line 6
    new-instance p1, Landroidx/mediarouter/app/A;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Landroidx/mediarouter/app/A;-><init>(Landroidx/mediarouter/app/B;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/mediarouter/app/B;->b:Landroidx/mediarouter/app/A;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lf1/U;

    .line 8
    .line 9
    sget p3, Landroidx/mediarouter/app/D;->A0:I

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Lf1/U;->requestSetVolume(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/B;->e:Landroidx/mediarouter/app/D;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/mediarouter/app/D;->X:Lf1/U;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v1, v0, Landroidx/mediarouter/app/D;->V:Landroid/widget/SeekBar;

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/mediarouter/app/B;->b:Landroidx/mediarouter/app/A;

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lf1/U;

    .line 19
    .line 20
    iput-object p1, v0, Landroidx/mediarouter/app/D;->X:Lf1/U;

    .line 21
    .line 22
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .line 1
    iget-object p1, p0, Landroidx/mediarouter/app/B;->e:Landroidx/mediarouter/app/D;

    .line 2
    .line 3
    iget-object p1, p1, Landroidx/mediarouter/app/D;->V:Landroid/widget/SeekBar;

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/mediarouter/app/B;->b:Landroidx/mediarouter/app/A;

    .line 6
    .line 7
    const-wide/16 v1, 0x1f4

    .line 8
    .line 9
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method
