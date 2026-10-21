.class public final synthetic LI4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/api/realdebrid/RealDebridLoginActivity;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/api/realdebrid/RealDebridLoginActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, LI4/a;->b:I

    iput-object p1, p0, LI4/a;->e:Lflix/com/vision/api/realdebrid/RealDebridLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    const-string v0, "User-Agent"

    .line 2
    .line 3
    iget-object v1, p0, LI4/a;->e:Lflix/com/vision/api/realdebrid/RealDebridLoginActivity;

    .line 4
    .line 5
    iget v2, p0, LI4/a;->b:I

    .line 6
    .line 7
    packed-switch v2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget v2, Lflix/com/vision/api/realdebrid/RealDebridLoginActivity;->q:I

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance v2, Lokhttp3/OkHttpClient;

    .line 16
    .line 17
    invoke-direct {v2}, Lokhttp3/OkHttpClient;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v3, Lokhttp3/FormBody$Builder;

    .line 21
    .line 22
    invoke-direct {v3}, Lokhttp3/FormBody$Builder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v4, "client_id"

    .line 26
    .line 27
    iget-object v5, v1, Lflix/com/vision/api/realdebrid/RealDebridLoginActivity;->m:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v3, v4, v5}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const-string v4, "client_secret"

    .line 34
    .line 35
    iget-object v5, v1, Lflix/com/vision/api/realdebrid/RealDebridLoginActivity;->n:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v3, v4, v5}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const-string v4, "code"

    .line 42
    .line 43
    iget-object v5, v1, Lflix/com/vision/api/realdebrid/RealDebridLoginActivity;->f:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v3, v4, v5}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    const-string v4, "grant_type"

    .line 50
    .line 51
    const-string v5, "http://oauth.net/grant_type/device/1.0"

    .line 52
    .line 53
    invoke-virtual {v3, v4, v5}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v3}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    new-instance v4, Lokhttp3/Request$Builder;

    .line 62
    .line 63
    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    .line 64
    .line 65
    .line 66
    sget-object v5, Lflix/com/vision/api/realdebrid/RealDebridCommon;->r:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v4, v0, v5}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    sget-object v4, Lflix/com/vision/api/realdebrid/RealDebridCommon;->q:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v0, v4}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0, v3}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    new-instance v2, LI4/e;

    .line 91
    .line 92
    invoke-direct {v2, v1}, LI4/e;-><init>(Lflix/com/vision/api/realdebrid/RealDebridLoginActivity;)V

    .line 93
    .line 94
    .line 95
    invoke-interface {v0, v2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :pswitch_0
    sget v2, Lflix/com/vision/api/realdebrid/RealDebridLoginActivity;->q:I

    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    new-instance v2, Lokhttp3/OkHttpClient;

    .line 105
    .line 106
    invoke-direct {v2}, Lokhttp3/OkHttpClient;-><init>()V

    .line 107
    .line 108
    .line 109
    new-instance v3, Lokhttp3/Request$Builder;

    .line 110
    .line 111
    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    .line 112
    .line 113
    .line 114
    sget-object v4, Lflix/com/vision/api/realdebrid/RealDebridCommon;->r:Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {v3, v0, v4}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    sget-object v4, Lflix/com/vision/api/realdebrid/RealDebridCommon;->n:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    iget-object v4, v1, Lflix/com/vision/api/realdebrid/RealDebridLoginActivity;->f:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-virtual {v0, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    new-instance v2, LI4/d;

    .line 152
    .line 153
    invoke-direct {v2, v1}, LI4/d;-><init>(Lflix/com/vision/api/realdebrid/RealDebridLoginActivity;)V

    .line 154
    .line 155
    .line 156
    invoke-interface {v0, v2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    :pswitch_1
    iget-object v0, v1, Lflix/com/vision/api/realdebrid/RealDebridLoginActivity;->e:Landroid/widget/TextView;

    .line 161
    .line 162
    iget-object v2, v1, Lflix/com/vision/api/realdebrid/RealDebridLoginActivity;->j:Ljava/lang/String;

    .line 163
    .line 164
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    .line 166
    .line 167
    iget-object v0, v1, Lflix/com/vision/api/realdebrid/RealDebridLoginActivity;->b:Lcom/github/ybq/android/spinkit/SpinKitView;

    .line 168
    .line 169
    const/16 v2, 0x8

    .line 170
    .line 171
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 172
    .line 173
    .line 174
    iget-object v0, v1, Lflix/com/vision/api/realdebrid/RealDebridLoginActivity;->e:Landroid/widget/TextView;

    .line 175
    .line 176
    const/4 v2, 0x0

    .line 177
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 178
    .line 179
    .line 180
    new-instance v0, Landroid/os/Handler;

    .line 181
    .line 182
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 187
    .line 188
    .line 189
    new-instance v2, LI4/a;

    .line 190
    .line 191
    const/4 v3, 0x1

    .line 192
    invoke-direct {v2, v1, v3}, LI4/a;-><init>(Lflix/com/vision/api/realdebrid/RealDebridLoginActivity;I)V

    .line 193
    .line 194
    .line 195
    const-wide/16 v3, 0x1388

    .line 196
    .line 197
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 198
    .line 199
    .line 200
    return-void

    .line 201
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
