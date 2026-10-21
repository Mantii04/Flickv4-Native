.class public final Ly4/f1;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# instance fields
.field public final b:I

.field public final e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/CharSequence;I)V
    .locals 1

    .line 1
    const v0, 0x1020014

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iput p4, p0, Ly4/f1;->b:I

    .line 8
    .line 9
    iput-object p1, p0, Ly4/f1;->e:Landroid/content/Context;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    sget v1, Lflix/com/vision/R$layout;->custom_select_dialog_singlechoice:I

    .line 13
    .line 14
    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    :cond_0
    const p3, 0x1020014

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    check-cast p3, Landroid/widget/CheckedTextView;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/lang/CharSequence;

    .line 32
    .line 33
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    iget v1, p0, Ly4/f1;->b:I

    .line 37
    .line 38
    if-ne p1, v1, :cond_1

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    :cond_1
    invoke-virtual {p3, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p3}, Landroid/widget/CheckedTextView;->getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-eqz p1, :cond_3

    .line 49
    .line 50
    invoke-virtual {p3}, Landroid/widget/CheckedTextView;->isChecked()Z

    .line 51
    .line 52
    .line 53
    move-result p3

    .line 54
    iget-object v0, p0, Ly4/f1;->e:Landroid/content/Context;

    .line 55
    .line 56
    if-eqz p3, :cond_2

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 59
    .line 60
    .line 61
    move-result-object p3

    .line 62
    sget v0, Lflix/com/vision/R$color;->white:I

    .line 63
    .line 64
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 65
    .line 66
    .line 67
    move-result p3

    .line 68
    invoke-static {p1, p3}, LE/c;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 69
    .line 70
    .line 71
    return-object p2

    .line 72
    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 73
    .line 74
    .line 75
    move-result-object p3

    .line 76
    sget v0, Lflix/com/vision/R$color;->accent:I

    .line 77
    .line 78
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 79
    .line 80
    .line 81
    move-result p3

    .line 82
    invoke-static {p1, p3}, LE/c;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 83
    .line 84
    .line 85
    :cond_3
    return-object p2
.end method
