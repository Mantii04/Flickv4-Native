.class Lflix/com/vision/materialsearchview/adapters/CursorSearchAdapter$ListViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflix/com/vision/materialsearchview/adapters/CursorSearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListViewHolder"
.end annotation


# instance fields
.field public final a:Landroid/widget/ImageView;

.field public final b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lflix/com/vision/materialsearchview/adapters/CursorSearchAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget p1, Lflix/com/vision/R$id;->iv_icon:I

    .line 5
    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroid/widget/ImageView;

    .line 11
    .line 12
    iput-object p1, p0, Lflix/com/vision/materialsearchview/adapters/CursorSearchAdapter$ListViewHolder;->a:Landroid/widget/ImageView;

    .line 13
    .line 14
    sget p1, Lflix/com/vision/R$id;->tv_str:I

    .line 15
    .line 16
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroid/widget/TextView;

    .line 21
    .line 22
    iput-object p1, p0, Lflix/com/vision/materialsearchview/adapters/CursorSearchAdapter$ListViewHolder;->b:Landroid/widget/TextView;

    .line 23
    .line 24
    return-void
.end method
