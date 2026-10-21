.class public final LC4/h;
.super Lm1/V;
.source "SourceFile"


# instance fields
.field public final d:Ljava/util/ArrayList;

.field public final e:Landroid/app/Activity;

.field public final f:LU4/b;


# direct methods
.method public constructor <init>(Landroid/app/Activity;LU4/b;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "LU4/b;",
            "Ljava/util/ArrayList<",
            "Lflix/com/vision/models/adult/AdultVideo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lm1/V;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, LC4/h;->f:LU4/b;

    .line 5
    .line 6
    iput-object p3, p0, LC4/h;->d:Ljava/util/ArrayList;

    .line 7
    .line 8
    iput-object p1, p0, LC4/h;->e:Landroid/app/Activity;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, LC4/h;->d:Ljava/util/ArrayList;

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

.method public onBindViewHolder(LC4/g;I)V
    .locals 3
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, LC4/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lflix/com/vision/models/adult/AdultVideo;

    iput-object v0, p1, LC4/g;->u:Lflix/com/vision/models/adult/AdultVideo;

    .line 3
    iget-object v1, p1, LC4/g;->w:Landroid/widget/TextView;

    iget-object v0, v0, Lflix/com/vision/models/adult/AdultVideo;->title:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p1, LC4/g;->u:Lflix/com/vision/models/adult/AdultVideo;

    iget-object v0, v0, Lflix/com/vision/models/adult/AdultVideo;->duration:Ljava/lang/String;

    iget-object v1, p1, LC4/g;->x:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    new-instance v0, LC4/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, v1}, LC4/a;-><init>(Lm1/V;II)V

    iget-object v1, p1, LC4/g;->y:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v0, p1, LC4/g;->u:Lflix/com/vision/models/adult/AdultVideo;

    iget-object v0, v0, Lflix/com/vision/models/adult/AdultVideo;->img_url:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 7
    :try_start_0
    invoke-static {}, Lm4/D;->get()Lm4/D;

    move-result-object v0

    iget-object v2, p1, LC4/g;->u:Lflix/com/vision/models/adult/AdultVideo;

    iget-object v2, v2, Lflix/com/vision/models/adult/AdultVideo;->img_url:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v2}, Lm4/D;->load(Ljava/lang/String;)Lm4/J;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lm4/J;->fit()Lm4/J;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lm4/J;->centerCrop()Lm4/J;

    move-result-object v0

    iget-object v2, p1, LC4/g;->z:Landroid/widget/ImageView;

    .line 11
    invoke-virtual {v0, v2}, Lm4/J;->into(Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    :cond_0
    :goto_0
    new-instance v0, LC4/b;

    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, v2}, LC4/b;-><init>(Lm1/V;Lm1/B0;I)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 15
    new-instance v0, LC4/e;

    const/4 v2, 0x0

    invoke-direct {v0, p2, v2, p0, p1}, LC4/e;-><init>(IILm1/V;Lm1/B0;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 16
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lm1/B0;I)V
    .locals 0
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    .line 1
    check-cast p1, LC4/g;

    invoke-virtual {p0, p1, p2}, LC4/h;->onBindViewHolder(LC4/g;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)LC4/g;
    .locals 2

    .line 2
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    move-result-object p2

    iget-object p2, p2, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    const-string v0, "pref_adult_show_big_pictures"

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, LC4/h;->e:Landroid/app/Activity;

    instance-of p2, p2, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;

    if-nez p2, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lflix/com/vision/R$layout;->adult_video_item_view_big:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lflix/com/vision/R$layout;->adult_video_item_view:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 5
    :goto_0
    new-instance p2, LC4/g;

    invoke-direct {p2, p0, p1}, LC4/g;-><init>(LC4/h;Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lm1/B0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, LC4/h;->onCreateViewHolder(Landroid/view/ViewGroup;I)LC4/g;

    move-result-object p1

    return-object p1
.end method
