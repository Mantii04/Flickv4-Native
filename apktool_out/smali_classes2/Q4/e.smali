.class public LQ4/e;
.super Landroid/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements LU4/k;


# static fields
.field public static j:I

.field public static m:Landroid/app/Activity;


# instance fields
.field public b:Landroidx/recyclerview/widget/RecyclerView;

.field public e:Ljava/util/ArrayList;

.field public f:LU4/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static newInstance(Landroid/app/Activity;LU4/k;Ljava/util/ArrayList;I)LQ4/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "LU4/k;",
            "Ljava/util/ArrayList<",
            "Lflix/com/vision/models/Season;",
            ">;I)",
            "LQ4/e;"
        }
    .end annotation

    .line 1
    new-instance v0, LQ4/e;

    .line 2
    .line 3
    invoke-direct {v0}, LQ4/e;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object p0, LQ4/e;->m:Landroid/app/Activity;

    .line 7
    .line 8
    sput p3, LQ4/e;->j:I

    .line 9
    .line 10
    iput-object p1, v0, LQ4/e;->f:LU4/k;

    .line 11
    .line 12
    iput-object p2, v0, LQ4/e;->e:Ljava/util/ArrayList;

    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 1
    sget p3, Lflix/com/vision/R$layout;->seasons_dialog_fragment:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    const/4 p3, 0x1

    .line 17
    invoke-virtual {p2, p3}, Landroid/view/Window;->requestFeature(I)Z

    .line 18
    .line 19
    .line 20
    sget p2, Lflix/com/vision/R$id;->recyclerview_seasons:I

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 27
    .line 28
    iput-object p2, p0, LQ4/e;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 29
    .line 30
    const/16 v1, 0x12

    .line 31
    .line 32
    invoke-static {p2, v1}, Lb/c;->s(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 33
    .line 34
    .line 35
    iget-object p2, p0, LQ4/e;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 36
    .line 37
    new-instance v1, Lflix/com/vision/helpers/CenterLayoutManager;

    .line 38
    .line 39
    sget-object v2, LQ4/e;->m:Landroid/app/Activity;

    .line 40
    .line 41
    invoke-direct {v1, v2, p3, v0}, Lflix/com/vision/helpers/CenterLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 45
    .line 46
    .line 47
    new-instance p2, LC4/Z;

    .line 48
    .line 49
    sget-object v0, LQ4/e;->m:Landroid/app/Activity;

    .line 50
    .line 51
    check-cast v0, Lflix/com/vision/activities/SeriesDetailActivity;

    .line 52
    .line 53
    iget-object v1, p0, LQ4/e;->e:Ljava/util/ArrayList;

    .line 54
    .line 55
    sget v2, LQ4/e;->j:I

    .line 56
    .line 57
    invoke-direct {p2, v0, p0, v1, v2}, LC4/Z;-><init>(Landroid/app/Activity;LU4/k;Ljava/util/ArrayList;I)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, LQ4/e;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 61
    .line 62
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lm1/V;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p3}, Landroid/app/DialogFragment;->setCancelable(Z)V

    .line 66
    .line 67
    .line 68
    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public openSeason(I)V
    .locals 1

    .line 1
    iget-object v0, p0, LQ4/e;->f:LU4/k;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, LU4/k;->openSeason(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
