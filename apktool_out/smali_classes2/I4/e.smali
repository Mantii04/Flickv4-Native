.class public final LI4/e;
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
    iput-object p1, p0, LI4/e;->a:Lflix/com/vision/api/realdebrid/RealDebridLoginActivity;

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
    const/4 p1, 0x0

    .line 2
    const/4 v0, 0x1

    .line 3
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, LI4/e;->a:Lflix/com/vision/api/realdebrid/RealDebridLoginActivity;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    sget p1, Lflix/com/vision/api/realdebrid/RealDebridLoginActivity;->q:I

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance p1, Landroid/os/Handler;

    .line 17
    .line 18
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 23
    .line 24
    .line 25
    new-instance p2, LI4/a;

    .line 26
    .line 27
    const/4 v0, 0x2

    .line 28
    invoke-direct {p2, v2, v0}, LI4/a;-><init>(Lflix/com/vision/api/realdebrid/RealDebridLoginActivity;I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

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
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v3, "{\n  \"results\": ["

    .line 49
    .line 50
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    sget-object v3, Lflix/com/vision/api/realdebrid/RealDebridCommon;->b:Ljava/lang/String;

    .line 54
    .line 55
    const-string v3, "]\n}"

    .line 56
    .line 57
    invoke-static {v1, p2, v3}, LA/i;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 62
    .line 63
    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string p2, "results"

    .line 67
    .line 68
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    move v1, p1

    .line 73
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-ge v1, v3, :cond_1

    .line 78
    .line 79
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    const-string v4, "access_token"

    .line 84
    .line 85
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    sput-object v4, Lflix/com/vision/api/realdebrid/RealDebridCommon;->b:Ljava/lang/String;

    .line 90
    .line 91
    const-string v4, "refresh_token"

    .line 92
    .line 93
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    sput-object v4, Lflix/com/vision/api/realdebrid/RealDebridCommon;->e:Ljava/lang/String;

    .line 98
    .line 99
    const-string v4, "token_type"

    .line 100
    .line 101
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    sput-object v3, Lflix/com/vision/api/realdebrid/RealDebridCommon;->f:Ljava/lang/String;

    .line 106
    .line 107
    add-int/2addr v1, v0

    .line 108
    goto :goto_0

    .line 109
    :cond_1
    iget-object p2, v2, Lflix/com/vision/api/realdebrid/RealDebridLoginActivity;->p:Landroid/content/SharedPreferences;

    .line 110
    .line 111
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    const-string v1, "ACCESS_TOKEN"

    .line 116
    .line 117
    sget-object v3, Lflix/com/vision/api/realdebrid/RealDebridCommon;->b:Ljava/lang/String;

    .line 118
    .line 119
    invoke-interface {p2, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 124
    .line 125
    .line 126
    iget-object p2, v2, Lflix/com/vision/api/realdebrid/RealDebridLoginActivity;->p:Landroid/content/SharedPreferences;

    .line 127
    .line 128
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    const-string v1, "REFRESH_TOKEN"

    .line 133
    .line 134
    sget-object v3, Lflix/com/vision/api/realdebrid/RealDebridCommon;->e:Ljava/lang/String;

    .line 135
    .line 136
    invoke-interface {p2, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 141
    .line 142
    .line 143
    iget-object p2, v2, Lflix/com/vision/api/realdebrid/RealDebridLoginActivity;->p:Landroid/content/SharedPreferences;

    .line 144
    .line 145
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    const-string v1, "TOKEN_TYPE"

    .line 150
    .line 151
    sget-object v3, Lflix/com/vision/api/realdebrid/RealDebridCommon;->f:Ljava/lang/String;

    .line 152
    .line 153
    invoke-interface {p2, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 158
    .line 159
    .line 160
    iget-object p2, v2, Lflix/com/vision/api/realdebrid/RealDebridLoginActivity;->p:Landroid/content/SharedPreferences;

    .line 161
    .line 162
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    const-string v1, "IS_RD_LOGGED_IN"

    .line 167
    .line 168
    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 169
    .line 170
    .line 171
    move-result-object p2

    .line 172
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 173
    .line 174
    .line 175
    sput-boolean v0, Lflix/com/vision/api/realdebrid/RealDebridCommon;->m:Z

    .line 176
    .line 177
    new-instance p2, Landroid/os/Handler;

    .line 178
    .line 179
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-direct {p2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 184
    .line 185
    .line 186
    new-instance v1, LA3/d;

    .line 187
    .line 188
    const/4 v3, 0x7

    .line 189
    invoke-direct {v1, p0, v3}, LA3/d;-><init>(Ljava/lang/Object;I)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 193
    .line 194
    .line 195
    sget-object p2, Lflix/com/vision/api/realdebrid/RealDebridCommon;->f:Ljava/lang/String;

    .line 196
    .line 197
    sget-object v1, Lflix/com/vision/api/realdebrid/RealDebridCommon;->b:Ljava/lang/String;

    .line 198
    .line 199
    invoke-static {p2, v1}, LD4/a;->getRealDebridUserAccount(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    .line 200
    .line 201
    .line 202
    move-result-object p2

    .line 203
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-virtual {p2, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 208
    .line 209
    .line 210
    move-result-object p2

    .line 211
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-virtual {p2, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 216
    .line 217
    .line 218
    move-result-object p2

    .line 219
    new-instance v1, LI4/b;

    .line 220
    .line 221
    invoke-direct {v1, v2, p1}, LI4/b;-><init>(Lflix/com/vision/api/realdebrid/RealDebridLoginActivity;I)V

    .line 222
    .line 223
    .line 224
    new-instance p1, LI4/b;

    .line 225
    .line 226
    invoke-direct {p1, v2, v0}, LI4/b;-><init>(Lflix/com/vision/api/realdebrid/RealDebridLoginActivity;I)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p2, v1, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .line 231
    .line 232
    :catch_0
    return-void
.end method
