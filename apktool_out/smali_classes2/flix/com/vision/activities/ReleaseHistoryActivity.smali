.class public Lflix/com/vision/activities/ReleaseHistoryActivity;
.super Le/v;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/v;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/H;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lflix/com/vision/R$layout;->activity_release_history:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Le/v;->setContentView(I)V

    .line 7
    .line 8
    .line 9
    sget p1, Lflix/com/vision/R$id;->page_title:I

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroid/widget/TextView;

    .line 16
    .line 17
    new-instance v0, Lh5/j;

    .line 18
    .line 19
    invoke-direct {v0}, Lh5/j;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    sget-object v2, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 27
    .line 28
    const-string v2, "fonts/product_sans_bold.ttf"

    .line 29
    .line 30
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, p1, v1}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 35
    .line 36
    .line 37
    sget p1, Lflix/com/vision/R$id;->recycler_history:I

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 44
    .line 45
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 46
    .line 47
    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 51
    .line 52
    .line 53
    new-instance v0, LC4/X;

    .line 54
    .line 55
    sget-object v1, Lflix/com/vision/App;->J:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v0, p0, v1}, LC4/X;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lm1/V;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method
