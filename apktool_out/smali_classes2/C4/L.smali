.class public final LC4/L;
.super Lm1/V;
.source "SourceFile"


# instance fields
.field public final d:Landroid/content/Context;

.field public final e:Ljava/util/ArrayList;

.field public final f:LC4/J;

.field public final g:Lflix/com/vision/adapters/ModernFileAdapter$MODE;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;LC4/J;Lflix/com/vision/adapters/ModernFileAdapter$MODE;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;",
            "LC4/J;",
            "Lflix/com/vision/adapters/ModernFileAdapter$MODE;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lm1/V;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LC4/L;->d:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, LC4/L;->e:Ljava/util/ArrayList;

    .line 7
    .line 8
    iput-object p3, p0, LC4/L;->f:LC4/J;

    .line 9
    .line 10
    iput-object p4, p0, LC4/L;->g:Lflix/com/vision/adapters/ModernFileAdapter$MODE;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, LC4/L;->e:Ljava/util/ArrayList;

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

.method public onBindViewHolder(LC4/K;I)V
    .locals 5

    .line 2
    iget-object v0, p0, LC4/L;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/File;

    .line 3
    iget-object v0, p1, LC4/K;->v:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    iget-object v1, p1, LC4/K;->w:Landroid/widget/TextView;

    iget-object v2, p1, LC4/K;->u:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 5
    sget v0, Lflix/com/vision/R$drawable;->folder_24px:I

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " items"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 9
    :cond_1
    sget-object v0, Lflix/com/vision/adapters/ModernFileAdapter$MODE;->b:Lflix/com/vision/adapters/ModernFileAdapter$MODE;

    iget-object v3, p0, LC4/L;->g:Lflix/com/vision/adapters/ModernFileAdapter$MODE;

    if-ne v3, v0, :cond_2

    sget v0, Lflix/com/vision/R$drawable;->video_library_24px:I

    goto :goto_1

    :cond_2
    sget v0, Lflix/com/vision/R$drawable;->backup_24px:I

    .line 10
    :goto_1
    sget-object v4, Lflix/com/vision/adapters/ModernFileAdapter$MODE;->f:Lflix/com/vision/adapters/ModernFileAdapter$MODE;

    if-ne v3, v4, :cond_3

    .line 11
    sget v0, Lflix/com/vision/R$drawable;->subtitles_24px:I

    .line 12
    :cond_3
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 13
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "MMM dd, yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    :goto_2
    new-instance v0, LA4/m;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0, p2}, LA4/m;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p1, Lm1/B0;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lm1/B0;I)V
    .locals 0

    .line 1
    check-cast p1, LC4/K;

    invoke-virtual {p0, p1, p2}, LC4/L;->onBindViewHolder(LC4/K;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)LC4/K;
    .locals 2

    .line 2
    sget-object p2, Lflix/com/vision/adapters/ModernFileAdapter$MODE;->b:Lflix/com/vision/adapters/ModernFileAdapter$MODE;

    iget-object v0, p0, LC4/L;->g:Lflix/com/vision/adapters/ModernFileAdapter$MODE;

    if-ne v0, p2, :cond_0

    sget p2, Lflix/com/vision/R$layout;->item_file_modern:I

    goto :goto_0

    :cond_0
    sget p2, Lflix/com/vision/R$layout;->item_file_modern_backup:I

    .line 3
    :goto_0
    sget-object v1, Lflix/com/vision/adapters/ModernFileAdapter$MODE;->f:Lflix/com/vision/adapters/ModernFileAdapter$MODE;

    if-ne v0, v1, :cond_1

    .line 4
    sget p2, Lflix/com/vision/R$layout;->item_file_modern_subtitle:I

    .line 5
    :cond_1
    iget-object v0, p0, LC4/L;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 6
    new-instance p2, LC4/K;

    invoke-direct {p2, p1}, LC4/K;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lm1/B0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, LC4/L;->onCreateViewHolder(Landroid/view/ViewGroup;I)LC4/K;

    move-result-object p1

    return-object p1
.end method
