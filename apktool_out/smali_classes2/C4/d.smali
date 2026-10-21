.class public final LC4/d;
.super Lm1/V;
.source "SourceFile"


# instance fields
.field public final d:Lh5/j;

.field public final e:Landroid/graphics/Typeface;

.field public final f:Ljava/util/ArrayList;

.field public final g:Lflix/com/vision/activities/adult/AdultCategoriesActivity;


# direct methods
.method public constructor <init>(Lflix/com/vision/activities/adult/AdultCategoriesActivity;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lflix/com/vision/activities/adult/AdultCategoriesActivity;",
            "Ljava/util/ArrayList<",
            "Lflix/com/vision/models/adult/AdultCategory;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lm1/V;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, LC4/d;->f:Ljava/util/ArrayList;

    .line 5
    .line 6
    iput-object p1, p0, LC4/d;->g:Lflix/com/vision/activities/adult/AdultCategoriesActivity;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    sget-object p2, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 13
    .line 14
    const-string p2, "fonts/product_sans_bold.ttf"

    .line 15
    .line 16
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, LC4/d;->e:Landroid/graphics/Typeface;

    .line 21
    .line 22
    new-instance p1, Lh5/j;

    .line 23
    .line 24
    invoke-direct {p1}, Lh5/j;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, LC4/d;->d:Lh5/j;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, LC4/d;->f:Ljava/util/ArrayList;

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

.method public onBindViewHolder(LC4/c;I)V
    .locals 3
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    .line 2
    iget-object v0, p1, LC4/c;->w:Landroid/widget/TextView;

    iget-object v1, p0, LC4/d;->e:Landroid/graphics/Typeface;

    iget-object v2, p0, LC4/d;->d:Lh5/j;

    invoke-virtual {v2, v0, v1}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 3
    iget-object v0, p0, LC4/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lflix/com/vision/models/adult/AdultCategory;

    iput-object v0, p1, LC4/c;->u:Lflix/com/vision/models/adult/AdultCategory;

    .line 4
    iget-object v1, p1, LC4/c;->w:Landroid/widget/TextView;

    iget-object v0, v0, Lflix/com/vision/models/adult/AdultCategory;->title:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    new-instance v0, LC4/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, LC4/a;-><init>(Lm1/V;II)V

    iget-object v1, p1, LC4/c;->x:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v0, p1, LC4/c;->u:Lflix/com/vision/models/adult/AdultCategory;

    iget-object v0, v0, Lflix/com/vision/models/adult/AdultCategory;->img_url:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 7
    :try_start_0
    invoke-static {}, Lm4/D;->get()Lm4/D;

    move-result-object v0

    iget-object v2, p1, LC4/c;->u:Lflix/com/vision/models/adult/AdultCategory;

    iget-object v2, v2, Lflix/com/vision/models/adult/AdultCategory;->img_url:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v2}, Lm4/D;->load(Ljava/lang/String;)Lm4/J;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lm4/J;->fit()Lm4/J;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lm4/J;->centerCrop()Lm4/J;

    move-result-object v0

    iget-object v2, p1, LC4/c;->y:Landroid/widget/ImageView;

    .line 11
    invoke-virtual {v0, v2}, Lm4/J;->into(Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    :cond_0
    :goto_0
    new-instance v0, LC4/b;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, LC4/b;-><init>(Lm1/V;Lm1/B0;I)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 15
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
    check-cast p1, LC4/c;

    invoke-virtual {p0, p1, p2}, LC4/d;->onBindViewHolder(LC4/c;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)LC4/c;
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lflix/com/vision/R$layout;->adult_category_item_view:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, LC4/c;

    invoke-direct {p2, p0, p1}, LC4/c;-><init>(LC4/d;Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lm1/B0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, LC4/d;->onCreateViewHolder(Landroid/view/ViewGroup;I)LC4/c;

    move-result-object p1

    return-object p1
.end method
