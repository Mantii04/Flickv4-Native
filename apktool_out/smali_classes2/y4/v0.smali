.class public final synthetic Ly4/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/MovieDetailActivityLeanBack;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/MovieDetailActivityLeanBack;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly4/v0;->b:I

    iput-object p1, p0, Ly4/v0;->e:Lflix/com/vision/activities/MovieDetailActivityLeanBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Ly4/v0;->e:Lflix/com/vision/activities/MovieDetailActivityLeanBack;

    .line 4
    .line 5
    iget v3, p0, Ly4/v0;->b:I

    .line 6
    .line 7
    packed-switch v3, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v1, v2, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->o0:Landroid/widget/LinearLayout;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object v0, v2, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->o0:Landroid/widget/LinearLayout;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_1
    iget-object v0, v2, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->v:Landroid/widget/ImageView;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    iget-boolean v0, v2, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->Y0:Z

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-object v0, v2, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->v:Landroid/widget/ImageView;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    iget-object v0, v2, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->v:Landroid/widget/ImageView;

    .line 42
    .line 43
    iget-object v1, v2, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->O:Landroid/view/animation/Animation;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void

    .line 49
    :pswitch_2
    sget v0, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->a1:I

    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    :try_start_0
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-object v0, v0, Lflix/com/vision/App;->r:LP4/e;

    .line 59
    .line 60
    iget-object v1, v2, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->t0:Lflix/com/vision/models/Movie;

    .line 61
    .line 62
    invoke-virtual {v0, v1}, LP4/e;->isMovieFavorited(Lflix/com/vision/models/Movie;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    iget-object v0, v2, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->I0:Landroid/widget/ImageView;

    .line 69
    .line 70
    if-eqz v0, :cond_1

    .line 71
    .line 72
    sget v1, Lflix/com/vision/R$drawable;->ic_delete_bookmark:I

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    goto :goto_1

    .line 80
    :cond_1
    :goto_0
    iget-object v0, v2, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->S0:Landroid/view/Menu;

    .line 81
    .line 82
    if-eqz v0, :cond_2

    .line 83
    .line 84
    sget v1, Lflix/com/vision/R$id;->action_fav:I

    .line 85
    .line 86
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    sget v1, Lflix/com/vision/R$drawable;->ic_action_favorite:I

    .line 91
    .line 92
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 97
    .line 98
    .line 99
    :cond_2
    :goto_2
    return-void

    .line 100
    :pswitch_3
    iput-boolean v0, v2, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->Z0:Z

    .line 101
    .line 102
    return-void

    .line 103
    :pswitch_4
    iget-object v0, v2, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->v:Landroid/widget/ImageView;

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    .line 107
    .line 108
    iget-object v0, v2, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->v:Landroid/widget/ImageView;

    .line 109
    .line 110
    iget-object v1, v2, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->O:Landroid/view/animation/Animation;

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :pswitch_5
    iget-object v1, v2, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->o0:Landroid/widget/LinearLayout;

    .line 117
    .line 118
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :pswitch_6
    iget-object v0, v2, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->p0:Landroid/widget/RelativeLayout;

    .line 123
    .line 124
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_3

    .line 129
    .line 130
    iget-object v0, v2, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->p0:Landroid/widget/RelativeLayout;

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 133
    .line 134
    .line 135
    iget-object v0, v2, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->p0:Landroid/widget/RelativeLayout;

    .line 136
    .line 137
    iget-object v3, v2, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->O:Landroid/view/animation/Animation;

    .line 138
    .line 139
    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 140
    .line 141
    .line 142
    :cond_3
    iget-object v0, v2, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->z:Landroid/widget/LinearLayout;

    .line 143
    .line 144
    if-eqz v0, :cond_4

    .line 145
    .line 146
    sget-boolean v2, Lflix/com/vision/App;->I:Z

    .line 147
    .line 148
    if-eqz v2, :cond_4

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 151
    .line 152
    .line 153
    :cond_4
    return-void

    .line 154
    :pswitch_7
    iget-object v0, v2, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->R:Landroid/widget/ScrollView;

    .line 155
    .line 156
    const/16 v3, 0x21

    .line 157
    .line 158
    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 159
    .line 160
    .line 161
    iget-object v0, v2, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->R:Landroid/widget/ScrollView;

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 164
    .line 165
    .line 166
    iget-object v0, v2, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->f:Landroid/widget/RelativeLayout;

    .line 167
    .line 168
    const/16 v1, 0x8

    .line 169
    .line 170
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 171
    .line 172
    .line 173
    iget-object v0, v2, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->o0:Landroid/widget/LinearLayout;

    .line 174
    .line 175
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :pswitch_data_0
    .packed-switch 0x0
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
