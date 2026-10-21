.class public final synthetic Lz4/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lz4/o;->b:I

    iput-object p1, p0, Lz4/o;->e:Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .line 1
    iget p1, p0, Lz4/o;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lz4/o;->e:Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    iget-object p2, p1, Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;->j:Landroid/widget/TextView;

    .line 11
    .line 12
    invoke-virtual {p1}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    sget v0, Lflix/com/vision/R$color;->black:I

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p2, p1, Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;->j:Landroid/widget/TextView;

    .line 27
    .line 28
    invoke-virtual {p1}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    sget v0, Lflix/com/vision/R$color;->white:I

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void

    .line 42
    :pswitch_0
    iget-object p1, p0, Lz4/o;->e:Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;

    .line 43
    .line 44
    if-eqz p2, :cond_1

    .line 45
    .line 46
    iget-object p2, p1, Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;->f:Landroid/widget/TextView;

    .line 47
    .line 48
    invoke-virtual {p1}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    sget v0, Lflix/com/vision/R$color;->black:I

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    iget-object p2, p1, Lflix/com/vision/activities/adult/AdultZonePINEntryActivity;->f:Landroid/widget/TextView;

    .line 63
    .line 64
    invoke-virtual {p1}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    sget v0, Lflix/com/vision/R$color;->white:I

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    .line 76
    .line 77
    :goto_1
    return-void

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
