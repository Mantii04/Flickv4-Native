.class public final synthetic LC4/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll/u1;
.implements Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory;


# instance fields
.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic e:Ljava/io/Serializable;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic j:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, LC4/x;->b:Ljava/lang/Object;

    iput-object p2, p0, LC4/x;->e:Ljava/io/Serializable;

    iput-object p3, p0, LC4/x;->f:Ljava/lang/Object;

    iput-object p4, p0, LC4/x;->j:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(ILandroidx/media3/common/TrackGroup;[I)Ljava/util/List;
    .locals 8

    .line 1
    iget-object v0, p0, LC4/x;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-object v0, p0, LC4/x;->e:Ljava/io/Serializable;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    iget-object v0, p0, LC4/x;->f:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, [I

    iget-object v0, p0, LC4/x;->j:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/graphics/Point;

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->d(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;[ILandroid/graphics/Point;ILandroidx/media3/common/TrackGroup;[I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6

    .line 1
    iget-object v0, p0, LC4/x;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LC4/z;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    sget v2, Lflix/com/vision/R$id;->action_add_favorites_live_tv:I

    .line 13
    .line 14
    iget-object v3, p0, LC4/x;->e:Ljava/io/Serializable;

    .line 15
    .line 16
    check-cast v3, Lflix/com/vision/models/Drama;

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    iget-object v5, v0, LC4/z;->e:Landroid/app/Activity;

    .line 20
    .line 21
    if-ne v1, v2, :cond_0

    .line 22
    .line 23
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget-object v1, v1, Lflix/com/vision/App;->r:LP4/e;

    .line 28
    .line 29
    invoke-virtual {v1, v3}, LP4/e;->addDramaToFavorites(Lflix/com/vision/models/Drama;)V

    .line 30
    .line 31
    .line 32
    sget v1, Lflix/com/vision/R$string;->added_fav_label:I

    .line 33
    .line 34
    invoke-virtual {v5, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v5, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    sget v1, Lflix/com/vision/R$id;->action_remove_favorites_live_tv:I

    .line 50
    .line 51
    if-ne p1, v1, :cond_1

    .line 52
    .line 53
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget-object p1, p1, Lflix/com/vision/App;->r:LP4/e;

    .line 58
    .line 59
    invoke-virtual {p1, v3}, LP4/e;->deletDramaFromFavorites(Lflix/com/vision/models/Drama;)V

    .line 60
    .line 61
    .line 62
    sget p1, Lflix/com/vision/R$string;->removed_fav_label:I

    .line 63
    .line 64
    invoke-virtual {v5, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {v5, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 73
    .line 74
    .line 75
    iget-object p1, v0, LC4/z;->d:LU4/e;

    .line 76
    .line 77
    if-eqz p1, :cond_1

    .line 78
    .line 79
    iget-object v0, p0, LC4/x;->f:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v0, LC4/y;

    .line 82
    .line 83
    iget-object v0, v0, LC4/y;->u:Lflix/com/vision/models/Drama;

    .line 84
    .line 85
    invoke-interface {p1, v0}, LU4/e;->removeDramaFromFavorites(Lflix/com/vision/models/Drama;)V

    .line 86
    .line 87
    .line 88
    :cond_1
    iget-object p1, p0, LC4/x;->j:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast p1, Ll/v1;

    .line 91
    .line 92
    invoke-virtual {p1}, Ll/v1;->dismiss()V

    .line 93
    .line 94
    .line 95
    const/4 p1, 0x1

    .line 96
    return p1
.end method
