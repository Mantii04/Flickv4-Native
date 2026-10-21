.class public final LC4/X;
.super Lm1/V;
.source "SourceFile"


# instance fields
.field public final d:Landroid/content/Context;

.field public final e:Ljava/util/ArrayList;

.field public final f:Lh5/j;

.field public final g:Landroid/graphics/Typeface;

.field public final h:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lflix/com/vision/models/ReleaseInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lm1/V;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LC4/X;->d:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, LC4/X;->e:Ljava/util/ArrayList;

    .line 7
    .line 8
    new-instance p2, Lh5/j;

    .line 9
    .line 10
    invoke-direct {p2}, Lh5/j;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, LC4/X;->f:Lh5/j;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    sget-object v0, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 20
    .line 21
    const-string v0, "fonts/product_sans_bold.ttf"

    .line 22
    .line 23
    invoke-static {p2, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    iput-object p2, p0, LC4/X;->g:Landroid/graphics/Typeface;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string p2, "fonts/pproduct_sans_rregular.ttf"

    .line 34
    .line 35
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, LC4/X;->h:Landroid/graphics/Typeface;

    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, LC4/X;->e:Ljava/util/ArrayList;

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

.method public onBindViewHolder(LC4/W;I)V
    .locals 2

    .line 2
    iget-object v0, p0, LC4/X;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lflix/com/vision/models/ReleaseInfo;

    .line 3
    iget-object v0, p1, LC4/W;->u:Landroid/widget/TextView;

    iget-object v1, p2, Lflix/com/vision/models/ReleaseInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p2, p2, Lflix/com/vision/models/ReleaseInfo;->changeLog:Ljava/lang/String;

    iget-object v0, p1, LC4/W;->v:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p1, LC4/W;->u:Landroid/widget/TextView;

    iget-object p2, p0, LC4/X;->g:Landroid/graphics/Typeface;

    iget-object v1, p0, LC4/X;->f:Lh5/j;

    invoke-virtual {v1, p1, p2}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 6
    iget-object p1, p0, LC4/X;->h:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0, p1}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lm1/B0;I)V
    .locals 0

    .line 1
    check-cast p1, LC4/W;

    invoke-virtual {p0, p1, p2}, LC4/X;->onBindViewHolder(LC4/W;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)LC4/W;
    .locals 2

    .line 2
    iget-object p2, p0, LC4/X;->d:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lflix/com/vision/R$layout;->item_release_note:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, LC4/W;

    invoke-direct {p2, p1}, LC4/W;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lm1/B0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, LC4/X;->onCreateViewHolder(Landroid/view/ViewGroup;I)LC4/W;

    move-result-object p1

    return-object p1
.end method
