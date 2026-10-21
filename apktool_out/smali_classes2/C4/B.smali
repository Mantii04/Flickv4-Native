.class public final LC4/B;
.super Lm1/V;
.source "SourceFile"


# instance fields
.field public final d:LU4/e;

.field public final e:Lflix/com/vision/activities/DramaHomeActivity;

.field public final f:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lflix/com/vision/activities/DramaHomeActivity;LU4/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lflix/com/vision/models/Drama;",
            ">;",
            "Lflix/com/vision/activities/DramaHomeActivity;",
            "LU4/e;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lm1/V;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LC4/B;->f:Ljava/util/ArrayList;

    .line 5
    .line 6
    iput-object p2, p0, LC4/B;->e:Lflix/com/vision/activities/DramaHomeActivity;

    .line 7
    .line 8
    iput-object p3, p0, LC4/B;->d:LU4/e;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, LC4/B;->f:Ljava/util/ArrayList;

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

.method public onBindViewHolder(LC4/A;I)V
    .locals 6

    .line 2
    iget-object v0, p0, LC4/B;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lflix/com/vision/models/Drama;

    iput-object v1, p1, LC4/A;->u:Lflix/com/vision/models/Drama;

    .line 3
    iget-object v1, v1, Lflix/com/vision/models/Drama;->title:Ljava/lang/String;

    .line 4
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x6

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 6
    const-string v4, ""

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 7
    const-string v5, "("

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 8
    iget-object v3, p1, LC4/A;->y:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    :cond_0
    iget-object v2, p1, LC4/A;->x:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    :try_start_0
    invoke-static {}, Lm4/D;->get()Lm4/D;

    move-result-object v1

    .line 11
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lflix/com/vision/models/Drama;

    iget-object v0, v0, Lflix/com/vision/models/Drama;->image_url:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lm4/D;->load(Ljava/lang/String;)Lm4/J;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lm4/J;->fit()Lm4/J;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lm4/J;->centerCrop()Lm4/J;

    move-result-object v0

    iget-object v1, p1, LC4/A;->z:Landroid/widget/ImageView;

    .line 14
    invoke-virtual {v0, v1}, Lm4/J;->into(Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    :goto_0
    new-instance v0, LC4/b;

    const/4 v1, 0x6

    invoke-direct {v0, p0, p1, v1}, LC4/b;-><init>(Lm1/V;Lm1/B0;I)V

    iget-object v1, p1, LC4/A;->w:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 17
    new-instance v0, LA4/m;

    const/4 v2, 0x6

    invoke-direct {v0, v2, p0, p1}, LA4/m;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    new-instance v0, LC4/e;

    const/4 v2, 0x2

    invoke-direct {v0, p2, v2, p0, p1}, LC4/e;-><init>(IILm1/V;Lm1/B0;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    if-nez p2, :cond_1

    .line 19
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_1
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lm1/B0;I)V
    .locals 0

    .line 1
    check-cast p1, LC4/A;

    invoke-virtual {p0, p1, p2}, LC4/B;->onBindViewHolder(LC4/A;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)LC4/A;
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lflix/com/vision/R$layout;->drama_continue_item_view:I

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    new-instance p2, LC4/A;

    invoke-direct {p2, p0, p1}, LC4/A;-><init>(LC4/B;Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lm1/B0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, LC4/B;->onCreateViewHolder(Landroid/view/ViewGroup;I)LC4/A;

    move-result-object p1

    return-object p1
.end method
