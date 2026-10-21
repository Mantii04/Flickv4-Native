.class public final LC4/h0;
.super Lm1/V;
.source "SourceFile"


# instance fields
.field public final d:Ljava/util/ArrayList;

.field public final e:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Lflix/com/vision/models/torrent/UserTorrent;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lm1/V;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, LC4/h0;->d:Ljava/util/ArrayList;

    .line 5
    .line 6
    iput-object p1, p0, LC4/h0;->e:Landroid/app/Activity;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, LC4/h0;->d:Ljava/util/ArrayList;

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

.method public onBindViewHolder(LC4/g0;I)V
    .locals 8

    .line 2
    iget-object v0, p0, LC4/h0;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lflix/com/vision/models/torrent/UserTorrent;

    iput-object p2, p1, LC4/g0;->u:Lflix/com/vision/models/torrent/UserTorrent;

    .line 3
    iget-boolean p2, p2, Lflix/com/vision/models/torrent/UserTorrent;->clicked:Z

    iget-object v0, p1, LC4/g0;->w:Landroid/widget/TextView;

    iget-object v1, p1, LC4/g0;->x:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    const p2, 0x3ecccccd    # 0.4f

    .line 4
    invoke-virtual {v1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 5
    invoke-virtual {v0, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    .line 6
    invoke-virtual {v1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 7
    invoke-virtual {v0, p2}, Landroid/view/View;->setAlpha(F)V

    .line 8
    :goto_0
    iget-object p2, p1, LC4/g0;->u:Lflix/com/vision/models/torrent/UserTorrent;

    iget-object p2, p2, Lflix/com/vision/models/torrent/UserTorrent;->source_type:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    sget-object v2, Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;->e:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    iget-object v3, p0, LC4/h0;->e:Landroid/app/Activity;

    const-string v4, " - "

    const-string v5, "File ID: "

    iget-object v6, p1, LC4/g0;->y:Landroid/widget/TextView;

    if-ne p2, v2, :cond_2

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, LC4/g0;->u:Lflix/com/vision/models/torrent/UserTorrent;

    iget-object v2, v2, Lflix/com/vision/models/torrent/UserTorrent;->file_id:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, LC4/g0;->u:Lflix/com/vision/models/torrent/UserTorrent;

    iget-object v2, v2, Lflix/com/vision/models/torrent/UserTorrent;->file_size_label:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "PREMIUMIZE - "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, LC4/g0;->u:Lflix/com/vision/models/torrent/UserTorrent;

    iget-object v2, v2, Lflix/com/vision/models/torrent/UserTorrent;->status:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p2, p1, LC4/g0;->u:Lflix/com/vision/models/torrent/UserTorrent;

    iget-object p2, p2, Lflix/com/vision/models/torrent/UserTorrent;->status:Ljava/lang/String;

    if-eqz p2, :cond_1

    const-string v2, "finished"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 12
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lflix/com/vision/R$color;->md_green_500:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 13
    :cond_1
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lflix/com/vision/R$color;->md_red_500:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 14
    :cond_2
    sget-object v2, Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;->f:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    if-ne p2, v2, :cond_4

    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, LC4/g0;->u:Lflix/com/vision/models/torrent/UserTorrent;

    iget-object v2, v2, Lflix/com/vision/models/torrent/UserTorrent;->file_id:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, LC4/g0;->u:Lflix/com/vision/models/torrent/UserTorrent;

    iget-object v2, v2, Lflix/com/vision/models/torrent/UserTorrent;->file_size_label:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "ALLDEBRID - "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, LC4/g0;->u:Lflix/com/vision/models/torrent/UserTorrent;

    iget-object v2, v2, Lflix/com/vision/models/torrent/UserTorrent;->status:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object p2, p1, LC4/g0;->u:Lflix/com/vision/models/torrent/UserTorrent;

    iget-object p2, p2, Lflix/com/vision/models/torrent/UserTorrent;->status:Ljava/lang/String;

    if-eqz p2, :cond_3

    const-string v2, "Ready"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 18
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lflix/com/vision/R$color;->md_green_500:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 19
    :cond_3
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lflix/com/vision/R$color;->md_red_500:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 20
    :cond_4
    sget-object v2, Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;->b:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    const-string v7, "error"

    if-ne p2, v2, :cond_6

    .line 21
    const-string p2, "REAL-DEBRID"

    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lflix/com/vision/R$color;->md_green_500:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, LC4/g0;->u:Lflix/com/vision/models/torrent/UserTorrent;

    iget-object v2, v2, Lflix/com/vision/models/torrent/UserTorrent;->file_id:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, LC4/g0;->u:Lflix/com/vision/models/torrent/UserTorrent;

    iget-object v2, v2, Lflix/com/vision/models/torrent/UserTorrent;->file_size_label:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "REAL-DEBRID - "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, LC4/g0;->u:Lflix/com/vision/models/torrent/UserTorrent;

    iget-object v2, v2, Lflix/com/vision/models/torrent/UserTorrent;->status:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object p2, p1, LC4/g0;->u:Lflix/com/vision/models/torrent/UserTorrent;

    iget-object p2, p2, Lflix/com/vision/models/torrent/UserTorrent;->status:Ljava/lang/String;

    if-eqz p2, :cond_5

    invoke-virtual {p2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 26
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lflix/com/vision/R$color;->md_red_500:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 27
    :cond_5
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lflix/com/vision/R$color;->md_green_500:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 28
    :cond_6
    sget-object v2, Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;->j:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    if-ne p2, v2, :cond_8

    .line 29
    const-string p2, "TORBOX"

    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lflix/com/vision/R$color;->md_green_500:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 31
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, LC4/g0;->u:Lflix/com/vision/models/torrent/UserTorrent;

    iget-object v2, v2, Lflix/com/vision/models/torrent/UserTorrent;->file_id:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, LC4/g0;->u:Lflix/com/vision/models/torrent/UserTorrent;

    iget-object v2, v2, Lflix/com/vision/models/torrent/UserTorrent;->file_size_label:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "TORBOX - "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, LC4/g0;->u:Lflix/com/vision/models/torrent/UserTorrent;

    iget-object v2, v2, Lflix/com/vision/models/torrent/UserTorrent;->status:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object p2, p1, LC4/g0;->u:Lflix/com/vision/models/torrent/UserTorrent;

    iget-object p2, p2, Lflix/com/vision/models/torrent/UserTorrent;->status:Ljava/lang/String;

    if-eqz p2, :cond_7

    invoke-virtual {p2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 34
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lflix/com/vision/R$color;->md_red_500:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 35
    :cond_7
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lflix/com/vision/R$color;->md_green_500:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_8
    :goto_1
    const p2, -0x65bc2

    .line 36
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 37
    iget-object p2, p1, LC4/g0;->u:Lflix/com/vision/models/torrent/UserTorrent;

    if-nez p2, :cond_9

    return-void

    .line 38
    :cond_9
    new-instance p2, LC4/b;

    const/16 v1, 0xb

    invoke-direct {p2, p0, p1, v1}, LC4/b;-><init>(Lm1/V;Lm1/B0;I)V

    iget-object v1, p1, LC4/g0;->v:Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 39
    iget-object p2, p1, LC4/g0;->u:Lflix/com/vision/models/torrent/UserTorrent;

    iget-object p2, p2, Lflix/com/vision/models/torrent/UserTorrent;->filename:Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    new-instance p2, LA4/m;

    const/16 v0, 0xd

    invoke-direct {p2, v0, p0, p1}, LA4/m;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    new-instance p1, LC4/f0;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lm1/B0;I)V
    .locals 0

    .line 1
    check-cast p1, LC4/g0;

    invoke-virtual {p0, p1, p2}, LC4/h0;->onBindViewHolder(LC4/g0;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)LC4/g0;
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lflix/com/vision/R$layout;->user_torrent_item_view_new:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, LC4/g0;

    invoke-direct {p2, p0, p1}, LC4/g0;-><init>(LC4/h0;Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lm1/B0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, LC4/h0;->onCreateViewHolder(Landroid/view/ViewGroup;I)LC4/g0;

    move-result-object p1

    return-object p1
.end method
