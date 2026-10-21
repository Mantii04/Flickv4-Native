.class public final LC4/I;
.super Lm1/V;
.source "SourceFile"


# instance fields
.field public final d:Lh5/j;

.field public final e:Landroid/graphics/Typeface;

.field public final f:Ljava/util/ArrayList;

.field public final g:LU4/i;

.field public final h:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;LU4/i;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "LU4/i;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lm1/V;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, LC4/I;->f:Ljava/util/ArrayList;

    .line 5
    .line 6
    iput-object p2, p0, LC4/I;->g:LU4/i;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    sget-object p3, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 13
    .line 14
    const-string p3, "fonts/pproduct_sans_rregular.ttf"

    .line 15
    .line 16
    invoke-static {p2, p3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    iput-object p2, p0, LC4/I;->e:Landroid/graphics/Typeface;

    .line 21
    .line 22
    new-instance p2, Lh5/j;

    .line 23
    .line 24
    invoke-direct {p2}, Lh5/j;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p2, p0, LC4/I;->d:Lh5/j;

    .line 28
    .line 29
    iput-object p1, p0, LC4/I;->h:Landroid/content/Context;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, LC4/I;->f:Ljava/util/ArrayList;

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

.method public onBindViewHolder(LC4/H;I)V
    .locals 2

    .line 2
    iget-object v0, p0, LC4/I;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p1, LC4/H;->u:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p1, LC4/H;->w:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p2, p0, LC4/I;->d:Lh5/j;

    iget-object v1, p0, LC4/I;->e:Landroid/graphics/Typeface;

    invoke-virtual {p2, v0, v1}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 5
    new-instance p2, LA4/m;

    const/4 v0, 0x7

    invoke-direct {p2, v0, p0, p1}, LA4/m;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p1, LC4/H;->v:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    new-instance p2, LC4/b;

    const/4 v1, 0x7

    invoke-direct {p2, p0, p1, v1}, LC4/b;-><init>(Lm1/V;Lm1/B0;I)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lm1/B0;I)V
    .locals 0

    .line 1
    check-cast p1, LC4/H;

    invoke-virtual {p0, p1, p2}, LC4/I;->onBindViewHolder(LC4/H;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)LC4/H;
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lflix/com/vision/R$layout;->keyboard_letter_item_view:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, LC4/H;

    invoke-direct {p2, p0, p1}, LC4/H;-><init>(LC4/I;Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lm1/B0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, LC4/I;->onCreateViewHolder(Landroid/view/ViewGroup;I)LC4/H;

    move-result-object p1

    return-object p1
.end method
