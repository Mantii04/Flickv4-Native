.class public final LW4/e;
.super Landroidx/leanback/widget/C0;
.source "SourceFile"


# instance fields
.field public a:LW4/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/leanback/widget/C0;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(LW4/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, LW4/d;->f:Lflix/com/vision/models/tmdb/Network;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/A0;->a:Landroid/view/View;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/bumptech/glide/c;->with(Landroid/content/Context;)Lcom/bumptech/glide/q;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, LW4/d;->f:Lflix/com/vision/models/tmdb/Network;

    .line 17
    .line 18
    iget v1, v1, Lflix/com/vision/models/tmdb/Network;->image_id:I

    .line 19
    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/q;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/m;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, LC2/a;->centerInside()LC2/a;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/bumptech/glide/m;

    .line 33
    .line 34
    sget v1, Lflix/com/vision/R$drawable;->ic_movie:I

    .line 35
    .line 36
    invoke-virtual {v0, v1}, LC2/a;->error(I)LC2/a;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/bumptech/glide/m;

    .line 41
    .line 42
    iget-object p0, p0, LW4/d;->b:Landroid/widget/ImageView;

    .line 43
    .line 44
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/m;->into(Landroid/widget/ImageView;)LD2/n;

    .line 45
    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/leanback/widget/A0;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Lflix/com/vision/models/tmdb/Network;

    .line 2
    .line 3
    check-cast p1, LW4/d;

    .line 4
    .line 5
    iput-object p2, p1, LW4/d;->f:Lflix/com/vision/models/tmdb/Network;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, p1, v0}, LW4/e;->setReorderState(LW4/d;Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p1, Landroidx/leanback/widget/A0;->a:Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v1, p2, Lflix/com/vision/models/tmdb/Network;->name:Ljava/lang/String;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "netflix"

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v1}, Lcom/bumptech/glide/c;->with(Landroid/content/Context;)Lcom/bumptech/glide/q;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lcom/bumptech/glide/q;->asGif()Lcom/bumptech/glide/m;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    sget v2, Lflix/com/vision/R$drawable;->netflix_gif:I

    .line 48
    .line 49
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/m;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/m;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    iget-object p1, p1, LW4/d;->b:Landroid/widget/ImageView;

    .line 58
    .line 59
    invoke-virtual {v1, p1}, Lcom/bumptech/glide/m;->into(Landroid/widget/ImageView;)LD2/n;

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    invoke-static {p1}, LW4/e;->a(LW4/d;)V

    .line 64
    .line 65
    .line 66
    :goto_0
    new-instance p1, LC4/i;

    .line 67
    .line 68
    const/4 v1, 0x4

    .line 69
    invoke-direct {p1, v1, p0, p2}, LC4/i;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/A0;
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget v1, Lflix/com/vision/R$layout;->network_item_view_card:I

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const/16 v3, 0x14

    .line 25
    .line 26
    invoke-static {v2, v3}, Lh5/d;->getWidthInPercent(Landroid/content/Context;I)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const/16 v2, 0xc

    .line 37
    .line 38
    invoke-static {p1, v2}, Lh5/d;->getHeightInPercent(Landroid/content/Context;I)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 43
    .line 44
    new-instance p1, LW4/d;

    .line 45
    .line 46
    invoke-direct {p1, v0}, LW4/d;-><init>(Landroid/view/View;)V

    .line 47
    .line 48
    .line 49
    new-instance v0, LA4/g;

    .line 50
    .line 51
    invoke-direct {v0, p0, p1}, LA4/g;-><init>(LW4/e;LW4/d;)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p1, Landroidx/leanback/widget/A0;->a:Landroid/view/View;

    .line 55
    .line 56
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 57
    .line 58
    .line 59
    return-object p1
.end method

.method public onUnbindViewHolder(Landroidx/leanback/widget/A0;)V
    .locals 2

    .line 1
    check-cast p1, LW4/d;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-object v0, p1, LW4/d;->f:Lflix/com/vision/models/tmdb/Network;

    .line 5
    .line 6
    iget-object v0, p1, LW4/d;->e:Landroid/view/View;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p1, Landroidx/leanback/widget/A0;->a:Landroid/view/View;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/bumptech/glide/c;->with(Landroid/content/Context;)Lcom/bumptech/glide/q;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object p1, p1, LW4/d;->b:Landroid/widget/ImageView;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/q;->clear(Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public setOnNetworkActionListener(LW4/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, LW4/e;->a:LW4/c;

    .line 2
    .line 3
    return-void
.end method

.method public setReorderState(LW4/d;Z)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p1, LW4/d;->d:Landroid/widget/ImageView;

    .line 5
    .line 6
    iget-object v1, p1, LW4/d;->c:Landroid/widget/ImageView;

    .line 7
    .line 8
    iget-object p1, p1, LW4/d;->e:Landroid/view/View;

    .line 9
    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    const/4 p2, 0x0

    .line 13
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    sget v0, Lflix/com/vision/R$anim;->reorder_pulse_anim:I

    .line 24
    .line 25
    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    const/16 p2, 0x8

    .line 34
    .line 35
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    if-eqz p2, :cond_2

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 48
    .line 49
    .line 50
    :cond_2
    :goto_0
    return-void
.end method
