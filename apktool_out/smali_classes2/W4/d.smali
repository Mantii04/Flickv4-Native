.class public final LW4/d;
.super Landroidx/leanback/widget/A0;
.source "SourceFile"


# instance fields
.field public final b:Landroid/widget/ImageView;

.field public final c:Landroid/widget/ImageView;

.field public final d:Landroid/widget/ImageView;

.field public final e:Landroid/view/View;

.field public f:Lflix/com/vision/models/tmdb/Network;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/leanback/widget/A0;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LW4/d;->e:Landroid/view/View;

    .line 5
    .line 6
    sget v0, Lflix/com/vision/R$id;->poster_image:I

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/widget/ImageView;

    .line 13
    .line 14
    iput-object v0, p0, LW4/d;->b:Landroid/widget/ImageView;

    .line 15
    .line 16
    sget v0, Lflix/com/vision/R$id;->arrow_left:I

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/ImageView;

    .line 23
    .line 24
    iput-object v0, p0, LW4/d;->c:Landroid/widget/ImageView;

    .line 25
    .line 26
    sget v0, Lflix/com/vision/R$id;->arrow_right:I

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Landroid/widget/ImageView;

    .line 33
    .line 34
    iput-object p1, p0, LW4/d;->d:Landroid/widget/ImageView;

    .line 35
    .line 36
    return-void
.end method
