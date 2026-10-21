.class public final synthetic Lq3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/KeyEvent$Callback;


# direct methods
.method public synthetic constructor <init>(Landroid/view/KeyEvent$Callback;I)V
    .locals 0

    .line 1
    iput p2, p0, Lq3/a;->a:I

    iput-object p1, p0, Lq3/a;->b:Landroid/view/KeyEvent$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lq3/a;->b:Landroid/view/KeyEvent$Callback;

    .line 2
    .line 3
    iget v1, p0, Lq3/a;->a:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget p1, Lflix/com/vision/activities/TraktTvConfigActivity;->z:I

    .line 9
    .line 10
    check-cast v0, Lflix/com/vision/activities/TraktTvConfigActivity;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 20
    .line 21
    const-string v1, "check_me_in"

    .line 22
    .line 23
    invoke-static {p1, v1, p2}, LA/i;->x(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 24
    .line 25
    .line 26
    const-string p1, "sync_watched_list_on"

    .line 27
    .line 28
    const/high16 v1, 0x3f000000    # 0.5f

    .line 29
    .line 30
    const/high16 v2, 0x3f800000    # 1.0f

    .line 31
    .line 32
    const/4 v3, 0x1

    .line 33
    if-nez p2, :cond_0

    .line 34
    .line 35
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    iget-object p2, p2, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 40
    .line 41
    invoke-static {p2, p1, v3}, LA/i;->x(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 42
    .line 43
    .line 44
    iget-object p1, v0, Lflix/com/vision/activities/TraktTvConfigActivity;->w:Landroid/widget/CheckBox;

    .line 45
    .line 46
    invoke-virtual {p1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 47
    .line 48
    .line 49
    iget-object p1, v0, Lflix/com/vision/activities/TraktTvConfigActivity;->p:Landroid/widget/LinearLayout;

    .line 50
    .line 51
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 52
    .line 53
    .line 54
    iget-object p1, v0, Lflix/com/vision/activities/TraktTvConfigActivity;->p:Landroid/widget/LinearLayout;

    .line 55
    .line 56
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 57
    .line 58
    .line 59
    iget-object p1, v0, Lflix/com/vision/activities/TraktTvConfigActivity;->f:Landroid/widget/LinearLayout;

    .line 60
    .line 61
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 62
    .line 63
    .line 64
    iget-object p1, v0, Lflix/com/vision/activities/TraktTvConfigActivity;->m:Landroid/widget/LinearLayout;

    .line 65
    .line 66
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 67
    .line 68
    .line 69
    iget-object p1, v0, Lflix/com/vision/activities/TraktTvConfigActivity;->j:Landroid/widget/LinearLayout;

    .line 70
    .line 71
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    iget-object p2, v0, Lflix/com/vision/activities/TraktTvConfigActivity;->p:Landroid/widget/LinearLayout;

    .line 76
    .line 77
    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 78
    .line 79
    .line 80
    iget-object p2, v0, Lflix/com/vision/activities/TraktTvConfigActivity;->w:Landroid/widget/CheckBox;

    .line 81
    .line 82
    const/4 v1, 0x0

    .line 83
    invoke-virtual {p2, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 84
    .line 85
    .line 86
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    iget-object p2, p2, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 91
    .line 92
    invoke-static {p2, p1, v1}, LA/i;->x(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 93
    .line 94
    .line 95
    iget-object p1, v0, Lflix/com/vision/activities/TraktTvConfigActivity;->s:Landroid/widget/CheckBox;

    .line 96
    .line 97
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 98
    .line 99
    .line 100
    iget-object p1, v0, Lflix/com/vision/activities/TraktTvConfigActivity;->u:Landroid/widget/CheckBox;

    .line 101
    .line 102
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 103
    .line 104
    .line 105
    iget-object p1, v0, Lflix/com/vision/activities/TraktTvConfigActivity;->t:Landroid/widget/CheckBox;

    .line 106
    .line 107
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 108
    .line 109
    .line 110
    iget-object p1, v0, Lflix/com/vision/activities/TraktTvConfigActivity;->f:Landroid/widget/LinearLayout;

    .line 111
    .line 112
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 113
    .line 114
    .line 115
    iget-object p1, v0, Lflix/com/vision/activities/TraktTvConfigActivity;->f:Landroid/widget/LinearLayout;

    .line 116
    .line 117
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 118
    .line 119
    .line 120
    iget-object p1, v0, Lflix/com/vision/activities/TraktTvConfigActivity;->m:Landroid/widget/LinearLayout;

    .line 121
    .line 122
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 123
    .line 124
    .line 125
    iget-object p1, v0, Lflix/com/vision/activities/TraktTvConfigActivity;->m:Landroid/widget/LinearLayout;

    .line 126
    .line 127
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 128
    .line 129
    .line 130
    iget-object p1, v0, Lflix/com/vision/activities/TraktTvConfigActivity;->j:Landroid/widget/LinearLayout;

    .line 131
    .line 132
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 133
    .line 134
    .line 135
    iget-object p1, v0, Lflix/com/vision/activities/TraktTvConfigActivity;->j:Landroid/widget/LinearLayout;

    .line 136
    .line 137
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 138
    .line 139
    .line 140
    :goto_0
    return-void

    .line 141
    :pswitch_0
    check-cast v0, Lcom/google/android/material/chip/Chip;

    .line 142
    .line 143
    iget-object v0, v0, Lcom/google/android/material/chip/Chip;->r:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 144
    .line 145
    if-eqz v0, :cond_1

    .line 146
    .line 147
    invoke-interface {v0, p1, p2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 148
    .line 149
    .line 150
    :cond_1
    return-void

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
