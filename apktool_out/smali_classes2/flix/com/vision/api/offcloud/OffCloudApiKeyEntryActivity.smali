.class public Lflix/com/vision/api/offcloud/OffCloudApiKeyEntryActivity;
.super Le/v;
.source "SourceFile"


# static fields
.field public static final synthetic p:I


# instance fields
.field public b:Landroid/widget/FrameLayout;

.field public e:Landroid/widget/FrameLayout;

.field public f:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public j:Landroid/widget/EditText;

.field public m:Lio/reactivex/disposables/Disposable;

.field public n:LQ4/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/v;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lflix/com/vision/api/offcloud/OffCloudApiKeyEntryActivity;->n:LQ4/d;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lflix/com/vision/api/offcloud/OffCloudApiKeyEntryActivity;->j:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    const-string v1, " "

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-static {p0, v2}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iput-object v2, p0, Lflix/com/vision/api/offcloud/OffCloudApiKeyEntryActivity;->n:LQ4/d;

    .line 39
    .line 40
    invoke-virtual {v2}, LQ4/d;->setloading()V

    .line 41
    .line 42
    .line 43
    :try_start_0
    iget-object v2, p0, Lflix/com/vision/api/offcloud/OffCloudApiKeyEntryActivity;->n:LQ4/d;

    .line 44
    .line 45
    const-string v3, ""

    .line 46
    .line 47
    invoke-virtual {v2, v1, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception v1

    .line 52
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    .line 54
    .line 55
    :goto_0
    iget-object v1, p0, Lflix/com/vision/api/offcloud/OffCloudApiKeyEntryActivity;->m:Lio/reactivex/disposables/Disposable;

    .line 56
    .line 57
    if-eqz v1, :cond_0

    .line 58
    .line 59
    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 60
    .line 61
    .line 62
    :cond_0
    invoke-static {v0}, LD4/a;->getOffcloudUserAccount(Ljava/lang/String;)Lio/reactivex/Observable;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    new-instance v2, LA4/u;

    .line 83
    .line 84
    const/4 v3, 0x2

    .line 85
    invoke-direct {v2, v3, p0, v0}, LA4/u;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    new-instance v0, LE4/c;

    .line 89
    .line 90
    const/4 v3, 0x1

    .line 91
    invoke-direct {v0, p0, v3}, LE4/c;-><init>(Ljava/lang/Object;I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iput-object v0, p0, Lflix/com/vision/api/offcloud/OffCloudApiKeyEntryActivity;->m:Lio/reactivex/disposables/Disposable;

    .line 99
    .line 100
    return-void

    .line 101
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    const-string v1, "API Key cannot be empty or contain blank spaces"

    .line 106
    .line 107
    const/4 v2, 0x1

    .line 108
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 113
    .line 114
    .line 115
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/H;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lflix/com/vision/R$layout;->offcloud_apikey_entry_activity:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Le/v;->setContentView(I)V

    .line 7
    .line 8
    .line 9
    sget p1, Lflix/com/vision/R$id;->main_relative_view:I

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 16
    .line 17
    iput-object p1, p0, Lflix/com/vision/api/offcloud/OffCloudApiKeyEntryActivity;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 18
    .line 19
    sget p1, Lflix/com/vision/R$id;->confirm_pin_button:I

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Landroid/widget/FrameLayout;

    .line 26
    .line 27
    iput-object p1, p0, Lflix/com/vision/api/offcloud/OffCloudApiKeyEntryActivity;->e:Landroid/widget/FrameLayout;

    .line 28
    .line 29
    sget p1, Lflix/com/vision/R$id;->cancel_button:I

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Landroid/widget/FrameLayout;

    .line 36
    .line 37
    iput-object p1, p0, Lflix/com/vision/api/offcloud/OffCloudApiKeyEntryActivity;->b:Landroid/widget/FrameLayout;

    .line 38
    .line 39
    sget p1, Lflix/com/vision/R$id;->edit_text_enter_pin:I

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Landroid/widget/EditText;

    .line 46
    .line 47
    iput-object p1, p0, Lflix/com/vision/api/offcloud/OffCloudApiKeyEntryActivity;->j:Landroid/widget/EditText;

    .line 48
    .line 49
    sget p1, Lflix/com/vision/R$id;->adult_pin_entry_title:I

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Landroid/widget/TextView;

    .line 56
    .line 57
    sget p1, Lflix/com/vision/R$id;->confirm_adult_label:I

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Landroid/widget/TextView;

    .line 64
    .line 65
    sget p1, Lflix/com/vision/R$id;->save_label:I

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Landroid/widget/TextView;

    .line 72
    .line 73
    iget-object p1, p0, Lflix/com/vision/api/offcloud/OffCloudApiKeyEntryActivity;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 74
    .line 75
    if-eqz p1, :cond_0

    .line 76
    .line 77
    invoke-static {p1}, Lflix/com/vision/App;->extractDominantColor(Landroid/view/View;)V

    .line 78
    .line 79
    .line 80
    :cond_0
    iget-object p1, p0, Lflix/com/vision/api/offcloud/OffCloudApiKeyEntryActivity;->j:Landroid/widget/EditText;

    .line 81
    .line 82
    new-instance v0, LE4/a;

    .line 83
    .line 84
    const/4 v1, 0x1

    .line 85
    invoke-direct {v0, p0, v1}, LE4/a;-><init>(Le/v;I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lflix/com/vision/api/offcloud/OffCloudApiKeyEntryActivity;->b:Landroid/widget/FrameLayout;

    .line 92
    .line 93
    new-instance v0, LG4/a;

    .line 94
    .line 95
    const/4 v1, 0x0

    .line 96
    invoke-direct {v0, p0, v1}, LG4/a;-><init>(Lflix/com/vision/api/offcloud/OffCloudApiKeyEntryActivity;I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lflix/com/vision/api/offcloud/OffCloudApiKeyEntryActivity;->e:Landroid/widget/FrameLayout;

    .line 103
    .line 104
    new-instance v0, LG4/a;

    .line 105
    .line 106
    const/4 v1, 0x1

    .line 107
    invoke-direct {v0, p0, v1}, LG4/a;-><init>(Lflix/com/vision/api/offcloud/OffCloudApiKeyEntryActivity;I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    .line 112
    .line 113
    return-void
.end method
