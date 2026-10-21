.class public abstract Landroidx/mediarouter/app/Y;
.super Lm1/B0;
.source "SourceFile"


# instance fields
.field public u:Lf1/U;

.field public final v:Landroid/widget/ImageButton;

.field public final w:Landroidx/mediarouter/app/MediaRouteVolumeSlider;

.field public final synthetic x:Landroidx/mediarouter/app/m0;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/m0;Landroid/view/View;Landroid/widget/ImageButton;Landroidx/mediarouter/app/MediaRouteVolumeSlider;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/Y;->x:Landroidx/mediarouter/app/m0;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lm1/B0;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    iput-object p3, p0, Landroidx/mediarouter/app/Y;->v:Landroid/widget/ImageButton;

    .line 7
    .line 8
    iput-object p4, p0, Landroidx/mediarouter/app/Y;->w:Landroidx/mediarouter/app/MediaRouteVolumeSlider;

    .line 9
    .line 10
    iget-object p2, p1, Landroidx/mediarouter/app/m0;->w:Landroid/content/Context;

    .line 11
    .line 12
    sget v0, Landroidx/mediarouter/R$drawable;->mr_cast_mute_button:I

    .line 13
    .line 14
    sget v1, Landroidx/mediarouter/app/o0;->a:I

    .line 15
    .line 16
    invoke-static {p2, v0}, Lf/a;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, LE/c;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {p2}, Landroidx/mediarouter/app/o0;->h(Landroid/content/Context;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    sget v1, Landroidx/mediarouter/app/o0;->a:I

    .line 31
    .line 32
    invoke-static {p2, v1}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    invoke-static {v0, p2}, LE/c;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p1, Landroidx/mediarouter/app/m0;->w:Landroid/content/Context;

    .line 43
    .line 44
    invoke-static {p1}, Landroidx/mediarouter/app/o0;->h(Landroid/content/Context;)Z

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    if-eqz p2, :cond_1

    .line 49
    .line 50
    sget p2, Landroidx/mediarouter/R$color;->mr_cast_progressbar_progress_and_thumb_light:I

    .line 51
    .line 52
    invoke-static {p1, p2}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    sget p3, Landroidx/mediarouter/R$color;->mr_cast_progressbar_background_light:I

    .line 57
    .line 58
    invoke-static {p1, p3}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    sget p2, Landroidx/mediarouter/R$color;->mr_cast_progressbar_progress_and_thumb_dark:I

    .line 64
    .line 65
    invoke-static {p1, p2}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    sget p3, Landroidx/mediarouter/R$color;->mr_cast_progressbar_background_dark:I

    .line 70
    .line 71
    invoke-static {p1, p3}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    :goto_0
    invoke-virtual {p4, p2, p1}, Landroidx/mediarouter/app/MediaRouteVolumeSlider;->setColor(II)V

    .line 76
    .line 77
    .line 78
    return-void
.end method


# virtual methods
.method public final n(Lf1/U;)V
    .locals 3

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/Y;->u:Lf1/U;

    .line 2
    .line 3
    invoke-virtual {p1}, Lf1/U;->getVolume()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    iget-object v2, p0, Landroidx/mediarouter/app/Y;->v:Landroid/widget/ImageButton;

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Landroid/view/View;->setActivated(Z)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Landroidx/mediarouter/app/X;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Landroidx/mediarouter/app/X;-><init>(Landroidx/mediarouter/app/Y;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Landroidx/mediarouter/app/Y;->u:Lf1/U;

    .line 26
    .line 27
    iget-object v2, p0, Landroidx/mediarouter/app/Y;->w:Landroidx/mediarouter/app/MediaRouteVolumeSlider;

    .line 28
    .line 29
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lf1/U;->getVolumeMax()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-virtual {v2, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Landroidx/mediarouter/app/Y;->x:Landroidx/mediarouter/app/m0;

    .line 43
    .line 44
    iget-object p1, p1, Landroidx/mediarouter/app/m0;->D:Landroidx/mediarouter/app/l0;

    .line 45
    .line 46
    invoke-virtual {v2, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final o(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/Y;->v:Landroid/widget/ImageButton;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isActivated()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-ne v1, p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setActivated(Z)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Landroidx/mediarouter/app/Y;->x:Landroidx/mediarouter/app/m0;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object p1, v0, Landroidx/mediarouter/app/m0;->G:Ljava/util/HashMap;

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/mediarouter/app/Y;->u:Lf1/U;

    .line 20
    .line 21
    invoke-virtual {v0}, Lf1/U;->getId()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Landroidx/mediarouter/app/Y;->w:Landroidx/mediarouter/app/MediaRouteVolumeSlider;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    iget-object p1, v0, Landroidx/mediarouter/app/m0;->G:Ljava/util/HashMap;

    .line 40
    .line 41
    iget-object v0, p0, Landroidx/mediarouter/app/Y;->u:Lf1/U;

    .line 42
    .line 43
    invoke-virtual {v0}, Lf1/U;->getId()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    return-void
.end method
