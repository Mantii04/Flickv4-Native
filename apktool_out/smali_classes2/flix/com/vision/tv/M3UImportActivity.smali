.class public Lflix/com/vision/tv/M3UImportActivity;
.super Le/v;
.source "SourceFile"


# instance fields
.field public b:Lh5/j;

.field public e:Landroid/graphics/Typeface;

.field public f:Landroid/widget/TextView;

.field public j:Landroid/widget/TextView;

.field public m:Landroid/widget/TextView;

.field public n:Landroid/widget/RelativeLayout;

.field public p:Landroid/widget/RelativeLayout;

.field public q:Landroid/widget/FrameLayout;

.field public r:Landroid/widget/EditText;

.field public s:Landroid/widget/EditText;


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
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/H;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lflix/com/vision/R$layout;->activity_m3u_import:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Le/v;->setContentView(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget-object v0, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 14
    .line 15
    const-string v0, "fonts/pproduct_sans_rregular.ttf"

    .line 16
    .line 17
    invoke-static {p1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lflix/com/vision/tv/M3UImportActivity;->e:Landroid/graphics/Typeface;

    .line 22
    .line 23
    new-instance p1, Lh5/j;

    .line 24
    .line 25
    invoke-direct {p1}, Lh5/j;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lflix/com/vision/tv/M3UImportActivity;->b:Lh5/j;

    .line 29
    .line 30
    sget p1, Lflix/com/vision/R$id;->main_relative_view:I

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Landroid/widget/FrameLayout;

    .line 37
    .line 38
    iput-object p1, p0, Lflix/com/vision/tv/M3UImportActivity;->q:Landroid/widget/FrameLayout;

    .line 39
    .line 40
    sget p1, Lflix/com/vision/R$id;->m3u_import_label:I

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Landroid/widget/TextView;

    .line 47
    .line 48
    iput-object p1, p0, Lflix/com/vision/tv/M3UImportActivity;->m:Landroid/widget/TextView;

    .line 49
    .line 50
    sget p1, Lflix/com/vision/R$id;->save_and_open_button:I

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 57
    .line 58
    iput-object p1, p0, Lflix/com/vision/tv/M3UImportActivity;->p:Landroid/widget/RelativeLayout;

    .line 59
    .line 60
    sget p1, Lflix/com/vision/R$id;->save_button:I

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 67
    .line 68
    iput-object p1, p0, Lflix/com/vision/tv/M3UImportActivity;->n:Landroid/widget/RelativeLayout;

    .line 69
    .line 70
    sget p1, Lflix/com/vision/R$id;->edit_text_url:I

    .line 71
    .line 72
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Landroid/widget/EditText;

    .line 77
    .line 78
    iput-object p1, p0, Lflix/com/vision/tv/M3UImportActivity;->r:Landroid/widget/EditText;

    .line 79
    .line 80
    sget p1, Lflix/com/vision/R$id;->edit_text_name:I

    .line 81
    .line 82
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    check-cast p1, Landroid/widget/EditText;

    .line 87
    .line 88
    iput-object p1, p0, Lflix/com/vision/tv/M3UImportActivity;->s:Landroid/widget/EditText;

    .line 89
    .line 90
    sget p1, Lflix/com/vision/R$id;->save_open_label:I

    .line 91
    .line 92
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    check-cast p1, Landroid/widget/TextView;

    .line 97
    .line 98
    iput-object p1, p0, Lflix/com/vision/tv/M3UImportActivity;->f:Landroid/widget/TextView;

    .line 99
    .line 100
    sget p1, Lflix/com/vision/R$id;->save_label:I

    .line 101
    .line 102
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    check-cast p1, Landroid/widget/TextView;

    .line 107
    .line 108
    iput-object p1, p0, Lflix/com/vision/tv/M3UImportActivity;->j:Landroid/widget/TextView;

    .line 109
    .line 110
    iget-object p1, p0, Lflix/com/vision/tv/M3UImportActivity;->q:Landroid/widget/FrameLayout;

    .line 111
    .line 112
    invoke-static {p1}, Lflix/com/vision/App;->extractDominantColor(Landroid/view/View;)V

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Lflix/com/vision/tv/M3UImportActivity;->n:Landroid/widget/RelativeLayout;

    .line 116
    .line 117
    new-instance v0, Lf5/n;

    .line 118
    .line 119
    const/4 v1, 0x0

    .line 120
    invoke-direct {v0, p0, v1}, Lf5/n;-><init>(Lflix/com/vision/tv/M3UImportActivity;I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    .line 125
    .line 126
    iget-object p1, p0, Lflix/com/vision/tv/M3UImportActivity;->p:Landroid/widget/RelativeLayout;

    .line 127
    .line 128
    new-instance v0, Lf5/n;

    .line 129
    .line 130
    const/4 v1, 0x1

    .line 131
    invoke-direct {v0, p0, v1}, Lf5/n;-><init>(Lflix/com/vision/tv/M3UImportActivity;I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    .line 136
    .line 137
    iget-object p1, p0, Lflix/com/vision/tv/M3UImportActivity;->b:Lh5/j;

    .line 138
    .line 139
    iget-object v0, p0, Lflix/com/vision/tv/M3UImportActivity;->f:Landroid/widget/TextView;

    .line 140
    .line 141
    iget-object v1, p0, Lflix/com/vision/tv/M3UImportActivity;->e:Landroid/graphics/Typeface;

    .line 142
    .line 143
    invoke-virtual {p1, v0, v1}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 144
    .line 145
    .line 146
    iget-object p1, p0, Lflix/com/vision/tv/M3UImportActivity;->b:Lh5/j;

    .line 147
    .line 148
    iget-object v0, p0, Lflix/com/vision/tv/M3UImportActivity;->j:Landroid/widget/TextView;

    .line 149
    .line 150
    iget-object v1, p0, Lflix/com/vision/tv/M3UImportActivity;->e:Landroid/graphics/Typeface;

    .line 151
    .line 152
    invoke-virtual {p1, v0, v1}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 153
    .line 154
    .line 155
    iget-object p1, p0, Lflix/com/vision/tv/M3UImportActivity;->b:Lh5/j;

    .line 156
    .line 157
    iget-object v0, p0, Lflix/com/vision/tv/M3UImportActivity;->r:Landroid/widget/EditText;

    .line 158
    .line 159
    iget-object v1, p0, Lflix/com/vision/tv/M3UImportActivity;->e:Landroid/graphics/Typeface;

    .line 160
    .line 161
    invoke-virtual {p1, v0, v1}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 162
    .line 163
    .line 164
    iget-object p1, p0, Lflix/com/vision/tv/M3UImportActivity;->b:Lh5/j;

    .line 165
    .line 166
    iget-object v0, p0, Lflix/com/vision/tv/M3UImportActivity;->s:Landroid/widget/EditText;

    .line 167
    .line 168
    iget-object v1, p0, Lflix/com/vision/tv/M3UImportActivity;->e:Landroid/graphics/Typeface;

    .line 169
    .line 170
    invoke-virtual {p1, v0, v1}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 171
    .line 172
    .line 173
    iget-object p1, p0, Lflix/com/vision/tv/M3UImportActivity;->b:Lh5/j;

    .line 174
    .line 175
    iget-object v0, p0, Lflix/com/vision/tv/M3UImportActivity;->m:Landroid/widget/TextView;

    .line 176
    .line 177
    iget-object v1, p0, Lflix/com/vision/tv/M3UImportActivity;->e:Landroid/graphics/Typeface;

    .line 178
    .line 179
    invoke-virtual {p1, v0, v1}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    const-string v0, "url"

    .line 187
    .line 188
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    const-string v1, "label"

    .line 197
    .line 198
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    if-eqz p1, :cond_0

    .line 203
    .line 204
    iget-object v1, p0, Lflix/com/vision/tv/M3UImportActivity;->r:Landroid/widget/EditText;

    .line 205
    .line 206
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    .line 208
    .line 209
    :cond_0
    if-eqz v0, :cond_1

    .line 210
    .line 211
    iget-object p1, p0, Lflix/com/vision/tv/M3UImportActivity;->s:Landroid/widget/EditText;

    .line 212
    .line 213
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    .line 215
    .line 216
    :cond_1
    return-void
.end method
