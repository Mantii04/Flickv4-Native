.class public final LC4/r;
.super Lm1/V;
.source "SourceFile"


# instance fields
.field public final d:Landroid/app/Activity;

.field public final e:I

.field public final f:Ljava/util/ArrayList;

.field public final g:Landroid/graphics/Typeface;

.field public final h:Lh5/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/app/Activity;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lm1/V;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, LC4/r;->f:Ljava/util/ArrayList;

    .line 5
    .line 6
    iput-object p3, p0, LC4/r;->d:Landroid/app/Activity;

    .line 7
    .line 8
    iput p4, p0, LC4/r;->e:I

    .line 9
    .line 10
    invoke-virtual {p3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    sget-object p2, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 15
    .line 16
    const-string p2, "fonts/pproduct_sans_rregular.ttf"

    .line 17
    .line 18
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, LC4/r;->g:Landroid/graphics/Typeface;

    .line 23
    .line 24
    new-instance p1, Lh5/j;

    .line 25
    .line 26
    invoke-direct {p1}, Lh5/j;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, LC4/r;->h:Lh5/j;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, LC4/r;->f:Ljava/util/ArrayList;

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

.method public onBindViewHolder(LC4/q;I)V
    .locals 4

    .line 2
    iget-object v0, p1, LC4/q;->w:Landroid/widget/TextView;

    iget-object v1, p0, LC4/r;->h:Lh5/j;

    iget-object v2, p0, LC4/r;->g:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0, v2}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 3
    iget-object v0, p1, LC4/q;->x:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 4
    iget-object v1, p0, LC4/r;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lflix/com/vision/models/Cast;

    iput-object v2, p1, LC4/q;->u:Lflix/com/vision/models/Cast;

    .line 5
    iget-object v3, p1, LC4/q;->w:Landroid/widget/TextView;

    invoke-virtual {v2}, Lflix/com/vision/models/Cast;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v2, p1, LC4/q;->u:Lflix/com/vision/models/Cast;

    iget-object v2, v2, Lflix/com/vision/models/Cast;->CharacterName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :try_start_0
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lflix/com/vision/models/Cast;

    invoke-virtual {v0}, Lflix/com/vision/models/Cast;->getImg_url()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p1, LC4/q;->y:Lde/hdodenhof/circleimageview/CircleImageView;

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lflix/com/vision/models/Cast;

    invoke-virtual {v0}, Lflix/com/vision/models/Cast;->getImg_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0xa

    if-ge v0, v3, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lm4/D;->get()Lm4/D;

    move-result-object v0

    .line 9
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lflix/com/vision/models/Cast;

    invoke-virtual {p2}, Lflix/com/vision/models/Cast;->getImg_url()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lm4/D;->load(Ljava/lang/String;)Lm4/J;

    move-result-object p2

    .line 10
    invoke-virtual {p2}, Lm4/J;->fit()Lm4/J;

    move-result-object p2

    .line 11
    invoke-virtual {p2}, Lm4/J;->centerCrop()Lm4/J;

    move-result-object p2

    .line 12
    invoke-virtual {p2, v2}, Lm4/J;->into(Landroid/widget/ImageView;)V

    goto :goto_3

    :catch_0
    move-exception p2

    goto :goto_2

    .line 13
    :cond_1
    :goto_0
    invoke-static {}, Lm4/D;->get()Lm4/D;

    move-result-object v0

    .line 14
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lflix/com/vision/models/Cast;

    iget p2, p2, Lflix/com/vision/models/Cast;->gender:I

    if-nez p2, :cond_2

    sget p2, Lflix/com/vision/R$drawable;->cast_:I

    goto :goto_1

    :cond_2
    sget p2, Lflix/com/vision/R$drawable;->cast_2:I

    :goto_1
    invoke-virtual {v0, p2}, Lm4/D;->load(I)Lm4/J;

    move-result-object p2

    .line 15
    invoke-virtual {p2}, Lm4/J;->fit()Lm4/J;

    move-result-object p2

    .line 16
    invoke-virtual {p2}, Lm4/J;->centerCrop()Lm4/J;

    move-result-object p2

    .line 17
    invoke-virtual {p2, v2}, Lm4/J;->into(Landroid/widget/ImageView;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 18
    :goto_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 19
    :goto_3
    new-instance p2, LA4/m;

    const/4 v0, 0x3

    invoke-direct {p2, v0, p0, p1}, LA4/m;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p1, LC4/q;->v:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    new-instance p2, LC4/p;

    invoke-direct {p2, p0, p1}, LC4/p;-><init>(LC4/r;LC4/q;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lm1/B0;I)V
    .locals 0

    .line 1
    check-cast p1, LC4/q;

    invoke-virtual {p0, p1, p2}, LC4/r;->onBindViewHolder(LC4/q;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)LC4/q;
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lflix/com/vision/R$layout;->cast_item_view:I

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    new-instance p2, LC4/q;

    invoke-direct {p2, p0, p1}, LC4/q;-><init>(LC4/r;Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lm1/B0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, LC4/r;->onCreateViewHolder(Landroid/view/ViewGroup;I)LC4/q;

    move-result-object p1

    return-object p1
.end method
