.class public final Ly4/r1;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lflix/com/vision/activities/TraktSignInActivity;


# direct methods
.method public constructor <init>(Lflix/com/vision/activities/TraktSignInActivity;J)V
    .locals 2

    .line 1
    iput-object p1, p0, Ly4/r1;->a:Lflix/com/vision/activities/TraktSignInActivity;

    .line 2
    .line 3
    const-wide/16 v0, 0x3e8

    .line 4
    .line 5
    invoke-direct {p0, p2, p3, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 9

    .line 1
    iget-object v1, p0, Ly4/r1;->a:Lflix/com/vision/activities/TraktSignInActivity;

    .line 2
    .line 3
    iget-boolean v0, v1, Lflix/com/vision/activities/TraktSignInActivity;->x:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "{\n    \"code\": \""

    .line 11
    .line 12
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v2, v1, Lflix/com/vision/activities/TraktSignInActivity;->j:Ljava/lang/String;

    .line 16
    .line 17
    const-string v3, "\",\n    \"client_id\": \"39c944040d5f19862b77e7a66b6c419af653c1e3bf226cc691eb2abbb551730c\",\n    \"client_secret\": \"86227e303a08cf769cd77dc1691477f3e24a65f890431115c71369becdfe85b6\"\n}"

    .line 18
    .line 19
    invoke-static {v0, v2, v3}, LA/i;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 24
    .line 25
    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    :goto_0
    move-object v6, v2

    .line 29
    goto :goto_1

    .line 30
    :catch_0
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    goto :goto_0

    .line 36
    :goto_1
    if-nez v6, :cond_1

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_1
    new-instance v3, Ly4/p1;

    .line 40
    .line 41
    new-instance v7, Ly4/m1;

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    invoke-direct {v7, v1, v0}, Ly4/m1;-><init>(Lflix/com/vision/activities/TraktSignInActivity;I)V

    .line 45
    .line 46
    .line 47
    new-instance v8, Ly4/o1;

    .line 48
    .line 49
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 50
    .line 51
    .line 52
    const/4 v4, 0x1

    .line 53
    const-string v5, "https://api.trakt.tv/oauth/device/token"

    .line 54
    .line 55
    invoke-direct/range {v3 .. v8}, Lh2/p;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 56
    .line 57
    .line 58
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lflix/com/vision/App;->getRequestQueue()Lcom/android/volley/RequestQueue;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0, v3}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 67
    .line 68
    .line 69
    :goto_2
    iget v0, v1, Lflix/com/vision/activities/TraktSignInActivity;->n:I

    .line 70
    .line 71
    iget v2, v1, Lflix/com/vision/activities/TraktSignInActivity;->p:I

    .line 72
    .line 73
    mul-int/lit16 v2, v2, 0x3e8

    .line 74
    .line 75
    sub-int/2addr v0, v2

    .line 76
    iput v0, v1, Lflix/com/vision/activities/TraktSignInActivity;->n:I

    .line 77
    .line 78
    if-gez v0, :cond_2

    .line 79
    .line 80
    iget-object v0, v1, Lflix/com/vision/activities/TraktSignInActivity;->f:Ly4/r1;

    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    const-string v2, "Time out"

    .line 90
    .line 91
    const/4 v3, 0x1

    .line 92
    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 100
    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_2
    iget-object v0, v1, Lflix/com/vision/activities/TraktSignInActivity;->f:Ly4/r1;

    .line 104
    .line 105
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 106
    .line 107
    .line 108
    :goto_3
    return-void
.end method

.method public onTick(J)V
    .locals 0

    .line 1
    return-void
.end method
