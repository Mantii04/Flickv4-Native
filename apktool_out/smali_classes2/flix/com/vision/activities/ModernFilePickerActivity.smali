.class public Lflix/com/vision/activities/ModernFilePickerActivity;
.super Le/v;
.source "SourceFile"

# interfaces
.implements LC4/J;


# static fields
.field public static final synthetic q:I


# instance fields
.field public b:Landroidx/recyclerview/widget/RecyclerView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public j:Landroid/widget/TextView;

.field public m:LC4/L;

.field public final n:Ljava/util/ArrayList;

.field public p:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/v;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lflix/com/vision/activities/ModernFilePickerActivity;->n:Ljava/util/ArrayList;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final e()V
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lflix/com/vision/activities/ModernFilePickerActivity;->f(Ljava/io/File;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p0, v0}, Lflix/com/vision/activities/ModernFilePickerActivity;->f(Ljava/io/File;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final f(Ljava/io/File;)V
    .locals 13

    .line 1
    iput-object p1, p0, Lflix/com/vision/activities/ModernFilePickerActivity;->p:Ljava/io/File;

    .line 2
    .line 3
    iget-object v0, p0, Lflix/com/vision/activities/ModernFilePickerActivity;->e:Landroid/widget/TextView;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object v0, p0, Lflix/com/vision/activities/ModernFilePickerActivity;->n:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "picker_mode"

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "backup"

    .line 32
    .line 33
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_0

    .line 38
    .line 39
    iget-object v3, p0, Lflix/com/vision/activities/ModernFilePickerActivity;->j:Landroid/widget/TextView;

    .line 40
    .line 41
    const-string v4, "Select Backup File"

    .line 42
    .line 43
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    const-string v3, "m3u"

    .line 47
    .line 48
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_1

    .line 53
    .line 54
    iget-object v4, p0, Lflix/com/vision/activities/ModernFilePickerActivity;->j:Landroid/widget/TextView;

    .line 55
    .line 56
    const-string v5, "Select M3U8 Playlist File"

    .line 57
    .line 58
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    const-string v4, "subtitle"

    .line 62
    .line 63
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-eqz v5, :cond_2

    .line 68
    .line 69
    iget-object v5, p0, Lflix/com/vision/activities/ModernFilePickerActivity;->j:Landroid/widget/TextView;

    .line 70
    .line 71
    const-string v6, "Select Subtitle File"

    .line 72
    .line 73
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    :cond_2
    const/4 v5, 0x0

    .line 77
    if-eqz p1, :cond_b

    .line 78
    .line 79
    array-length v6, p1

    .line 80
    move v7, v5

    .line 81
    :goto_0
    if-ge v7, v6, :cond_b

    .line 82
    .line 83
    aget-object v8, p1, v7

    .line 84
    .line 85
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    .line 86
    .line 87
    .line 88
    move-result v9

    .line 89
    if-eqz v9, :cond_3

    .line 90
    .line 91
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v9

    .line 95
    const-string v10, "."

    .line 96
    .line 97
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result v9

    .line 101
    if-nez v9, :cond_a

    .line 102
    .line 103
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_3
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v9

    .line 111
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v9

    .line 115
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v10

    .line 119
    if-eqz v10, :cond_4

    .line 120
    .line 121
    const-string v10, ".json"

    .line 122
    .line 123
    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 124
    .line 125
    .line 126
    move-result v9

    .line 127
    if-eqz v9, :cond_a

    .line 128
    .line 129
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_4
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v10

    .line 137
    const-string v11, ".m3u8"

    .line 138
    .line 139
    const-string v12, ".m3u"

    .line 140
    .line 141
    if-eqz v10, :cond_6

    .line 142
    .line 143
    invoke-virtual {v9, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 144
    .line 145
    .line 146
    move-result v10

    .line 147
    if-nez v10, :cond_5

    .line 148
    .line 149
    invoke-virtual {v9, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 150
    .line 151
    .line 152
    move-result v9

    .line 153
    if-eqz v9, :cond_a

    .line 154
    .line 155
    :cond_5
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_6
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v10

    .line 163
    if-eqz v10, :cond_8

    .line 164
    .line 165
    const-string v10, ".vtt"

    .line 166
    .line 167
    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 168
    .line 169
    .line 170
    move-result v10

    .line 171
    if-nez v10, :cond_7

    .line 172
    .line 173
    const-string v10, ".srt"

    .line 174
    .line 175
    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 176
    .line 177
    .line 178
    move-result v9

    .line 179
    if-eqz v9, :cond_a

    .line 180
    .line 181
    :cond_7
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_8
    invoke-virtual {v9, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 186
    .line 187
    .line 188
    move-result v10

    .line 189
    if-nez v10, :cond_9

    .line 190
    .line 191
    invoke-virtual {v9, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 192
    .line 193
    .line 194
    move-result v9

    .line 195
    if-eqz v9, :cond_a

    .line 196
    .line 197
    :cond_9
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    :cond_a
    :goto_1
    add-int/lit8 v7, v7, 0x1

    .line 201
    .line 202
    goto :goto_0

    .line 203
    :cond_b
    new-instance p1, LJ/c;

    .line 204
    .line 205
    const/16 v1, 0x8

    .line 206
    .line 207
    invoke-direct {p1, v1}, LJ/c;-><init>(I)V

    .line 208
    .line 209
    .line 210
    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    const/16 v0, 0x8

    .line 218
    .line 219
    if-eqz p1, :cond_c

    .line 220
    .line 221
    iget-object p1, p0, Lflix/com/vision/activities/ModernFilePickerActivity;->f:Landroid/widget/TextView;

    .line 222
    .line 223
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 224
    .line 225
    .line 226
    iget-object p1, p0, Lflix/com/vision/activities/ModernFilePickerActivity;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 227
    .line 228
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 229
    .line 230
    .line 231
    goto :goto_2

    .line 232
    :cond_c
    iget-object p1, p0, Lflix/com/vision/activities/ModernFilePickerActivity;->f:Landroid/widget/TextView;

    .line 233
    .line 234
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 235
    .line 236
    .line 237
    iget-object p1, p0, Lflix/com/vision/activities/ModernFilePickerActivity;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 238
    .line 239
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 240
    .line 241
    .line 242
    :goto_2
    iget-object p1, p0, Lflix/com/vision/activities/ModernFilePickerActivity;->m:LC4/L;

    .line 243
    .line 244
    invoke-virtual {p1}, Lm1/V;->notifyDataSetChanged()V

    .line 245
    .line 246
    .line 247
    iget-object p1, p0, Lflix/com/vision/activities/ModernFilePickerActivity;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 248
    .line 249
    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 250
    .line 251
    .line 252
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/H;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/16 p2, 0x65

    .line 5
    .line 6
    if-ne p1, p2, :cond_1

    .line 7
    .line 8
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const/16 p2, 0x1e

    .line 11
    .line 12
    if-lt p1, p2, :cond_1

    .line 13
    .line 14
    invoke-static {}, Lf1/m;->m()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lflix/com/vision/activities/ModernFilePickerActivity;->e()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const-string p1, "Storage permission is still required."

    .line 25
    .line 26
    const/4 p2, 0x0

    .line 27
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/ModernFilePickerActivity;->p:Ljava/io/File;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lflix/com/vision/activities/ModernFilePickerActivity;->p:Ljava/io/File;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lflix/com/vision/activities/ModernFilePickerActivity;->f(Ljava/io/File;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/H;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lflix/com/vision/R$layout;->activity_modern_file_picker:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Le/v;->setContentView(I)V

    .line 7
    .line 8
    .line 9
    sget p1, Lflix/com/vision/R$id;->recycler_files:I

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    .line 17
    iput-object p1, p0, Lflix/com/vision/activities/ModernFilePickerActivity;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 18
    .line 19
    sget p1, Lflix/com/vision/R$id;->current_path:I

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Landroid/widget/TextView;

    .line 26
    .line 27
    iput-object p1, p0, Lflix/com/vision/activities/ModernFilePickerActivity;->e:Landroid/widget/TextView;

    .line 28
    .line 29
    sget p1, Lflix/com/vision/R$id;->file_picker_title:I

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Landroid/widget/TextView;

    .line 36
    .line 37
    iput-object p1, p0, Lflix/com/vision/activities/ModernFilePickerActivity;->j:Landroid/widget/TextView;

    .line 38
    .line 39
    sget p1, Lflix/com/vision/R$id;->empty_view:I

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Landroid/widget/TextView;

    .line 46
    .line 47
    iput-object p1, p0, Lflix/com/vision/activities/ModernFilePickerActivity;->f:Landroid/widget/TextView;

    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const-string v0, "picker_mode"

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    sget-object v0, Lflix/com/vision/adapters/ModernFileAdapter$MODE;->b:Lflix/com/vision/adapters/ModernFileAdapter$MODE;

    .line 60
    .line 61
    const-string v1, "backup"

    .line 62
    .line 63
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_0

    .line 68
    .line 69
    sget-object v0, Lflix/com/vision/adapters/ModernFileAdapter$MODE;->e:Lflix/com/vision/adapters/ModernFileAdapter$MODE;

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    const-string v1, "subtitle"

    .line 73
    .line 74
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_1

    .line 79
    .line 80
    sget-object v0, Lflix/com/vision/adapters/ModernFileAdapter$MODE;->f:Lflix/com/vision/adapters/ModernFileAdapter$MODE;

    .line 81
    .line 82
    :cond_1
    :goto_0
    iget-object p1, p0, Lflix/com/vision/activities/ModernFilePickerActivity;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 83
    .line 84
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 85
    .line 86
    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 90
    .line 91
    .line 92
    new-instance p1, LC4/L;

    .line 93
    .line 94
    iget-object v1, p0, Lflix/com/vision/activities/ModernFilePickerActivity;->n:Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-direct {p1, p0, v1, p0, v0}, LC4/L;-><init>(Landroid/content/Context;Ljava/util/ArrayList;LC4/J;Lflix/com/vision/adapters/ModernFileAdapter$MODE;)V

    .line 97
    .line 98
    .line 99
    iput-object p1, p0, Lflix/com/vision/activities/ModernFilePickerActivity;->m:LC4/L;

    .line 100
    .line 101
    iget-object v0, p0, Lflix/com/vision/activities/ModernFilePickerActivity;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 102
    .line 103
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lm1/V;)V

    .line 104
    .line 105
    .line 106
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 107
    .line 108
    const/16 v0, 0x1e

    .line 109
    .line 110
    if-lt p1, v0, :cond_3

    .line 111
    .line 112
    invoke-static {}, Lf1/m;->m()Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-eqz p1, :cond_2

    .line 117
    .line 118
    invoke-virtual {p0}, Lflix/com/vision/activities/ModernFilePickerActivity;->e()V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :cond_2
    const/4 p1, 0x0

    .line 123
    invoke-static {p0, p1}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    const-string v0, "Storage Permission Required"

    .line 128
    .line 129
    invoke-virtual {p1, v0}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    const-string v0, "To access files, please grant \'All Files Access\' permission in the app settings."

    .line 133
    .line 134
    invoke-virtual {p1, v0}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    new-instance v0, Ly4/j0;

    .line 138
    .line 139
    const/4 v1, 0x0

    .line 140
    invoke-direct {v0, p0, v1}, Ly4/j0;-><init>(Lflix/com/vision/activities/ModernFilePickerActivity;I)V

    .line 141
    .line 142
    .line 143
    const-string v1, "CANCEL"

    .line 144
    .line 145
    invoke-virtual {p1, v1, v0}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 146
    .line 147
    .line 148
    new-instance v0, Ly4/j0;

    .line 149
    .line 150
    const/4 v1, 0x1

    .line 151
    invoke-direct {v0, p0, v1}, Ly4/j0;-><init>(Lflix/com/vision/activities/ModernFilePickerActivity;I)V

    .line 152
    .line 153
    .line 154
    const-string v1, "GRANT PERMISSION"

    .line 155
    .line 156
    invoke-virtual {p1, v1, v0}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    const-string v1, "Manage Storage Permission"

    .line 164
    .line 165
    invoke-virtual {p1, v0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :cond_3
    const-string p1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 170
    .line 171
    invoke-static {p0, p1}, LA/h;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-eqz v0, :cond_4

    .line 176
    .line 177
    filled-new-array {p1}, [Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    const/16 v0, 0x64

    .line 182
    .line 183
    invoke-static {p0, p1, v0}, Lz/d;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 184
    .line 185
    .line 186
    return-void

    .line 187
    :cond_4
    invoke-virtual {p0}, Lflix/com/vision/activities/ModernFilePickerActivity;->e()V

    .line 188
    .line 189
    .line 190
    return-void
.end method

.method public onFileClicked(Ljava/io/File;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lflix/com/vision/activities/ModernFilePickerActivity;->f(Ljava/io/File;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "file_extra_data"

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    const/4 p1, -0x1

    .line 26
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/H;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    .line 3
    .line 4
    const/16 p2, 0x64

    .line 5
    .line 6
    if-ne p1, p2, :cond_1

    .line 7
    .line 8
    array-length p1, p3

    .line 9
    if-lez p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    aget p1, p3, p1

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lflix/com/vision/activities/ModernFilePickerActivity;->e()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const-string p1, "Storage permission denied. Cannot browse files."

    .line 21
    .line 22
    const/4 p2, 0x1

    .line 23
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method
