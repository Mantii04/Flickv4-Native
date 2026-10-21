.class public Lflix/com/vision/api/premiumize/PremApiKeyEntryActivity;
.super Le/v;
.source "SourceFile"


# static fields
.field public static final synthetic p:I


# instance fields
.field public b:Landroid/widget/RelativeLayout;

.field public e:Landroid/widget/RelativeLayout;

.field public f:Landroid/widget/RelativeLayout;

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
    iput-object v0, p0, Lflix/com/vision/api/premiumize/PremApiKeyEntryActivity;->n:LQ4/d;

    .line 6
    .line 7
    return-void
.end method

.method public static getDate(J)Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v1, "MM/dd/yyyy HH:mm:ss"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/util/Date;

    .line 9
    .line 10
    const-wide/16 v2, 0x3e8

    .line 11
    .line 12
    mul-long/2addr p0, v2

    .line 13
    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    return-object p0

    .line 21
    :catch_0
    const-string p0, "Unknown"

    .line 22
    .line 23
    return-object p0
.end method


# virtual methods
.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lflix/com/vision/api/premiumize/PremApiKeyEntryActivity;->j:Landroid/widget/EditText;

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
    const-string v1, " "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-static {p0, v2}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iput-object v2, p0, Lflix/com/vision/api/premiumize/PremApiKeyEntryActivity;->n:LQ4/d;

    .line 29
    .line 30
    invoke-virtual {v2}, LQ4/d;->setloading()V

    .line 31
    .line 32
    .line 33
    :try_start_0
    iget-object v2, p0, Lflix/com/vision/api/premiumize/PremApiKeyEntryActivity;->n:LQ4/d;

    .line 34
    .line 35
    const-string v3, ""

    .line 36
    .line 37
    invoke-virtual {v2, v1, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception v1

    .line 42
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 43
    .line 44
    .line 45
    :goto_0
    iget-object v1, p0, Lflix/com/vision/api/premiumize/PremApiKeyEntryActivity;->m:Lio/reactivex/disposables/Disposable;

    .line 46
    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 50
    .line 51
    .line 52
    :cond_0
    invoke-static {v0}, LD4/a;->getPremUserAccount(Ljava/lang/String;)Lio/reactivex/Observable;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    new-instance v2, LA4/u;

    .line 73
    .line 74
    const/4 v3, 0x3

    .line 75
    invoke-direct {v2, v3, p0, v0}, LA4/u;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    new-instance v0, LE4/c;

    .line 79
    .line 80
    const/4 v3, 0x2

    .line 81
    invoke-direct {v0, p0, v3}, LE4/c;-><init>(Ljava/lang/Object;I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iput-object v0, p0, Lflix/com/vision/api/premiumize/PremApiKeyEntryActivity;->m:Lio/reactivex/disposables/Disposable;

    .line 89
    .line 90
    return-void

    .line 91
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    const-string v1, "API Key cannot contain blank space"

    .line 96
    .line 97
    const/4 v2, 0x1

    .line 98
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/H;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lflix/com/vision/R$layout;->prem_apikey_entry_activity:I

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
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 16
    .line 17
    iput-object p1, p0, Lflix/com/vision/api/premiumize/PremApiKeyEntryActivity;->f:Landroid/widget/RelativeLayout;

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
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 26
    .line 27
    iput-object p1, p0, Lflix/com/vision/api/premiumize/PremApiKeyEntryActivity;->e:Landroid/widget/RelativeLayout;

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
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 36
    .line 37
    iput-object p1, p0, Lflix/com/vision/api/premiumize/PremApiKeyEntryActivity;->b:Landroid/widget/RelativeLayout;

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
    iput-object p1, p0, Lflix/com/vision/api/premiumize/PremApiKeyEntryActivity;->j:Landroid/widget/EditText;

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
    iget-object p1, p0, Lflix/com/vision/api/premiumize/PremApiKeyEntryActivity;->f:Landroid/widget/RelativeLayout;

    .line 74
    .line 75
    invoke-static {p1}, Lflix/com/vision/App;->extractDominantColor(Landroid/view/View;)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lflix/com/vision/api/premiumize/PremApiKeyEntryActivity;->j:Landroid/widget/EditText;

    .line 79
    .line 80
    new-instance v0, LE4/a;

    .line 81
    .line 82
    const/4 v1, 0x2

    .line 83
    invoke-direct {v0, p0, v1}, LE4/a;-><init>(Le/v;I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lflix/com/vision/api/premiumize/PremApiKeyEntryActivity;->b:Landroid/widget/RelativeLayout;

    .line 90
    .line 91
    new-instance v0, LH4/a;

    .line 92
    .line 93
    const/4 v1, 0x0

    .line 94
    invoke-direct {v0, p0, v1}, LH4/a;-><init>(Lflix/com/vision/api/premiumize/PremApiKeyEntryActivity;I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lflix/com/vision/api/premiumize/PremApiKeyEntryActivity;->e:Landroid/widget/RelativeLayout;

    .line 101
    .line 102
    new-instance v0, LH4/a;

    .line 103
    .line 104
    const/4 v1, 0x1

    .line 105
    invoke-direct {v0, p0, v1}, LH4/a;-><init>(Lflix/com/vision/api/premiumize/PremApiKeyEntryActivity;I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    .line 110
    .line 111
    return-void
.end method
