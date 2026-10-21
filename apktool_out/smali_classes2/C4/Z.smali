.class public final LC4/Z;
.super Lm1/V;
.source "SourceFile"


# instance fields
.field public final d:Landroid/app/Activity;

.field public final e:LU4/k;

.field public final f:Ljava/util/ArrayList;

.field public g:I

.field public final h:Lh5/j;

.field public final i:Landroid/graphics/Typeface;

.field public j:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;LU4/k;Ljava/util/ArrayList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "LU4/k;",
            "Ljava/util/ArrayList<",
            "Lflix/com/vision/models/Season;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lm1/V;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, LC4/Z;->f:Ljava/util/ArrayList;

    .line 5
    .line 6
    iput p4, p0, LC4/Z;->g:I

    .line 7
    .line 8
    iput-object p2, p0, LC4/Z;->e:LU4/k;

    .line 9
    .line 10
    iput-object p1, p0, LC4/Z;->d:Landroid/app/Activity;

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
    iput-object p1, p0, LC4/Z;->i:Landroid/graphics/Typeface;

    .line 25
    .line 26
    new-instance p1, Lh5/j;

    .line 27
    .line 28
    invoke-direct {p1}, Lh5/j;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, LC4/Z;->h:Lh5/j;

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, LC4/Z;->f:Ljava/util/ArrayList;

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

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lm1/V;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LC4/Z;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    .line 6
    return-void
.end method

.method public onBindViewHolder(LC4/Y;I)V
    .locals 5

    .line 2
    iget-object v0, p0, LC4/Z;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lflix/com/vision/models/Season;

    iput-object v0, p1, LC4/Y;->u:Lflix/com/vision/models/Season;

    iget-object v1, p1, LC4/Y;->w:Landroid/widget/TextView;

    iget-object v2, p1, LC4/Y;->v:Landroid/widget/TextView;

    .line 3
    :try_start_0
    iget-object v0, v0, Lflix/com/vision/models/Season;->label:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, LC4/Y;->u:Lflix/com/vision/models/Season;

    iget v3, v3, Lflix/com/vision/models/Season;->episode_count:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Episodes"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 6
    :goto_0
    new-instance v0, LC4/a;

    const/4 v3, 0x5

    invoke-direct {v0, p0, p2, v3}, LC4/a;-><init>(Lm1/V;II)V

    iget-object v3, p1, LC4/Y;->x:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, LC4/Z;->h:Lh5/j;

    iget-object v4, p0, LC4/Z;->i:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2, v4}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 8
    invoke-virtual {v0, v1, v4}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 9
    new-instance v0, LC4/b;

    const/16 v1, 0x9

    invoke-direct {v0, p0, p1, v1}, LC4/b;-><init>(Lm1/V;Lm1/B0;I)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 10
    iget v0, p0, LC4/Z;->g:I

    iget-object p1, p1, LC4/Y;->u:Lflix/com/vision/models/Season;

    iget p1, p1, Lflix/com/vision/models/Season;->number:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    .line 11
    invoke-virtual {v3, p1}, Landroid/view/View;->setActivated(Z)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 12
    invoke-virtual {v3, p1}, Landroid/view/View;->setActivated(Z)V

    .line 13
    :goto_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lm1/B0;I)V
    .locals 0

    .line 1
    check-cast p1, LC4/Y;

    invoke-virtual {p0, p1, p2}, LC4/Z;->onBindViewHolder(LC4/Y;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)LC4/Y;
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lflix/com/vision/R$layout;->season_item_view:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, LC4/Y;

    invoke-direct {p2, p0, p1}, LC4/Y;-><init>(LC4/Z;Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lm1/B0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, LC4/Z;->onCreateViewHolder(Landroid/view/ViewGroup;I)LC4/Y;

    move-result-object p1

    return-object p1
.end method
