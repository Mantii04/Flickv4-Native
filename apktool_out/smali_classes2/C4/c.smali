.class public final LC4/c;
.super Lm1/B0;
.source "SourceFile"


# instance fields
.field public u:Lflix/com/vision/models/adult/AdultCategory;

.field public final v:Landroid/widget/LinearLayout;

.field public final w:Landroid/widget/TextView;

.field public final x:Landroid/view/View;

.field public final y:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(LC4/d;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lm1/B0;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, LC4/c;->x:Landroid/view/View;

    .line 5
    .line 6
    sget p1, Lflix/com/vision/R$id;->adult_category_title:I

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
    iput-object p1, p0, LC4/c;->w:Landroid/widget/TextView;

    .line 15
    .line 16
    sget p1, Lflix/com/vision/R$id;->adult_cat_poster:I

    .line 17
    .line 18
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/widget/ImageView;

    .line 23
    .line 24
    iput-object p1, p0, LC4/c;->y:Landroid/widget/ImageView;

    .line 25
    .line 26
    sget p1, Lflix/com/vision/R$id;->item_background:I

    .line 27
    .line 28
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Landroid/widget/LinearLayout;

    .line 33
    .line 34
    iput-object p1, p0, LC4/c;->v:Landroid/widget/LinearLayout;

    .line 35
    .line 36
    return-void
.end method
