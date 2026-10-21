.class public final synthetic Ly4/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/FilterActivity;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/FilterActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly4/M;->b:I

    iput-object p1, p0, Ly4/M;->e:Lflix/com/vision/activities/FilterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    const/4 p1, 0x0

    .line 2
    iget-object v0, p0, Ly4/M;->e:Lflix/com/vision/activities/FilterActivity;

    .line 3
    .line 4
    iget v1, p0, Ly4/M;->b:I

    .line 5
    .line 6
    packed-switch v1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    sget p1, Lflix/com/vision/activities/FilterActivity;->O:I

    .line 10
    .line 11
    new-instance p1, Le/r;

    .line 12
    .line 13
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 14
    .line 15
    sget v2, Lflix/com/vision/R$style;->AlertDialogCustom:I

    .line 16
    .line 17
    invoke-direct {v1, v0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p1, v1}, Le/r;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, v0, Lflix/com/vision/activities/FilterActivity;->m:[Ljava/lang/String;

    .line 24
    .line 25
    iget v2, v0, Lflix/com/vision/activities/FilterActivity;->t:I

    .line 26
    .line 27
    new-instance v3, Ly4/N;

    .line 28
    .line 29
    const/4 v4, 0x4

    .line 30
    invoke-direct {v3, v0, v4}, Ly4/N;-><init>(Lflix/com/vision/activities/FilterActivity;I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v1, v2, v3}, Le/r;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Le/r;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Le/r;->show()Le/s;

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :pswitch_0
    sget p1, Lflix/com/vision/activities/FilterActivity;->O:I

    .line 41
    .line 42
    new-instance p1, Le/r;

    .line 43
    .line 44
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 45
    .line 46
    sget v2, Lflix/com/vision/R$style;->AlertDialogCustom:I

    .line 47
    .line 48
    invoke-direct {v1, v0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 49
    .line 50
    .line 51
    invoke-direct {p1, v1}, Le/r;-><init>(Landroid/content/Context;)V

    .line 52
    .line 53
    .line 54
    iget-object v1, v0, Lflix/com/vision/activities/FilterActivity;->q:[Ljava/lang/String;

    .line 55
    .line 56
    iget v2, v0, Lflix/com/vision/activities/FilterActivity;->A:I

    .line 57
    .line 58
    new-instance v3, Ly4/N;

    .line 59
    .line 60
    const/4 v4, 0x3

    .line 61
    invoke-direct {v3, v0, v4}, Ly4/N;-><init>(Lflix/com/vision/activities/FilterActivity;I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v1, v2, v3}, Le/r;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Le/r;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Le/r;->show()Le/s;

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :pswitch_1
    sget v1, Lflix/com/vision/activities/FilterActivity;->O:I

    .line 72
    .line 73
    new-instance v1, Le/r;

    .line 74
    .line 75
    new-instance v2, Landroid/view/ContextThemeWrapper;

    .line 76
    .line 77
    sget v3, Lflix/com/vision/R$style;->AlertDialogCustom:I

    .line 78
    .line 79
    invoke-direct {v2, v0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 80
    .line 81
    .line 82
    invoke-direct {v1, v2}, Le/r;-><init>(Landroid/content/Context;)V

    .line 83
    .line 84
    .line 85
    iget-object v2, v0, Lflix/com/vision/activities/FilterActivity;->p:[Ljava/lang/String;

    .line 86
    .line 87
    iget v3, v0, Lflix/com/vision/activities/FilterActivity;->s:I

    .line 88
    .line 89
    new-instance v4, Ly4/N;

    .line 90
    .line 91
    invoke-direct {v4, v0, p1}, Ly4/N;-><init>(Lflix/com/vision/activities/FilterActivity;I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v2, v3, v4}, Le/r;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Le/r;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Le/r;->show()Le/s;

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :pswitch_2
    sget v1, Lflix/com/vision/activities/FilterActivity;->O:I

    .line 102
    .line 103
    new-instance v1, Le/r;

    .line 104
    .line 105
    new-instance v2, Landroid/view/ContextThemeWrapper;

    .line 106
    .line 107
    sget v3, Lflix/com/vision/R$style;->AlertDialogCustom:I

    .line 108
    .line 109
    invoke-direct {v2, v0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 110
    .line 111
    .line 112
    invoke-direct {v1, v2}, Le/r;-><init>(Landroid/content/Context;)V

    .line 113
    .line 114
    .line 115
    iget v2, v0, Lflix/com/vision/activities/FilterActivity;->e:I

    .line 116
    .line 117
    if-nez v2, :cond_0

    .line 118
    .line 119
    iget-object v2, v0, Lflix/com/vision/activities/FilterActivity;->f:[Ljava/lang/String;

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_0
    iget-object v2, v0, Lflix/com/vision/activities/FilterActivity;->j:[Ljava/lang/String;

    .line 123
    .line 124
    :goto_0
    new-instance v3, Ly4/N;

    .line 125
    .line 126
    const/4 v4, 0x1

    .line 127
    invoke-direct {v3, v0, v4}, Ly4/N;-><init>(Lflix/com/vision/activities/FilterActivity;I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v2, p1, v3}, Le/r;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Le/r;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1}, Le/r;->show()Le/s;

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :pswitch_3
    sget p1, Lflix/com/vision/activities/FilterActivity;->O:I

    .line 138
    .line 139
    new-instance p1, Le/r;

    .line 140
    .line 141
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 142
    .line 143
    sget v2, Lflix/com/vision/R$style;->AlertDialogCustom:I

    .line 144
    .line 145
    invoke-direct {v1, v0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 146
    .line 147
    .line 148
    invoke-direct {p1, v1}, Le/r;-><init>(Landroid/content/Context;)V

    .line 149
    .line 150
    .line 151
    iget-object v1, v0, Lflix/com/vision/activities/FilterActivity;->n:[Ljava/lang/String;

    .line 152
    .line 153
    iget v2, v0, Lflix/com/vision/activities/FilterActivity;->u:I

    .line 154
    .line 155
    new-instance v3, Ly4/N;

    .line 156
    .line 157
    const/4 v4, 0x2

    .line 158
    invoke-direct {v3, v0, v4}, Ly4/N;-><init>(Lflix/com/vision/activities/FilterActivity;I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, v1, v2, v3}, Le/r;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Le/r;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1}, Le/r;->show()Le/s;

    .line 165
    .line 166
    .line 167
    return-void

    .line 168
    nop

    .line 169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
