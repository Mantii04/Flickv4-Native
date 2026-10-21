.class public final LI4/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# instance fields
.field public final synthetic a:Lflix/com/vision/api/realdebrid/RealDebridLoginActivity;


# direct methods
.method public constructor <init>(Lflix/com/vision/api/realdebrid/RealDebridLoginActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LI4/d;->a:Lflix/com/vision/api/realdebrid/RealDebridLoginActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 p1, 0x1

    .line 2
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, LI4/d;->a:Lflix/com/vision/api/realdebrid/RealDebridLoginActivity;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    sget p2, Lflix/com/vision/api/realdebrid/RealDebridLoginActivity;->q:I

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance p2, Landroid/os/Handler;

    .line 16
    .line 17
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 22
    .line 23
    .line 24
    new-instance v0, LI4/a;

    .line 25
    .line 26
    invoke-direct {v0, v1, p1}, LI4/a;-><init>(Lflix/com/vision/api/realdebrid/RealDebridLoginActivity;I)V

    .line 27
    .line 28
    .line 29
    const-wide/16 v1, 0x1388

    .line 30
    .line 31
    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v2, "{\n  \"results\": ["

    .line 49
    .line 50
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    sget-object v2, Lflix/com/vision/api/realdebrid/RealDebridCommon;->b:Ljava/lang/String;

    .line 54
    .line 55
    const-string v2, "]\n}"

    .line 56
    .line 57
    invoke-static {v0, p2, v2}, LA/i;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 62
    .line 63
    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string p2, "results"

    .line 67
    .line 68
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    const/4 v0, 0x0

    .line 73
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-ge v0, v2, :cond_1

    .line 78
    .line 79
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    const-string v3, "client_id"

    .line 84
    .line 85
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    iput-object v3, v1, Lflix/com/vision/api/realdebrid/RealDebridLoginActivity;->m:Ljava/lang/String;

    .line 90
    .line 91
    const-string v3, "client_secret"

    .line 92
    .line 93
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    iput-object v2, v1, Lflix/com/vision/api/realdebrid/RealDebridLoginActivity;->n:Ljava/lang/String;

    .line 98
    .line 99
    iget-object v2, v1, Lflix/com/vision/api/realdebrid/RealDebridLoginActivity;->p:Landroid/content/SharedPreferences;

    .line 100
    .line 101
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    const-string v3, "CLIENT_ID"

    .line 106
    .line 107
    iget-object v4, v1, Lflix/com/vision/api/realdebrid/RealDebridLoginActivity;->m:Ljava/lang/String;

    .line 108
    .line 109
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 114
    .line 115
    .line 116
    iget-object v2, v1, Lflix/com/vision/api/realdebrid/RealDebridLoginActivity;->p:Landroid/content/SharedPreferences;

    .line 117
    .line 118
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    const-string v3, "CLIENT_SECRET"

    .line 123
    .line 124
    iget-object v4, v1, Lflix/com/vision/api/realdebrid/RealDebridLoginActivity;->n:Ljava/lang/String;

    .line 125
    .line 126
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 131
    .line 132
    .line 133
    iget-object v2, v1, Lflix/com/vision/api/realdebrid/RealDebridLoginActivity;->p:Landroid/content/SharedPreferences;

    .line 134
    .line 135
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    const-string v3, "DEVICE_CODE"

    .line 140
    .line 141
    iget-object v4, v1, Lflix/com/vision/api/realdebrid/RealDebridLoginActivity;->f:Ljava/lang/String;

    .line 142
    .line 143
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 148
    .line 149
    .line 150
    add-int/2addr v0, p1

    .line 151
    goto :goto_0

    .line 152
    :cond_1
    sget p1, Lflix/com/vision/api/realdebrid/RealDebridLoginActivity;->q:I

    .line 153
    .line 154
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    new-instance p1, Landroid/os/Handler;

    .line 158
    .line 159
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 164
    .line 165
    .line 166
    new-instance p2, LI4/a;

    .line 167
    .line 168
    const/4 v0, 0x2

    .line 169
    invoke-direct {p2, v1, v0}, LI4/a;-><init>(Lflix/com/vision/api/realdebrid/RealDebridLoginActivity;I)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .line 174
    .line 175
    :catch_0
    return-void
.end method
