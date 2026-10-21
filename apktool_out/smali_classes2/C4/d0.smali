.class public final LC4/d0;
.super Lm1/B0;
.source "SourceFile"


# instance fields
.field public u:Lflix/com/vision/models/HistoryTVLink;

.field public final v:Landroid/widget/ImageButton;

.field public final w:Landroid/view/View;

.field public final x:Landroid/widget/TextView;

.field public final y:Landroid/widget/TextView;

.field public final z:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(LC4/e0;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lm1/B0;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, LC4/d0;->w:Landroid/view/View;

    .line 5
    .line 6
    sget p1, Lflix/com/vision/R$id;->item_histoty_name:I

    .line 7
    .line 8
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Landroid/widget/TextView;

    .line 13
    .line 14
    iput-object p1, p0, LC4/d0;->x:Landroid/widget/TextView;

    .line 15
    .line 16
    sget p1, Lflix/com/vision/R$id;->item_histoty_url:I

    .line 17
    .line 18
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/widget/TextView;

    .line 23
    .line 24
    iput-object p1, p0, LC4/d0;->y:Landroid/widget/TextView;

    .line 25
    .line 26
    sget p1, Lflix/com/vision/R$id;->option_button:I

    .line 27
    .line 28
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Landroid/widget/ImageButton;

    .line 33
    .line 34
    iput-object p1, p0, LC4/d0;->v:Landroid/widget/ImageButton;

    .line 35
    .line 36
    sget p1, Lflix/com/vision/R$id;->url_icon:I

    .line 37
    .line 38
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Landroid/widget/ImageView;

    .line 43
    .line 44
    iput-object p1, p0, LC4/d0;->z:Landroid/widget/ImageView;

    .line 45
    .line 46
    return-void
.end method
