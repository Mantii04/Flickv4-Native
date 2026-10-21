.class public final synthetic Ly4/m1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/TraktSignInActivity;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/TraktSignInActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly4/m1;->b:I

    iput-object p1, p0, Ly4/m1;->e:Lflix/com/vision/activities/TraktSignInActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResponse(Ljava/lang/Object;)V
    .locals 7

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Ly4/m1;->e:Lflix/com/vision/activities/TraktSignInActivity;

    .line 5
    .line 6
    iget v3, p0, Ly4/m1;->b:I

    .line 7
    .line 8
    check-cast p1, Lorg/json/JSONObject;

    .line 9
    .line 10
    packed-switch v3, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    iget-boolean v3, v2, Lflix/com/vision/activities/TraktSignInActivity;->x:Z

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    :try_start_0
    new-instance v3, Ly4/q1;

    .line 19
    .line 20
    invoke-direct {v3, v2, p1}, Ly4/q1;-><init>(Lflix/com/vision/activities/TraktSignInActivity;Lorg/json/JSONObject;)V

    .line 21
    .line 22
    .line 23
    new-array p1, v1, [Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v3, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    invoke-static {v0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void

    .line 33
    :pswitch_0
    sget v3, Lflix/com/vision/activities/TraktSignInActivity;->y:I

    .line 34
    .line 35
    :try_start_1
    const-string v3, "device_code"

    .line 36
    .line 37
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const-string v4, "user_code"

    .line 42
    .line 43
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    const-string v5, "expires_in"

    .line 48
    .line 49
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    const-string v6, "interval"

    .line 54
    .line 55
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    iput-object v3, v2, Lflix/com/vision/activities/TraktSignInActivity;->j:Ljava/lang/String;

    .line 60
    .line 61
    iput-object v4, v2, Lflix/com/vision/activities/TraktSignInActivity;->m:Ljava/lang/String;

    .line 62
    .line 63
    iput p1, v2, Lflix/com/vision/activities/TraktSignInActivity;->p:I

    .line 64
    .line 65
    mul-int/lit16 v5, v5, 0x3e8

    .line 66
    .line 67
    iput v5, v2, Lflix/com/vision/activities/TraktSignInActivity;->n:I

    .line 68
    .line 69
    iget-object p1, v2, Lflix/com/vision/activities/TraktSignInActivity;->s:Landroid/widget/TextView;

    .line 70
    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    iget-object v4, v2, Lflix/com/vision/activities/TraktSignInActivity;->m:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    .line 90
    .line 91
    iget-object p1, v2, Lflix/com/vision/activities/TraktSignInActivity;->r:Lcom/github/ybq/android/spinkit/SpinKitView;

    .line 92
    .line 93
    const/16 v0, 0x8

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 96
    .line 97
    .line 98
    iget-object p1, v2, Lflix/com/vision/activities/TraktSignInActivity;->q:Landroid/widget/LinearLayout;

    .line 99
    .line 100
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 101
    .line 102
    .line 103
    new-instance p1, Ly4/r1;

    .line 104
    .line 105
    iget v0, v2, Lflix/com/vision/activities/TraktSignInActivity;->p:I

    .line 106
    .line 107
    mul-int/lit16 v0, v0, 0x3e8

    .line 108
    .line 109
    int-to-long v0, v0

    .line 110
    invoke-direct {p1, v2, v0, v1}, Ly4/r1;-><init>(Lflix/com/vision/activities/TraktSignInActivity;J)V

    .line 111
    .line 112
    .line 113
    iput-object p1, v2, Lflix/com/vision/activities/TraktSignInActivity;->f:Ly4/r1;

    .line 114
    .line 115
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :catch_1
    move-exception p1

    .line 120
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 121
    .line 122
    .line 123
    :catch_2
    :goto_1
    return-void

    .line 124
    nop

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
