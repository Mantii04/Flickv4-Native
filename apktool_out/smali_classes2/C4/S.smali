.class public final LC4/S;
.super Lm1/V;
.source "SourceFile"


# instance fields
.field public final d:Landroid/app/Activity;

.field public final e:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lflix/com/vision/models/tmdb/Network;",
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
    iput-object p2, p0, LC4/S;->e:Ljava/util/ArrayList;

    .line 5
    .line 6
    iput-object p3, p0, LC4/S;->d:Landroid/app/Activity;

    .line 7
    .line 8
    new-instance p1, LT4/d;

    .line 9
    .line 10
    invoke-direct {p1}, LT4/d;-><init>()V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, LC4/S;->e:Ljava/util/ArrayList;

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

.method public onBindViewHolder(LC4/Q;I)V
    .locals 2

    .line 2
    iget-object v0, p0, LC4/S;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lflix/com/vision/models/tmdb/Network;

    iput-object p2, p1, LC4/Q;->u:Lflix/com/vision/models/tmdb/Network;

    .line 3
    iget p2, p2, Lflix/com/vision/models/tmdb/Network;->image_id:I

    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    .line 4
    :try_start_0
    invoke-static {}, Lm4/D;->get()Lm4/D;

    move-result-object p2

    iget-object v0, p1, LC4/Q;->u:Lflix/com/vision/models/tmdb/Network;

    iget v0, v0, Lflix/com/vision/models/tmdb/Network;->image_id:I

    .line 5
    invoke-virtual {p2, v0}, Lm4/D;->load(I)Lm4/J;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Lm4/J;->fit()Lm4/J;

    move-result-object p2

    iget-object v0, p1, LC4/Q;->w:Landroid/widget/ImageView;

    .line 7
    invoke-virtual {p2, v0}, Lm4/J;->into(Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    .line 8
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 9
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 10
    :cond_0
    :goto_1
    new-instance p2, LC4/m;

    const/4 v0, 0x2

    invoke-direct {p2, v0}, LC4/m;-><init>(I)V

    iget-object v0, p1, LC4/Q;->v:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 11
    new-instance p2, LA4/m;

    const/16 v1, 0xa

    invoke-direct {p2, v1, p0, p1}, LA4/m;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lm1/B0;I)V
    .locals 0

    .line 1
    check-cast p1, LC4/Q;

    invoke-virtual {p0, p1, p2}, LC4/S;->onBindViewHolder(LC4/Q;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)LC4/Q;
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lflix/com/vision/R$layout;->network_item_view_main:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, LC4/Q;

    invoke-direct {p2, p0, p1}, LC4/Q;-><init>(LC4/S;Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lm1/B0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, LC4/S;->onCreateViewHolder(Landroid/view/ViewGroup;I)LC4/Q;

    move-result-object p1

    return-object p1
.end method
