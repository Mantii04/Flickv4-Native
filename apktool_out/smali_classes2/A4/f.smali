.class public final synthetic LA4/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/leanback/FilterActivityLeanBack;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/leanback/FilterActivityLeanBack;I)V
    .locals 0

    .line 1
    iput p2, p0, LA4/f;->b:I

    iput-object p1, p0, LA4/f;->e:Lflix/com/vision/activities/leanback/FilterActivityLeanBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, LA4/f;->e:Lflix/com/vision/activities/leanback/FilterActivityLeanBack;

    .line 2
    .line 3
    iget v0, p0, LA4/f;->b:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->T:I

    .line 9
    .line 10
    new-instance v0, LA4/i;

    .line 11
    .line 12
    iget-object v1, p1, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->m:[Ljava/lang/String;

    .line 13
    .line 14
    invoke-direct {v0, p1, p1, v1}, LA4/i;-><init>(Lflix/com/vision/activities/leanback/FilterActivityLeanBack;Landroid/content/Context;[Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Le/r;

    .line 18
    .line 19
    new-instance v2, Landroid/view/ContextThemeWrapper;

    .line 20
    .line 21
    sget v3, Lflix/com/vision/R$style;->AlertDialogCustom:I

    .line 22
    .line 23
    invoke-direct {v2, p1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, v2}, Le/r;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    iget v2, p1, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->u:I

    .line 30
    .line 31
    new-instance v3, LA4/e;

    .line 32
    .line 33
    const/4 v4, 0x3

    .line 34
    invoke-direct {v3, p1, v4}, LA4/e;-><init>(Lflix/com/vision/activities/leanback/FilterActivityLeanBack;I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v0, v2, v3}, Le/r;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Le/r;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Le/r;->show()Le/s;

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :pswitch_0
    sget v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->T:I

    .line 45
    .line 46
    new-instance v0, LA4/i;

    .line 47
    .line 48
    iget-object v1, p1, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->q:[Ljava/lang/String;

    .line 49
    .line 50
    invoke-direct {v0, p1, p1, v1}, LA4/i;-><init>(Lflix/com/vision/activities/leanback/FilterActivityLeanBack;Landroid/content/Context;[Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance v1, Le/r;

    .line 54
    .line 55
    new-instance v2, Landroid/view/ContextThemeWrapper;

    .line 56
    .line 57
    sget v3, Lflix/com/vision/R$style;->AlertDialogCustom:I

    .line 58
    .line 59
    invoke-direct {v2, p1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 60
    .line 61
    .line 62
    invoke-direct {v1, v2}, Le/r;-><init>(Landroid/content/Context;)V

    .line 63
    .line 64
    .line 65
    iget v2, p1, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->D:I

    .line 66
    .line 67
    new-instance v3, LA4/e;

    .line 68
    .line 69
    const/4 v4, 0x2

    .line 70
    invoke-direct {v3, p1, v4}, LA4/e;-><init>(Lflix/com/vision/activities/leanback/FilterActivityLeanBack;I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v0, v2, v3}, Le/r;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Le/r;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Le/r;->show()Le/s;

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :pswitch_1
    sget v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->T:I

    .line 81
    .line 82
    new-instance v0, LA4/i;

    .line 83
    .line 84
    iget-object v1, p1, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->p:[Ljava/lang/String;

    .line 85
    .line 86
    invoke-direct {v0, p1, p1, v1}, LA4/i;-><init>(Lflix/com/vision/activities/leanback/FilterActivityLeanBack;Landroid/content/Context;[Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    new-instance v1, Le/r;

    .line 90
    .line 91
    new-instance v2, Landroid/view/ContextThemeWrapper;

    .line 92
    .line 93
    sget v3, Lflix/com/vision/R$style;->AlertDialogCustom:I

    .line 94
    .line 95
    invoke-direct {v2, p1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 96
    .line 97
    .line 98
    invoke-direct {v1, v2}, Le/r;-><init>(Landroid/content/Context;)V

    .line 99
    .line 100
    .line 101
    iget v2, p1, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->t:I

    .line 102
    .line 103
    new-instance v3, LA4/e;

    .line 104
    .line 105
    const/4 v4, 0x0

    .line 106
    invoke-direct {v3, p1, v4}, LA4/e;-><init>(Lflix/com/vision/activities/leanback/FilterActivityLeanBack;I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v0, v2, v3}, Le/r;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Le/r;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Le/r;->show()Le/s;

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :pswitch_2
    sget v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->T:I

    .line 117
    .line 118
    new-instance v0, LA4/i;

    .line 119
    .line 120
    iget v1, p1, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->e:I

    .line 121
    .line 122
    if-nez v1, :cond_0

    .line 123
    .line 124
    iget-object v1, p1, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->f:[Ljava/lang/String;

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_0
    iget-object v1, p1, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->j:[Ljava/lang/String;

    .line 128
    .line 129
    :goto_0
    invoke-direct {v0, p1, p1, v1}, LA4/i;-><init>(Lflix/com/vision/activities/leanback/FilterActivityLeanBack;Landroid/content/Context;[Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    new-instance v1, Le/r;

    .line 133
    .line 134
    new-instance v2, Landroid/view/ContextThemeWrapper;

    .line 135
    .line 136
    sget v3, Lflix/com/vision/R$style;->AlertDialogCustom:I

    .line 137
    .line 138
    invoke-direct {v2, p1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 139
    .line 140
    .line 141
    invoke-direct {v1, v2}, Le/r;-><init>(Landroid/content/Context;)V

    .line 142
    .line 143
    .line 144
    iget v2, p1, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->s:I

    .line 145
    .line 146
    new-instance v3, LA4/e;

    .line 147
    .line 148
    const/4 v4, 0x1

    .line 149
    invoke-direct {v3, p1, v4}, LA4/e;-><init>(Lflix/com/vision/activities/leanback/FilterActivityLeanBack;I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v0, v2, v3}, Le/r;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Le/r;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1}, Le/r;->show()Le/s;

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :pswitch_3
    sget v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->T:I

    .line 160
    .line 161
    new-instance v0, LA4/i;

    .line 162
    .line 163
    iget-object v1, p1, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->n:[Ljava/lang/String;

    .line 164
    .line 165
    invoke-direct {v0, p1, p1, v1}, LA4/i;-><init>(Lflix/com/vision/activities/leanback/FilterActivityLeanBack;Landroid/content/Context;[Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    new-instance v1, Le/r;

    .line 169
    .line 170
    new-instance v2, Landroid/view/ContextThemeWrapper;

    .line 171
    .line 172
    sget v3, Lflix/com/vision/R$style;->AlertDialogCustom:I

    .line 173
    .line 174
    invoke-direct {v2, p1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 175
    .line 176
    .line 177
    invoke-direct {v1, v2}, Le/r;-><init>(Landroid/content/Context;)V

    .line 178
    .line 179
    .line 180
    iget v2, p1, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->v:I

    .line 181
    .line 182
    new-instance v3, LA4/e;

    .line 183
    .line 184
    const/4 v4, 0x4

    .line 185
    invoke-direct {v3, p1, v4}, LA4/e;-><init>(Lflix/com/vision/activities/leanback/FilterActivityLeanBack;I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, v0, v2, v3}, Le/r;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Le/r;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1}, Le/r;->show()Le/s;

    .line 192
    .line 193
    .line 194
    return-void

    .line 195
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
