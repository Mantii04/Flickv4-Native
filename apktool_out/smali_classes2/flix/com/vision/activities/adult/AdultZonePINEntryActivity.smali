.class public Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;
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

.field public s:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/v;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;->s:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final e()V
    .locals 5

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;->r:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v1, v1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 16
    .line 17
    const-string v2, "pref_adult_zone_pin"

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const-string v1, ""

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-boolean v0, p0, Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;->s:Z

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 42
    .line 43
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v1, "pref_adult_zone_pin_set"

    .line 48
    .line 49
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 54
    .line 55
    .line 56
    new-instance v0, Landroid/content/Intent;

    .line 57
    .line 58
    const-class v1, Lflix/com/vision/activities/adult/AdultPINSetupActivity;

    .line 59
    .line 60
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {p0, v2}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    const-string v3, "Adult Only"

    .line 79
    .line 80
    invoke-virtual {v2, v3}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const-string v3, "Can you please confirm YOU ARE 18+ ?"

    .line 84
    .line 85
    invoke-virtual {v2, v3}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    new-instance v3, Lz4/p;

    .line 89
    .line 90
    const/4 v4, 0x2

    .line 91
    invoke-direct {v3, p0, v4}, Lz4/p;-><init>(Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;I)V

    .line 92
    .line 93
    .line 94
    const-string v4, "NEVER MIND"

    .line 95
    .line 96
    invoke-virtual {v2, v4, v3}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 97
    .line 98
    .line 99
    new-instance v3, Lz4/p;

    .line 100
    .line 101
    const/4 v4, 0x3

    .line 102
    invoke-direct {v3, p0, v4}, Lz4/p;-><init>(Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;I)V

    .line 103
    .line 104
    .line 105
    const-string v4, "YES, I AM"

    .line 106
    .line 107
    invoke-virtual {v2, v4, v3}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 108
    .line 109
    .line 110
    :try_start_0
    invoke-virtual {v2, v0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    const-string v2, "Wrong PIN!"

    .line 124
    .line 125
    const/4 v3, 0x1

    .line 126
    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 131
    .line 132
    .line 133
    iget-object v0, p0, Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;->r:Landroid/widget/EditText;

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    .line 137
    .line 138
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-super {p0, p1}, Landroidx/fragment/app/H;->onCreate(Landroid/os/Bundle;)V

    .line 3
    .line 4
    .line 5
    sget p1, Lflix/com/vision/R$layout;->adult_pin_entry_activity:I

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Le/v;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    sget-object v1, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 15
    .line 16
    const-string v1, "fonts/pproduct_sans_rregular.ttf"

    .line 17
    .line 18
    invoke-static {p1, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;->e:Landroid/graphics/Typeface;

    .line 23
    .line 24
    new-instance p1, Lh5/j;

    .line 25
    .line 26
    invoke-direct {p1}, Lh5/j;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;->b:Lh5/j;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v1, "isPINChange"

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    iput-boolean p1, p0, Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;->s:Z

    .line 43
    .line 44
    sget p1, Lflix/com/vision/R$id;->main_relative_view:I

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Landroid/widget/FrameLayout;

    .line 51
    .line 52
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;->q:Landroid/widget/FrameLayout;

    .line 53
    .line 54
    sget p1, Lflix/com/vision/R$id;->confirm_pin_button:I

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 61
    .line 62
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;->p:Landroid/widget/RelativeLayout;

    .line 63
    .line 64
    sget p1, Lflix/com/vision/R$id;->cancel_button:I

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 71
    .line 72
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;->n:Landroid/widget/RelativeLayout;

    .line 73
    .line 74
    sget p1, Lflix/com/vision/R$id;->edit_text_enter_pin:I

    .line 75
    .line 76
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Landroid/widget/EditText;

    .line 81
    .line 82
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;->r:Landroid/widget/EditText;

    .line 83
    .line 84
    sget p1, Lflix/com/vision/R$id;->adult_pin_entry_title:I

    .line 85
    .line 86
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Landroid/widget/TextView;

    .line 91
    .line 92
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;->m:Landroid/widget/TextView;

    .line 93
    .line 94
    sget p1, Lflix/com/vision/R$id;->confirm_adult_label:I

    .line 95
    .line 96
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    check-cast p1, Landroid/widget/TextView;

    .line 101
    .line 102
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;->f:Landroid/widget/TextView;

    .line 103
    .line 104
    sget p1, Lflix/com/vision/R$id;->save_label:I

    .line 105
    .line 106
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Landroid/widget/TextView;

    .line 111
    .line 112
    iput-object p1, p0, Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;->j:Landroid/widget/TextView;

    .line 113
    .line 114
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;->q:Landroid/widget/FrameLayout;

    .line 115
    .line 116
    invoke-static {p1}, Lflix/com/vision/App;->extractDominantColor(Landroid/view/View;)V

    .line 117
    .line 118
    .line 119
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;->p:Landroid/widget/RelativeLayout;

    .line 120
    .line 121
    new-instance v1, Lz4/o;

    .line 122
    .line 123
    invoke-direct {v1, p0, v2}, Lz4/o;-><init>(Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 127
    .line 128
    .line 129
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;->n:Landroid/widget/RelativeLayout;

    .line 130
    .line 131
    new-instance v1, Lz4/o;

    .line 132
    .line 133
    invoke-direct {v1, p0, v0}, Lz4/o;-><init>(Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 137
    .line 138
    .line 139
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;->r:Landroid/widget/EditText;

    .line 140
    .line 141
    new-instance v1, LE4/a;

    .line 142
    .line 143
    const/4 v3, 0x4

    .line 144
    invoke-direct {v1, p0, v3}, LE4/a;-><init>(Le/v;I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 148
    .line 149
    .line 150
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;->n:Landroid/widget/RelativeLayout;

    .line 151
    .line 152
    new-instance v1, Lz4/p;

    .line 153
    .line 154
    invoke-direct {v1, p0, v2}, Lz4/p;-><init>(Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    .line 159
    .line 160
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;->p:Landroid/widget/RelativeLayout;

    .line 161
    .line 162
    new-instance v1, Lz4/p;

    .line 163
    .line 164
    invoke-direct {v1, p0, v0}, Lz4/p;-><init>(Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;I)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    .line 169
    .line 170
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;->b:Lh5/j;

    .line 171
    .line 172
    iget-object v0, p0, Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;->f:Landroid/widget/TextView;

    .line 173
    .line 174
    iget-object v1, p0, Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;->e:Landroid/graphics/Typeface;

    .line 175
    .line 176
    invoke-virtual {p1, v0, v1}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 177
    .line 178
    .line 179
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;->b:Lh5/j;

    .line 180
    .line 181
    iget-object v0, p0, Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;->j:Landroid/widget/TextView;

    .line 182
    .line 183
    iget-object v1, p0, Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;->e:Landroid/graphics/Typeface;

    .line 184
    .line 185
    invoke-virtual {p1, v0, v1}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 186
    .line 187
    .line 188
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;->b:Lh5/j;

    .line 189
    .line 190
    iget-object v0, p0, Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;->r:Landroid/widget/EditText;

    .line 191
    .line 192
    iget-object v1, p0, Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;->e:Landroid/graphics/Typeface;

    .line 193
    .line 194
    invoke-virtual {p1, v0, v1}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 195
    .line 196
    .line 197
    iget-object p1, p0, Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;->b:Lh5/j;

    .line 198
    .line 199
    iget-object v0, p0, Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;->m:Landroid/widget/TextView;

    .line 200
    .line 201
    iget-object v1, p0, Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;->e:Landroid/graphics/Typeface;

    .line 202
    .line 203
    invoke-virtual {p1, v0, v1}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 204
    .line 205
    .line 206
    return-void
.end method
