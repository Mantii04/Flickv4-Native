.class public final synthetic Ly4/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/MovieDetailActivity;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/MovieDetailActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly4/k0;->b:I

    iput-object p1, p0, Ly4/k0;->e:Lflix/com/vision/activities/MovieDetailActivity;

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
    iget-object v2, p0, Ly4/k0;->e:Lflix/com/vision/activities/MovieDetailActivity;

    .line 4
    .line 5
    iget v3, p0, Ly4/k0;->b:I

    .line 6
    .line 7
    packed-switch v3, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget v0, Lflix/com/vision/activities/MovieDetailActivity;->S0:I

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    :try_start_0
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v0, v0, Lflix/com/vision/App;->r:LP4/e;

    .line 20
    .line 21
    iget-object v1, v2, Lflix/com/vision/activities/MovieDetailActivity;->l0:Lflix/com/vision/models/Movie;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, LP4/e;->isMovieFavorited(Lflix/com/vision/models/Movie;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, v2, Lflix/com/vision/activities/MovieDetailActivity;->A0:Landroid/widget/ImageView;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    sget v1, Lflix/com/vision/R$drawable;->ic_delete_bookmark:I

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    :goto_0
    iget-object v0, v2, Lflix/com/vision/activities/MovieDetailActivity;->K0:Landroid/view/Menu;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    sget v1, Lflix/com/vision/R$id;->action_fav:I

    .line 46
    .line 47
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sget v1, Lflix/com/vision/R$drawable;->ic_action_favorite:I

    .line 52
    .line 53
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    .line 59
    .line 60
    :cond_1
    :goto_2
    return-void

    .line 61
    :pswitch_0
    iget-object v0, v2, Lflix/com/vision/activities/MovieDetailActivity;->h0:Landroid/widget/RelativeLayout;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    iget-object v0, v2, Lflix/com/vision/activities/MovieDetailActivity;->h0:Landroid/widget/RelativeLayout;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    iget-object v0, v2, Lflix/com/vision/activities/MovieDetailActivity;->h0:Landroid/widget/RelativeLayout;

    .line 75
    .line 76
    iget-object v3, v2, Lflix/com/vision/activities/MovieDetailActivity;->H:Landroid/view/animation/Animation;

    .line 77
    .line 78
    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 79
    .line 80
    .line 81
    :cond_2
    iget-object v0, v2, Lflix/com/vision/activities/MovieDetailActivity;->s:Landroid/widget/LinearLayout;

    .line 82
    .line 83
    if-eqz v0, :cond_3

    .line 84
    .line 85
    sget-boolean v2, Lflix/com/vision/App;->I:Z

    .line 86
    .line 87
    if-eqz v2, :cond_3

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 90
    .line 91
    .line 92
    :cond_3
    return-void

    .line 93
    :pswitch_1
    iget-object v0, v2, Lflix/com/vision/activities/MovieDetailActivity;->J:Landroid/widget/ScrollView;

    .line 94
    .line 95
    const/16 v3, 0x21

    .line 96
    .line 97
    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 98
    .line 99
    .line 100
    iget-object v0, v2, Lflix/com/vision/activities/MovieDetailActivity;->J:Landroid/widget/ScrollView;

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 103
    .line 104
    .line 105
    iget-object v0, v2, Lflix/com/vision/activities/MovieDetailActivity;->q:Landroid/widget/LinearLayout;

    .line 106
    .line 107
    const/16 v1, 0x8

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    .line 111
    .line 112
    iget-object v0, v2, Lflix/com/vision/activities/MovieDetailActivity;->g0:Landroid/widget/LinearLayout;

    .line 113
    .line 114
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :pswitch_2
    iput-boolean v0, v2, Lflix/com/vision/activities/MovieDetailActivity;->R0:Z

    .line 119
    .line 120
    return-void

    .line 121
    :pswitch_3
    iget-object v0, v2, Lflix/com/vision/activities/MovieDetailActivity;->m:Landroid/widget/ImageView;

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    .line 125
    .line 126
    iget-object v0, v2, Lflix/com/vision/activities/MovieDetailActivity;->m:Landroid/widget/ImageView;

    .line 127
    .line 128
    iget-object v1, v2, Lflix/com/vision/activities/MovieDetailActivity;->H:Landroid/view/animation/Animation;

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :pswitch_4
    iget-object v1, v2, Lflix/com/vision/activities/MovieDetailActivity;->g0:Landroid/widget/LinearLayout;

    .line 135
    .line 136
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    :pswitch_5
    iget-object v1, v2, Lflix/com/vision/activities/MovieDetailActivity;->g0:Landroid/widget/LinearLayout;

    .line 141
    .line 142
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :pswitch_6
    iget-object v0, v2, Lflix/com/vision/activities/MovieDetailActivity;->g0:Landroid/widget/LinearLayout;

    .line 147
    .line 148
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    :pswitch_7
    iget-object v0, v2, Lflix/com/vision/activities/MovieDetailActivity;->m:Landroid/widget/ImageView;

    .line 153
    .line 154
    if-eqz v0, :cond_4

    .line 155
    .line 156
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-eqz v0, :cond_4

    .line 161
    .line 162
    iget-boolean v0, v2, Lflix/com/vision/activities/MovieDetailActivity;->Q0:Z

    .line 163
    .line 164
    if-eqz v0, :cond_4

    .line 165
    .line 166
    iget-object v0, v2, Lflix/com/vision/activities/MovieDetailActivity;->m:Landroid/widget/ImageView;

    .line 167
    .line 168
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 169
    .line 170
    .line 171
    iget-object v0, v2, Lflix/com/vision/activities/MovieDetailActivity;->m:Landroid/widget/ImageView;

    .line 172
    .line 173
    iget-object v1, v2, Lflix/com/vision/activities/MovieDetailActivity;->H:Landroid/view/animation/Animation;

    .line 174
    .line 175
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 176
    .line 177
    .line 178
    :cond_4
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
