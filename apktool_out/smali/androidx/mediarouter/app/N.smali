.class public final Landroidx/mediarouter/app/N;
.super Lm1/B0;
.source "SourceFile"


# instance fields
.field public final u:Landroid/view/View;

.field public final v:Landroid/widget/ImageView;

.field public final w:Landroid/widget/ProgressBar;

.field public final x:Landroid/widget/TextView;

.field public final synthetic y:Landroidx/mediarouter/app/O;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/O;Landroid/view/View;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/N;->y:Landroidx/mediarouter/app/O;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lm1/B0;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Landroidx/mediarouter/app/N;->u:Landroid/view/View;

    .line 7
    .line 8
    sget v0, Landroidx/mediarouter/R$id;->mr_picker_route_icon:I

    .line 9
    .line 10
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/widget/ImageView;

    .line 15
    .line 16
    iput-object v0, p0, Landroidx/mediarouter/app/N;->v:Landroid/widget/ImageView;

    .line 17
    .line 18
    sget v0, Landroidx/mediarouter/R$id;->mr_picker_route_progress_bar:I

    .line 19
    .line 20
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/widget/ProgressBar;

    .line 25
    .line 26
    iput-object v0, p0, Landroidx/mediarouter/app/N;->w:Landroid/widget/ProgressBar;

    .line 27
    .line 28
    sget v1, Landroidx/mediarouter/R$id;->mr_picker_route_name:I

    .line 29
    .line 30
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    check-cast p2, Landroid/widget/TextView;

    .line 35
    .line 36
    iput-object p2, p0, Landroidx/mediarouter/app/N;->x:Landroid/widget/TextView;

    .line 37
    .line 38
    iget-object p1, p1, Landroidx/mediarouter/app/O;->j:Landroidx/mediarouter/app/Q;

    .line 39
    .line 40
    iget-object p1, p1, Landroidx/mediarouter/app/Q;->q:Landroid/content/Context;

    .line 41
    .line 42
    invoke-static {p1, v0}, Landroidx/mediarouter/app/o0;->i(Landroid/content/Context;Landroid/widget/ProgressBar;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public bindRouteView(Landroidx/mediarouter/app/L;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroidx/mediarouter/app/L;->getData()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lf1/U;

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/mediarouter/app/N;->u:Landroid/view/View;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Landroidx/mediarouter/app/N;->w:Landroid/widget/ProgressBar;

    .line 14
    .line 15
    const/4 v2, 0x4

    .line 16
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Landroidx/mediarouter/app/M;

    .line 20
    .line 21
    invoke-direct {v1, p0, p1}, Landroidx/mediarouter/app/M;-><init>(Landroidx/mediarouter/app/N;Lf1/U;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lf1/U;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Landroidx/mediarouter/app/N;->x:Landroid/widget/TextView;

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Landroidx/mediarouter/app/N;->y:Landroidx/mediarouter/app/O;

    .line 37
    .line 38
    invoke-virtual {p1}, Lf1/U;->getIconUri()Landroid/net/Uri;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    :try_start_0
    iget-object v2, v0, Landroidx/mediarouter/app/O;->j:Landroidx/mediarouter/app/Q;

    .line 45
    .line 46
    iget-object v2, v2, Landroidx/mediarouter/app/Q;->q:Landroid/content/Context;

    .line 47
    .line 48
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const/4 v3, 0x0

    .line 57
    invoke-static {v2, v3}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 58
    .line 59
    .line 60
    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    if-eqz v1, :cond_0

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catch_0
    move-exception v2

    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v4, "Failed to load "

    .line 68
    .line 69
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    const-string v3, "RecyclerAdapter"

    .line 80
    .line 81
    invoke-static {v3, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    .line 83
    .line 84
    :cond_0
    invoke-virtual {p1}, Lf1/U;->getDeviceType()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    const/4 v2, 0x1

    .line 89
    if-eq v1, v2, :cond_3

    .line 90
    .line 91
    const/4 v2, 0x2

    .line 92
    if-eq v1, v2, :cond_2

    .line 93
    .line 94
    invoke-virtual {p1}, Lf1/U;->isGroup()Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-eqz p1, :cond_1

    .line 99
    .line 100
    iget-object p1, v0, Landroidx/mediarouter/app/O;->i:Landroid/graphics/drawable/Drawable;

    .line 101
    .line 102
    :goto_0
    move-object v1, p1

    .line 103
    goto :goto_1

    .line 104
    :cond_1
    iget-object p1, v0, Landroidx/mediarouter/app/O;->f:Landroid/graphics/drawable/Drawable;

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_2
    iget-object p1, v0, Landroidx/mediarouter/app/O;->h:Landroid/graphics/drawable/Drawable;

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_3
    iget-object p1, v0, Landroidx/mediarouter/app/O;->g:Landroid/graphics/drawable/Drawable;

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :goto_1
    iget-object p1, p0, Landroidx/mediarouter/app/N;->v:Landroid/widget/ImageView;

    .line 114
    .line 115
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    .line 117
    .line 118
    return-void
.end method
