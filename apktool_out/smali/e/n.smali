.class public final Le/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/view/LayoutInflater;

.field public c:Landroid/graphics/drawable/Drawable;

.field public d:Ljava/lang/CharSequence;

.field public e:Landroid/view/View;

.field public f:Ljava/lang/CharSequence;

.field public g:Landroid/content/DialogInterface$OnClickListener;

.field public h:Ljava/lang/CharSequence;

.field public i:Landroid/content/DialogInterface$OnClickListener;

.field public j:Z

.field public k:Landroid/content/DialogInterface$OnDismissListener;

.field public l:Landroid/content/DialogInterface$OnKeyListener;

.field public m:[Ljava/lang/CharSequence;

.field public n:Landroid/widget/ListAdapter;

.field public o:Landroid/content/DialogInterface$OnClickListener;

.field public p:Landroid/view/View;

.field public q:[Z

.field public r:Z

.field public s:Z

.field public t:I

.field public u:Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Le/n;->t:I

    .line 6
    .line 7
    iput-object p1, p0, Le/n;->a:Landroid/content/Context;

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Le/n;->j:Z

    .line 11
    .line 12
    const-string v0, "layout_inflater"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Landroid/view/LayoutInflater;

    .line 19
    .line 20
    iput-object p1, p0, Le/n;->b:Landroid/view/LayoutInflater;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public apply(Le/q;)V
    .locals 13

    .line 1
    iget-object v0, p0, Le/n;->e:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Le/q;->setCustomTitle(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Le/n;->d:Ljava/lang/CharSequence;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Le/q;->setTitle(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Le/n;->c:Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Le/q;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 21
    .line 22
    .line 23
    :cond_2
    :goto_0
    iget-object v3, p0, Le/n;->f:Ljava/lang/CharSequence;

    .line 24
    .line 25
    if-nez v3, :cond_3

    .line 26
    .line 27
    move-object v1, p1

    .line 28
    goto :goto_1

    .line 29
    :cond_3
    iget-object v4, p0, Le/n;->g:Landroid/content/DialogInterface$OnClickListener;

    .line 30
    .line 31
    const/4 v6, 0x0

    .line 32
    const/4 v2, -0x1

    .line 33
    const/4 v5, 0x0

    .line 34
    move-object v1, p1

    .line 35
    invoke-virtual/range {v1 .. v6}, Le/q;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 36
    .line 37
    .line 38
    :goto_1
    iget-object v9, p0, Le/n;->h:Ljava/lang/CharSequence;

    .line 39
    .line 40
    if-nez v9, :cond_4

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_4
    iget-object v10, p0, Le/n;->i:Landroid/content/DialogInterface$OnClickListener;

    .line 44
    .line 45
    const/4 v12, 0x0

    .line 46
    const/4 v8, -0x2

    .line 47
    const/4 v11, 0x0

    .line 48
    move-object v7, v1

    .line 49
    invoke-virtual/range {v7 .. v12}, Le/q;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 50
    .line 51
    .line 52
    :goto_2
    iget-object p1, p0, Le/n;->m:[Ljava/lang/CharSequence;

    .line 53
    .line 54
    if-nez p1, :cond_6

    .line 55
    .line 56
    iget-object p1, p0, Le/n;->n:Landroid/widget/ListAdapter;

    .line 57
    .line 58
    if-eqz p1, :cond_5

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_5
    move-object v3, p0

    .line 62
    goto/16 :goto_8

    .line 63
    .line 64
    :cond_6
    :goto_3
    iget p1, v1, Le/q;->G:I

    .line 65
    .line 66
    const/4 v0, 0x0

    .line 67
    iget-object v2, p0, Le/n;->b:Landroid/view/LayoutInflater;

    .line 68
    .line 69
    invoke-virtual {v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    move-object v7, p1

    .line 74
    check-cast v7, Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 75
    .line 76
    iget-boolean p1, p0, Le/n;->r:Z

    .line 77
    .line 78
    if-eqz p1, :cond_7

    .line 79
    .line 80
    new-instance v2, Le/k;

    .line 81
    .line 82
    iget-object v6, p0, Le/n;->m:[Ljava/lang/CharSequence;

    .line 83
    .line 84
    iget-object v4, p0, Le/n;->a:Landroid/content/Context;

    .line 85
    .line 86
    iget v5, v1, Le/q;->H:I

    .line 87
    .line 88
    move-object v3, p0

    .line 89
    invoke-direct/range {v2 .. v7}, Le/k;-><init>(Le/n;Landroid/content/Context;I[Ljava/lang/CharSequence;Landroidx/appcompat/app/AlertController$RecycleListView;)V

    .line 90
    .line 91
    .line 92
    goto :goto_5

    .line 93
    :cond_7
    move-object v3, p0

    .line 94
    iget-boolean p1, v3, Le/n;->s:Z

    .line 95
    .line 96
    if-eqz p1, :cond_8

    .line 97
    .line 98
    iget p1, v1, Le/q;->I:I

    .line 99
    .line 100
    goto :goto_4

    .line 101
    :cond_8
    iget p1, v1, Le/q;->J:I

    .line 102
    .line 103
    :goto_4
    iget-object v2, v3, Le/n;->n:Landroid/widget/ListAdapter;

    .line 104
    .line 105
    if-eqz v2, :cond_9

    .line 106
    .line 107
    goto :goto_5

    .line 108
    :cond_9
    new-instance v2, Le/p;

    .line 109
    .line 110
    iget-object v0, v3, Le/n;->m:[Ljava/lang/CharSequence;

    .line 111
    .line 112
    iget-object v4, v3, Le/n;->a:Landroid/content/Context;

    .line 113
    .line 114
    const v5, 0x1020014

    .line 115
    .line 116
    .line 117
    invoke-direct {v2, v4, p1, v5, v0}, Le/p;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    .line 118
    .line 119
    .line 120
    :goto_5
    iput-object v2, v1, Le/q;->D:Landroid/widget/ListAdapter;

    .line 121
    .line 122
    iget p1, v3, Le/n;->t:I

    .line 123
    .line 124
    iput p1, v1, Le/q;->E:I

    .line 125
    .line 126
    iget-object p1, v3, Le/n;->o:Landroid/content/DialogInterface$OnClickListener;

    .line 127
    .line 128
    if-eqz p1, :cond_a

    .line 129
    .line 130
    new-instance p1, Le/l;

    .line 131
    .line 132
    invoke-direct {p1, p0, v1}, Le/l;-><init>(Le/n;Le/q;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v7, p1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 136
    .line 137
    .line 138
    goto :goto_6

    .line 139
    :cond_a
    iget-object p1, v3, Le/n;->u:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 140
    .line 141
    if-eqz p1, :cond_b

    .line 142
    .line 143
    new-instance p1, Le/m;

    .line 144
    .line 145
    invoke-direct {p1, p0, v7, v1}, Le/m;-><init>(Le/n;Landroidx/appcompat/app/AlertController$RecycleListView;Le/q;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v7, p1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 149
    .line 150
    .line 151
    :cond_b
    :goto_6
    iget-boolean p1, v3, Le/n;->s:Z

    .line 152
    .line 153
    if-eqz p1, :cond_c

    .line 154
    .line 155
    const/4 p1, 0x1

    .line 156
    invoke-virtual {v7, p1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 157
    .line 158
    .line 159
    goto :goto_7

    .line 160
    :cond_c
    iget-boolean p1, v3, Le/n;->r:Z

    .line 161
    .line 162
    if-eqz p1, :cond_d

    .line 163
    .line 164
    const/4 p1, 0x2

    .line 165
    invoke-virtual {v7, p1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 166
    .line 167
    .line 168
    :cond_d
    :goto_7
    iput-object v7, v1, Le/q;->g:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 169
    .line 170
    :goto_8
    iget-object p1, v3, Le/n;->p:Landroid/view/View;

    .line 171
    .line 172
    if-eqz p1, :cond_e

    .line 173
    .line 174
    invoke-virtual {v1, p1}, Le/q;->setView(Landroid/view/View;)V

    .line 175
    .line 176
    .line 177
    :cond_e
    return-void
.end method
