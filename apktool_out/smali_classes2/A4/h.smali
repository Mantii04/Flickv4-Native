.class public final LA4/h;
.super Lm1/m0;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lflix/com/vision/activities/leanback/FilterActivityLeanBack;


# direct methods
.method public constructor <init>(Lflix/com/vision/activities/leanback/FilterActivityLeanBack;)V
    .locals 0

    .line 1
    iput-object p1, p0, LA4/h;->a:Lflix/com/vision/activities/leanback/FilterActivityLeanBack;

    .line 2
    .line 3
    invoke-direct {p0}, Lm1/m0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lm1/m0;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    .line 3
    .line 4
    if-lez p3, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, LA4/h;->a:Lflix/com/vision/activities/leanback/FilterActivityLeanBack;

    .line 7
    .line 8
    iget-object p2, p1, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->F:Landroidx/leanback/widget/VerticalGridView;

    .line 9
    .line 10
    invoke-virtual {p2}, Landroidx/leanback/widget/t;->getSelectedPosition()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    iget-object p3, p1, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->L:LC4/P;

    .line 15
    .line 16
    invoke-virtual {p3}, LC4/P;->getItemCount()I

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    iget-boolean v0, p1, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->B:Z

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    iget v0, p1, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->N:I

    .line 25
    .line 26
    mul-int/lit8 v0, v0, 0x2

    .line 27
    .line 28
    add-int/2addr v0, p2

    .line 29
    mul-int/lit8 v0, v0, 0x2

    .line 30
    .line 31
    if-gt p3, v0, :cond_0

    .line 32
    .line 33
    iget p2, p1, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->P:I

    .line 34
    .line 35
    const/4 p3, 0x1

    .line 36
    add-int/2addr p2, p3

    .line 37
    iput p2, p1, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->P:I

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->d(I)V

    .line 40
    .line 41
    .line 42
    iput-boolean p3, p1, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->B:Z

    .line 43
    .line 44
    :cond_0
    return-void
.end method
