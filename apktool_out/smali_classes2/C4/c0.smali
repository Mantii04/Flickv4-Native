.class public final LC4/c0;
.super Lm1/V;
.source "SourceFile"


# instance fields
.field public final d:I

.field public final e:LU4/l;

.field public final f:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;LU4/l;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lflix/com/vision/tv/TVCategory;",
            ">;",
            "LU4/l;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lm1/V;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x64

    .line 5
    .line 6
    iput v0, p0, LC4/c0;->d:I

    .line 7
    .line 8
    iput-object p1, p0, LC4/c0;->f:Ljava/util/ArrayList;

    .line 9
    .line 10
    new-instance p1, LT4/d;

    .line 11
    .line 12
    invoke-direct {p1}, LT4/d;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance p1, LT4/n;

    .line 16
    .line 17
    invoke-direct {p1, p3}, LT4/n;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    sget-object p1, Lflix/com/vision/App;->z:Ljava/util/ArrayList;

    .line 21
    .line 22
    iput-object p2, p0, LC4/c0;->e:LU4/l;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, LC4/c0;->f:Ljava/util/ArrayList;

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

.method public onBindViewHolder(LC4/b0;I)V
    .locals 3

    .line 2
    iget-object v0, p1, LC4/b0;->v:Landroid/view/View;

    if-nez p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 3
    iget-object v0, p0, LC4/c0;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lflix/com/vision/tv/TVCategory;

    iput-object v0, p1, LC4/b0;->u:Lflix/com/vision/tv/TVCategory;

    .line 4
    :try_start_0
    iget-object v1, p1, LC4/b0;->w:Landroid/widget/TextView;

    invoke-virtual {v0}, Lflix/com/vision/tv/TVCategory;->getCategoryName()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :catch_0
    iget-object v0, p1, LC4/b0;->u:Lflix/com/vision/tv/TVCategory;

    invoke-virtual {v0}, Lflix/com/vision/tv/TVCategory;->getCategoryImageurl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p1, LC4/b0;->u:Lflix/com/vision/tv/TVCategory;

    invoke-virtual {v0}, Lflix/com/vision/tv/TVCategory;->getCategoryImageurl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    iget-object v0, p1, LC4/b0;->u:Lflix/com/vision/tv/TVCategory;

    invoke-virtual {v0}, Lflix/com/vision/tv/TVCategory;->getCategoryImageurl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    :try_start_1
    invoke-static {}, Lm4/D;->get()Lm4/D;

    move-result-object v0

    iget-object v1, p1, LC4/b0;->u:Lflix/com/vision/tv/TVCategory;

    .line 7
    invoke-virtual {v1}, Lflix/com/vision/tv/TVCategory;->getCategoryImageurl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lm4/D;->load(Ljava/lang/String;)Lm4/J;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lm4/J;->fit()Lm4/J;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lm4/J;->centerCrop()Lm4/J;

    move-result-object v0

    iget-object v1, p1, LC4/b0;->x:Landroid/widget/ImageView;

    .line 10
    invoke-virtual {v0, v1}, Lm4/J;->into(Landroid/widget/ImageView;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    .line 11
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 12
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    :cond_1
    :goto_2
    new-instance v0, LA4/m;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0, p1}, LA4/m;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p1, LC4/b0;->v:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    new-instance v0, LC4/a0;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p2, v2}, LC4/a0;-><init>(Lm1/V;II)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 15
    new-instance p2, LC4/b;

    const/16 v0, 0xa

    invoke-direct {p2, p0, p1, v0}, LC4/b;-><init>(Lm1/V;Lm1/B0;I)V

    invoke-virtual {v1, p2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lm1/B0;I)V
    .locals 0

    .line 1
    check-cast p1, LC4/b0;

    invoke-virtual {p0, p1, p2}, LC4/c0;->onBindViewHolder(LC4/b0;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)LC4/b0;
    .locals 3

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lflix/com/vision/R$layout;->category_layout_item_view:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 3
    iget v0, p0, LC4/c0;->d:I

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lflix/com/vision/R$layout;->channel_item_view_list:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 5
    :cond_0
    new-instance p1, LC4/b0;

    invoke-direct {p1, p0, p2}, LC4/b0;-><init>(LC4/c0;Landroid/view/View;)V

    return-object p1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lm1/B0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, LC4/c0;->onCreateViewHolder(Landroid/view/ViewGroup;I)LC4/b0;

    move-result-object p1

    return-object p1
.end method
