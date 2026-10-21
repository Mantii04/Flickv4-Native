.class public final Lcom/google/android/material/datepicker/MaterialCalendar;
.super Lcom/google/android/material/datepicker/I;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/material/datepicker/I;"
    }
.end annotation


# instance fields
.field public g0:I

.field public h0:Lcom/google/android/material/datepicker/d;

.field public i0:Lcom/google/android/material/datepicker/C;

.field public j0:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

.field public k0:Lcom/google/android/material/datepicker/f;

.field public l0:Landroidx/recyclerview/widget/RecyclerView;

.field public m0:Landroidx/recyclerview/widget/RecyclerView;

.field public n0:Landroid/view/View;

.field public o0:Landroid/view/View;

.field public p0:Landroid/view/View;

.field public q0:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/datepicker/I;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static newInstance(Lcom/google/android/material/datepicker/g;ILcom/google/android/material/datepicker/d;Lcom/google/android/material/datepicker/j;)Lcom/google/android/material/datepicker/MaterialCalendar;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/material/datepicker/g;",
            "I",
            "Lcom/google/android/material/datepicker/d;",
            "Lcom/google/android/material/datepicker/j;",
            ")",
            "Lcom/google/android/material/datepicker/MaterialCalendar<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/material/datepicker/MaterialCalendar;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "THEME_RES_ID_KEY"

    .line 12
    .line 13
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    const-string p1, "GRID_SELECTOR_KEY"

    .line 17
    .line 18
    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 19
    .line 20
    .line 21
    const-string p0, "CALENDAR_CONSTRAINTS_KEY"

    .line 22
    .line 23
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 24
    .line 25
    .line 26
    const-string p0, "DAY_VIEW_DECORATOR_KEY"

    .line 27
    .line 28
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p2, Lcom/google/android/material/datepicker/d;->j:Lcom/google/android/material/datepicker/C;

    .line 32
    .line 33
    const-string p1, "CURRENT_MONTH_KEY"

    .line 34
    .line 35
    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroidx/fragment/app/C;->setArguments(Landroid/os/Bundle;)V

    .line 39
    .line 40
    .line 41
    return-object v0
.end method


# virtual methods
.method public getDateSelector()Lcom/google/android/material/datepicker/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/datepicker/g;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final i(Lcom/google/android/material/datepicker/C;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->m0:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lm1/V;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/material/datepicker/G;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/google/android/material/datepicker/G;->d:Lcom/google/android/material/datepicker/d;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/google/android/material/datepicker/d;->b:Lcom/google/android/material/datepicker/C;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Lcom/google/android/material/datepicker/C;->f(Lcom/google/android/material/datepicker/C;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget-object v2, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->i0:Lcom/google/android/material/datepicker/C;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/google/android/material/datepicker/G;->d:Lcom/google/android/material/datepicker/d;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/google/android/material/datepicker/d;->b:Lcom/google/android/material/datepicker/C;

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Lcom/google/android/material/datepicker/C;->f(Lcom/google/android/material/datepicker/C;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    sub-int v0, v1, v0

    .line 28
    .line 29
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/4 v3, 0x3

    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v5, 0x1

    .line 36
    if-le v2, v3, :cond_0

    .line 37
    .line 38
    move v2, v5

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move v2, v4

    .line 41
    :goto_0
    if-lez v0, :cond_1

    .line 42
    .line 43
    move v4, v5

    .line 44
    :cond_1
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->i0:Lcom/google/android/material/datepicker/C;

    .line 45
    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    if-eqz v4, :cond_2

    .line 49
    .line 50
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->m0:Landroidx/recyclerview/widget/RecyclerView;

    .line 51
    .line 52
    add-int/lit8 v0, v1, -0x3

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->m0:Landroidx/recyclerview/widget/RecyclerView;

    .line 58
    .line 59
    new-instance v0, Lcom/google/android/material/datepicker/m;

    .line 60
    .line 61
    invoke-direct {v0, p0, v1}, Lcom/google/android/material/datepicker/m;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_2
    if-eqz v2, :cond_3

    .line 69
    .line 70
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->m0:Landroidx/recyclerview/widget/RecyclerView;

    .line 71
    .line 72
    add-int/lit8 v0, v1, 0x3

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->m0:Landroidx/recyclerview/widget/RecyclerView;

    .line 78
    .line 79
    new-instance v0, Lcom/google/android/material/datepicker/m;

    .line 80
    .line 81
    invoke-direct {v0, p0, v1}, Lcom/google/android/material/datepicker/m;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_3
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->m0:Landroidx/recyclerview/widget/RecyclerView;

    .line 89
    .line 90
    new-instance v0, Lcom/google/android/material/datepicker/m;

    .line 91
    .line 92
    invoke-direct {v0, p0, v1}, Lcom/google/android/material/datepicker/m;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public final j(Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->j0:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    .line 2
    .line 3
    sget-object v0, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->e:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->l0:Landroidx/recyclerview/widget/RecyclerView;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lm1/i0;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->l0:Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lm1/V;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/google/android/material/datepicker/O;

    .line 23
    .line 24
    iget-object v3, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->i0:Lcom/google/android/material/datepicker/C;

    .line 25
    .line 26
    iget v3, v3, Lcom/google/android/material/datepicker/C;->f:I

    .line 27
    .line 28
    iget-object v0, v0, Lcom/google/android/material/datepicker/O;->d:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/google/android/material/datepicker/MaterialCalendar;->h0:Lcom/google/android/material/datepicker/d;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/google/android/material/datepicker/d;->b:Lcom/google/android/material/datepicker/C;

    .line 33
    .line 34
    iget v0, v0, Lcom/google/android/material/datepicker/C;->f:I

    .line 35
    .line 36
    sub-int/2addr v3, v0

    .line 37
    invoke-virtual {p1, v3}, Lm1/i0;->scrollToPosition(I)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->p0:Landroid/view/View;

    .line 41
    .line 42
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->q0:Landroid/view/View;

    .line 46
    .line 47
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->n0:Landroid/view/View;

    .line 51
    .line 52
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->o0:Landroid/view/View;

    .line 56
    .line 57
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_0
    sget-object v0, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->b:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    .line 62
    .line 63
    if-ne p1, v0, :cond_1

    .line 64
    .line 65
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->p0:Landroid/view/View;

    .line 66
    .line 67
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->q0:Landroid/view/View;

    .line 71
    .line 72
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->n0:Landroid/view/View;

    .line 76
    .line 77
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->o0:Landroid/view/View;

    .line 81
    .line 82
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->i0:Lcom/google/android/material/datepicker/C;

    .line 86
    .line 87
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendar;->i(Lcom/google/android/material/datepicker/C;)V

    .line 88
    .line 89
    .line 90
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/C;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/C;->getArguments()Landroid/os/Bundle;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :cond_0
    const-string v0, "THEME_RES_ID_KEY"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->g0:I

    .line 17
    .line 18
    const-string v0, "GRID_SELECTOR_KEY"

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/google/android/material/datepicker/d;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->h0:Lcom/google/android/material/datepicker/d;

    .line 35
    .line 36
    const-string v0, "DAY_VIEW_DECORATOR_KEY"

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    const-string v0, "CURRENT_MONTH_KEY"

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Lcom/google/android/material/datepicker/C;

    .line 51
    .line 52
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->i0:Lcom/google/android/material/datepicker/C;

    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    new-instance p1, Ljava/lang/ClassCastException;

    .line 56
    .line 57
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 58
    .line 59
    .line 60
    throw p1

    .line 61
    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    .line 62
    .line 63
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 64
    .line 65
    .line 66
    throw p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    .line 1
    new-instance p3, Landroid/view/ContextThemeWrapper;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/C;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->g0:I

    .line 8
    .line 9
    invoke-direct {p3, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/google/android/material/datepicker/f;

    .line 13
    .line 14
    invoke-direct {v0, p3}, Lcom/google/android/material/datepicker/f;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->k0:Lcom/google/android/material/datepicker/f;

    .line 18
    .line 19
    invoke-virtual {p1, p3}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->h0:Lcom/google/android/material/datepicker/d;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/google/android/material/datepicker/d;->b:Lcom/google/android/material/datepicker/C;

    .line 26
    .line 27
    const v1, 0x101020d

    .line 28
    .line 29
    .line 30
    invoke-static {p3, v1}, Lcom/google/android/material/datepicker/y;->l(Landroid/content/Context;I)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    const/4 v3, 0x0

    .line 35
    const/4 v4, 0x1

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    sget v2, Lcom/google/android/material/R$layout;->mtrl_calendar_vertical:I

    .line 39
    .line 40
    move v5, v4

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    sget v2, Lcom/google/android/material/R$layout;->mtrl_calendar_horizontal:I

    .line 43
    .line 44
    move v5, v3

    .line 45
    :goto_0
    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/C;->requireContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    sget v2, Lcom/google/android/material/R$dimen;->mtrl_calendar_navigation_height:I

    .line 58
    .line 59
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    sget v6, Lcom/google/android/material/R$dimen;->mtrl_calendar_navigation_top_padding:I

    .line 64
    .line 65
    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    add-int/2addr v6, v2

    .line 70
    sget v2, Lcom/google/android/material/R$dimen;->mtrl_calendar_navigation_bottom_padding:I

    .line 71
    .line 72
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    add-int/2addr v2, v6

    .line 77
    sget v6, Lcom/google/android/material/R$dimen;->mtrl_calendar_days_of_week_height:I

    .line 78
    .line 79
    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    sget v7, Lcom/google/android/material/datepicker/D;->j:I

    .line 84
    .line 85
    sget v8, Lcom/google/android/material/R$dimen;->mtrl_calendar_day_height:I

    .line 86
    .line 87
    invoke-virtual {p2, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 88
    .line 89
    .line 90
    move-result v8

    .line 91
    mul-int/2addr v8, v7

    .line 92
    sub-int/2addr v7, v4

    .line 93
    sget v9, Lcom/google/android/material/R$dimen;->mtrl_calendar_month_vertical_padding:I

    .line 94
    .line 95
    invoke-virtual {p2, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 96
    .line 97
    .line 98
    move-result v9

    .line 99
    mul-int/2addr v9, v7

    .line 100
    add-int/2addr v9, v8

    .line 101
    sget v7, Lcom/google/android/material/R$dimen;->mtrl_calendar_bottom_padding:I

    .line 102
    .line 103
    invoke-virtual {p2, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    add-int/2addr v2, v6

    .line 108
    add-int/2addr v2, v9

    .line 109
    add-int/2addr v2, p2

    .line 110
    invoke-virtual {p1, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 111
    .line 112
    .line 113
    sget p2, Lcom/google/android/material/R$id;->mtrl_calendar_days_of_week:I

    .line 114
    .line 115
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    check-cast p2, Landroid/widget/GridView;

    .line 120
    .line 121
    new-instance v2, Lcom/google/android/material/datepicker/n;

    .line 122
    .line 123
    invoke-direct {v2}, LM/b;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-static {p2, v2}, LM/p0;->setAccessibilityDelegate(Landroid/view/View;LM/b;)V

    .line 127
    .line 128
    .line 129
    iget-object v2, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->h0:Lcom/google/android/material/datepicker/d;

    .line 130
    .line 131
    iget v2, v2, Lcom/google/android/material/datepicker/d;->m:I

    .line 132
    .line 133
    new-instance v6, Lcom/google/android/material/datepicker/k;

    .line 134
    .line 135
    if-lez v2, :cond_1

    .line 136
    .line 137
    invoke-direct {v6, v2}, Lcom/google/android/material/datepicker/k;-><init>(I)V

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_1
    invoke-direct {v6}, Lcom/google/android/material/datepicker/k;-><init>()V

    .line 142
    .line 143
    .line 144
    :goto_1
    invoke-virtual {p2, v6}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 145
    .line 146
    .line 147
    iget v0, v0, Lcom/google/android/material/datepicker/C;->j:I

    .line 148
    .line 149
    invoke-virtual {p2, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 153
    .line 154
    .line 155
    sget p2, Lcom/google/android/material/R$id;->mtrl_calendar_months:I

    .line 156
    .line 157
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 162
    .line 163
    iput-object p2, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->m0:Landroidx/recyclerview/widget/RecyclerView;

    .line 164
    .line 165
    new-instance p2, Lcom/google/android/material/datepicker/o;

    .line 166
    .line 167
    invoke-virtual {p0}, Landroidx/fragment/app/C;->getContext()Landroid/content/Context;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-direct {p2, p0, v0, v5, v5}, Lcom/google/android/material/datepicker/o;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;Landroid/content/Context;II)V

    .line 172
    .line 173
    .line 174
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->m0:Landroidx/recyclerview/widget/RecyclerView;

    .line 175
    .line 176
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 177
    .line 178
    .line 179
    iget-object p2, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->m0:Landroidx/recyclerview/widget/RecyclerView;

    .line 180
    .line 181
    const-string v0, "MONTHS_VIEW_GROUP_TAG"

    .line 182
    .line 183
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    new-instance p2, Lcom/google/android/material/datepicker/G;

    .line 187
    .line 188
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->h0:Lcom/google/android/material/datepicker/d;

    .line 189
    .line 190
    new-instance v2, Lcom/google/android/material/datepicker/p;

    .line 191
    .line 192
    invoke-direct {v2, p0}, Lcom/google/android/material/datepicker/p;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V

    .line 193
    .line 194
    .line 195
    invoke-direct {p2, p3, v0, v2}, Lcom/google/android/material/datepicker/G;-><init>(Landroid/view/ContextThemeWrapper;Lcom/google/android/material/datepicker/d;Lcom/google/android/material/datepicker/p;)V

    .line 196
    .line 197
    .line 198
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->m0:Landroidx/recyclerview/widget/RecyclerView;

    .line 199
    .line 200
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lm1/V;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    sget v2, Lcom/google/android/material/R$integer;->mtrl_calendar_year_selector_span:I

    .line 208
    .line 209
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    sget v2, Lcom/google/android/material/R$id;->mtrl_calendar_year_selector_frame:I

    .line 214
    .line 215
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 220
    .line 221
    iput-object v2, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->l0:Landroidx/recyclerview/widget/RecyclerView;

    .line 222
    .line 223
    if-eqz v2, :cond_2

    .line 224
    .line 225
    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 226
    .line 227
    .line 228
    iget-object v2, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->l0:Landroidx/recyclerview/widget/RecyclerView;

    .line 229
    .line 230
    new-instance v5, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 231
    .line 232
    invoke-direct {v5, p3, v0, v4, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 236
    .line 237
    .line 238
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->l0:Landroidx/recyclerview/widget/RecyclerView;

    .line 239
    .line 240
    new-instance v2, Lcom/google/android/material/datepicker/O;

    .line 241
    .line 242
    invoke-direct {v2, p0}, Lcom/google/android/material/datepicker/O;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lm1/V;)V

    .line 246
    .line 247
    .line 248
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->l0:Landroidx/recyclerview/widget/RecyclerView;

    .line 249
    .line 250
    new-instance v2, Lcom/google/android/material/datepicker/r;

    .line 251
    .line 252
    invoke-direct {v2, p0}, Lcom/google/android/material/datepicker/r;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Lm1/d0;)V

    .line 256
    .line 257
    .line 258
    :cond_2
    sget v0, Lcom/google/android/material/R$id;->month_navigation_fragment_toggle:I

    .line 259
    .line 260
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    if-eqz v0, :cond_3

    .line 265
    .line 266
    sget v0, Lcom/google/android/material/R$id;->month_navigation_fragment_toggle:I

    .line 267
    .line 268
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 273
    .line 274
    const-string v2, "SELECTOR_TOGGLE_TAG"

    .line 275
    .line 276
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    new-instance v2, Lcom/google/android/material/datepicker/s;

    .line 280
    .line 281
    invoke-direct {v2, p0}, Lcom/google/android/material/datepicker/s;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V

    .line 282
    .line 283
    .line 284
    invoke-static {v0, v2}, LM/p0;->setAccessibilityDelegate(Landroid/view/View;LM/b;)V

    .line 285
    .line 286
    .line 287
    sget v2, Lcom/google/android/material/R$id;->month_navigation_previous:I

    .line 288
    .line 289
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    iput-object v2, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->n0:Landroid/view/View;

    .line 294
    .line 295
    const-string v3, "NAVIGATION_PREV_TAG"

    .line 296
    .line 297
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 298
    .line 299
    .line 300
    sget v2, Lcom/google/android/material/R$id;->month_navigation_next:I

    .line 301
    .line 302
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    iput-object v2, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->o0:Landroid/view/View;

    .line 307
    .line 308
    const-string v3, "NAVIGATION_NEXT_TAG"

    .line 309
    .line 310
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 311
    .line 312
    .line 313
    sget v2, Lcom/google/android/material/R$id;->mtrl_calendar_year_selector_frame:I

    .line 314
    .line 315
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    iput-object v2, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->p0:Landroid/view/View;

    .line 320
    .line 321
    sget v2, Lcom/google/android/material/R$id;->mtrl_calendar_day_selector_frame:I

    .line 322
    .line 323
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    iput-object v2, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->q0:Landroid/view/View;

    .line 328
    .line 329
    sget-object v2, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->b:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    .line 330
    .line 331
    invoke-virtual {p0, v2}, Lcom/google/android/material/datepicker/MaterialCalendar;->j(Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;)V

    .line 332
    .line 333
    .line 334
    iget-object v2, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->i0:Lcom/google/android/material/datepicker/C;

    .line 335
    .line 336
    invoke-virtual {v2}, Lcom/google/android/material/datepicker/C;->e()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v2

    .line 340
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    .line 342
    .line 343
    iget-object v2, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->m0:Landroidx/recyclerview/widget/RecyclerView;

    .line 344
    .line 345
    new-instance v3, Lcom/google/android/material/datepicker/t;

    .line 346
    .line 347
    invoke-direct {v3, p0, p2, v0}, Lcom/google/android/material/datepicker/t;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;Lcom/google/android/material/datepicker/G;Lcom/google/android/material/button/MaterialButton;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Lm1/m0;)V

    .line 351
    .line 352
    .line 353
    new-instance v2, Lcom/google/android/material/datepicker/u;

    .line 354
    .line 355
    invoke-direct {v2, p0}, Lcom/google/android/material/datepicker/u;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    .line 360
    .line 361
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->o0:Landroid/view/View;

    .line 362
    .line 363
    new-instance v2, Lcom/google/android/material/datepicker/v;

    .line 364
    .line 365
    invoke-direct {v2, p0, p2}, Lcom/google/android/material/datepicker/v;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;Lcom/google/android/material/datepicker/G;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    .line 370
    .line 371
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->n0:Landroid/view/View;

    .line 372
    .line 373
    new-instance v2, Lcom/google/android/material/datepicker/l;

    .line 374
    .line 375
    invoke-direct {v2, p0, p2}, Lcom/google/android/material/datepicker/l;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;Lcom/google/android/material/datepicker/G;)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    .line 380
    .line 381
    :cond_3
    invoke-static {p3, v1}, Lcom/google/android/material/datepicker/y;->l(Landroid/content/Context;I)Z

    .line 382
    .line 383
    .line 384
    move-result p3

    .line 385
    if-nez p3, :cond_4

    .line 386
    .line 387
    new-instance p3, Lm1/N;

    .line 388
    .line 389
    invoke-direct {p3}, Lm1/N;-><init>()V

    .line 390
    .line 391
    .line 392
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->m0:Landroidx/recyclerview/widget/RecyclerView;

    .line 393
    .line 394
    invoke-virtual {p3, v0}, Lm1/G0;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 395
    .line 396
    .line 397
    :cond_4
    iget-object p3, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->m0:Landroidx/recyclerview/widget/RecyclerView;

    .line 398
    .line 399
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->i0:Lcom/google/android/material/datepicker/C;

    .line 400
    .line 401
    iget-object p2, p2, Lcom/google/android/material/datepicker/G;->d:Lcom/google/android/material/datepicker/d;

    .line 402
    .line 403
    iget-object p2, p2, Lcom/google/android/material/datepicker/d;->b:Lcom/google/android/material/datepicker/C;

    .line 404
    .line 405
    invoke-virtual {p2, v0}, Lcom/google/android/material/datepicker/C;->f(Lcom/google/android/material/datepicker/C;)I

    .line 406
    .line 407
    .line 408
    move-result p2

    .line 409
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 410
    .line 411
    .line 412
    iget-object p2, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->m0:Landroidx/recyclerview/widget/RecyclerView;

    .line 413
    .line 414
    new-instance p3, Lcom/google/android/material/datepicker/q;

    .line 415
    .line 416
    invoke-direct {p3}, LM/b;-><init>()V

    .line 417
    .line 418
    .line 419
    invoke-static {p2, p3}, LM/p0;->setAccessibilityDelegate(Landroid/view/View;LM/b;)V

    .line 420
    .line 421
    .line 422
    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/C;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "THEME_RES_ID_KEY"

    .line 5
    .line 6
    iget v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->g0:I

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    const-string v0, "GRID_SELECTOR_KEY"

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 15
    .line 16
    .line 17
    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    .line 18
    .line 19
    iget-object v2, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->h0:Lcom/google/android/material/datepicker/d;

    .line 20
    .line 21
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 22
    .line 23
    .line 24
    const-string v0, "DAY_VIEW_DECORATOR_KEY"

    .line 25
    .line 26
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 27
    .line 28
    .line 29
    const-string v0, "CURRENT_MONTH_KEY"

    .line 30
    .line 31
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->i0:Lcom/google/android/material/datepicker/C;

    .line 32
    .line 33
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
