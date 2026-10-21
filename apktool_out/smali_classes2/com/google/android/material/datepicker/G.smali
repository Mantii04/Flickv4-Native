.class public final Lcom/google/android/material/datepicker/G;
.super Lm1/V;
.source "SourceFile"


# instance fields
.field public final d:Lcom/google/android/material/datepicker/d;

.field public final e:Lcom/google/android/material/datepicker/p;

.field public final f:I


# direct methods
.method public constructor <init>(Landroid/view/ContextThemeWrapper;Lcom/google/android/material/datepicker/d;Lcom/google/android/material/datepicker/p;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lm1/V;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p2, Lcom/google/android/material/datepicker/d;->b:Lcom/google/android/material/datepicker/C;

    .line 5
    .line 6
    iget-object v1, p2, Lcom/google/android/material/datepicker/d;->j:Lcom/google/android/material/datepicker/C;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/C;->compareTo(Lcom/google/android/material/datepicker/C;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-gtz v0, :cond_2

    .line 13
    .line 14
    iget-object v0, p2, Lcom/google/android/material/datepicker/d;->e:Lcom/google/android/material/datepicker/C;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Lcom/google/android/material/datepicker/C;->compareTo(Lcom/google/android/material/datepicker/C;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-gtz v0, :cond_1

    .line 21
    .line 22
    sget v0, Lcom/google/android/material/datepicker/D;->j:I

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    sget v2, Lcom/google/android/material/R$dimen;->mtrl_calendar_day_height:I

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    mul-int/2addr v1, v0

    .line 35
    const v0, 0x101020d

    .line 36
    .line 37
    .line 38
    invoke-static {p1, v0}, Lcom/google/android/material/datepicker/y;->l(Landroid/content/Context;I)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_calendar_day_height:I

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/4 p1, 0x0

    .line 56
    :goto_0
    add-int/2addr v1, p1

    .line 57
    iput v1, p0, Lcom/google/android/material/datepicker/G;->f:I

    .line 58
    .line 59
    iput-object p2, p0, Lcom/google/android/material/datepicker/G;->d:Lcom/google/android/material/datepicker/d;

    .line 60
    .line 61
    iput-object p3, p0, Lcom/google/android/material/datepicker/G;->e:Lcom/google/android/material/datepicker/p;

    .line 62
    .line 63
    const/4 p1, 0x1

    .line 64
    invoke-virtual {p0, p1}, Lm1/V;->setHasStableIds(Z)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 69
    .line 70
    const-string p2, "currentPage cannot be after lastPage"

    .line 71
    .line 72
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p1

    .line 76
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 77
    .line 78
    const-string p2, "firstPage cannot be after currentPage"

    .line 79
    .line 80
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p1
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/G;->d:Lcom/google/android/material/datepicker/d;

    .line 2
    .line 3
    iget v0, v0, Lcom/google/android/material/datepicker/d;->p:I

    .line 4
    .line 5
    return v0
.end method

.method public getItemId(I)J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/G;->d:Lcom/google/android/material/datepicker/d;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/material/datepicker/d;->b:Lcom/google/android/material/datepicker/C;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/android/material/datepicker/C;->b:Ljava/util/Calendar;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/google/android/material/datepicker/M;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x2

    .line 12
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x5

    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-virtual {v0, p1, v2}, Ljava/util/Calendar;->set(II)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lcom/google/android/material/datepicker/M;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x7

    .line 31
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMaximum(I)I

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->getActualMaximum(I)I

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    return-wide v0
.end method

.method public onBindViewHolder(Lcom/google/android/material/datepicker/F;I)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/material/datepicker/G;->d:Lcom/google/android/material/datepicker/d;

    iget-object v1, v0, Lcom/google/android/material/datepicker/d;->b:Lcom/google/android/material/datepicker/C;

    .line 3
    iget-object v1, v1, Lcom/google/android/material/datepicker/C;->b:Ljava/util/Calendar;

    .line 4
    invoke-static {v1}, Lcom/google/android/material/datepicker/M;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x2

    .line 5
    invoke-virtual {v1, v2, p2}, Ljava/util/Calendar;->add(II)V

    .line 6
    new-instance p2, Lcom/google/android/material/datepicker/C;

    invoke-direct {p2, v1}, Lcom/google/android/material/datepicker/C;-><init>(Ljava/util/Calendar;)V

    .line 7
    iget-object v1, p1, Lcom/google/android/material/datepicker/F;->u:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/google/android/material/datepicker/C;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p1, Lcom/google/android/material/datepicker/F;->v:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    sget v1, Lcom/google/android/material/R$id;->month_grid:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/D;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/D;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/material/datepicker/D;->b:Lcom/google/android/material/datepicker/C;

    invoke-virtual {p2, v1}, Lcom/google/android/material/datepicker/C;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 11
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/D;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/material/datepicker/D;->updateSelectedStates(Lcom/google/android/material/datepicker/MaterialCalendarGridView;)V

    .line 12
    new-instance p2, Lcom/google/android/material/datepicker/E;

    invoke-direct {p2, p0, p1}, Lcom/google/android/material/datepicker/E;-><init>(Lcom/google/android/material/datepicker/G;Lcom/google/android/material/datepicker/MaterialCalendarGridView;)V

    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    .line 13
    :cond_0
    new-instance p1, Lcom/google/android/material/datepicker/D;

    invoke-direct {p1, p2, v0}, Lcom/google/android/material/datepicker/D;-><init>(Lcom/google/android/material/datepicker/C;Lcom/google/android/material/datepicker/d;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public bridge synthetic onBindViewHolder(Lm1/B0;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/material/datepicker/F;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/datepicker/G;->onBindViewHolder(Lcom/google/android/material/datepicker/F;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/android/material/datepicker/F;
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/google/android/material/R$layout;->mtrl_calendar_month_labeled:I

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x101020d

    .line 5
    invoke-static {p1, v0}, Lcom/google/android/material/datepicker/y;->l(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    new-instance p1, Lm1/j0;

    const/4 v0, -0x1

    iget v1, p0, Lcom/google/android/material/datepicker/G;->f:I

    invoke-direct {p1, v0, v1}, Lm1/j0;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    new-instance p1, Lcom/google/android/material/datepicker/F;

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Lcom/google/android/material/datepicker/F;-><init>(Landroid/widget/LinearLayout;Z)V

    return-object p1

    .line 8
    :cond_0
    new-instance p1, Lcom/google/android/material/datepicker/F;

    invoke-direct {p1, p2, v1}, Lcom/google/android/material/datepicker/F;-><init>(Landroid/widget/LinearLayout;Z)V

    return-object p1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lm1/B0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/datepicker/G;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/android/material/datepicker/F;

    move-result-object p1

    return-object p1
.end method
