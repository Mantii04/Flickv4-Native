.class public final LC4/z;
.super Lm1/V;
.source "SourceFile"


# instance fields
.field public final d:LU4/e;

.field public final e:Landroid/app/Activity;

.field public final f:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/app/Activity;LU4/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lflix/com/vision/models/Drama;",
            ">;",
            "Landroid/app/Activity;",
            "LU4/e;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lm1/V;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LC4/z;->f:Ljava/util/ArrayList;

    .line 5
    .line 6
    iput-object p2, p0, LC4/z;->e:Landroid/app/Activity;

    .line 7
    .line 8
    iput-object p3, p0, LC4/z;->d:LU4/e;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, LC4/z;->f:Ljava/util/ArrayList;

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

.method public onBindViewHolder(LC4/y;I)V
    .locals 4

    .line 2
    iget-object v0, p0, LC4/z;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lflix/com/vision/models/Drama;

    iput-object v1, p1, LC4/y;->u:Lflix/com/vision/models/Drama;

    .line 3
    iget-object v2, v1, Lflix/com/vision/models/Drama;->title:Ljava/lang/String;

    .line 4
    iget-object v3, p1, LC4/y;->y:Landroid/widget/TextView;

    iget-object v1, v1, Lflix/com/vision/models/Drama;->year:Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v1, p1, LC4/y;->x:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    :try_start_0
    invoke-static {}, Lm4/D;->get()Lm4/D;

    move-result-object v1

    .line 7
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lflix/com/vision/models/Drama;

    iget-object v0, v0, Lflix/com/vision/models/Drama;->image_url:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lm4/D;->load(Ljava/lang/String;)Lm4/J;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lm4/J;->fit()Lm4/J;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lm4/J;->centerCrop()Lm4/J;

    move-result-object v0

    iget-object v1, p1, LC4/y;->z:Landroid/widget/ImageView;

    .line 10
    invoke-virtual {v0, v1}, Lm4/J;->into(Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    :goto_0
    new-instance v0, LC4/b;

    const/4 v1, 0x5

    invoke-direct {v0, p0, p1, v1}, LC4/b;-><init>(Lm1/V;Lm1/B0;I)V

    iget-object v1, p1, LC4/y;->w:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 13
    new-instance v0, LA4/m;

    const/4 v2, 0x5

    invoke-direct {v0, v2, p0, p1}, LA4/m;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    new-instance v0, LC4/i;

    const/4 v2, 0x1

    invoke-direct {v0, v2, p0, p1}, LC4/i;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    if-nez p2, :cond_0

    .line 15
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lm1/B0;I)V
    .locals 0

    .line 1
    check-cast p1, LC4/y;

    invoke-virtual {p0, p1, p2}, LC4/z;->onBindViewHolder(LC4/y;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)LC4/y;
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lflix/com/vision/R$layout;->drama_item_view:I

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    new-instance p2, LC4/y;

    invoke-direct {p2, p0, p1}, LC4/y;-><init>(LC4/z;Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lm1/B0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, LC4/z;->onCreateViewHolder(Landroid/view/ViewGroup;I)LC4/y;

    move-result-object p1

    return-object p1
.end method
