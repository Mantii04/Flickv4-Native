.class public final LC4/u;
.super Lm1/V;
.source "SourceFile"


# instance fields
.field public final d:I

.field public final e:Landroid/content/Context;

.field public final f:Landroid/app/Activity;

.field public g:Lflix/com/vision/tv/ChannelsListActivity;

.field public final h:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/app/Activity;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lflix/com/vision/models/ChannelTv;",
            ">;",
            "Landroid/app/Activity;",
            "II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lm1/V;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 p4, 0x64

    .line 5
    .line 6
    iput p4, p0, LC4/u;->d:I

    .line 7
    .line 8
    iput-object p1, p0, LC4/u;->e:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, LC4/u;->h:Ljava/util/ArrayList;

    .line 11
    .line 12
    iput-object p3, p0, LC4/u;->f:Landroid/app/Activity;

    .line 13
    .line 14
    new-instance p2, LT4/d;

    .line 15
    .line 16
    invoke-direct {p2}, LT4/d;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance p2, LT4/n;

    .line 20
    .line 21
    invoke-direct {p2, p1}, LT4/n;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    iput p5, p0, LC4/u;->d:I

    .line 25
    .line 26
    sget-object p1, Lflix/com/vision/App;->z:Ljava/util/ArrayList;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, LC4/u;->h:Ljava/util/ArrayList;

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

.method public onBindViewHolder(LC4/t;I)V
    .locals 3

    .line 2
    iget-object v0, p1, LC4/t;->v:Landroid/view/View;

    if-nez p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 3
    iget-object v0, p0, LC4/u;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lflix/com/vision/models/ChannelTv;

    iput-object v0, p1, LC4/t;->u:Lflix/com/vision/models/ChannelTv;

    .line 4
    iget-object v1, p1, LC4/t;->w:Landroid/widget/TextView;

    iget-object v0, v0, Lflix/com/vision/models/ChannelTv;->label:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p1, LC4/t;->u:Lflix/com/vision/models/ChannelTv;

    iget-object v0, v0, Lflix/com/vision/models/ChannelTv;->logoUrl:Ljava/lang/String;

    iget-object v1, p1, LC4/t;->x:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xa

    if-le v0, v2, :cond_1

    iget-object v0, p1, LC4/t;->u:Lflix/com/vision/models/ChannelTv;

    iget-object v0, v0, Lflix/com/vision/models/ChannelTv;->logoUrl:Ljava/lang/String;

    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    :try_start_0
    invoke-static {}, Lm4/D;->get()Lm4/D;

    move-result-object v0

    iget-object v2, p1, LC4/t;->u:Lflix/com/vision/models/ChannelTv;

    iget-object v2, v2, Lflix/com/vision/models/ChannelTv;->logoUrl:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v2}, Lm4/D;->load(Ljava/lang/String;)Lm4/J;

    move-result-object v0

    new-instance v2, LC4/s;

    invoke-direct {v2, p1}, LC4/s;-><init>(LC4/t;)V

    .line 8
    invoke-virtual {v0, v1, v2}, Lm4/J;->into(Landroid/widget/ImageView;Lm4/i;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 9
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 10
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :cond_1
    const/16 v0, 0x8

    .line 11
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    :goto_2
    new-instance v0, LC4/a;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p2, v1}, LC4/a;-><init>(Lm1/V;II)V

    iget-object v1, p1, LC4/t;->v:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    new-instance v0, LC4/e;

    invoke-direct {v0, p0, p2, p1}, LC4/e;-><init>(LC4/u;ILC4/t;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 14
    new-instance p2, LC4/b;

    const/4 v0, 0x3

    invoke-direct {p2, p0, p1, v0}, LC4/b;-><init>(Lm1/V;Lm1/B0;I)V

    iget-object p1, p1, Lm1/B0;->a:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lm1/B0;I)V
    .locals 0

    .line 1
    check-cast p1, LC4/t;

    invoke-virtual {p0, p1, p2}, LC4/u;->onBindViewHolder(LC4/t;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)LC4/t;
    .locals 3

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lflix/com/vision/R$layout;->item_channel_modern:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 3
    iget v0, p0, LC4/u;->d:I

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lflix/com/vision/R$layout;->item_channel_modern:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 5
    :cond_0
    new-instance p1, LC4/t;

    invoke-direct {p1, p0, p2}, LC4/t;-><init>(LC4/u;Landroid/view/View;)V

    return-object p1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lm1/B0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, LC4/u;->onCreateViewHolder(Landroid/view/ViewGroup;I)LC4/t;

    move-result-object p1

    return-object p1
.end method

.method public setImportActivity(Lflix/com/vision/tv/ChannelsListActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, LC4/u;->g:Lflix/com/vision/tv/ChannelsListActivity;

    .line 2
    .line 3
    return-void
.end method
