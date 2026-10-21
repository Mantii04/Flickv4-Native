.class public Lflix/com/vision/activities/adult/AdultPINSetupActivity;
.super Le/v;
.source "SourceFile"


# static fields
.field public static final synthetic t:I


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
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/H;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    sget p1, Lflix/com/vision/R$layout;->activity_adult_pin_setup:I

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Le/v;->setContentView(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    sget-object v2, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 16
    .line 17
    const-string v2, "fonts/pproduct_sans_rregular.ttf"

    .line 18
    .line 19
    invoke-static {p1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultPINSetupActivity;->e:Landroid/graphics/Typeface;

    .line 24
    .line 25
    new-instance p1, Lh5/j;

    .line 26
    .line 27
    invoke-direct {p1}, Lh5/j;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultPINSetupActivity;->b:Lh5/j;

    .line 31
    .line 32
    sget p1, Lflix/com/vision/R$id;->main_relative_view:I

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Landroid/widget/FrameLayout;

    .line 39
    .line 40
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultPINSetupActivity;->q:Landroid/widget/FrameLayout;

    .line 41
    .line 42
    sget p1, Lflix/com/vision/R$id;->adult_pin_set_title:I

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Landroid/widget/TextView;

    .line 49
    .line 50
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultPINSetupActivity;->m:Landroid/widget/TextView;

    .line 51
    .line 52
    sget p1, Lflix/com/vision/R$id;->save_button:I

    .line 53
    .line 54
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 59
    .line 60
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultPINSetupActivity;->p:Landroid/widget/RelativeLayout;

    .line 61
    .line 62
    sget p1, Lflix/com/vision/R$id;->cancel_button:I

    .line 63
    .line 64
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 69
    .line 70
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultPINSetupActivity;->n:Landroid/widget/RelativeLayout;

    .line 71
    .line 72
    sget p1, Lflix/com/vision/R$id;->edit_text_enter_pin:I

    .line 73
    .line 74
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Landroid/widget/EditText;

    .line 79
    .line 80
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultPINSetupActivity;->r:Landroid/widget/EditText;

    .line 81
    .line 82
    sget p1, Lflix/com/vision/R$id;->edit_text_repeat_pin:I

    .line 83
    .line 84
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Landroid/widget/EditText;

    .line 89
    .line 90
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultPINSetupActivity;->s:Landroid/widget/EditText;

    .line 91
    .line 92
    sget p1, Lflix/com/vision/R$id;->save_open_label:I

    .line 93
    .line 94
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Landroid/widget/TextView;

    .line 99
    .line 100
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultPINSetupActivity;->f:Landroid/widget/TextView;

    .line 101
    .line 102
    sget p1, Lflix/com/vision/R$id;->save_label:I

    .line 103
    .line 104
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    check-cast p1, Landroid/widget/TextView;

    .line 109
    .line 110
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultPINSetupActivity;->j:Landroid/widget/TextView;

    .line 111
    .line 112
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultPINSetupActivity;->q:Landroid/widget/FrameLayout;

    .line 113
    .line 114
    invoke-static {p1}, Lflix/com/vision/App;->extractDominantColor(Landroid/view/View;)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultPINSetupActivity;->r:Landroid/widget/EditText;

    .line 118
    .line 119
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultPINSetupActivity;->p:Landroid/widget/RelativeLayout;

    .line 123
    .line 124
    new-instance v2, Lz4/f;

    .line 125
    .line 126
    invoke-direct {v2, p0, v1}, Lz4/f;-><init>(Lflix/com/vision/activities/adult/AdultPINSetupActivity;I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 130
    .line 131
    .line 132
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultPINSetupActivity;->n:Landroid/widget/RelativeLayout;

    .line 133
    .line 134
    new-instance v2, Lz4/f;

    .line 135
    .line 136
    invoke-direct {v2, p0, v0}, Lz4/f;-><init>(Lflix/com/vision/activities/adult/AdultPINSetupActivity;I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 140
    .line 141
    .line 142
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultPINSetupActivity;->n:Landroid/widget/RelativeLayout;

    .line 143
    .line 144
    new-instance v2, Lz4/g;

    .line 145
    .line 146
    invoke-direct {v2, p0, v1}, Lz4/g;-><init>(Lflix/com/vision/activities/adult/AdultPINSetupActivity;I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    .line 151
    .line 152
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultPINSetupActivity;->p:Landroid/widget/RelativeLayout;

    .line 153
    .line 154
    new-instance v1, Lz4/g;

    .line 155
    .line 156
    invoke-direct {v1, p0, v0}, Lz4/g;-><init>(Lflix/com/vision/activities/adult/AdultPINSetupActivity;I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    .line 161
    .line 162
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultPINSetupActivity;->b:Lh5/j;

    .line 163
    .line 164
    iget-object v0, p0, Lflix/com/vision/activities/adult/AdultPINSetupActivity;->f:Landroid/widget/TextView;

    .line 165
    .line 166
    iget-object v1, p0, Lflix/com/vision/activities/adult/AdultPINSetupActivity;->e:Landroid/graphics/Typeface;

    .line 167
    .line 168
    invoke-virtual {p1, v0, v1}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 169
    .line 170
    .line 171
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultPINSetupActivity;->b:Lh5/j;

    .line 172
    .line 173
    iget-object v0, p0, Lflix/com/vision/activities/adult/AdultPINSetupActivity;->m:Landroid/widget/TextView;

    .line 174
    .line 175
    iget-object v1, p0, Lflix/com/vision/activities/adult/AdultPINSetupActivity;->e:Landroid/graphics/Typeface;

    .line 176
    .line 177
    invoke-virtual {p1, v0, v1}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 178
    .line 179
    .line 180
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultPINSetupActivity;->b:Lh5/j;

    .line 181
    .line 182
    iget-object v0, p0, Lflix/com/vision/activities/adult/AdultPINSetupActivity;->j:Landroid/widget/TextView;

    .line 183
    .line 184
    iget-object v1, p0, Lflix/com/vision/activities/adult/AdultPINSetupActivity;->e:Landroid/graphics/Typeface;

    .line 185
    .line 186
    invoke-virtual {p1, v0, v1}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 187
    .line 188
    .line 189
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultPINSetupActivity;->b:Lh5/j;

    .line 190
    .line 191
    iget-object v0, p0, Lflix/com/vision/activities/adult/AdultPINSetupActivity;->r:Landroid/widget/EditText;

    .line 192
    .line 193
    iget-object v1, p0, Lflix/com/vision/activities/adult/AdultPINSetupActivity;->e:Landroid/graphics/Typeface;

    .line 194
    .line 195
    invoke-virtual {p1, v0, v1}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 196
    .line 197
    .line 198
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultPINSetupActivity;->b:Lh5/j;

    .line 199
    .line 200
    iget-object v0, p0, Lflix/com/vision/activities/adult/AdultPINSetupActivity;->s:Landroid/widget/EditText;

    .line 201
    .line 202
    iget-object v1, p0, Lflix/com/vision/activities/adult/AdultPINSetupActivity;->e:Landroid/graphics/Typeface;

    .line 203
    .line 204
    invoke-virtual {p1, v0, v1}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 205
    .line 206
    .line 207
    return-void
.end method
