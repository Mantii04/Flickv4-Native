.class public Lflix/com/vision/ui/auth/LoginActivity;
.super Le/v;
.source "SourceFile"


# instance fields
.field public b:Landroid/widget/EditText;

.field public e:Landroid/widget/EditText;

.field public f:Landroid/widget/Button;

.field public j:Landroid/widget/Button;

.field public m:Landroid/widget/Button;

.field public n:Landroid/view/View;

.field public p:Landroid/view/View;

.field public q:Landroid/widget/TextView;

.field public r:LO4/e;


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
.method public final e()V
    .locals 4

    .line 1
    invoke-static {p0}, LD4/c;->isLoggedIn(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/16 v2, 0x8

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lflix/com/vision/ui/auth/LoginActivity;->n:Landroid/view/View;

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lflix/com/vision/ui/auth/LoginActivity;->p:Landroid/view/View;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    invoke-static {p0}, LD4/c;->getUserEmail(Landroid/content/Context;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_0

    .line 31
    .line 32
    iget-object v2, p0, Lflix/com/vision/ui/auth/LoginActivity;->q:Landroid/widget/TextView;

    .line 33
    .line 34
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lflix/com/vision/ui/auth/LoginActivity;->q:Landroid/widget/TextView;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lflix/com/vision/ui/auth/LoginActivity;->q:Landroid/widget/TextView;

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    iget-object v0, p0, Lflix/com/vision/ui/auth/LoginActivity;->n:Landroid/view/View;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lflix/com/vision/ui/auth/LoginActivity;->p:Landroid/view/View;

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/H;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lflix/com/vision/R$layout;->activity_login:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Le/v;->setContentView(I)V

    .line 7
    .line 8
    .line 9
    sget p1, Lflix/com/vision/R$id;->email_edit_text:I

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
    iput-object p1, p0, Lflix/com/vision/ui/auth/LoginActivity;->b:Landroid/widget/EditText;

    .line 18
    .line 19
    sget p1, Lflix/com/vision/R$id;->password_edit_text:I

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
    iput-object p1, p0, Lflix/com/vision/ui/auth/LoginActivity;->e:Landroid/widget/EditText;

    .line 28
    .line 29
    sget p1, Lflix/com/vision/R$id;->login_button:I

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Landroid/widget/Button;

    .line 36
    .line 37
    iput-object p1, p0, Lflix/com/vision/ui/auth/LoginActivity;->f:Landroid/widget/Button;

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
    iput-object p1, p0, Lflix/com/vision/ui/auth/LoginActivity;->j:Landroid/widget/Button;

    .line 48
    .line 49
    sget p1, Lflix/com/vision/R$id;->logout_button:I

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Landroid/widget/Button;

    .line 56
    .line 57
    iput-object p1, p0, Lflix/com/vision/ui/auth/LoginActivity;->m:Landroid/widget/Button;

    .line 58
    .line 59
    sget p1, Lflix/com/vision/R$id;->login_form_container:I

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iput-object p1, p0, Lflix/com/vision/ui/auth/LoginActivity;->n:Landroid/view/View;

    .line 66
    .line 67
    sget p1, Lflix/com/vision/R$id;->logged_in_container:I

    .line 68
    .line 69
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iput-object p1, p0, Lflix/com/vision/ui/auth/LoginActivity;->p:Landroid/view/View;

    .line 74
    .line 75
    sget p1, Lflix/com/vision/R$id;->user_email_text:I

    .line 76
    .line 77
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Landroid/widget/TextView;

    .line 82
    .line 83
    iput-object p1, p0, Lflix/com/vision/ui/auth/LoginActivity;->q:Landroid/widget/TextView;

    .line 84
    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-static {p1}, LO4/e;->getInstance(Landroid/content/Context;)LO4/e;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iput-object p1, p0, Lflix/com/vision/ui/auth/LoginActivity;->r:LO4/e;

    .line 94
    .line 95
    iget-object p1, p0, Lflix/com/vision/ui/auth/LoginActivity;->f:Landroid/widget/Button;

    .line 96
    .line 97
    new-instance v0, Lg5/a;

    .line 98
    .line 99
    invoke-direct {v0, p0}, Lg5/a;-><init>(Lflix/com/vision/ui/auth/LoginActivity;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lflix/com/vision/ui/auth/LoginActivity;->j:Landroid/widget/Button;

    .line 106
    .line 107
    new-instance v0, Lg5/b;

    .line 108
    .line 109
    invoke-direct {v0, p0}, Lg5/b;-><init>(Lflix/com/vision/ui/auth/LoginActivity;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Lflix/com/vision/ui/auth/LoginActivity;->m:Landroid/widget/Button;

    .line 116
    .line 117
    new-instance v0, Lg5/c;

    .line 118
    .line 119
    invoke-direct {v0, p0}, Lg5/c;-><init>(Lflix/com/vision/ui/auth/LoginActivity;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Lflix/com/vision/ui/auth/LoginActivity;->e()V

    .line 126
    .line 127
    .line 128
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/H;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lflix/com/vision/ui/auth/LoginActivity;->e()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
