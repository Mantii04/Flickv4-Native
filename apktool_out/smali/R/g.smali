.class public abstract LR/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static createWrapper(Landroid/view/View;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    .line 9
    invoke-static {p0}, LL/h;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v0, LA0/a;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, LA0/a;-><init>(Ljava/lang/Object;I)V

    .line 11
    invoke-static {p1, p2, v0}, LR/g;->createWrapper(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;LR/f;)Landroid/view/inputmethod/InputConnection;

    move-result-object p0

    return-object p0
.end method

.method public static createWrapper(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;LR/f;)Landroid/view/inputmethod/InputConnection;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-string v0, "inputConnection must be non-null"

    invoke-static {p0, v0}, LL/c;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    const-string v0, "editorInfo must be non-null"

    invoke-static {p1, v0}, LL/c;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    const-string v0, "onCommitContentListener must be non-null"

    invoke-static {p2, v0}, LL/c;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_0

    .line 5
    new-instance p1, LR/d;

    invoke-direct {p1, p0, p2}, LR/d;-><init>(Landroid/view/inputmethod/InputConnection;LR/f;)V

    return-object p1

    .line 6
    :cond_0
    invoke-static {p1}, LR/c;->getContentMimeTypes(Landroid/view/inputmethod/EditorInfo;)[Ljava/lang/String;

    move-result-object p1

    .line 7
    array-length p1, p1

    if-nez p1, :cond_1

    return-object p0

    .line 8
    :cond_1
    new-instance p1, LR/e;

    invoke-direct {p1, p0, p2}, LR/e;-><init>(Landroid/view/inputmethod/InputConnection;LR/f;)V

    return-object p1
.end method
