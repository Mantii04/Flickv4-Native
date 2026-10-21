.class public final LC4/V;
.super Lm1/V;
.source "SourceFile"


# instance fields
.field public final d:Ljava/util/ArrayList;

.field public e:I

.field public final f:Lflix/com/vision/activities/player/SimpleVideoPlayer;


# direct methods
.method public constructor <init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;Ljava/util/ArrayList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lflix/com/vision/activities/player/SimpleVideoPlayer;",
            "Ljava/util/ArrayList<",
            "Lflix/com/vision/models/Episode;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lm1/V;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, LC4/V;->e:I

    .line 5
    .line 6
    iput-object p2, p0, LC4/V;->d:Ljava/util/ArrayList;

    .line 7
    .line 8
    iput-object p1, p0, LC4/V;->f:Lflix/com/vision/activities/player/SimpleVideoPlayer;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, LC4/V;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onBindViewHolder(LC4/U;I)V
    .locals 6

    .line 2
    iget-object v0, p0, LC4/V;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lflix/com/vision/models/Episode;

    .line 3
    iget-object v1, p1, LC4/U;->u:Landroid/widget/TextView;

    iget v2, v0, Lflix/com/vision/models/Episode;->number:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v1, v0, Lflix/com/vision/models/Episode;->title:Ljava/lang/String;

    iget-object v2, p1, LC4/U;->v:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    iget-object v0, v0, Lflix/com/vision/models/Episode;->title:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Episode "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lflix/com/vision/models/Episode;->number:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :goto_0
    iget v0, p0, LC4/V;->e:I

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 8
    :goto_1
    iget-object v3, p1, Lm1/B0;->a:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setActivated(Z)V

    .line 9
    iget-object v4, p0, LC4/V;->f:Lflix/com/vision/activities/player/SimpleVideoPlayer;

    sget v5, Lflix/com/vision/R$color;->selector_episode_text:I

    .line 10
    invoke-static {v4, v5}, LA/h;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 11
    new-instance v5, LC4/T;

    invoke-direct {v5, p0, p1, v4}, LC4/T;-><init>(LC4/V;LC4/U;Landroid/content/res/ColorStateList;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 12
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 13
    iget-object v2, p1, LC4/U;->u:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 14
    iget-object p1, p1, LC4/U;->w:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    if-eqz v0, :cond_2

    .line 15
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_2
    const/16 v0, 0x8

    .line 16
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 17
    :goto_2
    new-instance p1, LC4/a;

    const/4 v0, 0x4

    invoke-direct {p1, p0, p2, v0}, LC4/a;-><init>(Lm1/V;II)V

    invoke-virtual {v3, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lm1/B0;I)V
    .locals 0

    .line 1
    check-cast p1, LC4/U;

    invoke-virtual {p0, p1, p2}, LC4/V;->onBindViewHolder(LC4/U;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)LC4/U;
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lflix/com/vision/R$layout;->item_player_episode:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, LC4/U;

    invoke-direct {p2, p0, p1}, LC4/U;-><init>(LC4/V;Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lm1/B0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, LC4/V;->onCreateViewHolder(Landroid/view/ViewGroup;I)LC4/U;

    move-result-object p1

    return-object p1
.end method
