.class public final synthetic Ly4/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/DramaDetailActivity;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/DramaDetailActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly4/u;->b:I

    iput-object p1, p0, Ly4/u;->e:Lflix/com/vision/activities/DramaDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    const/4 p1, 0x0

    .line 2
    iget-object v0, p0, Ly4/u;->e:Lflix/com/vision/activities/DramaDetailActivity;

    .line 3
    .line 4
    iget v1, p0, Ly4/u;->b:I

    .line 5
    .line 6
    packed-switch v1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    sget v1, Lflix/com/vision/activities/DramaDetailActivity;->A:I

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v1, v1, Lflix/com/vision/App;->r:LP4/e;

    .line 19
    .line 20
    iget-object v2, v0, Lflix/com/vision/activities/DramaDetailActivity;->t:Lflix/com/vision/models/Drama;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, LP4/e;->isDramaFavorited(Lflix/com/vision/models/Drama;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/16 v2, 0x50

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget-object v1, v1, Lflix/com/vision/App;->r:LP4/e;

    .line 36
    .line 37
    iget-object v4, v0, Lflix/com/vision/activities/DramaDetailActivity;->t:Lflix/com/vision/models/Drama;

    .line 38
    .line 39
    invoke-virtual {v1, v4}, LP4/e;->addDramaToFavorites(Lflix/com/vision/models/Drama;)V

    .line 40
    .line 41
    .line 42
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const-string v4, "Added to your Drama List"

    .line 47
    .line 48
    invoke-static {v1, v4, v3, v2, p1}, LN4/a;->Success(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    :catch_0
    iget-object p1, v0, Lflix/com/vision/activities/DramaDetailActivity;->b:Landroid/widget/ImageView;

    .line 52
    .line 53
    sget v0, Lflix/com/vision/R$drawable;->ic_delete_bookmark:I

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    iget-object v1, v1, Lflix/com/vision/App;->r:LP4/e;

    .line 64
    .line 65
    iget-object v4, v0, Lflix/com/vision/activities/DramaDetailActivity;->t:Lflix/com/vision/models/Drama;

    .line 66
    .line 67
    invoke-virtual {v1, v4}, LP4/e;->deletDramaFromFavorites(Lflix/com/vision/models/Drama;)V

    .line 68
    .line 69
    .line 70
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    const-string v4, "Removed from your list"

    .line 75
    .line 76
    invoke-static {v1, v4, v3, v2, p1}, LN4/a;->Success(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 77
    .line 78
    .line 79
    :catch_1
    iget-object p1, v0, Lflix/com/vision/activities/DramaDetailActivity;->b:Landroid/widget/ImageView;

    .line 80
    .line 81
    sget v0, Lflix/com/vision/R$drawable;->ic_bookmark:I

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    .line 85
    .line 86
    :goto_0
    return-void

    .line 87
    :pswitch_0
    sget v1, Lflix/com/vision/activities/DramaDetailActivity;->A:I

    .line 88
    .line 89
    invoke-virtual {v0, p1}, Lflix/com/vision/activities/DramaDetailActivity;->openEpisode(I)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
