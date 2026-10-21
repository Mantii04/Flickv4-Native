.class public Lflix/com/vision/ui/auth/RegisterActivity;
.super Le/v;
.source "SourceFile"


# instance fields
.field public b:Landroid/widget/EditText;

.field public e:Landroid/widget/EditText;

.field public f:Landroid/widget/EditText;

.field public j:Landroid/widget/Button;

.field public m:LO4/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/v;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/H;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lflix/com/vision/R$layout;->activity_register:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Le/v;->setContentView(I)V

    .line 7
    .line 8
    .line 9
    sget p1, Lflix/com/vision/R$id;->name_edit_text:I

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroid/widget/EditText;

    .line 16
    .line 17
    iput-object p1, p0, Lflix/com/vision/ui/auth/RegisterActivity;->b:Landroid/widget/EditText;

    .line 18
    .line 19
    sget p1, Lflix/com/vision/R$id;->email_edit_text:I

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Landroid/widget/EditText;

    .line 26
    .line 27
    iput-object p1, p0, Lflix/com/vision/ui/auth/RegisterActivity;->e:Landroid/widget/EditText;

    .line 28
    .line 29
    sget p1, Lflix/com/vision/R$id;->password_edit_text:I

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Landroid/widget/EditText;

    .line 36
    .line 37
    iput-object p1, p0, Lflix/com/vision/ui/auth/RegisterActivity;->f:Landroid/widget/EditText;

    .line 38
    .line 39
    sget p1, Lflix/com/vision/R$id;->register_button:I

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Landroid/widget/Button;

    .line 46
    .line 47
    iput-object p1, p0, Lflix/com/vision/ui/auth/RegisterActivity;->j:Landroid/widget/Button;

    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p1}, LO4/e;->getInstance(Landroid/content/Context;)LO4/e;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iput-object p1, p0, Lflix/com/vision/ui/auth/RegisterActivity;->m:LO4/e;

    .line 58
    .line 59
    iget-object p1, p0, Lflix/com/vision/ui/auth/RegisterActivity;->j:Landroid/widget/Button;

    .line 60
    .line 61
    new-instance v0, Lg5/f;

    .line 62
    .line 63
    invoke-direct {v0, p0}, Lg5/f;-><init>(Lflix/com/vision/ui/auth/RegisterActivity;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method
