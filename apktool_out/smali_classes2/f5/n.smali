.class public final synthetic Lf5/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/tv/M3UImportActivity;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/tv/M3UImportActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lf5/n;->b:I

    iput-object p1, p0, Lf5/n;->e:Lflix/com/vision/tv/M3UImportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget p1, p0, Lf5/n;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lf5/n;->e:Lflix/com/vision/tv/M3UImportActivity;

    .line 7
    .line 8
    iget-object v0, p1, Lflix/com/vision/tv/M3UImportActivity;->r:Landroid/widget/EditText;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, " "

    .line 19
    .line 20
    const-string v2, ""

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v3, "http://"

    .line 31
    .line 32
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const/4 v4, 0x0

    .line 37
    if-nez v3, :cond_0

    .line 38
    .line 39
    const-string v3, "https://"

    .line 40
    .line 41
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_0

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string v0, "url not valid"

    .line 52
    .line 53
    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 58
    .line 59
    .line 60
    goto/16 :goto_1

    .line 61
    .line 62
    :cond_0
    iget-object v0, p1, Lflix/com/vision/tv/M3UImportActivity;->s:Landroid/widget/EditText;

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-nez v3, :cond_2

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    const/4 v3, 0x2

    .line 83
    if-ge v0, v3, :cond_1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    iget-object v0, p1, Lflix/com/vision/tv/M3UImportActivity;->r:Landroid/widget/EditText;

    .line 87
    .line 88
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iget-object v3, p1, Lflix/com/vision/tv/M3UImportActivity;->s:Landroid/widget/EditText;

    .line 105
    .line 106
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    new-instance v5, Lflix/com/vision/models/HistoryTVLink;

    .line 115
    .line 116
    invoke-direct {v5}, Lflix/com/vision/models/HistoryTVLink;-><init>()V

    .line 117
    .line 118
    .line 119
    iput-object v3, v5, Lflix/com/vision/models/HistoryTVLink;->name:Ljava/lang/String;

    .line 120
    .line 121
    iput-object v0, v5, Lflix/com/vision/models/HistoryTVLink;->url:Ljava/lang/String;

    .line 122
    .line 123
    const-string v3, "2"

    .line 124
    .line 125
    iput-object v3, v5, Lflix/com/vision/models/HistoryTVLink;->type:Ljava/lang/String;

    .line 126
    .line 127
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    iget-object v3, v3, Lflix/com/vision/App;->r:LP4/e;

    .line 132
    .line 133
    invoke-virtual {v3, v5}, LP4/e;->addHistoryIPTV(Lflix/com/vision/models/HistoryTVLink;)Z

    .line 134
    .line 135
    .line 136
    new-instance v3, Landroid/content/Intent;

    .line 137
    .line 138
    const-class v6, Lflix/com/vision/tv/TVCategoriesActivity;

    .line 139
    .line 140
    invoke-direct {v3, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    .line 142
    .line 143
    const-string v6, "is_file"

    .line 144
    .line 145
    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    const-string v1, "url"

    .line 157
    .line 158
    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    .line 160
    .line 161
    iget-object v0, p1, Lflix/com/vision/tv/M3UImportActivity;->s:Landroid/widget/EditText;

    .line 162
    .line 163
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    const-string v1, "name"

    .line 172
    .line 173
    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 177
    .line 178
    .line 179
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    iget-object v0, v0, Lflix/com/vision/App;->r:LP4/e;

    .line 184
    .line 185
    invoke-virtual {v0, v5}, LP4/e;->addHistoryIPTV(Lflix/com/vision/models/HistoryTVLink;)Z

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 189
    .line 190
    .line 191
    goto :goto_1

    .line 192
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    const-string v0, "Please enter playlist name"

    .line 197
    .line 198
    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 203
    .line 204
    .line 205
    :goto_1
    return-void

    .line 206
    :pswitch_0
    iget-object p1, p0, Lf5/n;->e:Lflix/com/vision/tv/M3UImportActivity;

    .line 207
    .line 208
    iget-object v0, p1, Lflix/com/vision/tv/M3UImportActivity;->r:Landroid/widget/EditText;

    .line 209
    .line 210
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    const-string v1, " "

    .line 219
    .line 220
    const-string v2, ""

    .line 221
    .line 222
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    const-string v3, "http://"

    .line 231
    .line 232
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 233
    .line 234
    .line 235
    move-result v3

    .line 236
    const/4 v4, 0x0

    .line 237
    if-nez v3, :cond_3

    .line 238
    .line 239
    const-string v3, "https://"

    .line 240
    .line 241
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    if-nez v0, :cond_3

    .line 246
    .line 247
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    const-string v0, "url not valid. should start with http:// or https://"

    .line 252
    .line 253
    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 258
    .line 259
    .line 260
    goto :goto_3

    .line 261
    :cond_3
    iget-object v0, p1, Lflix/com/vision/tv/M3UImportActivity;->s:Landroid/widget/EditText;

    .line 262
    .line 263
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 272
    .line 273
    .line 274
    move-result v3

    .line 275
    if-nez v3, :cond_5

    .line 276
    .line 277
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    const/4 v3, 0x2

    .line 282
    if-ge v0, v3, :cond_4

    .line 283
    .line 284
    goto :goto_2

    .line 285
    :cond_4
    iget-object v0, p1, Lflix/com/vision/tv/M3UImportActivity;->r:Landroid/widget/EditText;

    .line 286
    .line 287
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    iget-object v1, p1, Lflix/com/vision/tv/M3UImportActivity;->s:Landroid/widget/EditText;

    .line 304
    .line 305
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    new-instance v2, Lflix/com/vision/models/HistoryTVLink;

    .line 314
    .line 315
    invoke-direct {v2}, Lflix/com/vision/models/HistoryTVLink;-><init>()V

    .line 316
    .line 317
    .line 318
    iput-object v1, v2, Lflix/com/vision/models/HistoryTVLink;->name:Ljava/lang/String;

    .line 319
    .line 320
    iput-object v0, v2, Lflix/com/vision/models/HistoryTVLink;->url:Ljava/lang/String;

    .line 321
    .line 322
    const-string v0, "2"

    .line 323
    .line 324
    iput-object v0, v2, Lflix/com/vision/models/HistoryTVLink;->type:Ljava/lang/String;

    .line 325
    .line 326
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    iget-object v0, v0, Lflix/com/vision/App;->r:LP4/e;

    .line 331
    .line 332
    invoke-virtual {v0, v2}, LP4/e;->addHistoryIPTV(Lflix/com/vision/models/HistoryTVLink;)Z

    .line 333
    .line 334
    .line 335
    new-instance v0, Landroid/content/Intent;

    .line 336
    .line 337
    const-class v1, Lflix/com/vision/tv/MyImportActivity;

    .line 338
    .line 339
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 346
    .line 347
    .line 348
    goto :goto_3

    .line 349
    :cond_5
    :goto_2
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 350
    .line 351
    .line 352
    move-result-object p1

    .line 353
    const-string v0, "Please enter playlist name"

    .line 354
    .line 355
    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 356
    .line 357
    .line 358
    move-result-object p1

    .line 359
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 360
    .line 361
    .line 362
    :goto_3
    return-void

    .line 363
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
