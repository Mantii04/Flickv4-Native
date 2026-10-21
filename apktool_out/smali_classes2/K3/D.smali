.class public final LK3/D;
.super LM/b;
.source "SourceFile"


# instance fields
.field public final d:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, LM/b;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LK3/D;->d:Lcom/google/android/material/textfield/TextInputLayout;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;LN/n;)V
    .locals 16

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    invoke-super/range {p0 .. p2}, LM/b;->onInitializeAccessibilityNodeInfo(Landroid/view/View;LN/n;)V

    .line 4
    .line 5
    .line 6
    move-object/from16 v1, p0

    .line 7
    .line 8
    iget-object v2, v1, LK3/D;->d:Lcom/google/android/material/textfield/TextInputLayout;

    .line 9
    .line 10
    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v3, 0x0

    .line 22
    :goto_0
    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getPlaceholderText()Ljava/lang/CharSequence;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getCounterMaxLength()I

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getCounterOverflowDescription()Ljava/lang/CharSequence;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v9

    .line 46
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v10

    .line 50
    iget-boolean v11, v2, Lcom/google/android/material/textfield/TextInputLayout;->D0:Z

    .line 51
    .line 52
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v12

    .line 56
    if-eqz v12, :cond_2

    .line 57
    .line 58
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result v13

    .line 62
    if-nez v13, :cond_1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    const/4 v13, 0x0

    .line 66
    goto :goto_2

    .line 67
    :cond_2
    :goto_1
    const/4 v13, 0x1

    .line 68
    :goto_2
    if-nez v10, :cond_3

    .line 69
    .line 70
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    goto :goto_3

    .line 75
    :cond_3
    const-string v4, ""

    .line 76
    .line 77
    :goto_3
    iget-object v10, v2, Lcom/google/android/material/textfield/TextInputLayout;->e:LK3/z;

    .line 78
    .line 79
    iget-object v14, v10, LK3/z;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 80
    .line 81
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    .line 82
    .line 83
    .line 84
    move-result v15

    .line 85
    if-nez v15, :cond_4

    .line 86
    .line 87
    invoke-virtual {v0, v14}, LN/n;->setLabelFor(Landroid/view/View;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v14}, LN/n;->setTraversalAfter(Landroid/view/View;)V

    .line 91
    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_4
    iget-object v10, v10, LK3/z;->j:Lcom/google/android/material/internal/CheckableImageButton;

    .line 95
    .line 96
    invoke-virtual {v0, v10}, LN/n;->setTraversalAfter(Landroid/view/View;)V

    .line 97
    .line 98
    .line 99
    :goto_4
    const-string v10, ", "

    .line 100
    .line 101
    if-nez v9, :cond_5

    .line 102
    .line 103
    invoke-virtual {v0, v3}, LN/n;->setText(Ljava/lang/CharSequence;)V

    .line 104
    .line 105
    .line 106
    goto :goto_5

    .line 107
    :cond_5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 108
    .line 109
    .line 110
    move-result v14

    .line 111
    if-nez v14, :cond_6

    .line 112
    .line 113
    invoke-virtual {v0, v4}, LN/n;->setText(Ljava/lang/CharSequence;)V

    .line 114
    .line 115
    .line 116
    if-nez v11, :cond_7

    .line 117
    .line 118
    if-eqz v6, :cond_7

    .line 119
    .line 120
    new-instance v11, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    invoke-virtual {v0, v6}, LN/n;->setText(Ljava/lang/CharSequence;)V

    .line 139
    .line 140
    .line 141
    goto :goto_5

    .line 142
    :cond_6
    if-eqz v6, :cond_7

    .line 143
    .line 144
    invoke-virtual {v0, v6}, LN/n;->setText(Ljava/lang/CharSequence;)V

    .line 145
    .line 146
    .line 147
    :cond_7
    :goto_5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 148
    .line 149
    .line 150
    move-result v6

    .line 151
    if-nez v6, :cond_a

    .line 152
    .line 153
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 154
    .line 155
    const/16 v11, 0x1a

    .line 156
    .line 157
    if-lt v6, v11, :cond_8

    .line 158
    .line 159
    invoke-virtual {v0, v4}, LN/n;->setHintText(Ljava/lang/CharSequence;)V

    .line 160
    .line 161
    .line 162
    goto :goto_6

    .line 163
    :cond_8
    if-nez v9, :cond_9

    .line 164
    .line 165
    new-instance v6, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    :cond_9
    invoke-virtual {v0, v4}, LN/n;->setText(Ljava/lang/CharSequence;)V

    .line 184
    .line 185
    .line 186
    :goto_6
    invoke-virtual {v0, v9}, LN/n;->setShowingHintText(Z)V

    .line 187
    .line 188
    .line 189
    :cond_a
    if-eqz v3, :cond_b

    .line 190
    .line 191
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 192
    .line 193
    .line 194
    move-result v3

    .line 195
    if-ne v3, v7, :cond_b

    .line 196
    .line 197
    goto :goto_7

    .line 198
    :cond_b
    const/4 v7, -0x1

    .line 199
    :goto_7
    invoke-virtual {v0, v7}, LN/n;->setMaxTextLength(I)V

    .line 200
    .line 201
    .line 202
    if-eqz v13, :cond_d

    .line 203
    .line 204
    if-nez v12, :cond_c

    .line 205
    .line 206
    goto :goto_8

    .line 207
    :cond_c
    move-object v5, v8

    .line 208
    :goto_8
    invoke-virtual {v0, v5}, LN/n;->setError(Ljava/lang/CharSequence;)V

    .line 209
    .line 210
    .line 211
    :cond_d
    iget-object v3, v2, Lcom/google/android/material/textfield/TextInputLayout;->s:LK3/u;

    .line 212
    .line 213
    iget-object v3, v3, LK3/u;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 214
    .line 215
    if-eqz v3, :cond_e

    .line 216
    .line 217
    invoke-virtual {v0, v3}, LN/n;->setLabelFor(Landroid/view/View;)V

    .line 218
    .line 219
    .line 220
    :cond_e
    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->f:LK3/q;

    .line 221
    .line 222
    invoke-virtual {v2}, LK3/q;->b()LK3/r;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    move-object/from16 v3, p1

    .line 227
    .line 228
    invoke-virtual {v2, v3, v0}, LK3/r;->onInitializeAccessibilityNodeInfo(Landroid/view/View;LN/n;)V

    .line 229
    .line 230
    .line 231
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, LM/b;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LK3/D;->d:Lcom/google/android/material/textfield/TextInputLayout;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->f:LK3/q;

    .line 7
    .line 8
    invoke-virtual {v0}, LK3/q;->b()LK3/r;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1, p2}, LK3/r;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
