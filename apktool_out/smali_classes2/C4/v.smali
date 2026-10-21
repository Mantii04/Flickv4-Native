.class public final LC4/v;
.super Lm1/B0;
.source "SourceFile"


# instance fields
.field public u:Lflix/com/vision/models/ColorItem;

.field public final v:Landroid/widget/ImageView;

.field public final w:Landroid/widget/RelativeLayout;

.field public final x:Landroid/view/View;

.field public final y:Landroid/view/View;


# direct methods
.method public constructor <init>(LC4/w;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lm1/B0;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, LC4/v;->x:Landroid/view/View;

    .line 5
    .line 6
    sget p1, Lflix/com/vision/R$id;->color_view:I

    .line 7
    .line 8
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, LC4/v;->y:Landroid/view/View;

    .line 13
    .line 14
    sget p1, Lflix/com/vision/R$id;->check_icon:I

    .line 15
    .line 16
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroid/widget/ImageView;

    .line 21
    .line 22
    iput-object p1, p0, LC4/v;->v:Landroid/widget/ImageView;

    .line 23
    .line 24
    sget p1, Lflix/com/vision/R$id;->image_back:I

    .line 25
    .line 26
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 31
    .line 32
    iput-object p1, p0, LC4/v;->w:Landroid/widget/RelativeLayout;

    .line 33
    .line 34
    return-void
.end method
