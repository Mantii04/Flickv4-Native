.class public final LC4/k;
.super Lm1/V;
.source "SourceFile"


# instance fields
.field public final d:Landroid/content/Context;

.field public final e:LU4/d;

.field public final f:Lh5/j;

.field public final g:Landroid/app/Activity;

.field public final h:Landroid/graphics/Typeface;

.field public final i:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/app/Activity;ILU4/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lflix/com/vision/models/Anime;",
            ">;",
            "Landroid/app/Activity;",
            "I",
            "LU4/d;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lm1/V;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LC4/k;->d:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, LC4/k;->i:Ljava/util/ArrayList;

    .line 7
    .line 8
    iput-object p3, p0, LC4/k;->g:Landroid/app/Activity;

    .line 9
    .line 10
    iput-object p5, p0, LC4/k;->e:LU4/d;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    sget-object p2, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 17
    .line 18
    const-string p2, "fonts/pproduct_sans_rregular.ttf"

    .line 19
    .line 20
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, LC4/k;->h:Landroid/graphics/Typeface;

    .line 25
    .line 26
    new-instance p1, Lh5/j;

    .line 27
    .line 28
    invoke-direct {p1}, Lh5/j;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, LC4/k;->f:Lh5/j;

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, LC4/k;->i:Ljava/util/ArrayList;

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

.method public onBindViewHolder(LC4/j;I)V
    .locals 12

    .line 2
    iget-object v0, p1, LC4/j;->x:Landroid/widget/TextView;

    iget-object v1, p0, LC4/k;->f:Lh5/j;

    iget-object v2, p0, LC4/k;->h:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0, v2}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 3
    iget-object v0, p1, LC4/j;->C:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 4
    iget-object v3, p1, LC4/j;->z:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v2}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 5
    iget-object v4, p1, LC4/j;->A:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v2}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 6
    iget-object v5, p1, LC4/j;->B:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v2}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 7
    iget-object v1, p1, LC4/j;->y:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 9
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 10
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object v6, p0, LC4/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lflix/com/vision/models/Anime;

    iput-object v7, p1, LC4/j;->u:Lflix/com/vision/models/Anime;

    .line 12
    iget-object v7, v7, Lflix/com/vision/models/Anime;->title:Ljava/lang/String;

    .line 13
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "(dub)"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v10, 0x0

    const-string v11, ""

    if-eqz v8, :cond_0

    .line 14
    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 15
    const-string v2, "DUB"

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v9, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 18
    :goto_0
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "(sub)"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 19
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 20
    const-string v2, "SUB"

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 22
    :cond_1
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 23
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x6

    invoke-virtual {v7, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-virtual {v7, v2, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 25
    const-string v4, "("

    invoke-virtual {v2, v4, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    :cond_2
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 28
    iget-object v2, p1, LC4/j;->x:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v0, p1, LC4/j;->u:Lflix/com/vision/models/Anime;

    iget-object v0, v0, Lflix/com/vision/models/Anime;->title:Ljava/lang/String;

    const-string v2, "Movie"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 30
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 31
    const-string v0, "MOVIE"

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    :cond_3
    iget-object v0, p1, LC4/j;->u:Lflix/com/vision/models/Anime;

    iget-object v0, v0, Lflix/com/vision/models/Anime;->title:Ljava/lang/String;

    const-string v1, "Special"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 33
    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 34
    const-string v0, "SPECIAL"

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    :cond_4
    :try_start_0
    invoke-static {}, Lm4/D;->get()Lm4/D;

    move-result-object v0

    .line 36
    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lflix/com/vision/models/Anime;

    iget-object v1, v1, Lflix/com/vision/models/Anime;->image_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lm4/D;->load(Ljava/lang/String;)Lm4/J;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lm4/J;->fit()Lm4/J;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lm4/J;->centerCrop()Lm4/J;

    move-result-object v0

    iget-object v1, p1, LC4/j;->D:Landroid/widget/ImageView;

    .line 39
    invoke-virtual {v0, v1}, Lm4/J;->into(Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    :goto_1
    new-instance v0, LC4/b;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, LC4/b;-><init>(Lm1/V;Lm1/B0;I)V

    iget-object v1, p1, LC4/j;->w:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 42
    new-instance v0, LA4/m;

    const/4 v2, 0x2

    invoke-direct {v0, v2, p0, p1}, LA4/m;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    new-instance v0, LC4/i;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p0, p1}, LC4/i;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    if-nez p2, :cond_5

    .line 44
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_5
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lm1/B0;I)V
    .locals 0

    .line 1
    check-cast p1, LC4/j;

    invoke-virtual {p0, p1, p2}, LC4/k;->onBindViewHolder(LC4/j;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)LC4/j;
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lflix/com/vision/R$layout;->anime_item_view:I

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    new-instance p2, LC4/j;

    invoke-direct {p2, p0, p1}, LC4/j;-><init>(LC4/k;Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lm1/B0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, LC4/k;->onCreateViewHolder(Landroid/view/ViewGroup;I)LC4/j;

    move-result-object p1

    return-object p1
.end method
