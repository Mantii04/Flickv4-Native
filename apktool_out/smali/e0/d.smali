.class public final Le0/d;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/EditText;

.field public final b:Le0/c;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
    .locals 2

    .line 1
    new-instance v0, Le0/c;

    .line 2
    .line 3
    invoke-direct {v0}, Le0/c;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {p0, p2, v1}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Le0/d;->a:Landroid/widget/EditText;

    .line 11
    .line 12
    iput-object v0, p0, Le0/d;->b:Le0/c;

    .line 13
    .line 14
    invoke-virtual {v0, p3}, Le0/c;->updateEditorInfoAttrs(Landroid/view/inputmethod/EditorInfo;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public deleteSurroundingText(II)Z
    .locals 7

    .line 1
    iget-object v0, p0, Le0/d;->a:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    .line 4
    .line 5
    .line 6
    move-result-object v3

    .line 7
    const/4 v6, 0x0

    .line 8
    iget-object v1, p0, Le0/d;->b:Le0/c;

    .line 9
    .line 10
    move-object v2, p0

    .line 11
    move v4, p1

    .line 12
    move v5, p2

    .line 13
    invoke-virtual/range {v1 .. v6}, Le0/c;->handleDeleteSurroundingText(Landroid/view/inputmethod/InputConnection;Landroid/text/Editable;IIZ)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    invoke-super {p0, v4, v5}, Landroid/view/inputmethod/InputConnectionWrapper;->deleteSurroundingText(II)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    return p1

    .line 28
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 29
    return p1
.end method

.method public deleteSurroundingTextInCodePoints(II)Z
    .locals 7

    .line 1
    iget-object v0, p0, Le0/d;->a:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    .line 4
    .line 5
    .line 6
    move-result-object v3

    .line 7
    const/4 v6, 0x1

    .line 8
    iget-object v1, p0, Le0/d;->b:Le0/c;

    .line 9
    .line 10
    move-object v2, p0

    .line 11
    move v4, p1

    .line 12
    move v5, p2

    .line 13
    invoke-virtual/range {v1 .. v6}, Le0/c;->handleDeleteSurroundingText(Landroid/view/inputmethod/InputConnection;Landroid/text/Editable;IIZ)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    invoke-super {p0, v4, v5}, Landroid/view/inputmethod/InputConnectionWrapper;->deleteSurroundingTextInCodePoints(II)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    return p1

    .line 28
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 29
    return p1
.end method
