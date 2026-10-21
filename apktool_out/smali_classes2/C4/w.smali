.class public final LC4/w;
.super Lm1/V;
.source "SourceFile"


# instance fields
.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/ArrayList;

.field public final f:Landroid/app/Activity;

.field public g:Le/s;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Lflix/com/vision/models/ColorItem;",
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
    iput-object p2, p0, LC4/w;->e:Ljava/util/ArrayList;

    .line 5
    .line 6
    iput-object p1, p0, LC4/w;->f:Landroid/app/Activity;

    .line 7
    .line 8
    iput-object p3, p0, LC4/w;->d:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, LC4/w;->e:Ljava/util/ArrayList;

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

.method public onBindViewHolder(LC4/v;I)V
    .locals 2

    .line 2
    iget-object v0, p0, LC4/w;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lflix/com/vision/models/ColorItem;

    iput-object p2, p1, LC4/v;->u:Lflix/com/vision/models/ColorItem;

    .line 3
    iget-object v0, p1, LC4/v;->y:Landroid/view/View;

    iget p2, p2, Lflix/com/vision/models/ColorItem;->colorID:I

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 4
    iget-object p2, p1, LC4/v;->u:Lflix/com/vision/models/ColorItem;

    iget-boolean p2, p2, Lflix/com/vision/models/ColorItem;->isChecked:Z

    iget-object v0, p1, LC4/v;->v:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 5
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 6
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    :goto_0
    new-instance p2, LA4/m;

    const/4 v0, 0x4

    invoke-direct {p2, v0, p0, p1}, LA4/m;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p1, LC4/v;->x:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    new-instance p2, LC4/b;

    const/4 v1, 0x4

    invoke-direct {p2, p0, p1, v1}, LC4/b;-><init>(Lm1/V;Lm1/B0;I)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lm1/B0;I)V
    .locals 0

    .line 1
    check-cast p1, LC4/v;

    invoke-virtual {p0, p1, p2}, LC4/w;->onBindViewHolder(LC4/v;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)LC4/v;
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lflix/com/vision/R$layout;->color_item_view:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, LC4/v;

    invoke-direct {p2, p0, p1}, LC4/v;-><init>(LC4/w;Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lm1/B0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, LC4/w;->onCreateViewHolder(Landroid/view/ViewGroup;I)LC4/v;

    move-result-object p1

    return-object p1
.end method

.method public setAlertDialog(Le/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, LC4/w;->g:Le/s;

    .line 2
    .line 3
    return-void
.end method
