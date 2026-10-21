.class public final LC4/G;
.super Lm1/V;
.source "SourceFile"


# instance fields
.field public final d:Lh5/j;

.field public final e:Landroid/graphics/Typeface;

.field public final f:Landroid/graphics/Typeface;

.field public final g:Ljava/util/ArrayList;

.field public final h:Landroid/app/Activity;

.field public i:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Lflix/com/vision/models/Episode;",
            ">;II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lm1/V;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, LC4/G;->g:Ljava/util/ArrayList;

    .line 5
    .line 6
    iput-object p1, p0, LC4/G;->h:Landroid/app/Activity;

    .line 7
    .line 8
    iput p4, p0, LC4/G;->i:I

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    sget-object p3, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 15
    .line 16
    const-string p3, "fonts/pproduct_sans_rregular.ttf"

    .line 17
    .line 18
    invoke-static {p2, p3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    iput-object p2, p0, LC4/G;->e:Landroid/graphics/Typeface;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string p2, "fonts/product_sans_bold.ttf"

    .line 29
    .line 30
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, LC4/G;->f:Landroid/graphics/Typeface;

    .line 35
    .line 36
    new-instance p1, Lh5/j;

    .line 37
    .line 38
    invoke-direct {p1}, Lh5/j;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, LC4/G;->d:Lh5/j;

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, LC4/G;->g:Ljava/util/ArrayList;

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

.method public onBindViewHolder(LC4/F;I)V
    .locals 5
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    .line 2
    iget-object v0, p1, LC4/F;->x:Landroid/widget/TextView;

    iget-object v1, p0, LC4/G;->d:Lh5/j;

    iget-object v2, p0, LC4/G;->f:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0, v2}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 3
    iget-object v0, p1, LC4/F;->v:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 4
    iget-object v2, p0, LC4/G;->e:Landroid/graphics/Typeface;

    iget-object v3, p1, LC4/F;->w:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v2}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 5
    iget-object v4, p1, LC4/F;->y:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v2}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 6
    iget-object v1, p0, LC4/G;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lflix/com/vision/models/Episode;

    iput-object v1, p1, LC4/F;->u:Lflix/com/vision/models/Episode;

    .line 7
    iget-object v1, v1, Lflix/com/vision/models/Episode;->runtime:Ljava/lang/String;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "S"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, LC4/G;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "E"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, LC4/F;->u:Lflix/com/vision/models/Episode;

    iget v2, v2, Lflix/com/vision/models/Episode;->number:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    new-instance v0, LC4/a;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p2, v1}, LC4/a;-><init>(Lm1/V;II)V

    iget-object v1, p1, LC4/F;->z:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p1, LC4/F;->u:Lflix/com/vision/models/Episode;

    iget-object v0, v0, Lflix/com/vision/models/Episode;->img_url:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 11
    :try_start_0
    invoke-static {}, Lm4/D;->get()Lm4/D;

    move-result-object v0

    iget-object v2, p1, LC4/F;->u:Lflix/com/vision/models/Episode;

    iget-object v2, v2, Lflix/com/vision/models/Episode;->img_url:Ljava/lang/String;

    .line 12
    invoke-virtual {v0, v2}, Lm4/D;->load(Ljava/lang/String;)Lm4/J;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lm4/J;->fit()Lm4/J;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lm4/J;->centerCrop()Lm4/J;

    move-result-object v0

    iget-object v2, p1, LC4/F;->A:Landroid/widget/ImageView;

    .line 15
    invoke-virtual {v0, v2}, Lm4/J;->into(Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 16
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    :cond_0
    :goto_0
    new-instance v0, LC4/E;

    invoke-direct {v0, p0, p2, p1}, LC4/E;-><init>(LC4/G;ILC4/F;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 19
    iget-object v0, p1, LC4/F;->u:Lflix/com/vision/models/Episode;

    iget-object v0, v0, Lflix/com/vision/models/Episode;->plot:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v0, p1, LC4/F;->u:Lflix/com/vision/models/Episode;

    iget-object v0, v0, Lflix/com/vision/models/Episode;->title:Ljava/lang/String;

    iget-object p1, p1, LC4/F;->x:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lm1/B0;I)V
    .locals 0
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    .line 1
    check-cast p1, LC4/F;

    invoke-virtual {p0, p1, p2}, LC4/G;->onBindViewHolder(LC4/F;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)LC4/F;
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lflix/com/vision/R$layout;->episode_item_view:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, LC4/F;

    invoke-direct {p2, p0, p1}, LC4/F;-><init>(LC4/G;Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lm1/B0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, LC4/G;->onCreateViewHolder(Landroid/view/ViewGroup;I)LC4/F;

    move-result-object p1

    return-object p1
.end method

.method public setSeason(I)V
    .locals 0

    .line 1
    iput p1, p0, LC4/G;->i:I

    .line 2
    .line 3
    return-void
.end method
