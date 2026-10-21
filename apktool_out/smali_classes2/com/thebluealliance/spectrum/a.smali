.class public Lcom/thebluealliance/spectrum/a;
.super Landroidx/fragment/app/y;
.source "SourceFile"

# interfaces
.implements Ln4/e;


# instance fields
.field public A0:I

.field public B0:Z

.field public C0:Ln4/d;

.field public D0:I

.field public E0:I

.field public F0:I

.field public v0:Ljava/lang/CharSequence;

.field public w0:Ljava/lang/CharSequence;

.field public x0:Ljava/lang/CharSequence;

.field public y0:[I

.field public z0:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/y;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/thebluealliance/spectrum/a;->z0:I

    .line 6
    .line 7
    iput v0, p0, Lcom/thebluealliance/spectrum/a;->A0:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lcom/thebluealliance/spectrum/a;->B0:Z

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput v1, p0, Lcom/thebluealliance/spectrum/a;->D0:I

    .line 14
    .line 15
    iput v0, p0, Lcom/thebluealliance/spectrum/a;->E0:I

    .line 16
    .line 17
    iput v1, p0, Lcom/thebluealliance/spectrum/a;->F0:I

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/y;->onCancel(Landroid/content/DialogInterface;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/thebluealliance/spectrum/a;->C0:Ln4/d;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iget v1, p0, Lcom/thebluealliance/spectrum/a;->z0:I

    .line 10
    .line 11
    invoke-interface {p1, v0, v1}, Ln4/d;->onColorSelected(ZI)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public onColorSelected(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/thebluealliance/spectrum/a;->A0:I

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/thebluealliance/spectrum/a;->B0:Z

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/thebluealliance/spectrum/a;->C0:Ln4/d;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-interface {v0, v1, p1}, Ln4/d;->onColorSelected(ZI)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/y;->dismiss()V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/y;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/C;->getArguments()Landroid/os/Bundle;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v1, "title"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iput-object v1, p0, Lcom/thebluealliance/spectrum/a;->v0:Ljava/lang/CharSequence;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/C;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    sget v2, Lcom/thebluealliance/spectrum/R$string;->default_dialog_title:I

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iput-object v1, p0, Lcom/thebluealliance/spectrum/a;->v0:Ljava/lang/CharSequence;

    .line 36
    .line 37
    :goto_0
    if-eqz v0, :cond_1

    .line 38
    .line 39
    const-string v1, "colors"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iput-object v1, p0, Lcom/thebluealliance/spectrum/a;->y0:[I

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    const/high16 v1, -0x1000000

    .line 55
    .line 56
    filled-new-array {v1}, [I

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    iput-object v1, p0, Lcom/thebluealliance/spectrum/a;->y0:[I

    .line 61
    .line 62
    :goto_1
    iget-object v1, p0, Lcom/thebluealliance/spectrum/a;->y0:[I

    .line 63
    .line 64
    if-eqz v1, :cond_b

    .line 65
    .line 66
    array-length v1, v1

    .line 67
    if-eqz v1, :cond_b

    .line 68
    .line 69
    const-string v1, "selected_color"

    .line 70
    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_2

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    iput v2, p0, Lcom/thebluealliance/spectrum/a;->A0:I

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_2
    iget-object v2, p0, Lcom/thebluealliance/spectrum/a;->y0:[I

    .line 87
    .line 88
    const/4 v3, 0x0

    .line 89
    aget v2, v2, v3

    .line 90
    .line 91
    iput v2, p0, Lcom/thebluealliance/spectrum/a;->A0:I

    .line 92
    .line 93
    :goto_2
    if-eqz v0, :cond_3

    .line 94
    .line 95
    const-string v2, "origina_selected_color"

    .line 96
    .line 97
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-eqz v3, :cond_3

    .line 102
    .line 103
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    iput v2, p0, Lcom/thebluealliance/spectrum/a;->z0:I

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_3
    iget v2, p0, Lcom/thebluealliance/spectrum/a;->A0:I

    .line 111
    .line 112
    iput v2, p0, Lcom/thebluealliance/spectrum/a;->z0:I

    .line 113
    .line 114
    :goto_3
    if-eqz v0, :cond_4

    .line 115
    .line 116
    const-string v2, "should_dismiss_on_color_selected"

    .line 117
    .line 118
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-eqz v3, :cond_4

    .line 123
    .line 124
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    iput-boolean v2, p0, Lcom/thebluealliance/spectrum/a;->B0:Z

    .line 129
    .line 130
    goto :goto_4

    .line 131
    :cond_4
    const/4 v2, 0x1

    .line 132
    iput-boolean v2, p0, Lcom/thebluealliance/spectrum/a;->B0:Z

    .line 133
    .line 134
    :goto_4
    if-eqz v0, :cond_5

    .line 135
    .line 136
    const-string v2, "positive_button_text"

    .line 137
    .line 138
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    if-eqz v3, :cond_5

    .line 143
    .line 144
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    iput-object v2, p0, Lcom/thebluealliance/spectrum/a;->w0:Ljava/lang/CharSequence;

    .line 149
    .line 150
    goto :goto_5

    .line 151
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/C;->getContext()Landroid/content/Context;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    const v3, 0x104000a

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    iput-object v2, p0, Lcom/thebluealliance/spectrum/a;->w0:Ljava/lang/CharSequence;

    .line 163
    .line 164
    :goto_5
    if-eqz v0, :cond_6

    .line 165
    .line 166
    const-string v2, "negative_button_text"

    .line 167
    .line 168
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    if-eqz v3, :cond_6

    .line 173
    .line 174
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    iput-object v2, p0, Lcom/thebluealliance/spectrum/a;->x0:Ljava/lang/CharSequence;

    .line 179
    .line 180
    goto :goto_6

    .line 181
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/C;->getContext()Landroid/content/Context;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    const/high16 v3, 0x1040000

    .line 186
    .line 187
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    iput-object v2, p0, Lcom/thebluealliance/spectrum/a;->x0:Ljava/lang/CharSequence;

    .line 192
    .line 193
    :goto_6
    if-eqz v0, :cond_7

    .line 194
    .line 195
    const-string v2, "border_width"

    .line 196
    .line 197
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    if-eqz v3, :cond_7

    .line 202
    .line 203
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    iput v2, p0, Lcom/thebluealliance/spectrum/a;->D0:I

    .line 208
    .line 209
    :cond_7
    if-eqz v0, :cond_8

    .line 210
    .line 211
    const-string v2, "fixed_column_count"

    .line 212
    .line 213
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 214
    .line 215
    .line 216
    move-result v3

    .line 217
    if-eqz v3, :cond_8

    .line 218
    .line 219
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 220
    .line 221
    .line 222
    move-result v2

    .line 223
    iput v2, p0, Lcom/thebluealliance/spectrum/a;->E0:I

    .line 224
    .line 225
    :cond_8
    if-eqz v0, :cond_9

    .line 226
    .line 227
    const-string v2, "theme_res_id"

    .line 228
    .line 229
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    if-eqz v3, :cond_9

    .line 234
    .line 235
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    iput v0, p0, Lcom/thebluealliance/spectrum/a;->F0:I

    .line 240
    .line 241
    :cond_9
    if-eqz p1, :cond_a

    .line 242
    .line 243
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    if-eqz v0, :cond_a

    .line 248
    .line 249
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 250
    .line 251
    .line 252
    move-result p1

    .line 253
    iput p1, p0, Lcom/thebluealliance/spectrum/a;->A0:I

    .line 254
    .line 255
    :cond_a
    return-void

    .line 256
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 257
    .line 258
    const-string v0, "SpectrumDialog must be created with an array of colors"

    .line 259
    .line 260
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    throw p1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 1
    iget p1, p0, Lcom/thebluealliance/spectrum/a;->F0:I

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Le/r;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/C;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v1, p0, Lcom/thebluealliance/spectrum/a;->F0:I

    .line 12
    .line 13
    invoke-direct {p1, v0, v1}, Le/r;-><init>(Landroid/content/Context;I)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, Le/r;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/C;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-direct {p1, v0}, Le/r;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    iget-object v0, p0, Lcom/thebluealliance/spectrum/a;->v0:Ljava/lang/CharSequence;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Le/r;->setTitle(Ljava/lang/CharSequence;)Le/r;

    .line 29
    .line 30
    .line 31
    iget-boolean v0, p0, Lcom/thebluealliance/spectrum/a;->B0:Z

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1, v1, v1}, Le/r;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Le/r;

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/thebluealliance/spectrum/a;->w0:Ljava/lang/CharSequence;

    .line 41
    .line 42
    new-instance v2, Ln4/a;

    .line 43
    .line 44
    invoke-direct {v2, p0}, Ln4/a;-><init>(Lcom/thebluealliance/spectrum/a;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0, v2}, Le/r;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Le/r;

    .line 48
    .line 49
    .line 50
    :goto_1
    iget-object v0, p0, Lcom/thebluealliance/spectrum/a;->x0:Ljava/lang/CharSequence;

    .line 51
    .line 52
    new-instance v2, Ln4/b;

    .line 53
    .line 54
    invoke-direct {v2, p0}, Ln4/b;-><init>(Lcom/thebluealliance/spectrum/a;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0, v2}, Le/r;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Le/r;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/C;->getContext()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    sget v2, Lcom/thebluealliance/spectrum/R$layout;->dialog_color_picker:I

    .line 69
    .line 70
    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    sget v1, Lcom/thebluealliance/spectrum/R$id;->palette:I

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Lcom/thebluealliance/spectrum/SpectrumPalette;

    .line 81
    .line 82
    iget-object v2, p0, Lcom/thebluealliance/spectrum/a;->y0:[I

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Lcom/thebluealliance/spectrum/SpectrumPalette;->setColors([I)V

    .line 85
    .line 86
    .line 87
    iget v2, p0, Lcom/thebluealliance/spectrum/a;->A0:I

    .line 88
    .line 89
    invoke-virtual {v1, v2}, Lcom/thebluealliance/spectrum/SpectrumPalette;->setSelectedColor(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, p0}, Lcom/thebluealliance/spectrum/SpectrumPalette;->setOnColorSelectedListener(Ln4/e;)V

    .line 93
    .line 94
    .line 95
    iget v2, p0, Lcom/thebluealliance/spectrum/a;->D0:I

    .line 96
    .line 97
    if-eqz v2, :cond_2

    .line 98
    .line 99
    invoke-virtual {v1, v2}, Lcom/thebluealliance/spectrum/SpectrumPalette;->setOutlineWidth(I)V

    .line 100
    .line 101
    .line 102
    :cond_2
    iget v2, p0, Lcom/thebluealliance/spectrum/a;->E0:I

    .line 103
    .line 104
    if-lez v2, :cond_3

    .line 105
    .line 106
    invoke-virtual {v1, v2}, Lcom/thebluealliance/spectrum/SpectrumPalette;->setFixedColumnCount(I)V

    .line 107
    .line 108
    .line 109
    :cond_3
    invoke-virtual {p1, v0}, Le/r;->setView(Landroid/view/View;)Le/r;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Le/r;->create()Le/s;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/y;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/thebluealliance/spectrum/a;->C0:Ln4/d;

    .line 6
    .line 7
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/y;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "selected_color"

    .line 5
    .line 6
    iget v1, p0, Lcom/thebluealliance/spectrum/a;->A0:I

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setOnColorSelectedListener(Ln4/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/thebluealliance/spectrum/a;->C0:Ln4/d;

    .line 2
    .line 3
    return-void
.end method
