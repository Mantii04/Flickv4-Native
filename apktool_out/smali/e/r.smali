.class public final Le/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/n;

.field public final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Le/s;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Le/r;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Le/n;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 4
    invoke-static {p1, p2}, Le/s;->c(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Le/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Le/r;->a:Le/n;

    .line 5
    iput p2, p0, Le/r;->b:I

    return-void
.end method


# virtual methods
.method public create()Le/s;
    .locals 4

    .line 1
    new-instance v0, Le/s;

    .line 2
    .line 3
    iget-object v1, p0, Le/r;->a:Le/n;

    .line 4
    .line 5
    iget-object v2, v1, Le/n;->a:Landroid/content/Context;

    .line 6
    .line 7
    iget v3, p0, Le/r;->b:I

    .line 8
    .line 9
    invoke-direct {v0, v2, v3}, Le/s;-><init>(Landroid/content/Context;I)V

    .line 10
    .line 11
    .line 12
    iget-object v2, v0, Le/s;->n:Le/q;

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Le/n;->apply(Le/q;)V

    .line 15
    .line 16
    .line 17
    iget-boolean v2, v1, Le/n;->j:Z

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 20
    .line 21
    .line 22
    iget-boolean v2, v1, Le/n;->j:Z

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 35
    .line 36
    .line 37
    iget-object v2, v1, Le/n;->k:Landroid/content/DialogInterface$OnDismissListener;

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 40
    .line 41
    .line 42
    iget-object v1, v1, Le/n;->l:Landroid/content/DialogInterface$OnKeyListener;

    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Le/r;->a:Le/n;

    .line 2
    .line 3
    iget-object v0, v0, Le/n;->a:Landroid/content/Context;

    .line 4
    .line 5
    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Le/r;
    .locals 1

    .line 1
    iget-object v0, p0, Le/r;->a:Le/n;

    .line 2
    .line 3
    iput-object p1, v0, Le/n;->n:Landroid/widget/ListAdapter;

    .line 4
    .line 5
    iput-object p2, v0, Le/n;->o:Landroid/content/DialogInterface$OnClickListener;

    .line 6
    .line 7
    return-object p0
.end method

.method public setCancelable(Z)Le/r;
    .locals 1

    .line 1
    iget-object v0, p0, Le/r;->a:Le/n;

    .line 2
    .line 3
    iput-boolean p1, v0, Le/n;->j:Z

    .line 4
    .line 5
    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Le/r;
    .locals 1

    .line 1
    iget-object v0, p0, Le/r;->a:Le/n;

    .line 2
    .line 3
    iput-object p1, v0, Le/n;->e:Landroid/view/View;

    .line 4
    .line 5
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Le/r;
    .locals 1

    .line 1
    iget-object v0, p0, Le/r;->a:Le/n;

    .line 2
    .line 3
    iput-object p1, v0, Le/n;->c:Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Le/r;
    .locals 1

    .line 1
    iget-object v0, p0, Le/r;->a:Le/n;

    .line 2
    .line 3
    iput-object p1, v0, Le/n;->m:[Ljava/lang/CharSequence;

    .line 4
    .line 5
    iput-object p3, v0, Le/n;->u:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 6
    .line 7
    iput-object p2, v0, Le/n;->q:[Z

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, v0, Le/n;->r:Z

    .line 11
    .line 12
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Le/r;
    .locals 1

    .line 1
    iget-object v0, p0, Le/r;->a:Le/n;

    .line 2
    .line 3
    iput-object p1, v0, Le/n;->h:Ljava/lang/CharSequence;

    .line 4
    .line 5
    iput-object p2, v0, Le/n;->i:Landroid/content/DialogInterface$OnClickListener;

    .line 6
    .line 7
    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Le/r;
    .locals 1

    .line 1
    iget-object v0, p0, Le/r;->a:Le/n;

    .line 2
    .line 3
    iput-object p1, v0, Le/n;->k:Landroid/content/DialogInterface$OnDismissListener;

    .line 4
    .line 5
    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Le/r;
    .locals 1

    .line 1
    iget-object v0, p0, Le/r;->a:Le/n;

    .line 2
    .line 3
    iput-object p1, v0, Le/n;->l:Landroid/content/DialogInterface$OnKeyListener;

    .line 4
    .line 5
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Le/r;
    .locals 1

    .line 1
    iget-object v0, p0, Le/r;->a:Le/n;

    .line 2
    .line 3
    iput-object p1, v0, Le/n;->f:Ljava/lang/CharSequence;

    .line 4
    .line 5
    iput-object p2, v0, Le/n;->g:Landroid/content/DialogInterface$OnClickListener;

    .line 6
    .line 7
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Le/r;
    .locals 1

    .line 5
    iget-object v0, p0, Le/r;->a:Le/n;

    iput-object p1, v0, Le/n;->n:Landroid/widget/ListAdapter;

    .line 6
    iput-object p3, v0, Le/n;->o:Landroid/content/DialogInterface$OnClickListener;

    .line 7
    iput p2, v0, Le/n;->t:I

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, v0, Le/n;->s:Z

    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Le/r;
    .locals 1

    .line 1
    iget-object v0, p0, Le/r;->a:Le/n;

    iput-object p1, v0, Le/n;->m:[Ljava/lang/CharSequence;

    .line 2
    iput-object p3, v0, Le/n;->o:Landroid/content/DialogInterface$OnClickListener;

    .line 3
    iput p2, v0, Le/n;->t:I

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v0, Le/n;->s:Z

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Le/r;
    .locals 1

    .line 1
    iget-object v0, p0, Le/r;->a:Le/n;

    .line 2
    .line 3
    iput-object p1, v0, Le/n;->d:Ljava/lang/CharSequence;

    .line 4
    .line 5
    return-object p0
.end method

.method public setView(Landroid/view/View;)Le/r;
    .locals 1

    .line 1
    iget-object v0, p0, Le/r;->a:Le/n;

    .line 2
    .line 3
    iput-object p1, v0, Le/n;->p:Landroid/view/View;

    .line 4
    .line 5
    return-object p0
.end method

.method public show()Le/s;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/r;->create()Le/s;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
