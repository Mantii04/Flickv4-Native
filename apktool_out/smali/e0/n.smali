.class public final Le0/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final b:Landroid/widget/EditText;

.field public final e:Z

.field public f:Le0/m;

.field public j:Z


# direct methods
.method public constructor <init>(Landroid/widget/EditText;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Le0/n;->b:Landroid/widget/EditText;

    .line 5
    .line 6
    iput-boolean p2, p0, Le0/n;->e:Z

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Le0/n;->j:Z

    .line 10
    .line 11
    return-void
.end method

.method public static a(Landroid/widget/EditText;I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_2

    .line 3
    .line 4
    if-eqz p0, :cond_2

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_2

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-static {}, Landroidx/emoji2/text/p;->get()Landroidx/emoji2/text/p;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1, p0}, Landroidx/emoji2/text/p;->process(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 29
    .line 30
    .line 31
    if-ltz p1, :cond_0

    .line 32
    .line 33
    if-ltz v0, :cond_0

    .line 34
    .line 35
    invoke-static {p0, p1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    if-ltz p1, :cond_1

    .line 40
    .line 41
    invoke-static {p0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    if-ltz v0, :cond_2

    .line 46
    .line 47
    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 48
    .line 49
    .line 50
    :cond_2
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 7

    .line 1
    iget-object v0, p0, Le0/n;->b:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_4

    .line 8
    .line 9
    iget-boolean v1, p0, Le0/n;->j:Z

    .line 10
    .line 11
    if-eqz v1, :cond_4

    .line 12
    .line 13
    iget-boolean v1, p0, Le0/n;->e:Z

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    invoke-static {}, Landroidx/emoji2/text/p;->isConfigured()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    if-gt p3, p4, :cond_4

    .line 25
    .line 26
    instance-of p3, p1, Landroid/text/Spannable;

    .line 27
    .line 28
    if-eqz p3, :cond_4

    .line 29
    .line 30
    invoke-static {}, Landroidx/emoji2/text/p;->get()Landroidx/emoji2/text/p;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    invoke-virtual {p3}, Landroidx/emoji2/text/p;->getLoadState()I

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    if-eqz p3, :cond_2

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    if-eq p3, v1, :cond_1

    .line 42
    .line 43
    const/4 p1, 0x3

    .line 44
    if-eq p3, p1, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move-object v2, p1

    .line 48
    check-cast v2, Landroid/text/Spannable;

    .line 49
    .line 50
    invoke-static {}, Landroidx/emoji2/text/p;->get()Landroidx/emoji2/text/p;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    add-int v4, p2, p4

    .line 55
    .line 56
    const v5, 0x7fffffff

    .line 57
    .line 58
    .line 59
    const/4 v6, 0x0

    .line 60
    move v3, p2

    .line 61
    invoke-virtual/range {v1 .. v6}, Landroidx/emoji2/text/p;->process(Ljava/lang/CharSequence;IIII)Ljava/lang/CharSequence;

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_2
    invoke-static {}, Landroidx/emoji2/text/p;->get()Landroidx/emoji2/text/p;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iget-object p2, p0, Le0/n;->f:Le0/m;

    .line 70
    .line 71
    if-nez p2, :cond_3

    .line 72
    .line 73
    new-instance p2, Le0/m;

    .line 74
    .line 75
    invoke-direct {p2, v0}, Le0/m;-><init>(Landroid/widget/EditText;)V

    .line 76
    .line 77
    .line 78
    iput-object p2, p0, Le0/n;->f:Le0/m;

    .line 79
    .line 80
    :cond_3
    iget-object p2, p0, Le0/n;->f:Le0/m;

    .line 81
    .line 82
    invoke-virtual {p1, p2}, Landroidx/emoji2/text/p;->registerInitCallback(Landroidx/emoji2/text/l;)V

    .line 83
    .line 84
    .line 85
    :cond_4
    :goto_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Le0/n;->j:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Le0/n;->f:Le0/m;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Landroidx/emoji2/text/p;->get()Landroidx/emoji2/text/p;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Le0/n;->f:Le0/m;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroidx/emoji2/text/p;->unregisterInitCallback(Landroidx/emoji2/text/l;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iput-boolean p1, p0, Le0/n;->j:Z

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-static {}, Landroidx/emoji2/text/p;->get()Landroidx/emoji2/text/p;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Landroidx/emoji2/text/p;->getLoadState()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iget-object v0, p0, Le0/n;->b:Landroid/widget/EditText;

    .line 31
    .line 32
    invoke-static {v0, p1}, Le0/n;->a(Landroid/widget/EditText;I)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method
