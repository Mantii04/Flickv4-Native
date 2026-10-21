.class public final Le0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LC/k;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "editText cannot be null"

    .line 5
    .line 6
    invoke-static {p1, v0}, LL/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    new-instance v0, LC/k;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, v0, LC/k;->a:Ljava/lang/Object;

    .line 15
    .line 16
    new-instance v1, Le0/n;

    .line 17
    .line 18
    invoke-direct {v1, p1, p2}, Le0/n;-><init>(Landroid/widget/EditText;Z)V

    .line 19
    .line 20
    .line 21
    iput-object v1, v0, LC/k;->b:Ljava/lang/Object;

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Le0/b;->getInstance()Landroid/text/Editable$Factory;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEditableFactory(Landroid/text/Editable$Factory;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Le0/a;->a:LC/k;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public getKeyListener(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;
    .locals 1

    .line 1
    iget-object v0, p0, Le0/a;->a:LC/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Le0/h;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-object p1

    .line 11
    :cond_0
    if-nez p1, :cond_1

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    return-object p1

    .line 15
    :cond_1
    instance-of v0, p1, Landroid/text/method/NumberKeyListener;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    return-object p1

    .line 20
    :cond_2
    new-instance v0, Le0/h;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Le0/h;-><init>(Landroid/text/method/KeyListener;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    iget-object v0, p0, Le0/a;->a:LC/k;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    instance-of v1, p1, Le0/d;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_1
    new-instance v1, Le0/d;

    .line 16
    .line 17
    iget-object v0, v0, LC/k;->a:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Landroid/widget/EditText;

    .line 20
    .line 21
    invoke-direct {v1, v0, p1, p2}, Le0/d;-><init>(Landroid/widget/EditText;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    .line 22
    .line 23
    .line 24
    return-object v1
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le0/a;->a:LC/k;

    .line 2
    .line 3
    iget-object v0, v0, LC/k;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Le0/n;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Le0/n;->setEnabled(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
