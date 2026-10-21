.class public final Landroidx/mediarouter/app/z;
.super Lf1/M;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/mediarouter/app/D;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/D;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/z;->a:Landroidx/mediarouter/app/D;

    .line 2
    .line 3
    invoke-direct {p0}, Lf1/M;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onRouteChanged(Lf1/X;Lf1/U;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/mediarouter/app/z;->a:Landroidx/mediarouter/app/D;

    .line 2
    .line 3
    const/4 p2, 0x1

    .line 4
    invoke-virtual {p1, p2}, Landroidx/mediarouter/app/D;->m(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onRouteUnselected(Lf1/X;Lf1/U;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/mediarouter/app/z;->a:Landroidx/mediarouter/app/D;

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, p2}, Landroidx/mediarouter/app/D;->m(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onRouteVolumeChanged(Lf1/X;Lf1/U;)V
    .locals 3

    .line 1
    iget-object p1, p0, Landroidx/mediarouter/app/z;->a:Landroidx/mediarouter/app/D;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/mediarouter/app/D;->c0:Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/widget/SeekBar;

    .line 10
    .line 11
    invoke-virtual {p2}, Lf1/U;->getVolume()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    sget v2, Landroidx/mediarouter/app/D;->A0:I

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object p1, p1, Landroidx/mediarouter/app/D;->X:Lf1/U;

    .line 20
    .line 21
    if-eq p1, p2, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method
