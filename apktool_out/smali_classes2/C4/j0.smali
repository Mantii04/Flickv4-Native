.class public final LC4/j0;
.super Lm1/V;
.source "SourceFile"


# instance fields
.field public final d:Lh5/j;

.field public final e:Landroid/graphics/Typeface;

.field public final f:Landroid/graphics/Typeface;

.field public final g:Ljava/util/ArrayList;

.field public final h:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Lflix/com/vision/models/VideoSource;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lm1/V;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, LC4/j0;->g:Ljava/util/ArrayList;

    .line 5
    .line 6
    iput-object p1, p0, LC4/j0;->h:Landroid/app/Activity;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    sget-object v0, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 13
    .line 14
    const-string v0, "fonts/pproduct_sans_rregular.ttf"

    .line 15
    .line 16
    invoke-static {p2, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    iput-object p2, p0, LC4/j0;->e:Landroid/graphics/Typeface;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string p2, "fonts/product_sans_bold.ttf"

    .line 27
    .line 28
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, LC4/j0;->f:Landroid/graphics/Typeface;

    .line 33
    .line 34
    new-instance p1, Lh5/j;

    .line 35
    .line 36
    invoke-direct {p1}, Lh5/j;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, LC4/j0;->d:Lh5/j;

    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, LC4/j0;->g:Ljava/util/ArrayList;

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

.method public getItemId(I)J
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lm1/V;->getItemId(I)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public onBindViewHolder(LC4/i0;I)V
    .locals 5

    .line 2
    iget-object v0, p0, LC4/j0;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lflix/com/vision/models/VideoSource;

    iput-object p2, p1, LC4/i0;->u:Lflix/com/vision/models/VideoSource;

    .line 3
    iget-object v0, p2, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    const-string v1, " - "

    const-string v2, " \u00b7 "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "- "

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, " -"

    const-string v3, "\u00b7"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 4
    iget-object p2, p1, LC4/i0;->u:Lflix/com/vision/models/VideoSource;

    iget-boolean v0, p2, Lflix/com/vision/models/VideoSource;->isHindi:Z

    iget-object v2, p0, LC4/j0;->d:Lh5/j;

    iget-object v3, p1, LC4/i0;->w:Landroid/widget/TextView;

    iget-object v4, p1, LC4/i0;->x:Landroid/widget/TextView;

    if-nez v0, :cond_1

    iget-boolean p2, p2, Lflix/com/vision/models/VideoSource;->streamable:Z

    if-eqz p2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p2, p0, LC4/j0;->e:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3, p2}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 6
    invoke-virtual {v2, v4, p2}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    iget-object p2, p0, LC4/j0;->f:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3, p2}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 8
    invoke-virtual {v2, v4, p2}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 9
    :goto_1
    iget-object p2, p1, LC4/i0;->u:Lflix/com/vision/models/VideoSource;

    iget-boolean p2, p2, Lflix/com/vision/models/VideoSource;->clicked:Z

    if-eqz p2, :cond_2

    const p2, 0x3ecccccd    # 0.4f

    .line 10
    invoke-virtual {v4, p2}, Landroid/view/View;->setAlpha(F)V

    .line 11
    invoke-virtual {v3, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    :cond_2
    const/high16 p2, 0x3f800000    # 1.0f

    .line 12
    invoke-virtual {v4, p2}, Landroid/view/View;->setAlpha(F)V

    .line 13
    invoke-virtual {v3, p2}, Landroid/view/View;->setAlpha(F)V

    .line 14
    :goto_2
    iget-object p2, p1, LC4/i0;->u:Lflix/com/vision/models/VideoSource;

    if-nez p2, :cond_3

    return-void

    .line 15
    :cond_3
    iget-boolean v0, p2, Lflix/com/vision/models/VideoSource;->isRealDebrid:Z

    const v2, -0x65bc2

    if-eqz v0, :cond_4

    .line 16
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 17
    const-string p2, "Direct \u00b7 Real-Debrid"

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 18
    :cond_4
    iget-boolean v0, p2, Lflix/com/vision/models/VideoSource;->isPremiumize:Z

    if-eqz v0, :cond_5

    .line 19
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 20
    const-string p2, "Direct \u00b7 Premiumize"

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 21
    :cond_5
    iget-boolean v0, p2, Lflix/com/vision/models/VideoSource;->isAllDebrid:Z

    if-eqz v0, :cond_6

    .line 22
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 23
    const-string p2, "Direct \u00b7 AllDebrid"

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 24
    :cond_6
    iget-boolean v0, p2, Lflix/com/vision/models/VideoSource;->isTorbox:Z

    if-eqz v0, :cond_7

    .line 25
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 26
    const-string p2, "Direct \u00b7 TorBox"

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 27
    :cond_7
    iget-boolean v0, p2, Lflix/com/vision/models/VideoSource;->isOffCloud:Z

    if-eqz v0, :cond_8

    .line 28
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 29
    const-string p2, "Direct \u00b7 OffCloud"

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 30
    :cond_8
    iget-boolean p2, p2, Lflix/com/vision/models/VideoSource;->streamable:Z

    if-eqz p2, :cond_9

    .line 31
    iget-object p2, p0, LC4/j0;->h:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lflix/com/vision/R$color;->accent:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 32
    const-string p2, "Direct Stream"

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_9
    const/4 p2, -0x1

    .line 33
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 34
    const-string p2, "Embed"

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object p2, p1, LC4/i0;->u:Lflix/com/vision/models/VideoSource;

    invoke-virtual {p2}, Lflix/com/vision/models/VideoSource;->hasSubtitles()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 36
    const-string p2, "Embed \u00b7 Subtitles"

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 37
    :cond_a
    iget-object p2, p1, LC4/i0;->u:Lflix/com/vision/models/VideoSource;

    invoke-virtual {p2}, Lflix/com/vision/models/VideoSource;->hasMultiSubtitles()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 38
    const-string p2, "Embed \u00b7 Subtitles \u00b7 Multilanguage"

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    :cond_b
    :goto_3
    iget-object p2, p1, LC4/i0;->u:Lflix/com/vision/models/VideoSource;

    iget-object p2, p2, Lflix/com/vision/models/VideoSource;->originalFileName:Ljava/lang/String;

    if-eqz p2, :cond_c

    .line 40
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, LC4/i0;->u:Lflix/com/vision/models/VideoSource;

    iget-object v0, v0, Lflix/com/vision/models/VideoSource;->originalFileName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    :cond_c
    new-instance p2, LA4/g;

    const/4 v0, 0x3

    invoke-direct {p2, p1, v0}, LA4/g;-><init>(Ljava/lang/Object;I)V

    iget-object v0, p1, LC4/i0;->v:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 42
    iget-object p2, p1, LC4/i0;->u:Lflix/com/vision/models/VideoSource;

    iget-object p2, p2, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    new-instance p2, LA4/m;

    const/16 v1, 0xe

    invoke-direct {p2, v1, p0, p1}, LA4/m;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    new-instance p2, LC4/i;

    const/4 v1, 0x2

    invoke-direct {p2, v1, p0, p1}, LC4/i;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lm1/B0;I)V
    .locals 0

    .line 1
    check-cast p1, LC4/i0;

    invoke-virtual {p0, p1, p2}, LC4/j0;->onBindViewHolder(LC4/i0;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)LC4/i0;
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lflix/com/vision/R$layout;->video_source_item_view_new:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, LC4/i0;

    invoke-direct {p2, p0, p1}, LC4/i0;-><init>(LC4/j0;Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lm1/B0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, LC4/j0;->onCreateViewHolder(Landroid/view/ViewGroup;I)LC4/i0;

    move-result-object p1

    return-object p1
.end method
