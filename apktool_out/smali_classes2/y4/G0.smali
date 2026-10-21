.class public final synthetic Ly4/G0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/SearchActivityTV;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/SearchActivityTV;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly4/G0;->b:I

    iput-object p1, p0, Ly4/G0;->e:Lflix/com/vision/activities/SearchActivityTV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .line 1
    iget p1, p0, Ly4/G0;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Ly4/G0;->e:Lflix/com/vision/activities/SearchActivityTV;

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    iget-object p2, p1, Lflix/com/vision/activities/SearchActivityTV;->A:Landroid/widget/ImageView;

    .line 11
    .line 12
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 13
    .line 14
    sget v1, Lflix/com/vision/R$color;->black:I

    .line 15
    .line 16
    invoke-static {p1, v1}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 21
    .line 22
    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object p2, p1, Lflix/com/vision/activities/SearchActivityTV;->A:Landroid/widget/ImageView;

    .line 30
    .line 31
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 32
    .line 33
    sget v1, Lflix/com/vision/R$color;->white:I

    .line 34
    .line 35
    invoke-static {p1, v1}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 40
    .line 41
    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void

    .line 48
    :pswitch_0
    iget-object p1, p0, Ly4/G0;->e:Lflix/com/vision/activities/SearchActivityTV;

    .line 49
    .line 50
    if-eqz p2, :cond_1

    .line 51
    .line 52
    iget-object p2, p1, Lflix/com/vision/activities/SearchActivityTV;->q:Landroid/widget/TextView;

    .line 53
    .line 54
    invoke-virtual {p1}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    sget v0, Lflix/com/vision/R$color;->black:I

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    iget-object p2, p1, Lflix/com/vision/activities/SearchActivityTV;->q:Landroid/widget/TextView;

    .line 69
    .line 70
    invoke-virtual {p1}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    sget v0, Lflix/com/vision/R$color;->white:I

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    .line 82
    .line 83
    :goto_1
    return-void

    .line 84
    :pswitch_1
    iget-object p1, p0, Ly4/G0;->e:Lflix/com/vision/activities/SearchActivityTV;

    .line 85
    .line 86
    if-eqz p2, :cond_2

    .line 87
    .line 88
    iget-object p2, p1, Lflix/com/vision/activities/SearchActivityTV;->C:Landroid/widget/ImageView;

    .line 89
    .line 90
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 91
    .line 92
    sget v1, Lflix/com/vision/R$color;->black:I

    .line 93
    .line 94
    invoke-static {p1, v1}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 99
    .line 100
    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_2
    iget-object p2, p1, Lflix/com/vision/activities/SearchActivityTV;->C:Landroid/widget/ImageView;

    .line 108
    .line 109
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 110
    .line 111
    sget v1, Lflix/com/vision/R$color;->white:I

    .line 112
    .line 113
    invoke-static {p1, v1}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 118
    .line 119
    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 123
    .line 124
    .line 125
    :goto_2
    return-void

    .line 126
    :pswitch_2
    iget-object p1, p0, Ly4/G0;->e:Lflix/com/vision/activities/SearchActivityTV;

    .line 127
    .line 128
    if-eqz p2, :cond_3

    .line 129
    .line 130
    iget-object p2, p1, Lflix/com/vision/activities/SearchActivityTV;->B:Landroid/widget/ImageView;

    .line 131
    .line 132
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 133
    .line 134
    sget v1, Lflix/com/vision/R$color;->black:I

    .line 135
    .line 136
    invoke-static {p1, v1}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 141
    .line 142
    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 146
    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_3
    iget-object p2, p1, Lflix/com/vision/activities/SearchActivityTV;->B:Landroid/widget/ImageView;

    .line 150
    .line 151
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 152
    .line 153
    sget v1, Lflix/com/vision/R$color;->white:I

    .line 154
    .line 155
    invoke-static {p1, v1}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 160
    .line 161
    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 165
    .line 166
    .line 167
    :goto_3
    return-void

    .line 168
    nop

    .line 169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
