.class public final Landroidx/mediarouter/app/O;
.super Lm1/V;
.source "SourceFile"


# instance fields
.field public final d:Ljava/util/ArrayList;

.field public final e:Landroid/view/LayoutInflater;

.field public final f:Landroid/graphics/drawable/Drawable;

.field public final g:Landroid/graphics/drawable/Drawable;

.field public final h:Landroid/graphics/drawable/Drawable;

.field public final i:Landroid/graphics/drawable/Drawable;

.field public final synthetic j:Landroidx/mediarouter/app/Q;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/Q;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/O;->j:Landroidx/mediarouter/app/Q;

    .line 2
    .line 3
    invoke-direct {p0}, Lm1/V;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroidx/mediarouter/app/O;->d:Ljava/util/ArrayList;

    .line 12
    .line 13
    iget-object v0, p1, Landroidx/mediarouter/app/Q;->q:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Landroidx/mediarouter/app/O;->e:Landroid/view/LayoutInflater;

    .line 20
    .line 21
    sget v0, Landroidx/mediarouter/R$attr;->mediaRouteDefaultIconDrawable:I

    .line 22
    .line 23
    iget-object p1, p1, Landroidx/mediarouter/app/Q;->q:Landroid/content/Context;

    .line 24
    .line 25
    invoke-static {p1, v0}, Landroidx/mediarouter/app/o0;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Landroidx/mediarouter/app/O;->f:Landroid/graphics/drawable/Drawable;

    .line 30
    .line 31
    sget v0, Landroidx/mediarouter/R$attr;->mediaRouteTvIconDrawable:I

    .line 32
    .line 33
    invoke-static {p1, v0}, Landroidx/mediarouter/app/o0;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Landroidx/mediarouter/app/O;->g:Landroid/graphics/drawable/Drawable;

    .line 38
    .line 39
    sget v0, Landroidx/mediarouter/R$attr;->mediaRouteSpeakerIconDrawable:I

    .line 40
    .line 41
    invoke-static {p1, v0}, Landroidx/mediarouter/app/o0;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Landroidx/mediarouter/app/O;->h:Landroid/graphics/drawable/Drawable;

    .line 46
    .line 47
    sget v0, Landroidx/mediarouter/R$attr;->mediaRouteSpeakerGroupIconDrawable:I

    .line 48
    .line 49
    invoke-static {p1, v0}, Landroidx/mediarouter/app/o0;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iput-object p1, p0, Landroidx/mediarouter/app/O;->i:Landroid/graphics/drawable/Drawable;

    .line 54
    .line 55
    invoke-virtual {p0}, Landroidx/mediarouter/app/O;->a()V

    .line 56
    .line 57
    .line 58
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/O;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroidx/mediarouter/app/L;

    .line 7
    .line 8
    iget-object v2, p0, Landroidx/mediarouter/app/O;->j:Landroidx/mediarouter/app/Q;

    .line 9
    .line 10
    iget-object v3, v2, Landroidx/mediarouter/app/Q;->q:Landroid/content/Context;

    .line 11
    .line 12
    sget v4, Landroidx/mediarouter/R$string;->mr_chooser_title:I

    .line 13
    .line 14
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-direct {v1, v3}, Landroidx/mediarouter/app/L;-><init>(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    iget-object v1, v2, Landroidx/mediarouter/app/Q;->s:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lf1/U;

    .line 41
    .line 42
    new-instance v3, Landroidx/mediarouter/app/L;

    .line 43
    .line 44
    invoke-direct {v3, v2}, Landroidx/mediarouter/app/L;-><init>(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p0}, Lm1/V;->notifyDataSetChanged()V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public getItem(I)Landroidx/mediarouter/app/L;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/O;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroidx/mediarouter/app/L;

    .line 8
    .line 9
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/O;->d:Ljava/util/ArrayList;

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

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/O;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroidx/mediarouter/app/L;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/mediarouter/app/L;->getType()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public onBindViewHolder(Lm1/B0;I)V
    .locals 2

    .line 1
    invoke-virtual {p0, p2}, Landroidx/mediarouter/app/O;->getItemViewType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p2}, Landroidx/mediarouter/app/O;->getItem(I)Landroidx/mediarouter/app/L;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    const-string p1, "RecyclerAdapter"

    .line 16
    .line 17
    const-string p2, "Cannot bind item to ViewHolder because of wrong view type"

    .line 18
    .line 19
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    check-cast p1, Landroidx/mediarouter/app/N;

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroidx/mediarouter/app/N;->bindRouteView(Landroidx/mediarouter/app/L;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    check-cast p1, Landroidx/mediarouter/app/K;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroidx/mediarouter/app/K;->bindHeaderView(Landroidx/mediarouter/app/L;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lm1/B0;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Landroidx/mediarouter/app/O;->e:Landroid/view/LayoutInflater;

    .line 4
    .line 5
    if-eq p2, v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    if-ne p2, v0, :cond_0

    .line 9
    .line 10
    sget p2, Landroidx/mediarouter/R$layout;->mr_picker_route_item:I

    .line 11
    .line 12
    invoke-virtual {v2, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    new-instance p2, Landroidx/mediarouter/app/N;

    .line 17
    .line 18
    invoke-direct {p2, p0, p1}, Landroidx/mediarouter/app/N;-><init>(Landroidx/mediarouter/app/O;Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    return-object p2

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    sget p2, Landroidx/mediarouter/R$layout;->mr_picker_header_item:I

    .line 29
    .line 30
    invoke-virtual {v2, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    new-instance p2, Landroidx/mediarouter/app/K;

    .line 35
    .line 36
    invoke-direct {p2, p1}, Lm1/B0;-><init>(Landroid/view/View;)V

    .line 37
    .line 38
    .line 39
    sget v0, Landroidx/mediarouter/R$id;->mr_picker_header_name:I

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Landroid/widget/TextView;

    .line 46
    .line 47
    iput-object p1, p2, Landroidx/mediarouter/app/K;->u:Landroid/widget/TextView;

    .line 48
    .line 49
    return-object p2
.end method
