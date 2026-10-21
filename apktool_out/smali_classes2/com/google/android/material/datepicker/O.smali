.class public final Lcom/google/android/material/datepicker/O;
.super Lm1/V;
.source "SourceFile"


# instance fields
.field public final d:Lcom/google/android/material/datepicker/MaterialCalendar;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lm1/V;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/material/datepicker/O;->d:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/O;->d:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/material/datepicker/MaterialCalendar;->h0:Lcom/google/android/material/datepicker/d;

    .line 4
    .line 5
    iget v0, v0, Lcom/google/android/material/datepicker/d;->n:I

    .line 6
    .line 7
    return v0
.end method

.method public onBindViewHolder(Lcom/google/android/material/datepicker/N;I)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    iget-object v2, p0, Lcom/google/android/material/datepicker/O;->d:Lcom/google/android/material/datepicker/MaterialCalendar;

    iget-object v3, v2, Lcom/google/android/material/datepicker/MaterialCalendar;->h0:Lcom/google/android/material/datepicker/d;

    .line 3
    iget-object v3, v3, Lcom/google/android/material/datepicker/d;->b:Lcom/google/android/material/datepicker/C;

    .line 4
    iget v3, v3, Lcom/google/android/material/datepicker/C;->f:I

    add-int/2addr v3, p2

    .line 5
    iget-object p2, p1, Lcom/google/android/material/datepicker/N;->u:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v5, v6, v0

    const-string v5, "%d"

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p1, Lcom/google/android/material/datepicker/N;->u:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 7
    invoke-static {}, Lcom/google/android/material/datepicker/M;->b()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 8
    sget v4, Lcom/google/android/material/R$string;->mtrl_picker_navigate_to_current_year_description:I

    .line 9
    invoke-virtual {p2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v0

    .line 10
    invoke-static {p2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 11
    :cond_0
    sget v4, Lcom/google/android/material/R$string;->mtrl_picker_navigate_to_year_description:I

    .line 12
    invoke-virtual {p2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v0

    .line 13
    invoke-static {p2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 14
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 15
    iget-object p1, v2, Lcom/google/android/material/datepicker/MaterialCalendar;->k0:Lcom/google/android/material/datepicker/f;

    .line 16
    invoke-static {}, Lcom/google/android/material/datepicker/M;->b()Ljava/util/Calendar;

    move-result-object p2

    .line 17
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    if-ne p2, v3, :cond_1

    iget-object p1, p1, Lcom/google/android/material/datepicker/f;->b:Lcom/google/android/material/datepicker/e;

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lcom/google/android/material/datepicker/f;->a:Lcom/google/android/material/datepicker/e;

    .line 18
    :goto_1
    invoke-virtual {v2}, Lcom/google/android/material/datepicker/MaterialCalendar;->getDateSelector()Lcom/google/android/material/datepicker/g;

    const/4 p1, 0x0

    throw p1
.end method

.method public bridge synthetic onBindViewHolder(Lm1/B0;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/material/datepicker/N;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/datepicker/O;->onBindViewHolder(Lcom/google/android/material/datepicker/N;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/android/material/datepicker/N;
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/google/android/material/R$layout;->mtrl_calendar_year:I

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 4
    new-instance p2, Lcom/google/android/material/datepicker/N;

    invoke-direct {p2, p1}, Lcom/google/android/material/datepicker/N;-><init>(Landroid/widget/TextView;)V

    return-object p2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lm1/B0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/datepicker/O;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/android/material/datepicker/N;

    move-result-object p1

    return-object p1
.end method
