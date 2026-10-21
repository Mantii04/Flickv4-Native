.class public final LC4/P;
.super Lm1/V;
.source "SourceFile"


# instance fields
.field public final d:LU4/j;

.field public final e:Landroid/content/Context;

.field public final f:I

.field public final g:I

.field public final h:Landroid/app/Activity;

.field public i:Z

.field public final j:Ljava/util/ArrayList;

.field public final k:Landroid/graphics/Typeface;

.field public final l:Lh5/j;

.field public final m:Lflix/com/vision/activities/MainActivity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/app/Activity;ILU4/j;Lflix/com/vision/activities/MainActivity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lm1/V;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x384

    .line 5
    .line 6
    iput v0, p0, LC4/P;->f:I

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, LC4/P;->g:I

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, LC4/P;->i:Z

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, LC4/P;->e:Landroid/content/Context;

    .line 20
    .line 21
    iput-object p2, p0, LC4/P;->j:Ljava/util/ArrayList;

    .line 22
    .line 23
    iput-object p3, p0, LC4/P;->h:Landroid/app/Activity;

    .line 24
    .line 25
    iput p4, p0, LC4/P;->g:I

    .line 26
    .line 27
    iput-object p5, p0, LC4/P;->d:LU4/j;

    .line 28
    .line 29
    invoke-virtual {p3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    sget-object p2, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 34
    .line 35
    const-string p2, "fonts/pproduct_sans_rregular.ttf"

    .line 36
    .line 37
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, LC4/P;->k:Landroid/graphics/Typeface;

    .line 42
    .line 43
    new-instance p1, Lh5/j;

    .line 44
    .line 45
    invoke-direct {p1}, Lh5/j;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, LC4/P;->l:Lh5/j;

    .line 49
    .line 50
    iput-object p6, p0, LC4/P;->m:Lflix/com/vision/activities/MainActivity;

    .line 51
    .line 52
    new-instance p1, Ljava/util/Random;

    .line 53
    .line 54
    const-wide/16 p2, 0x13

    .line 55
    .line 56
    invoke-direct {p1, p2, p3}, Ljava/util/Random;-><init>(J)V

    .line 57
    .line 58
    .line 59
    const/16 p2, 0xa

    .line 60
    .line 61
    invoke-virtual {p1, p2}, Ljava/util/Random;->nextInt(I)I

    .line 62
    .line 63
    .line 64
    sget-object p1, Lflix/com/vision/App;->z:Ljava/util/ArrayList;

    .line 65
    .line 66
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, LC4/P;->j:Ljava/util/ArrayList;

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

.method public onBindViewHolder(LC4/O;I)V
    .locals 6

    .line 2
    iget-object v0, p1, LC4/O;->x:Landroid/widget/TextView;

    iget-object v1, p0, LC4/P;->l:Lh5/j;

    iget-object v2, p0, LC4/P;->k:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0, v2}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 3
    iget-object v0, p1, LC4/O;->y:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 4
    iget-object v1, p0, LC4/P;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lflix/com/vision/models/Movie;

    iput-object v2, p1, LC4/O;->u:Lflix/com/vision/models/Movie;

    .line 5
    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->isSeries()Z

    move-result v2

    const/4 v3, 0x0

    iget-object v4, p1, LC4/O;->z:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    .line 7
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8
    :goto_0
    iget-object v2, p1, LC4/O;->u:Lflix/com/vision/models/Movie;

    iget-object v4, v2, Lflix/com/vision/models/Movie;->year:Ljava/lang/String;

    const-string v5, "null"

    if-ne v4, v5, :cond_1

    .line 9
    const-string v4, ""

    iput-object v4, v2, Lflix/com/vision/models/Movie;->year:Ljava/lang/String;

    .line 10
    :cond_1
    iget-object v4, p1, LC4/O;->x:Landroid/widget/TextView;

    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v2, p1, LC4/O;->u:Lflix/com/vision/models/Movie;

    iget-object v2, v2, Lflix/com/vision/models/Movie;->year:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget v2, p0, LC4/P;->g:I

    iget v4, p0, LC4/P;->f:I

    if-ne v2, v4, :cond_2

    iget-object v2, p1, LC4/O;->u:Lflix/com/vision/models/Movie;

    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->getServer()Ljava/lang/String;

    move-result-object v2

    const-string v4, "is_series"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Season "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, LC4/O;->u:Lflix/com/vision/models/Movie;

    iget-object v4, v4, Lflix/com/vision/models/Movie;->season:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    :cond_2
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lflix/com/vision/models/Movie;

    invoke-virtual {v0}, Lflix/com/vision/models/Movie;->getImage_url()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, LC4/O;->A:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lflix/com/vision/models/Movie;

    invoke-virtual {v0}, Lflix/com/vision/models/Movie;->getImage_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 15
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    :try_start_0
    invoke-static {}, Lm4/D;->get()Lm4/D;

    move-result-object v0

    .line 17
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lflix/com/vision/models/Movie;

    invoke-virtual {v1}, Lflix/com/vision/models/Movie;->getImage_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lm4/D;->load(Ljava/lang/String;)Lm4/J;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lm4/J;->fit()Lm4/J;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lm4/J;->centerCrop()Lm4/J;

    move-result-object v0

    new-instance v1, LC4/N;

    invoke-direct {v1, p0, p1}, LC4/N;-><init>(LC4/P;LC4/O;)V

    .line 20
    invoke-virtual {v0, v2, v1}, Lm4/J;->into(Landroid/widget/ImageView;Lm4/i;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_3
    const/4 v0, 0x4

    .line 22
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 23
    :goto_1
    new-instance v0, LC4/b;

    const/16 v1, 0x8

    invoke-direct {v0, p0, p1, v1}, LC4/b;-><init>(Lm1/V;Lm1/B0;I)V

    iget-object v1, p1, LC4/O;->w:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 24
    new-instance v0, LC4/e;

    const/4 v2, 0x3

    invoke-direct {v0, p2, v2, p0, p1}, LC4/e;-><init>(IILm1/V;Lm1/B0;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 25
    new-instance v0, LA4/m;

    const/16 v2, 0x9

    invoke-direct {v0, v2, p0, p1}, LA4/m;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p2, :cond_4

    .line 26
    iget-object p1, p0, LC4/P;->h:Landroid/app/Activity;

    instance-of p1, p1, Lflix/com/vision/activities/SearchActivityTV;

    if-nez p1, :cond_4

    .line 27
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_4
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lm1/B0;I)V
    .locals 0

    .line 1
    check-cast p1, LC4/O;

    invoke-virtual {p0, p1, p2}, LC4/P;->onBindViewHolder(LC4/O;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)LC4/O;
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lflix/com/vision/R$layout;->movie_item_view:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, LC4/O;

    invoke-direct {p2, p0, p1}, LC4/O;-><init>(LC4/P;Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lm1/B0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, LC4/P;->onCreateViewHolder(Landroid/view/ViewGroup;I)LC4/O;

    move-result-object p1

    return-object p1
.end method
