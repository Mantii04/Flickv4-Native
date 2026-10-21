.class public final LC4/C;
.super Lm1/B0;
.source "SourceFile"


# instance fields
.field public u:Lflix/com/vision/models/Episode;

.field public final v:Lme/grantland/widget/AutofitTextView;

.field public final w:Landroid/view/View;

.field public final x:Landroid/view/View;


# direct methods
.method public constructor <init>(LC4/D;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lm1/B0;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, LC4/C;->x:Landroid/view/View;

    .line 5
    .line 6
    sget p1, Lflix/com/vision/R$id;->rowTextView:I

    .line 7
    .line 8
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lme/grantland/widget/AutofitTextView;

    .line 13
    .line 14
    iput-object p1, p0, LC4/C;->v:Lme/grantland/widget/AutofitTextView;

    .line 15
    .line 16
    sget p1, Lflix/com/vision/R$id;->color_view:I

    .line 17
    .line 18
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, LC4/C;->w:Landroid/view/View;

    .line 23
    .line 24
    return-void
.end method
