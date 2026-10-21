.class public final synthetic LA4/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:LQ4/d;


# direct methods
.method public synthetic constructor <init>(LQ4/d;I)V
    .locals 0

    .line 1
    iput p2, p0, LA4/o;->b:I

    iput-object p1, p0, LA4/o;->e:LQ4/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, LA4/o;->e:LQ4/d;

    .line 2
    .line 3
    iget v1, p0, LA4/o;->b:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget p1, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    sget p1, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_1
    sget p1, Lflix/com/vision/activities/SearchActivityTV;->I:I

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_2
    sget p1, Lflix/com/vision/activities/MainActivity;->T:I

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_3
    sget p1, Lflix/com/vision/activities/MainActivity;->T:I

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_4
    sget p1, Lflix/com/vision/activities/MainActivity;->T:I

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :pswitch_5
    sget p1, Lflix/com/vision/activities/MainActivity;->T:I

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :pswitch_6
    sget p1, Lflix/com/vision/activities/MainActivity;->T:I

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :pswitch_7
    sget p1, Lflix/com/vision/activities/MainActivity;->T:I

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :pswitch_8
    sget-object v1, LQ4/d;->Y:Landroid/graphics/Typeface;

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 65
    .line 66
    .line 67
    iget-object v0, v0, LQ4/d;->b:Landroid/view/View$OnClickListener;

    .line 68
    .line 69
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :pswitch_9
    sget-object v1, LQ4/d;->Y:Landroid/graphics/Typeface;

    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 76
    .line 77
    .line 78
    iget-object v0, v0, LQ4/d;->e:Landroid/view/View$OnClickListener;

    .line 79
    .line 80
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :pswitch_a
    sget-object v1, LQ4/d;->Y:Landroid/graphics/Typeface;

    .line 85
    .line 86
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 87
    .line 88
    .line 89
    iget-object v0, v0, LQ4/d;->f:Landroid/view/View$OnClickListener;

    .line 90
    .line 91
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :pswitch_b
    sget-object p1, LQ4/d;->Y:Landroid/graphics/Typeface;

    .line 96
    .line 97
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :pswitch_c
    sget-object p1, LQ4/d;->Y:Landroid/graphics/Typeface;

    .line 102
    .line 103
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :pswitch_d
    sget p1, Lflix/com/vision/activities/leanback/MainActivityLeanback;->I:I

    .line 108
    .line 109
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
