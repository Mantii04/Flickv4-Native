.class public final LC4/Q;
.super Lm1/B0;
.source "SourceFile"


# instance fields
.field public u:Lflix/com/vision/models/tmdb/Network;

.field public final v:Landroid/view/View;

.field public final w:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(LC4/S;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lm1/B0;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, LC4/Q;->v:Landroid/view/View;

    .line 5
    .line 6
    sget p1, Lflix/com/vision/R$id;->network_image:I

    .line 7
    .line 8
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Landroid/widget/ImageView;

    .line 13
    .line 14
    iput-object p1, p0, LC4/Q;->w:Landroid/widget/ImageView;

    .line 15
    .line 16
    return-void
.end method
