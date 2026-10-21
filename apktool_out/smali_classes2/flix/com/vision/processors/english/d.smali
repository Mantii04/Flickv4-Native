.class public final synthetic Lflix/com/vision/processors/english/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lflix/com/vision/processors/english/d;->b:I

    iput-object p1, p0, Lflix/com/vision/processors/english/d;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lflix/com/vision/processors/english/d;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lflix/com/vision/processors/english/d;->e:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lflix/com/vision/processors/english/A;

    .line 9
    .line 10
    iget-object v0, v0, Lflix/com/vision/processors/english/A;->a:Lflix/com/vision/processors/english/B;

    .line 11
    .line 12
    iget-object v1, v0, Lflix/com/vision/processors/english/B;->a:Landroid/webkit/WebView;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    const-string v0, "RidoMoviesProcessor"

    .line 17
    .line 18
    const-string v1, "WebView was nullified before extraction."

    .line 19
    .line 20
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lflix/com/vision/processors/english/o;

    .line 25
    .line 26
    const/4 v3, 0x4

    .line 27
    invoke-direct {v2, v0, v3}, Lflix/com/vision/processors/english/o;-><init>(Lflix/com/vision/processors/english/m;I)V

    .line 28
    .line 29
    .line 30
    const-string v0, "(function() {   return document.documentElement.outerHTML;})();"

    .line 31
    .line 32
    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void

    .line 36
    :pswitch_0
    iget-object v0, p0, Lflix/com/vision/processors/english/d;->e:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v0, Lflix/com/vision/processors/english/x;

    .line 39
    .line 40
    iget-object v0, v0, Lflix/com/vision/processors/english/x;->a:Lflix/com/vision/processors/english/y;

    .line 41
    .line 42
    iget-object v1, v0, Lflix/com/vision/processors/english/y;->b:Landroid/webkit/WebView;

    .line 43
    .line 44
    if-nez v1, :cond_1

    .line 45
    .line 46
    const-string v0, "RidoMoviesProcessor"

    .line 47
    .line 48
    const-string v1, "WebView was nullified before extraction."

    .line 49
    .line 50
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    new-instance v2, Lflix/com/vision/processors/english/o;

    .line 55
    .line 56
    const/4 v3, 0x3

    .line 57
    invoke-direct {v2, v0, v3}, Lflix/com/vision/processors/english/o;-><init>(Lflix/com/vision/processors/english/m;I)V

    .line 58
    .line 59
    .line 60
    const-string v0, "(function() {   return document.documentElement.outerHTML;})();"

    .line 61
    .line 62
    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 63
    .line 64
    .line 65
    :goto_1
    return-void

    .line 66
    :pswitch_1
    iget-object v0, p0, Lflix/com/vision/processors/english/d;->e:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v0, Lflix/com/vision/processors/english/y;

    .line 69
    .line 70
    iget-object v1, v0, Lflix/com/vision/processors/english/y;->b:Landroid/webkit/WebView;

    .line 71
    .line 72
    if-eqz v1, :cond_2

    .line 73
    .line 74
    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    .line 75
    .line 76
    .line 77
    const/4 v1, 0x0

    .line 78
    iput-object v1, v0, Lflix/com/vision/processors/english/y;->b:Landroid/webkit/WebView;

    .line 79
    .line 80
    :cond_2
    return-void

    .line 81
    :pswitch_2
    iget-object v0, p0, Lflix/com/vision/processors/english/d;->e:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v0, Lflix/com/vision/processors/english/u;

    .line 84
    .line 85
    iget-object v0, v0, Lflix/com/vision/processors/english/u;->a:Lflix/com/vision/processors/english/v;

    .line 86
    .line 87
    iget-object v1, v0, Lflix/com/vision/processors/english/v;->a:Landroid/webkit/WebView;

    .line 88
    .line 89
    if-nez v1, :cond_3

    .line 90
    .line 91
    const-string v0, "RidoProcessor"

    .line 92
    .line 93
    const-string v1, "WebView was nullified before extraction could start."

    .line 94
    .line 95
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_3
    new-instance v2, Lflix/com/vision/processors/english/o;

    .line 100
    .line 101
    const/4 v3, 0x2

    .line 102
    invoke-direct {v2, v0, v3}, Lflix/com/vision/processors/english/o;-><init>(Lflix/com/vision/processors/english/m;I)V

    .line 103
    .line 104
    .line 105
    const-string v0, "(function() {   var el = document.getElementById(\'detailConfig\');  return el ? el.getAttribute(\'data-videos\') : null;})();"

    .line 106
    .line 107
    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 108
    .line 109
    .line 110
    :goto_2
    return-void

    .line 111
    :pswitch_3
    iget-object v0, p0, Lflix/com/vision/processors/english/d;->e:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v0, Lflix/com/vision/processors/english/v;

    .line 114
    .line 115
    iget-object v1, v0, Lflix/com/vision/processors/english/v;->a:Landroid/webkit/WebView;

    .line 116
    .line 117
    if-eqz v1, :cond_5

    .line 118
    .line 119
    const/4 v2, 0x0

    .line 120
    :try_start_0
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    if-eqz v1, :cond_4

    .line 125
    .line 126
    iget-object v1, v0, Lflix/com/vision/processors/english/v;->a:Landroid/webkit/WebView;

    .line 127
    .line 128
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    check-cast v1, Landroid/view/ViewGroup;

    .line 133
    .line 134
    iget-object v3, v0, Lflix/com/vision/processors/english/v;->a:Landroid/webkit/WebView;

    .line 135
    .line 136
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 137
    .line 138
    .line 139
    goto :goto_3

    .line 140
    :catchall_0
    move-exception v1

    .line 141
    goto :goto_6

    .line 142
    :catch_0
    move-exception v1

    .line 143
    goto :goto_5

    .line 144
    :cond_4
    :goto_3
    iget-object v1, v0, Lflix/com/vision/processors/english/v;->a:Landroid/webkit/WebView;

    .line 145
    .line 146
    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    .line 148
    .line 149
    :goto_4
    iput-object v2, v0, Lflix/com/vision/processors/english/v;->a:Landroid/webkit/WebView;

    .line 150
    .line 151
    goto :goto_7

    .line 152
    :goto_5
    :try_start_1
    const-string v3, "RidoProcessor"

    .line 153
    .line 154
    const-string v4, "Error destroying webView"

    .line 155
    .line 156
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    .line 158
    .line 159
    goto :goto_4

    .line 160
    :goto_6
    iput-object v2, v0, Lflix/com/vision/processors/english/v;->a:Landroid/webkit/WebView;

    .line 161
    .line 162
    throw v1

    .line 163
    :cond_5
    :goto_7
    return-void

    .line 164
    :pswitch_4
    iget-object v0, p0, Lflix/com/vision/processors/english/d;->e:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast v0, Lflix/com/vision/processors/english/r;

    .line 167
    .line 168
    iget-object v0, v0, Lflix/com/vision/processors/english/r;->a:Lflix/com/vision/processors/english/s;

    .line 169
    .line 170
    iget-object v1, v0, Lflix/com/vision/processors/english/s;->a:Landroid/webkit/WebView;

    .line 171
    .line 172
    if-nez v1, :cond_6

    .line 173
    .line 174
    const-string v0, "RidoMoviesProcessor"

    .line 175
    .line 176
    const-string v1, "WebView was nullified before extraction."

    .line 177
    .line 178
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    goto :goto_8

    .line 182
    :cond_6
    new-instance v2, Lflix/com/vision/processors/english/o;

    .line 183
    .line 184
    const/4 v3, 0x1

    .line 185
    invoke-direct {v2, v0, v3}, Lflix/com/vision/processors/english/o;-><init>(Lflix/com/vision/processors/english/m;I)V

    .line 186
    .line 187
    .line 188
    const-string v0, "(function() {   var el = document.getElementById(\'detailConfig\');  return el ? el.getAttribute(\'data-videos\') : null;})();"

    .line 189
    .line 190
    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 191
    .line 192
    .line 193
    :goto_8
    return-void

    .line 194
    :pswitch_5
    iget-object v0, p0, Lflix/com/vision/processors/english/d;->e:Ljava/lang/Object;

    .line 195
    .line 196
    check-cast v0, Lflix/com/vision/processors/english/s;

    .line 197
    .line 198
    iget-object v1, v0, Lflix/com/vision/processors/english/s;->a:Landroid/webkit/WebView;

    .line 199
    .line 200
    if-eqz v1, :cond_7

    .line 201
    .line 202
    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    .line 203
    .line 204
    .line 205
    const/4 v1, 0x0

    .line 206
    iput-object v1, v0, Lflix/com/vision/processors/english/s;->a:Landroid/webkit/WebView;

    .line 207
    .line 208
    :cond_7
    return-void

    .line 209
    :pswitch_6
    iget-object v0, p0, Lflix/com/vision/processors/english/d;->e:Ljava/lang/Object;

    .line 210
    .line 211
    check-cast v0, Lflix/com/vision/processors/english/p;

    .line 212
    .line 213
    iget-object v0, v0, Lflix/com/vision/processors/english/p;->a:Lflix/com/vision/processors/english/q;

    .line 214
    .line 215
    iget-object v1, v0, Lflix/com/vision/processors/english/q;->e:Landroid/webkit/WebView;

    .line 216
    .line 217
    if-nez v1, :cond_8

    .line 218
    .line 219
    const-string v0, "RidoProcessor"

    .line 220
    .line 221
    const-string v1, "WebView was nullified before extraction could start."

    .line 222
    .line 223
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .line 225
    .line 226
    goto :goto_9

    .line 227
    :cond_8
    new-instance v2, Lflix/com/vision/processors/english/o;

    .line 228
    .line 229
    const/4 v3, 0x0

    .line 230
    invoke-direct {v2, v0, v3}, Lflix/com/vision/processors/english/o;-><init>(Lflix/com/vision/processors/english/m;I)V

    .line 231
    .line 232
    .line 233
    const-string v0, "(function() {   var el = document.getElementById(\'serverselector\');  return el ? el.innerHTML : null;})();"

    .line 234
    .line 235
    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 236
    .line 237
    .line 238
    :goto_9
    return-void

    .line 239
    :pswitch_7
    iget-object v0, p0, Lflix/com/vision/processors/english/d;->e:Ljava/lang/Object;

    .line 240
    .line 241
    check-cast v0, Lflix/com/vision/processors/english/m;

    .line 242
    .line 243
    iget-object v1, v0, Lflix/com/vision/processors/english/m;->ids:Ljava/util/ArrayDeque;

    .line 244
    .line 245
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    check-cast v1, Ljava/lang/Integer;

    .line 250
    .line 251
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    invoke-virtual {v0, v1}, Lflix/com/vision/processors/english/m;->c(I)V

    .line 256
    .line 257
    .line 258
    return-void

    .line 259
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
