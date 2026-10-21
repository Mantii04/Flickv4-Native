.class public final LC4/e0;
.super Lm1/V;
.source "SourceFile"


# instance fields
.field public final d:Landroid/app/Activity;

.field public final e:Lh5/j;

.field public final f:Landroid/graphics/Typeface;

.field public final g:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lflix/com/vision/models/HistoryTVLink;",
            ">;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lm1/V;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, LC4/e0;->g:Ljava/util/ArrayList;

    .line 5
    .line 6
    iput-object p3, p0, LC4/e0;->d:Landroid/app/Activity;

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
    const-string p2, "fonts/pproduct_sans_rregular.ttf"

    .line 15
    .line 16
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, LC4/e0;->f:Landroid/graphics/Typeface;

    .line 21
    .line 22
    new-instance p1, Lh5/j;

    .line 23
    .line 24
    invoke-direct {p1}, Lh5/j;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, LC4/e0;->e:Lh5/j;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, LC4/e0;->g:Ljava/util/ArrayList;

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

.method public onBindViewHolder(LC4/d0;I)V
    .locals 3

    .line 2
    iget-object v0, p0, LC4/e0;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lflix/com/vision/models/HistoryTVLink;

    iput-object p2, p1, LC4/d0;->u:Lflix/com/vision/models/HistoryTVLink;

    .line 3
    iget-object p2, p2, Lflix/com/vision/models/HistoryTVLink;->name:Ljava/lang/String;

    iget-object v0, p1, LC4/d0;->x:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p2, p1, LC4/d0;->u:Lflix/com/vision/models/HistoryTVLink;

    iget-object p2, p2, Lflix/com/vision/models/HistoryTVLink;->url:Ljava/lang/String;

    iget-object v1, p1, LC4/d0;->y:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 6
    iget-object p2, p0, LC4/e0;->e:Lh5/j;

    iget-object v2, p0, LC4/e0;->f:Landroid/graphics/Typeface;

    invoke-virtual {p2, v0, v2}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 7
    invoke-virtual {p2, v1, v2}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 8
    iget-object p2, p1, LC4/d0;->u:Lflix/com/vision/models/HistoryTVLink;

    iget-object p2, p2, Lflix/com/vision/models/HistoryTVLink;->type:Ljava/lang/String;

    const-string v0, "3"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iget-object v0, p1, LC4/d0;->z:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    .line 9
    sget p2, Lflix/com/vision/R$drawable;->ic_action_file_type:I

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object p2, p1, LC4/d0;->u:Lflix/com/vision/models/HistoryTVLink;

    iget-object p2, p2, Lflix/com/vision/models/HistoryTVLink;->type:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 11
    sget p2, Lflix/com/vision/R$drawable;->tv_pack:I

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 12
    :cond_1
    sget p2, Lflix/com/vision/R$drawable;->ic_action_tv_link:I

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 13
    :goto_0
    new-instance p2, LA4/m;

    const/16 v0, 0xc

    invoke-direct {p2, v0, p0, p1}, LA4/m;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p1, LC4/d0;->v:Landroid/widget/ImageButton;

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    new-instance p2, LB4/a;

    const/4 v0, 0x2

    invoke-direct {p2, p1, v0}, LB4/a;-><init>(Ljava/lang/Object;I)V

    iget-object p1, p1, LC4/d0;->w:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lm1/B0;I)V
    .locals 0

    .line 1
    check-cast p1, LC4/d0;

    invoke-virtual {p0, p1, p2}, LC4/e0;->onBindViewHolder(LC4/d0;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)LC4/d0;
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lflix/com/vision/R$layout;->tv_history_item_view:I

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    new-instance p2, LC4/d0;

    invoke-direct {p2, p0, p1}, LC4/d0;-><init>(LC4/e0;Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lm1/B0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, LC4/e0;->onCreateViewHolder(Landroid/view/ViewGroup;I)LC4/d0;

    move-result-object p1

    return-object p1
.end method
