.class public final LW4/f;
.super Landroidx/leanback/widget/C0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/leanback/widget/C0;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/leanback/widget/A0;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p2, Lflix/com/vision/models/Movie;

    .line 2
    .line 3
    iget-object p1, p1, Landroidx/leanback/widget/A0;->a:Landroid/view/View;

    .line 4
    .line 5
    sget v0, Lflix/com/vision/R$id;->poster_image:I

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/widget/ImageView;

    .line 12
    .line 13
    :try_start_0
    invoke-static {}, Lm4/D;->get()Lm4/D;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p2}, Lflix/com/vision/models/Movie;->getImage_url()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {v0, p2}, Lm4/D;->load(Ljava/lang/String;)Lm4/J;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p2}, Lm4/J;->fit()Lm4/J;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    sget v0, Lflix/com/vision/R$drawable;->ic_movie:I

    .line 30
    .line 31
    invoke-virtual {p2, v0}, Lm4/J;->error(I)Lm4/J;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p2}, Lm4/J;->centerCrop()Lm4/J;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {p2, p1}, Lm4/J;->into(Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :catch_0
    move-exception p1

    .line 44
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/A0;
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget v1, Lflix/com/vision/R$layout;->movie_item_view_tv:I

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const/16 v3, 0xc

    .line 25
    .line 26
    invoke-static {v2, v3}, Lh5/d;->getWidthInPercent(Landroid/content/Context;I)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const/16 v2, 0x20

    .line 37
    .line 38
    invoke-static {p1, v2}, Lh5/d;->getHeightInPercent(Landroid/content/Context;I)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 43
    .line 44
    new-instance p1, Landroidx/leanback/widget/A0;

    .line 45
    .line 46
    invoke-direct {p1, v0}, Landroidx/leanback/widget/A0;-><init>(Landroid/view/View;)V

    .line 47
    .line 48
    .line 49
    return-object p1
.end method

.method public onUnbindViewHolder(Landroidx/leanback/widget/A0;)V
    .locals 0

    .line 1
    return-void
.end method
