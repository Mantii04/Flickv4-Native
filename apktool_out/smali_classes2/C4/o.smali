.class public final LC4/o;
.super Lm1/V;
.source "SourceFile"


# instance fields
.field public final d:Lh5/j;

.field public final e:Landroid/graphics/Typeface;

.field public final f:Ljava/util/ArrayList;

.field public final g:Lflix/com/vision/activities/AnimeDetailActivity;


# direct methods
.method public constructor <init>(Lflix/com/vision/activities/AnimeDetailActivity;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lflix/com/vision/activities/AnimeDetailActivity;",
            "Ljava/util/ArrayList<",
            "Lflix/com/vision/models/Episode;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lm1/V;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, LC4/o;->f:Ljava/util/ArrayList;

    .line 5
    .line 6
    iput-object p1, p0, LC4/o;->g:Lflix/com/vision/activities/AnimeDetailActivity;

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
    iput-object p1, p0, LC4/o;->e:Landroid/graphics/Typeface;

    .line 21
    .line 22
    new-instance p1, Lh5/j;

    .line 23
    .line 24
    invoke-direct {p1}, Lh5/j;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, LC4/o;->d:Lh5/j;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, LC4/o;->f:Ljava/util/ArrayList;

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

.method public onBindViewHolder(LC4/n;I)V
    .locals 3

    .line 2
    iget-object v0, p0, LC4/o;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lflix/com/vision/models/Episode;

    iput-object v0, p1, LC4/n;->u:Lflix/com/vision/models/Episode;

    .line 3
    iget-object v0, p0, LC4/o;->e:Landroid/graphics/Typeface;

    iget-object v1, p0, LC4/o;->d:Lh5/j;

    iget-object v2, p1, LC4/n;->v:Lme/grantland/widget/AutofitTextView;

    invoke-virtual {v1, v2, v0}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "E"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, LC4/n;->u:Lflix/com/vision/models/Episode;

    invoke-virtual {v1}, Lflix/com/vision/models/Episode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    new-instance v0, LC4/l;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1, p0, p1}, LC4/l;-><init>(IILm1/V;Lm1/B0;)V

    iget-object p1, p1, LC4/n;->x:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    new-instance p2, LC4/m;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, LC4/m;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lm1/B0;I)V
    .locals 0

    .line 1
    check-cast p1, LC4/n;

    invoke-virtual {p0, p1, p2}, LC4/o;->onBindViewHolder(LC4/n;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)LC4/n;
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lflix/com/vision/R$layout;->episode_anime_item_view:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, LC4/n;

    invoke-direct {p2, p0, p1}, LC4/n;-><init>(LC4/o;Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lm1/B0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, LC4/o;->onCreateViewHolder(Landroid/view/ViewGroup;I)LC4/n;

    move-result-object p1

    return-object p1
.end method
