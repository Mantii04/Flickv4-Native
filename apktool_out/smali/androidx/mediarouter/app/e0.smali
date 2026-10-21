.class public final Landroidx/mediarouter/app/e0;
.super Landroidx/mediarouter/app/Y;
.source "SourceFile"


# instance fields
.field public final synthetic A:Landroidx/mediarouter/app/j0;

.field public final y:Landroid/widget/TextView;

.field public final z:I


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/j0;Landroid/view/View;)V
    .locals 3

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/e0;->A:Landroidx/mediarouter/app/j0;

    .line 2
    .line 3
    iget-object p1, p1, Landroidx/mediarouter/app/j0;->m:Landroidx/mediarouter/app/m0;

    .line 4
    .line 5
    sget v0, Landroidx/mediarouter/R$id;->mr_cast_mute_button:I

    .line 6
    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/ImageButton;

    .line 12
    .line 13
    sget v1, Landroidx/mediarouter/R$id;->mr_cast_volume_slider:I

    .line 14
    .line 15
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroidx/mediarouter/app/MediaRouteVolumeSlider;

    .line 20
    .line 21
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/mediarouter/app/Y;-><init>(Landroidx/mediarouter/app/m0;Landroid/view/View;Landroid/widget/ImageButton;Landroidx/mediarouter/app/MediaRouteVolumeSlider;)V

    .line 22
    .line 23
    .line 24
    sget v0, Landroidx/mediarouter/R$id;->mr_group_volume_route_name:I

    .line 25
    .line 26
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    check-cast p2, Landroid/widget/TextView;

    .line 31
    .line 32
    iput-object p2, p0, Landroidx/mediarouter/app/e0;->y:Landroid/widget/TextView;

    .line 33
    .line 34
    iget-object p1, p1, Landroidx/mediarouter/app/m0;->w:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    new-instance v0, Landroid/util/TypedValue;

    .line 45
    .line 46
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 47
    .line 48
    .line 49
    sget v1, Landroidx/mediarouter/R$dimen;->mr_dynamic_volume_group_list_item_height:I

    .line 50
    .line 51
    const/4 v2, 0x1

    .line 52
    invoke-virtual {p1, v1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    float-to-int p1, p1

    .line 60
    iput p1, p0, Landroidx/mediarouter/app/e0;->z:I

    .line 61
    .line 62
    return-void
.end method
