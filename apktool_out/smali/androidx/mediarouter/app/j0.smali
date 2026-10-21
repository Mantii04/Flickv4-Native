.class public final Landroidx/mediarouter/app/j0;
.super Lm1/V;
.source "SourceFile"


# instance fields
.field public final d:Ljava/util/ArrayList;

.field public final e:Landroid/view/LayoutInflater;

.field public final f:Landroid/graphics/drawable/Drawable;

.field public final g:Landroid/graphics/drawable/Drawable;

.field public final h:Landroid/graphics/drawable/Drawable;

.field public final i:Landroid/graphics/drawable/Drawable;

.field public j:Landroidx/mediarouter/app/g0;

.field public final k:I

.field public final l:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field public final synthetic m:Landroidx/mediarouter/app/m0;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/m0;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/j0;->m:Landroidx/mediarouter/app/m0;

    .line 2
    .line 3
    invoke-direct {p0}, Lm1/V;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroidx/mediarouter/app/j0;->d:Ljava/util/ArrayList;

    .line 12
    .line 13
    iget-object v0, p1, Landroidx/mediarouter/app/m0;->w:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Landroidx/mediarouter/app/j0;->e:Landroid/view/LayoutInflater;

    .line 20
    .line 21
    sget v0, Landroidx/mediarouter/R$attr;->mediaRouteDefaultIconDrawable:I

    .line 22
    .line 23
    iget-object p1, p1, Landroidx/mediarouter/app/m0;->w:Landroid/content/Context;

    .line 24
    .line 25
    invoke-static {p1, v0}, Landroidx/mediarouter/app/o0;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Landroidx/mediarouter/app/j0;->f:Landroid/graphics/drawable/Drawable;

    .line 30
    .line 31
    sget v0, Landroidx/mediarouter/R$attr;->mediaRouteTvIconDrawable:I

    .line 32
    .line 33
    invoke-static {p1, v0}, Landroidx/mediarouter/app/o0;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Landroidx/mediarouter/app/j0;->g:Landroid/graphics/drawable/Drawable;

    .line 38
    .line 39
    sget v0, Landroidx/mediarouter/R$attr;->mediaRouteSpeakerIconDrawable:I

    .line 40
    .line 41
    invoke-static {p1, v0}, Landroidx/mediarouter/app/o0;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Landroidx/mediarouter/app/j0;->h:Landroid/graphics/drawable/Drawable;

    .line 46
    .line 47
    sget v0, Landroidx/mediarouter/R$attr;->mediaRouteSpeakerGroupIconDrawable:I

    .line 48
    .line 49
    invoke-static {p1, v0}, Landroidx/mediarouter/app/o0;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Landroidx/mediarouter/app/j0;->i:Landroid/graphics/drawable/Drawable;

    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    sget v0, Landroidx/mediarouter/R$integer;->mr_cast_volume_slider_layout_animation_duration_ms:I

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    iput p1, p0, Landroidx/mediarouter/app/j0;->k:I

    .line 66
    .line 67
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 68
    .line 69
    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object p1, p0, Landroidx/mediarouter/app/j0;->l:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 73
    .line 74
    invoke-virtual {p0}, Landroidx/mediarouter/app/j0;->d()V

    .line 75
    .line 76
    .line 77
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;I)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6
    .line 7
    new-instance v1, Landroidx/mediarouter/app/a0;

    .line 8
    .line 9
    invoke-direct {v1, p1, p2, v0}, Landroidx/mediarouter/app/a0;-><init>(Landroid/view/View;II)V

    .line 10
    .line 11
    .line 12
    new-instance p2, Landroidx/mediarouter/app/b0;

    .line 13
    .line 14
    invoke-direct {p2, p0}, Landroidx/mediarouter/app/b0;-><init>(Landroidx/mediarouter/app/j0;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 18
    .line 19
    .line 20
    iget p2, p0, Landroidx/mediarouter/app/j0;->k:I

    .line 21
    .line 22
    int-to-long v2, p2

    .line 23
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Landroidx/mediarouter/app/j0;->l:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 27
    .line 28
    invoke-virtual {v1, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final b(Lf1/U;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lf1/U;->getIconUri()Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v1, p0, Landroidx/mediarouter/app/j0;->m:Landroidx/mediarouter/app/m0;

    .line 8
    .line 9
    iget-object v1, v1, Landroidx/mediarouter/app/m0;->w:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 21
    .line 22
    .line 23
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    return-object v0

    .line 27
    :catch_0
    move-exception v1

    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v3, "Failed to load "

    .line 31
    .line 32
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v2, "MediaRouteCtrlDialog"

    .line 43
    .line 44
    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-virtual {p1}, Lf1/U;->getDeviceType()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    const/4 v1, 0x1

    .line 52
    if-eq v0, v1, :cond_3

    .line 53
    .line 54
    const/4 v1, 0x2

    .line 55
    if-eq v0, v1, :cond_2

    .line 56
    .line 57
    invoke-virtual {p1}, Lf1/U;->isGroup()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_1

    .line 62
    .line 63
    iget-object p1, p0, Landroidx/mediarouter/app/j0;->i:Landroid/graphics/drawable/Drawable;

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    iget-object p1, p0, Landroidx/mediarouter/app/j0;->f:Landroid/graphics/drawable/Drawable;

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    iget-object p1, p0, Landroidx/mediarouter/app/j0;->h:Landroid/graphics/drawable/Drawable;

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    iget-object p1, p0, Landroidx/mediarouter/app/j0;->g:Landroid/graphics/drawable/Drawable;

    .line 73
    .line 74
    :goto_0
    return-object p1
.end method

.method public final c()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/j0;->m:Landroidx/mediarouter/app/m0;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/mediarouter/app/m0;->v:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 6
    .line 7
    .line 8
    iget-object v2, v0, Landroidx/mediarouter/app/m0;->t:Ljava/util/ArrayList;

    .line 9
    .line 10
    new-instance v3, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v4, v0, Landroidx/mediarouter/app/m0;->r:Lf1/U;

    .line 16
    .line 17
    invoke-virtual {v4}, Lf1/U;->getProvider()Lf1/S;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-virtual {v4}, Lf1/S;->getRoutes()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-eqz v5, :cond_1

    .line 34
    .line 35
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    check-cast v5, Lf1/U;

    .line 40
    .line 41
    iget-object v6, v0, Landroidx/mediarouter/app/m0;->r:Lf1/U;

    .line 42
    .line 43
    invoke-virtual {v6, v5}, Lf1/U;->getDynamicGroupState(Lf1/U;)Lf1/T;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    if-eqz v6, :cond_0

    .line 48
    .line 49
    invoke-virtual {v6}, Lf1/T;->isGroupable()Z

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    if-eqz v6, :cond_0

    .line 54
    .line 55
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-static {v2, v3}, Landroidx/mediarouter/app/G;->getItemsRemoved(Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lm1/V;->notifyDataSetChanged()V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final d()V
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/j0;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroidx/mediarouter/app/g0;

    .line 7
    .line 8
    iget-object v2, p0, Landroidx/mediarouter/app/j0;->m:Landroidx/mediarouter/app/m0;

    .line 9
    .line 10
    iget-object v3, v2, Landroidx/mediarouter/app/m0;->r:Lf1/U;

    .line 11
    .line 12
    const/4 v4, 0x1

    .line 13
    invoke-direct {v1, v3, v4}, Landroidx/mediarouter/app/g0;-><init>(Ljava/lang/Object;I)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Landroidx/mediarouter/app/j0;->j:Landroidx/mediarouter/app/g0;

    .line 17
    .line 18
    iget-object v1, v2, Landroidx/mediarouter/app/m0;->s:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    const/4 v5, 0x3

    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    if-eqz v6, :cond_1

    .line 36
    .line 37
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    check-cast v6, Lf1/U;

    .line 42
    .line 43
    new-instance v7, Landroidx/mediarouter/app/g0;

    .line 44
    .line 45
    invoke-direct {v7, v6, v5}, Landroidx/mediarouter/app/g0;-><init>(Ljava/lang/Object;I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    new-instance v3, Landroidx/mediarouter/app/g0;

    .line 53
    .line 54
    iget-object v6, v2, Landroidx/mediarouter/app/m0;->r:Lf1/U;

    .line 55
    .line 56
    invoke-direct {v3, v6, v5}, Landroidx/mediarouter/app/g0;-><init>(Ljava/lang/Object;I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    :cond_1
    iget-object v3, v2, Landroidx/mediarouter/app/m0;->t:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    const/4 v7, 0x2

    .line 69
    const/4 v8, 0x0

    .line 70
    const/4 v9, 0x0

    .line 71
    if-nez v6, :cond_6

    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    move v6, v9

    .line 78
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v10

    .line 82
    if-eqz v10, :cond_6

    .line 83
    .line 84
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v10

    .line 88
    check-cast v10, Lf1/U;

    .line 89
    .line 90
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v11

    .line 94
    if-nez v11, :cond_2

    .line 95
    .line 96
    if-nez v6, :cond_5

    .line 97
    .line 98
    iget-object v6, v2, Landroidx/mediarouter/app/m0;->r:Lf1/U;

    .line 99
    .line 100
    invoke-virtual {v6}, Lf1/U;->getDynamicGroupController()Lf1/C;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    if-eqz v6, :cond_3

    .line 105
    .line 106
    invoke-virtual {v6}, Lf1/C;->getGroupableSelectionTitle()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    goto :goto_2

    .line 111
    :cond_3
    move-object v6, v8

    .line 112
    :goto_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 113
    .line 114
    .line 115
    move-result v11

    .line 116
    if-eqz v11, :cond_4

    .line 117
    .line 118
    iget-object v6, v2, Landroidx/mediarouter/app/m0;->w:Landroid/content/Context;

    .line 119
    .line 120
    sget v11, Landroidx/mediarouter/R$string;->mr_dialog_groupable_header:I

    .line 121
    .line 122
    invoke-virtual {v6, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    :cond_4
    new-instance v11, Landroidx/mediarouter/app/g0;

    .line 127
    .line 128
    invoke-direct {v11, v6, v7}, Landroidx/mediarouter/app/g0;-><init>(Ljava/lang/Object;I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move v6, v4

    .line 135
    :cond_5
    new-instance v11, Landroidx/mediarouter/app/g0;

    .line 136
    .line 137
    invoke-direct {v11, v10, v5}, Landroidx/mediarouter/app/g0;-><init>(Ljava/lang/Object;I)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_6
    iget-object v1, v2, Landroidx/mediarouter/app/m0;->u:Ljava/util/ArrayList;

    .line 145
    .line 146
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    if-nez v3, :cond_b

    .line 151
    .line 152
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    :cond_7
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    if-eqz v3, :cond_b

    .line 161
    .line 162
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    check-cast v3, Lf1/U;

    .line 167
    .line 168
    iget-object v5, v2, Landroidx/mediarouter/app/m0;->r:Lf1/U;

    .line 169
    .line 170
    if-eq v5, v3, :cond_7

    .line 171
    .line 172
    if-nez v9, :cond_a

    .line 173
    .line 174
    invoke-virtual {v5}, Lf1/U;->getDynamicGroupController()Lf1/C;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    if-eqz v5, :cond_8

    .line 179
    .line 180
    invoke-virtual {v5}, Lf1/C;->getTransferableSectionTitle()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    goto :goto_4

    .line 185
    :cond_8
    move-object v5, v8

    .line 186
    :goto_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 187
    .line 188
    .line 189
    move-result v6

    .line 190
    if-eqz v6, :cond_9

    .line 191
    .line 192
    iget-object v5, v2, Landroidx/mediarouter/app/m0;->w:Landroid/content/Context;

    .line 193
    .line 194
    sget v6, Landroidx/mediarouter/R$string;->mr_dialog_transferable_header:I

    .line 195
    .line 196
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v5

    .line 200
    :cond_9
    new-instance v6, Landroidx/mediarouter/app/g0;

    .line 201
    .line 202
    invoke-direct {v6, v5, v7}, Landroidx/mediarouter/app/g0;-><init>(Ljava/lang/Object;I)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move v9, v4

    .line 209
    :cond_a
    new-instance v5, Landroidx/mediarouter/app/g0;

    .line 210
    .line 211
    const/4 v6, 0x4

    .line 212
    invoke-direct {v5, v3, v6}, Landroidx/mediarouter/app/g0;-><init>(Ljava/lang/Object;I)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    goto :goto_3

    .line 219
    :cond_b
    invoke-virtual {p0}, Landroidx/mediarouter/app/j0;->c()V

    .line 220
    .line 221
    .line 222
    return-void
.end method

.method public getItem(I)Landroidx/mediarouter/app/g0;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Landroidx/mediarouter/app/j0;->j:Landroidx/mediarouter/app/g0;

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/app/j0;->d:Ljava/util/ArrayList;

    .line 7
    .line 8
    add-int/lit8 p1, p1, -0x1

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroidx/mediarouter/app/g0;

    .line 15
    .line 16
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/j0;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/j0;->getItem(I)Landroidx/mediarouter/app/g0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroidx/mediarouter/app/g0;->getType()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public onBindViewHolder(Lm1/B0;I)V
    .locals 10

    .line 1
    invoke-virtual {p0, p2}, Landroidx/mediarouter/app/j0;->getItemViewType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p2}, Landroidx/mediarouter/app/j0;->getItem(I)Landroidx/mediarouter/app/g0;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    iget-object v1, p0, Landroidx/mediarouter/app/j0;->m:Landroidx/mediarouter/app/m0;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eq v0, v2, :cond_13

    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    if-eq v0, v4, :cond_12

    .line 17
    .line 18
    const/4 v5, 0x3

    .line 19
    const/high16 v6, 0x3f800000    # 1.0f

    .line 20
    .line 21
    const/4 v7, 0x4

    .line 22
    if-eq v0, v5, :cond_2

    .line 23
    .line 24
    if-ne v0, v7, :cond_1

    .line 25
    .line 26
    check-cast p1, Landroidx/mediarouter/app/d0;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Landroidx/mediarouter/app/g0;->getData()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    check-cast p2, Lf1/U;

    .line 36
    .line 37
    iput-object p2, p1, Landroidx/mediarouter/app/d0;->z:Lf1/U;

    .line 38
    .line 39
    iget-object v0, p1, Landroidx/mediarouter/app/d0;->v:Landroid/widget/ImageView;

    .line 40
    .line 41
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p1, Landroidx/mediarouter/app/d0;->w:Landroid/widget/ProgressBar;

    .line 45
    .line 46
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p1, Landroidx/mediarouter/app/d0;->A:Landroidx/mediarouter/app/j0;

    .line 50
    .line 51
    iget-object v4, v1, Landroidx/mediarouter/app/j0;->m:Landroidx/mediarouter/app/m0;

    .line 52
    .line 53
    iget-object v4, v4, Landroidx/mediarouter/app/m0;->r:Lf1/U;

    .line 54
    .line 55
    invoke-virtual {v4}, Lf1/U;->getMemberRoutes()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-ne v5, v2, :cond_0

    .line 64
    .line 65
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    if-ne v2, p2, :cond_0

    .line 70
    .line 71
    iget v6, p1, Landroidx/mediarouter/app/d0;->y:F

    .line 72
    .line 73
    :cond_0
    iget-object v2, p1, Landroidx/mediarouter/app/d0;->u:Landroid/view/View;

    .line 74
    .line 75
    invoke-virtual {v2, v6}, Landroid/view/View;->setAlpha(F)V

    .line 76
    .line 77
    .line 78
    new-instance v3, Landroidx/mediarouter/app/c0;

    .line 79
    .line 80
    invoke-direct {v3, p1}, Landroidx/mediarouter/app/c0;-><init>(Landroidx/mediarouter/app/d0;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, p2}, Landroidx/mediarouter/app/j0;->b(Lf1/U;)Landroid/graphics/drawable/Drawable;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p1, Landroidx/mediarouter/app/d0;->x:Landroid/widget/TextView;

    .line 94
    .line 95
    invoke-virtual {p2}, Lf1/U;->getName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 104
    .line 105
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 106
    .line 107
    .line 108
    throw p1

    .line 109
    :cond_2
    invoke-virtual {p2}, Landroidx/mediarouter/app/g0;->getData()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    check-cast v0, Lf1/U;

    .line 114
    .line 115
    iget-object v1, v1, Landroidx/mediarouter/app/m0;->E:Ljava/util/HashMap;

    .line 116
    .line 117
    invoke-virtual {v0}, Lf1/U;->getId()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    move-object v5, p1

    .line 122
    check-cast v5, Landroidx/mediarouter/app/Y;

    .line 123
    .line 124
    invoke-virtual {v1, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    check-cast p1, Landroidx/mediarouter/app/i0;

    .line 128
    .line 129
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2}, Landroidx/mediarouter/app/g0;->getData()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    check-cast p2, Lf1/U;

    .line 137
    .line 138
    iget-object v0, p1, Landroidx/mediarouter/app/i0;->H:Landroidx/mediarouter/app/j0;

    .line 139
    .line 140
    iget-object v1, v0, Landroidx/mediarouter/app/j0;->m:Landroidx/mediarouter/app/m0;

    .line 141
    .line 142
    iget-object v5, v1, Landroidx/mediarouter/app/m0;->r:Lf1/U;

    .line 143
    .line 144
    if-ne p2, v5, :cond_4

    .line 145
    .line 146
    invoke-virtual {p2}, Lf1/U;->getMemberRoutes()Ljava/util/List;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    if-lez v5, :cond_4

    .line 155
    .line 156
    invoke-virtual {p2}, Lf1/U;->getMemberRoutes()Ljava/util/List;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 165
    .line 166
    .line 167
    move-result v8

    .line 168
    if-eqz v8, :cond_4

    .line 169
    .line 170
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v8

    .line 174
    check-cast v8, Lf1/U;

    .line 175
    .line 176
    iget-object v9, v1, Landroidx/mediarouter/app/m0;->t:Ljava/util/ArrayList;

    .line 177
    .line 178
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v9

    .line 182
    if-nez v9, :cond_3

    .line 183
    .line 184
    move-object p2, v8

    .line 185
    :cond_4
    invoke-virtual {p1, p2}, Landroidx/mediarouter/app/Y;->n(Lf1/U;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, p2}, Landroidx/mediarouter/app/j0;->b(Lf1/U;)Landroid/graphics/drawable/Drawable;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    iget-object v5, p1, Landroidx/mediarouter/app/i0;->z:Landroid/widget/ImageView;

    .line 193
    .line 194
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 195
    .line 196
    .line 197
    iget-object v0, p1, Landroidx/mediarouter/app/i0;->B:Landroid/widget/TextView;

    .line 198
    .line 199
    invoke-virtual {p2}, Lf1/U;->getName()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v8

    .line 203
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    .line 205
    .line 206
    iget-object v0, p1, Landroidx/mediarouter/app/i0;->D:Landroid/widget/CheckBox;

    .line 207
    .line 208
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1, p2}, Landroidx/mediarouter/app/i0;->p(Lf1/U;)Z

    .line 212
    .line 213
    .line 214
    move-result v8

    .line 215
    iget-object v9, v1, Landroidx/mediarouter/app/m0;->v:Ljava/util/ArrayList;

    .line 216
    .line 217
    invoke-virtual {v9, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v9

    .line 221
    if-eqz v9, :cond_6

    .line 222
    .line 223
    :cond_5
    :goto_0
    move p2, v3

    .line 224
    goto :goto_1

    .line 225
    :cond_6
    invoke-virtual {p1, p2}, Landroidx/mediarouter/app/i0;->p(Lf1/U;)Z

    .line 226
    .line 227
    .line 228
    move-result v9

    .line 229
    if-eqz v9, :cond_7

    .line 230
    .line 231
    iget-object v9, v1, Landroidx/mediarouter/app/m0;->r:Lf1/U;

    .line 232
    .line 233
    invoke-virtual {v9}, Lf1/U;->getMemberRoutes()Ljava/util/List;

    .line 234
    .line 235
    .line 236
    move-result-object v9

    .line 237
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 238
    .line 239
    .line 240
    move-result v9

    .line 241
    if-ge v9, v4, :cond_7

    .line 242
    .line 243
    goto :goto_0

    .line 244
    :cond_7
    invoke-virtual {p1, p2}, Landroidx/mediarouter/app/i0;->p(Lf1/U;)Z

    .line 245
    .line 246
    .line 247
    move-result v4

    .line 248
    if-eqz v4, :cond_8

    .line 249
    .line 250
    iget-object v1, v1, Landroidx/mediarouter/app/m0;->r:Lf1/U;

    .line 251
    .line 252
    invoke-virtual {v1, p2}, Lf1/U;->getDynamicGroupState(Lf1/U;)Lf1/T;

    .line 253
    .line 254
    .line 255
    move-result-object p2

    .line 256
    if-eqz p2, :cond_5

    .line 257
    .line 258
    invoke-virtual {p2}, Lf1/T;->isUnselectable()Z

    .line 259
    .line 260
    .line 261
    move-result p2

    .line 262
    if-eqz p2, :cond_5

    .line 263
    .line 264
    :cond_8
    move p2, v2

    .line 265
    :goto_1
    invoke-virtual {v0, v8}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 266
    .line 267
    .line 268
    iget-object v1, p1, Landroidx/mediarouter/app/i0;->A:Landroid/widget/ProgressBar;

    .line 269
    .line 270
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 274
    .line 275
    .line 276
    iget-object v1, p1, Landroidx/mediarouter/app/i0;->y:Landroid/view/View;

    .line 277
    .line 278
    invoke-virtual {v1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 282
    .line 283
    .line 284
    if-nez p2, :cond_a

    .line 285
    .line 286
    if-eqz v8, :cond_9

    .line 287
    .line 288
    goto :goto_2

    .line 289
    :cond_9
    move v4, v3

    .line 290
    goto :goto_3

    .line 291
    :cond_a
    :goto_2
    move v4, v2

    .line 292
    :goto_3
    iget-object v5, p1, Landroidx/mediarouter/app/Y;->v:Landroid/widget/ImageButton;

    .line 293
    .line 294
    invoke-virtual {v5, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 295
    .line 296
    .line 297
    if-nez p2, :cond_c

    .line 298
    .line 299
    if-eqz v8, :cond_b

    .line 300
    .line 301
    goto :goto_4

    .line 302
    :cond_b
    move v2, v3

    .line 303
    :cond_c
    :goto_4
    iget-object v4, p1, Landroidx/mediarouter/app/Y;->w:Landroidx/mediarouter/app/MediaRouteVolumeSlider;

    .line 304
    .line 305
    invoke-virtual {v4, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 306
    .line 307
    .line 308
    iget-object v2, p1, Landroidx/mediarouter/app/i0;->G:Landroidx/mediarouter/app/h0;

    .line 309
    .line 310
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    .line 315
    .line 316
    if-eqz v8, :cond_d

    .line 317
    .line 318
    iget-object v2, p1, Landroidx/mediarouter/app/Y;->u:Lf1/U;

    .line 319
    .line 320
    invoke-virtual {v2}, Lf1/U;->isGroup()Z

    .line 321
    .line 322
    .line 323
    move-result v2

    .line 324
    if-nez v2, :cond_d

    .line 325
    .line 326
    iget v3, p1, Landroidx/mediarouter/app/i0;->F:I

    .line 327
    .line 328
    :cond_d
    iget-object v2, p1, Landroidx/mediarouter/app/i0;->C:Landroid/widget/RelativeLayout;

    .line 329
    .line 330
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 331
    .line 332
    .line 333
    move-result-object v4

    .line 334
    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 335
    .line 336
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    .line 338
    .line 339
    iget p1, p1, Landroidx/mediarouter/app/i0;->E:F

    .line 340
    .line 341
    if-nez p2, :cond_f

    .line 342
    .line 343
    if-eqz v8, :cond_e

    .line 344
    .line 345
    goto :goto_5

    .line 346
    :cond_e
    move v2, p1

    .line 347
    goto :goto_6

    .line 348
    :cond_f
    :goto_5
    move v2, v6

    .line 349
    :goto_6
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 350
    .line 351
    .line 352
    if-nez p2, :cond_11

    .line 353
    .line 354
    if-nez v8, :cond_10

    .line 355
    .line 356
    goto :goto_7

    .line 357
    :cond_10
    move v6, p1

    .line 358
    :cond_11
    :goto_7
    invoke-virtual {v0, v6}, Landroid/view/View;->setAlpha(F)V

    .line 359
    .line 360
    .line 361
    return-void

    .line 362
    :cond_12
    check-cast p1, Landroidx/mediarouter/app/f0;

    .line 363
    .line 364
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 365
    .line 366
    .line 367
    invoke-virtual {p2}, Landroidx/mediarouter/app/g0;->getData()Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object p2

    .line 371
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object p2

    .line 375
    iget-object p1, p1, Landroidx/mediarouter/app/f0;->u:Landroid/widget/TextView;

    .line 376
    .line 377
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    .line 379
    .line 380
    return-void

    .line 381
    :cond_13
    invoke-virtual {p2}, Landroidx/mediarouter/app/g0;->getData()Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    check-cast v0, Lf1/U;

    .line 386
    .line 387
    iget-object v1, v1, Landroidx/mediarouter/app/m0;->E:Ljava/util/HashMap;

    .line 388
    .line 389
    invoke-virtual {v0}, Lf1/U;->getId()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    move-object v4, p1

    .line 394
    check-cast v4, Landroidx/mediarouter/app/Y;

    .line 395
    .line 396
    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    check-cast p1, Landroidx/mediarouter/app/e0;

    .line 400
    .line 401
    iget-object v0, p1, Landroidx/mediarouter/app/e0;->A:Landroidx/mediarouter/app/j0;

    .line 402
    .line 403
    iget-object v0, v0, Landroidx/mediarouter/app/j0;->m:Landroidx/mediarouter/app/m0;

    .line 404
    .line 405
    iget-boolean v1, v0, Landroidx/mediarouter/app/m0;->b0:Z

    .line 406
    .line 407
    if-eqz v1, :cond_14

    .line 408
    .line 409
    iget-object v0, v0, Landroidx/mediarouter/app/m0;->r:Lf1/U;

    .line 410
    .line 411
    invoke-virtual {v0}, Lf1/U;->getMemberRoutes()Ljava/util/List;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 416
    .line 417
    .line 418
    move-result v0

    .line 419
    if-le v0, v2, :cond_14

    .line 420
    .line 421
    iget v3, p1, Landroidx/mediarouter/app/e0;->z:I

    .line 422
    .line 423
    :cond_14
    iget-object v0, p1, Lm1/B0;->a:Landroid/view/View;

    .line 424
    .line 425
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 426
    .line 427
    .line 428
    move-result-object v1

    .line 429
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 430
    .line 431
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {p2}, Landroidx/mediarouter/app/g0;->getData()Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    move-result-object p2

    .line 438
    check-cast p2, Lf1/U;

    .line 439
    .line 440
    invoke-virtual {p1, p2}, Landroidx/mediarouter/app/Y;->n(Lf1/U;)V

    .line 441
    .line 442
    .line 443
    iget-object p1, p1, Landroidx/mediarouter/app/e0;->y:Landroid/widget/TextView;

    .line 444
    .line 445
    invoke-virtual {p2}, Lf1/U;->getName()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object p2

    .line 449
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    .line 451
    .line 452
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lm1/B0;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Landroidx/mediarouter/app/j0;->e:Landroid/view/LayoutInflater;

    .line 4
    .line 5
    if-eq p2, v0, :cond_3

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    if-eq p2, v0, :cond_2

    .line 9
    .line 10
    const/4 v0, 0x3

    .line 11
    if-eq p2, v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x4

    .line 14
    if-ne p2, v0, :cond_0

    .line 15
    .line 16
    sget p2, Landroidx/mediarouter/R$layout;->mr_cast_group_item:I

    .line 17
    .line 18
    invoke-virtual {v2, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance p2, Landroidx/mediarouter/app/d0;

    .line 23
    .line 24
    invoke-direct {p2, p0, p1}, Landroidx/mediarouter/app/d0;-><init>(Landroidx/mediarouter/app/j0;Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    return-object p2

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :cond_1
    sget p2, Landroidx/mediarouter/R$layout;->mr_cast_route_item:I

    .line 35
    .line 36
    invoke-virtual {v2, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    new-instance p2, Landroidx/mediarouter/app/i0;

    .line 41
    .line 42
    invoke-direct {p2, p0, p1}, Landroidx/mediarouter/app/i0;-><init>(Landroidx/mediarouter/app/j0;Landroid/view/View;)V

    .line 43
    .line 44
    .line 45
    return-object p2

    .line 46
    :cond_2
    sget p2, Landroidx/mediarouter/R$layout;->mr_cast_header_item:I

    .line 47
    .line 48
    invoke-virtual {v2, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    new-instance p2, Landroidx/mediarouter/app/f0;

    .line 53
    .line 54
    invoke-direct {p2, p1}, Landroidx/mediarouter/app/f0;-><init>(Landroid/view/View;)V

    .line 55
    .line 56
    .line 57
    return-object p2

    .line 58
    :cond_3
    sget p2, Landroidx/mediarouter/R$layout;->mr_cast_group_volume_item:I

    .line 59
    .line 60
    invoke-virtual {v2, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    new-instance p2, Landroidx/mediarouter/app/e0;

    .line 65
    .line 66
    invoke-direct {p2, p0, p1}, Landroidx/mediarouter/app/e0;-><init>(Landroidx/mediarouter/app/j0;Landroid/view/View;)V

    .line 67
    .line 68
    .line 69
    return-object p2
.end method

.method public onViewRecycled(Lm1/B0;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lm1/V;->onViewRecycled(Lm1/B0;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/mediarouter/app/j0;->m:Landroidx/mediarouter/app/m0;

    .line 5
    .line 6
    iget-object v0, v0, Landroidx/mediarouter/app/m0;->E:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method
