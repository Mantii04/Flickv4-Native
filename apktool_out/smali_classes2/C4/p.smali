.class public final LC4/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic b:LC4/q;

.field public final synthetic e:LC4/r;


# direct methods
.method public constructor <init>(LC4/r;LC4/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LC4/p;->e:LC4/r;

    .line 5
    .line 6
    iput-object p2, p0, LC4/p;->b:LC4/q;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .line 1
    iget-object p1, p0, LC4/p;->e:LC4/r;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iget-object v1, p0, LC4/p;->b:LC4/q;

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    iget-object p2, v1, LC4/q;->y:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 9
    .line 10
    iget-object p1, p1, LC4/r;->d:Landroid/app/Activity;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    sget v2, Lflix/com/vision/R$color;->white:I

    .line 17
    .line 18
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-virtual {p2, p1}, Lde/hdodenhof/circleimageview/CircleImageView;->setBorderColor(I)V

    .line 23
    .line 24
    .line 25
    iget-object p1, v1, LC4/q;->w:Landroid/widget/TextView;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 28
    .line 29
    .line 30
    iget-object p1, v1, LC4/q;->w:Landroid/widget/TextView;

    .line 31
    .line 32
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, v1, LC4/q;->w:Landroid/widget/TextView;

    .line 38
    .line 39
    const/4 v2, 0x6

    .line 40
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 41
    .line 42
    .line 43
    iget-object p1, v1, LC4/q;->w:Landroid/widget/TextView;

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 46
    .line 47
    .line 48
    iget-object p1, v1, LC4/q;->w:Landroid/widget/TextView;

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 51
    .line 52
    .line 53
    iget-object p1, v1, LC4/q;->w:Landroid/widget/TextView;

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 56
    .line 57
    .line 58
    iget-object p1, v1, LC4/q;->w:Landroid/widget/TextView;

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    .line 61
    .line 62
    .line 63
    iget-object p1, v1, LC4/q;->x:Landroid/widget/TextView;

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    .line 66
    .line 67
    .line 68
    iget-object p1, v1, LC4/q;->x:Landroid/widget/TextView;

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 71
    .line 72
    .line 73
    iget-object p1, v1, LC4/q;->x:Landroid/widget/TextView;

    .line 74
    .line 75
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 76
    .line 77
    .line 78
    iget-object p1, v1, LC4/q;->x:Landroid/widget/TextView;

    .line 79
    .line 80
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 81
    .line 82
    .line 83
    iget-object p1, v1, LC4/q;->x:Landroid/widget/TextView;

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 86
    .line 87
    .line 88
    iget-object p1, v1, LC4/q;->x:Landroid/widget/TextView;

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 91
    .line 92
    .line 93
    iget-object p1, v1, LC4/q;->x:Landroid/widget/TextView;

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_0
    iget-object p2, v1, LC4/q;->y:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 100
    .line 101
    iget-object p1, p1, LC4/r;->d:Landroid/app/Activity;

    .line 102
    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    sget v2, Lflix/com/vision/R$color;->transparent:I

    .line 108
    .line 109
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    invoke-virtual {p2, p1}, Lde/hdodenhof/circleimageview/CircleImageView;->setBorderColor(I)V

    .line 114
    .line 115
    .line 116
    iget-object p1, v1, LC4/q;->w:Landroid/widget/TextView;

    .line 117
    .line 118
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 119
    .line 120
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 121
    .line 122
    .line 123
    iget-object p1, v1, LC4/q;->w:Landroid/widget/TextView;

    .line 124
    .line 125
    const/4 v2, 0x0

    .line 126
    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 127
    .line 128
    .line 129
    iget-object p1, v1, LC4/q;->w:Landroid/widget/TextView;

    .line 130
    .line 131
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 132
    .line 133
    .line 134
    iget-object p1, v1, LC4/q;->w:Landroid/widget/TextView;

    .line 135
    .line 136
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 137
    .line 138
    .line 139
    iget-object p1, v1, LC4/q;->w:Landroid/widget/TextView;

    .line 140
    .line 141
    invoke-virtual {p1, v0}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    .line 142
    .line 143
    .line 144
    iget-object p1, v1, LC4/q;->x:Landroid/widget/TextView;

    .line 145
    .line 146
    invoke-virtual {p1, v0}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    .line 147
    .line 148
    .line 149
    iget-object p1, v1, LC4/q;->x:Landroid/widget/TextView;

    .line 150
    .line 151
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 152
    .line 153
    .line 154
    iget-object p1, v1, LC4/q;->x:Landroid/widget/TextView;

    .line 155
    .line 156
    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 157
    .line 158
    .line 159
    iget-object p1, v1, LC4/q;->x:Landroid/widget/TextView;

    .line 160
    .line 161
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 162
    .line 163
    .line 164
    iget-object p1, v1, LC4/q;->x:Landroid/widget/TextView;

    .line 165
    .line 166
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 167
    .line 168
    .line 169
    return-void
.end method
