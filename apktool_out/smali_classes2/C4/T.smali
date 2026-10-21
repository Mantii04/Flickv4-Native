.class public final synthetic LC4/T;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic b:LC4/V;

.field public final synthetic e:LC4/U;

.field public final synthetic f:Landroid/content/res/ColorStateList;


# direct methods
.method public synthetic constructor <init>(LC4/V;LC4/U;Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LC4/T;->b:LC4/V;

    iput-object p2, p0, LC4/T;->e:LC4/U;

    iput-object p3, p0, LC4/T;->f:Landroid/content/res/ColorStateList;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 4

    .line 1
    iget-object p1, p0, LC4/T;->b:LC4/V;

    .line 2
    .line 3
    iget-object p1, p1, LC4/V;->f:Lflix/com/vision/activities/player/SimpleVideoPlayer;

    .line 4
    .line 5
    iget-object v0, p0, LC4/T;->e:LC4/U;

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    iget-object p2, v0, LC4/U;->v:Landroid/widget/TextView;

    .line 10
    .line 11
    invoke-virtual {p1}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sget v2, Lflix/com/vision/R$color;->black:I

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    sget p2, Lflix/com/vision/R$color;->black:I

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iget-object p2, v0, LC4/U;->u:Landroid/widget/TextView;

    .line 35
    .line 36
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    iget-object p2, v0, Lm1/B0;->a:Landroid/view/View;

    .line 41
    .line 42
    invoke-virtual {p2}, Landroid/view/View;->isActivated()Z

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    iget-object v1, v0, LC4/U;->u:Landroid/widget/TextView;

    .line 47
    .line 48
    iget-object v2, v0, LC4/U;->v:Landroid/widget/TextView;

    .line 49
    .line 50
    if-eqz p2, :cond_1

    .line 51
    .line 52
    invoke-virtual {p1}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    sget v0, Lflix/com/vision/R$color;->accent:I

    .line 57
    .line 58
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    sget p2, Lflix/com/vision/R$color;->accent:I

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_1
    invoke-virtual {p1}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    sget v3, Lflix/com/vision/R$color;->white:I

    .line 84
    .line 85
    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    sget p2, Lflix/com/vision/R$color;->white:I

    .line 97
    .line 98
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    .line 104
    .line 105
    iget-object p1, v0, LC4/U;->w:Landroid/widget/ImageView;

    .line 106
    .line 107
    iget-object p2, p0, LC4/T;->f:Landroid/content/res/ColorStateList;

    .line 108
    .line 109
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method
