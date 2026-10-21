.class public Lflix/com/vision/api/realdebrid/RealDebridLoginActivity;
.super Le/v;
.source "SourceFile"


# static fields
.field public static final synthetic q:I


# instance fields
.field public b:Lcom/github/ybq/android/spinkit/SpinKitView;

.field public e:Landroid/widget/TextView;

.field public f:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public p:Landroid/content/SharedPreferences;


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
.method public onBackPressed()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/H;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lflix/com/vision/R$layout;->real_debrid_activiity:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Le/v;->setContentView(I)V

    .line 7
    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/16 v0, 0x80

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    :catch_0
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 23
    .line 24
    const-string v0, "RD_CLEANED"

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-static {p1, v0, v1}, LA/i;->x(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 28
    .line 29
    .line 30
    sget p1, Lflix/com/vision/R$id;->loader2:I

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lcom/github/ybq/android/spinkit/SpinKitView;

    .line 37
    .line 38
    sget p1, Lflix/com/vision/R$id;->loader:I

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Lcom/github/ybq/android/spinkit/SpinKitView;

    .line 45
    .line 46
    iput-object p1, p0, Lflix/com/vision/api/realdebrid/RealDebridLoginActivity;->b:Lcom/github/ybq/android/spinkit/SpinKitView;

    .line 47
    .line 48
    sget p1, Lflix/com/vision/R$id;->rd_code:I

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Landroid/widget/TextView;

    .line 55
    .line 56
    iput-object p1, p0, Lflix/com/vision/api/realdebrid/RealDebridLoginActivity;->e:Landroid/widget/TextView;

    .line 57
    .line 58
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 63
    .line 64
    iput-object p1, p0, Lflix/com/vision/api/realdebrid/RealDebridLoginActivity;->p:Landroid/content/SharedPreferences;

    .line 65
    .line 66
    new-instance p1, Lokhttp3/OkHttpClient;

    .line 67
    .line 68
    invoke-direct {p1}, Lokhttp3/OkHttpClient;-><init>()V

    .line 69
    .line 70
    .line 71
    new-instance v0, Lokhttp3/Request$Builder;

    .line 72
    .line 73
    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v1, "User-Agent"

    .line 77
    .line 78
    sget-object v2, Lflix/com/vision/api/realdebrid/RealDebridCommon;->r:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    sget-object v1, Lflix/com/vision/api/realdebrid/RealDebridCommon;->p:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    new-instance v0, LI4/c;

    .line 99
    .line 100
    invoke-direct {v0, p0}, LI4/c;-><init>(Lflix/com/vision/api/realdebrid/RealDebridLoginActivity;)V

    .line 101
    .line 102
    .line 103
    invoke-interface {p1, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method
